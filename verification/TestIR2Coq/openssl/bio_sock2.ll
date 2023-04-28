; ModuleID = 'crypto/bio/bio_sock2.c'
source_filename = "crypto/bio/bio_sock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"crypto/bio/bio_sock2.c\00", align 1
@__func__.BIO_socket = private unnamed_addr constant [11 x i8] c"BIO_socket\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"calling socket()\00", align 1
@__func__.BIO_connect = private unnamed_addr constant [12 x i8] c"BIO_connect\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"calling setsockopt()\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"calling connect()\00", align 1
@__func__.BIO_bind = private unnamed_addr constant [9 x i8] c"BIO_bind\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"calling bind()\00", align 1
@__func__.BIO_listen = private unnamed_addr constant [11 x i8] c"BIO_listen\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"calling getsockopt()\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"calling listen()\00", align 1
@__func__.BIO_accept_ex = private unnamed_addr constant [14 x i8] c"BIO_accept_ex\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"calling accept()\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_socket(i32 noundef %domain, i32 noundef %socktype, i32 noundef %protocol, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_sock_init() #5
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @socket(i32 noundef %domain, i32 noundef %socktype, i32 noundef %protocol) #5
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_socket, i64 0, i64 0)) #5
  %call4 = tail call i32* @__errno_location() #6
  %0 = load i32, i32* %call4, align 4, !tbaa !4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)) #5
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_socket, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 118, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.then3
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %entry ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_sock_init() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_connect(i32 noundef %sock, %union.bio_addr_st* noundef %addr, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %on = alloca i32, align 4
  %0 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 1, i32* %on, align 4, !tbaa !4
  %cmp = icmp eq i32 %sock, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 135, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %options, 3
  %and.lobit = and i32 %and, 1
  %call = tail call i32 @BIO_socket_nbio(i32 noundef %sock, i32 noundef %and.lobit) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %options, 4
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end13, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = call i32 @setsockopt(i32 noundef %sock, i32 noundef 1, i32 noundef 9, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.then6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  %call11 = tail call i32* @__errno_location() #6
  %1 = load i32, i32* %call11, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 137, i8* noundef null) #5
  br label %cleanup

if.end13:                                         ; preds = %if.then6, %if.end3
  %and14 = and i32 %options, 16
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @setsockopt(i32 noundef %sock, i32 noundef 6, i32 noundef 1, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.then16
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  %call21 = tail call i32* @__errno_location() #6
  %2 = load i32, i32* %call21, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 138, i8* noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %if.then16, %if.end13
  %call24 = call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %addr) #5
  %call25 = call i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef %addr) #5
  %call26 = call i32 @connect(i32 noundef %sock, %struct.sockaddr* noundef %call24, i32 noundef %call25) #5
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.end23
  %call30 = call i32 @BIO_sock_should_retry(i32 noundef -1) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.then29
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  %call33 = tail call i32* @__errno_location() #6
  %3 = load i32, i32* %call33, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %3, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_connect, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 103, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then29, %if.then32, %if.end, %if.then20, %if.then10, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.then20 ], [ 0, %if.end ], [ 0, %if.then32 ], [ 0, %if.then29 ], [ 1, %if.end23 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @BIO_socket_nbio(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef) local_unnamed_addr #2

declare i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef) local_unnamed_addr #2

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_bind(i32 noundef %sock, %union.bio_addr_st* noundef %addr, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %on = alloca i32, align 4
  %0 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 1, i32* %on, align 4, !tbaa !4
  %cmp = icmp eq i32 %sock, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_bind, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 135, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %options, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then1

if.then1:                                         ; preds = %if.end
  %call = call i32 @setsockopt(i32 noundef %sock, i32 noundef 1, i32 noundef 2, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.then1
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_bind, i64 0, i64 0)) #5
  %call4 = tail call i32* @__errno_location() #6
  %1 = load i32, i32* %call4, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_bind, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 139, i8* noundef null) #5
  br label %cleanup

if.end6:                                          ; preds = %if.then1, %if.end
  %call7 = call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %addr) #5
  %call8 = call i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef %addr) #5
  %call9 = call i32 @bind(i32 noundef %sock, %struct.sockaddr* noundef %call7, i32 noundef %call8) #5
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_bind, i64 0, i64 0)) #5
  %call12 = tail call i32* @__errno_location() #6
  %2 = load i32, i32* %call12, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_bind, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 117, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then11 ], [ 1, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_listen(i32 noundef %sock, %union.bio_addr_st* noundef %addr, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %on = alloca i32, align 4
  %socktype = alloca i32, align 4
  %socktype_len = alloca i32, align 4
  %0 = bitcast i32* %on to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 1, i32* %on, align 4, !tbaa !4
  %1 = bitcast i32* %socktype to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7
  %2 = bitcast i32* %socktype_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  store i32 4, i32* %socktype_len, align 4, !tbaa !4
  %cmp = icmp eq i32 %sock, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 135, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @getsockopt(i32 noundef %sock, i32 noundef 1, i32 noundef 3, i8* noundef nonnull %1, i32* noundef nonnull %socktype_len) #5
  %cmp1 = icmp ne i32 %call, 0
  %3 = load i32, i32* %socktype_len, align 4
  %cmp2 = icmp ne i32 %3, 4
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  %call5 = tail call i32* @__errno_location() #6
  %4 = load i32, i32* %call5, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 134, i8* noundef null) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and = lshr i32 %options, 3
  %and.lobit = and i32 %and, 1
  %call9 = call i32 @BIO_socket_nbio(i32 noundef %sock, i32 noundef %and.lobit) #5
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end6
  %and12 = and i32 %options, 4
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end21, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 @setsockopt(i32 noundef %sock, i32 noundef 1, i32 noundef 9, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  %call19 = tail call i32* @__errno_location() #6
  %5 = load i32, i32* %call19, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 137, i8* noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %if.then14, %if.end11
  %and22 = and i32 %options, 16
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end31, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @setsockopt(i32 noundef %sock, i32 noundef 6, i32 noundef 1, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.then24
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  %call29 = tail call i32* @__errno_location() #6
  %6 = load i32, i32* %call29, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 138, i8* noundef null) #5
  br label %cleanup

if.end31:                                         ; preds = %if.then24, %if.end21
  %call32 = call i32 @BIO_ADDR_family(%union.bio_addr_st* noundef %addr) #5
  %cmp33 = icmp eq i32 %call32, 10
  br i1 %cmp33, label %if.then35, label %if.end44

if.then35:                                        ; preds = %if.end31
  %and36 = lshr i32 %options, 1
  %and36.lobit = and i32 %and36, 1
  store i32 %and36.lobit, i32* %on, align 4, !tbaa !4
  %call38 = call i32 @setsockopt(i32 noundef %sock, i32 noundef 41, i32 noundef 26, i8* noundef nonnull %0, i32 noundef 4) #5
  %cmp39.not = icmp eq i32 %call38, 0
  br i1 %cmp39.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %if.then35
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  %call42 = tail call i32* @__errno_location() #6
  %7 = load i32, i32* %call42, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 136, i8* noundef null) #5
  br label %cleanup

if.end44:                                         ; preds = %if.then35, %if.end31
  %call45 = call i32 @BIO_bind(i32 noundef %sock, %union.bio_addr_st* noundef %addr, i32 noundef %options) #8
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.end44
  %8 = load i32, i32* %socktype, align 4, !tbaa !4
  %cmp49.not = icmp eq i32 %8, 2
  br i1 %cmp49.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end48
  %call51 = call i32 @listen(i32 noundef %sock, i32 noundef 4096) #5
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %if.then54, label %cleanup

if.then54:                                        ; preds = %land.lhs.true
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  %call55 = tail call i32* @__errno_location() #6
  %9 = load i32, i32* %call55, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_listen, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 119, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %land.lhs.true, %if.end44, %if.end6, %if.then54, %if.then41, %if.then28, %if.then18, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then18 ], [ 0, %if.then28 ], [ 0, %if.then41 ], [ 0, %if.then54 ], [ 0, %if.end6 ], [ 0, %if.end44 ], [ 1, %land.lhs.true ], [ 1, %if.end48 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #3

declare i32 @BIO_ADDR_family(%union.bio_addr_st* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_accept_ex(i32 noundef %accept_sock, %union.bio_addr_st* noundef %addr_, i32 noundef %options) local_unnamed_addr #0 {
entry:
  %len = alloca i32, align 4
  %locaddr = alloca %union.bio_addr_st, align 4
  %0 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  %1 = bitcast %union.bio_addr_st* %locaddr to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %1) #7
  %cmp = icmp eq %union.bio_addr_st* %addr_, null
  %cond = select i1 %cmp, %union.bio_addr_st* %locaddr, %union.bio_addr_st* %addr_
  store i32 112, i32* %len, align 4, !tbaa !4
  %call = call %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef %cond) #5
  %call1 = call i32 @accept(i32 noundef %accept_sock, %struct.sockaddr* noundef %call, i32* noundef nonnull %len) #5
  %cmp2 = icmp eq i32 %call1, -1
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %call3 = call i32 @BIO_sock_should_retry(i32 noundef -1) #5
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.then
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_accept_ex, i64 0, i64 0)) #5
  %call5 = tail call i32* @__errno_location() #6
  %2 = load i32, i32* %call5, align 4, !tbaa !4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @ERR_new() #5
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_accept_ex, i64 0, i64 0)) #5
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 100, i8* noundef null) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and = lshr i32 %options, 3
  %and.lobit = and i32 %and, 1
  %call8 = call i32 @BIO_socket_nbio(i32 noundef %call1, i32 noundef %and.lobit) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end6
  %call11 = call i32 @close(i32 noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then, %if.then4, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then4 ], [ -1, %if.then ], [ %call1, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %retval.0
}

declare i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) local_unnamed_addr #2

declare %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_closesocket(i32 noundef %sock) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %sock, 0
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @close(i32 noundef %sock) #5
  %0 = xor i32 %call, -1
  %call.lobit.not = lshr i32 %0, 31
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %call.lobit.not, %lor.lhs.false ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

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
