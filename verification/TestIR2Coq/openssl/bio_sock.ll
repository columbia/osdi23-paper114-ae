; ModuleID = 'crypto/bio/bio_sock.c'
source_filename = "crypto/bio/bio_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%union.BIO_sock_info_u = type { %union.bio_addr_st* }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bio_sock.c\00", align 1
@__func__.BIO_get_host_ip = private unnamed_addr constant [16 x i8] c"BIO_get_host_ip\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"host=\00", align 1
@__func__.BIO_get_port = private unnamed_addr constant [13 x i8] c"BIO_get_port\00", align 1
@__func__.BIO_socket_ioctl = private unnamed_addr constant [17 x i8] c"BIO_socket_ioctl\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"calling ioctlsocket()\00", align 1
@__func__.BIO_accept = private unnamed_addr constant [11 x i8] c"BIO_accept\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"calling accept()\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@__func__.BIO_sock_info = private unnamed_addr constant [14 x i8] c"BIO_sock_info\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"calling getsockname()\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_get_host_ip(i8* noundef %str, i8* noundef %ip) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.addrinfo*, align 8
  %l = alloca i64, align 8
  %0 = bitcast %struct.addrinfo** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.addrinfo* null, %struct.addrinfo** %res, align 8, !tbaa !4
  %call1 = call i32 @BIO_lookup(i8* noundef %str, i8* noundef null, i32 noundef 0, i32 noundef 2, i32 noundef 1, %struct.addrinfo** noundef nonnull %res) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else19, label %if.then2

if.then2:                                         ; preds = %entry
  %1 = bitcast i64* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  %2 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call3 = call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %2) #10
  %cmp4.not = icmp eq i32 %call3, 2
  br i1 %cmp4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BIO_get_host_ip, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 107, i8* noundef null) #10
  br label %if.end18

if.else:                                          ; preds = %if.then2
  %3 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call6 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %3) #10
  %call7 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %call6, i8* noundef null, i64* noundef nonnull %l) #10
  %tobool8.not = icmp ne i32 %call7, 0
  %4 = load i64, i64* %l, align 8
  %cmp10 = icmp eq i64 %4, 4
  %or.cond = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.else
  %5 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call14 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %5) #10
  %call15 = call i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %call14, i8* noundef %ip, i64* noundef nonnull %l) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13, %if.then5
  %ret.0 = phi i32 [ 0, %if.then5 ], [ %call15, %if.then13 ], [ 0, %if.else ]
  %6 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %6) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  br label %cleanup

if.else19:                                        ; preds = %entry
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef %str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.else19
  %ret.1 = phi i32 [ %ret.0, %if.end18 ], [ 0, %if.else19 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i32 @BIO_sock_init() local_unnamed_addr #2 {
entry:
  ret i32 1
}

declare i32 @BIO_lookup(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.addrinfo** noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef, i8* noundef, i64* noundef) local_unnamed_addr #3

declare %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef) local_unnamed_addr #3

declare void @BIO_ADDRINFO_free(%struct.addrinfo* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_get_port(i8* noundef %str, i16* nocapture noundef writeonly %port_ptr) local_unnamed_addr #0 {
entry:
  %res = alloca %struct.addrinfo*, align 8
  %0 = bitcast %struct.addrinfo** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store %struct.addrinfo* null, %struct.addrinfo** %res, align 8, !tbaa !4
  %cmp = icmp eq i8* %str, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_port, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 113, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @BIO_lookup(i8* noundef null, i8* noundef nonnull %str, i32 noundef 0, i32 noundef 2, i32 noundef 1, %struct.addrinfo** noundef nonnull %res) #10
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.else13, label %if.then5

if.then5:                                         ; preds = %if.end
  %1 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call6 = call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %1) #10
  %cmp7.not = icmp eq i32 %call6, 2
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_port, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 141, i8* noundef null) #10
  br label %if.end12

if.else:                                          ; preds = %if.then5
  %2 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call9 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %2) #10
  %call10 = call zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef %call9) #10
  %call11 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %call10) #11
  store i16 %call11, i16* %port_ptr, align 2, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %ret.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.else ]
  %3 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %3) #10
  br label %cleanup

if.else13:                                        ; preds = %if.end
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull %str) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.else13, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %if.end12 ], [ 0, %if.else13 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #4 {
entry:
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev
}

declare zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_sock_error(i32 noundef %sock) local_unnamed_addr #0 {
entry:
  %j = alloca i32, align 4
  %size = alloca i32, align 4
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 0, i32* %j, align 4, !tbaa !10
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 4, i32* %size, align 4, !tbaa !10
  %call = call i32 @getsockopt(i32 noundef %sock, i32 noundef 1, i32 noundef 4, i8* noundef nonnull %0, i32* noundef nonnull %size) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0.in = phi i32* [ %call1, %if.then ], [ %j, %entry ]
  %retval.0 = load i32, i32* %retval.0.in, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define %struct.hostent* @BIO_gethostbyname(i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.hostent* @gethostbyname(i8* noundef %name) #10
  ret %struct.hostent* %call
}

declare %struct.hostent* @gethostbyname(i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define void @bio_sock_cleanup_int() local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_socket_ioctl(i32 noundef %fd, i64 noundef %type, i8* noundef %arg) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %fd, i64 noundef %type, i8* noundef %arg) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.BIO_socket_ioctl, i64 0, i64 0)) #10
  %call1 = tail call i32* @__errno_location() #12
  %0 = load i32, i32* %call1, align 4, !tbaa !10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_get_accept_socket(i8* noundef %host, i32 noundef %bind_mode) local_unnamed_addr #0 {
entry:
  %h = alloca i8*, align 8
  %p = alloca i8*, align 8
  %res = alloca %struct.addrinfo*, align 8
  %0 = bitcast i8** %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #9
  store i8* null, i8** %h, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #9
  store i8* null, i8** %p, align 8, !tbaa !4
  %2 = bitcast %struct.addrinfo** %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store %struct.addrinfo* null, %struct.addrinfo** %res, align 8, !tbaa !4
  %call = call i32 @BIO_parse_hostserv(i8* noundef %host, i8** noundef nonnull %h, i8** noundef nonnull %p, i32 noundef 1) #10
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %h, align 8, !tbaa !4
  %4 = load i8*, i8** %p, align 8, !tbaa !4
  %call4 = call i32 @BIO_lookup(i8* noundef %3, i8* noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 1, %struct.addrinfo** noundef nonnull %res) #10
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end7, label %err

if.end7:                                          ; preds = %if.end
  %5 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call8 = call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %5) #10
  %6 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call9 = call i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef %6) #10
  %7 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call10 = call i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef %7) #10
  %call11 = call i32 @BIO_socket(i32 noundef %call8, i32 noundef %call9, i32 noundef %call10, i32 noundef 0) #10
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %err, label %if.end14

if.end14:                                         ; preds = %if.end7
  %8 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  %call15 = call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %8) #10
  %tobool16.not = icmp ne i32 %bind_mode, 0
  %cond = zext i1 %tobool16.not to i32
  %call17 = call i32 @BIO_listen(i32 noundef %call11, %union.bio_addr_st* noundef %call15, i32 noundef %cond) #10
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %err

if.then19:                                        ; preds = %if.end14
  %call20 = call i32 @BIO_closesocket(i32 noundef %call11) #10
  br label %err

err:                                              ; preds = %if.end7, %if.end14, %if.then19, %if.end
  %s.0 = phi i32 [ -1, %if.end ], [ %call11, %if.end14 ], [ -1, %if.then19 ], [ -1, %if.end7 ]
  %9 = load %struct.addrinfo*, %struct.addrinfo** %res, align 8, !tbaa !4
  call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %9) #10
  %10 = load i8*, i8** %h, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %10, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 242) #10
  %11 = load i8*, i8** %p, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 243) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i32 [ %s.0, %err ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #9
  ret i32 %retval.0
}

declare i32 @BIO_parse_hostserv(i8* noundef, i8** noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_socket(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_listen(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_accept(i32 noundef %sock, i8** noundef %ip_port) local_unnamed_addr #0 {
entry:
  %res = alloca %union.bio_addr_st, align 4
  %0 = bitcast %union.bio_addr_st* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %0) #9
  %call = call i32 @BIO_accept_ex(i32 noundef %sock, %union.bio_addr_st* noundef nonnull %res, i32 noundef 0) #10
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call1 = call i32 @BIO_sock_should_retry(i32 noundef -1) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %end

if.end:                                           ; preds = %if.then
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_accept, i64 0, i64 0)) #10
  %call3 = tail call i32* @__errno_location() #12
  %1 = load i32, i32* %call3, align 4, !tbaa !10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #10
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_accept, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 100, i8* noundef null) #10
  br label %end

if.end4:                                          ; preds = %entry
  %cmp5.not = icmp eq i8** %ip_port, null
  br i1 %cmp5.not, label %end, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = call i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef nonnull %res, i32 noundef 1) #10
  %call8 = call i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef nonnull %res, i32 noundef 1) #10
  %cmp9 = icmp ne i8* %call7, null
  %cmp10 = icmp ne i8* %call8, null
  %or.cond = select i1 %cmp9, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end16, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.then6
  store i8* null, i8** %ip_port, align 8, !tbaa !4
  br label %if.then18

if.end16:                                         ; preds = %if.then6
  %call12 = call i64 @strlen(i8* noundef nonnull %call7) #13
  %call13 = call i64 @strlen(i8* noundef nonnull %call8) #13
  %add = add i64 %call12, 2
  %add14 = add i64 %add, %call13
  %call15 = call i8* @CRYPTO_zalloc(i64 noundef %add14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 269) #10
  store i8* %call15, i8** %ip_port, align 8, !tbaa !4
  %cmp17 = icmp eq i8* %call15, null
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end16.thread, %if.end16
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_accept, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #10
  %call19 = call i32 @BIO_closesocket(i32 noundef %call) #10
  br label %if.end24

if.else20:                                        ; preds = %if.end16
  %call21 = call i8* @strcpy(i8* noundef nonnull %call15, i8* noundef nonnull %call7) #10
  %2 = load i8*, i8** %ip_port, align 8, !tbaa !4
  %call22 = call i8* @strcat(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #10
  %3 = load i8*, i8** %ip_port, align 8, !tbaa !4
  %call23 = call i8* @strcat(i8* noundef %3, i8* noundef nonnull %call8) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then18
  %ret.0 = phi i32 [ -1, %if.then18 ], [ %call, %if.else20 ]
  call void @CRYPTO_free(i8* noundef %call7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 282) #10
  call void @CRYPTO_free(i8* noundef %call8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 283) #10
  br label %end

end:                                              ; preds = %if.then, %if.end4, %if.end24, %if.end
  %ret.1 = phi i32 [ -1, %if.end ], [ %ret.0, %if.end24 ], [ %call, %if.end4 ], [ -2, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %0) #9
  ret i32 %ret.1
}

declare i32 @BIO_accept_ex(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #3

declare i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strcat(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_set_tcp_ndelay(i32 noundef %s, i32 noundef %on) local_unnamed_addr #0 {
entry:
  %on.addr = alloca i32, align 4
  store i32 %on, i32* %on.addr, align 4, !tbaa !10
  %0 = bitcast i32* %on.addr to i8*
  %call = call i32 @setsockopt(i32 noundef %s, i32 noundef 6, i32 noundef 1, i8* noundef nonnull %0, i32 noundef 4) #10
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_socket_nbio(i32 noundef %s, i32 noundef %mode) local_unnamed_addr #0 {
entry:
  %l = alloca i32, align 4
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 %mode, i32* %l, align 4, !tbaa !10
  %call = call i32 @BIO_socket_ioctl(i32 noundef %s, i64 noundef 21537, i8* noundef nonnull %0) #11
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_sock_info(i32 noundef %sock, i32 noundef %type, %union.BIO_sock_info_u* nocapture noundef readonly %info) local_unnamed_addr #0 {
entry:
  %addr_len = alloca i32, align 4
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %0 = bitcast i32* %addr_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #9
  store i32 112, i32* %addr_len, align 4, !tbaa !10
  %addr = getelementptr %union.BIO_sock_info_u, %union.BIO_sock_info_u* %info, i64 0, i32 0
  %1 = load %union.bio_addr_st*, %union.bio_addr_st** %addr, align 8, !tbaa !12
  %call = tail call %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef %1) #10
  %call1 = call i32 @getsockname(i32 noundef %sock, %struct.sockaddr* noundef %call, i32* noundef nonnull %addr_len) #10
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_sock_info, i64 0, i64 0)) #10
  %call2 = tail call i32* @__errno_location() #12
  %2 = load i32, i32* %call2, align 4, !tbaa !10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0)) #10
  br label %cleanup.thread

if.end:                                           ; preds = %sw.bb
  %3 = load i32, i32* %addr_len, align 4, !tbaa !10
  %cmp3 = icmp ugt i32 %3, 112
  br i1 %cmp3, label %cleanup.thread, label %4

cleanup.thread:                                   ; preds = %if.end, %if.then
  %.sink11 = phi i32 [ 370, %if.then ], [ 374, %if.end ]
  %.sink = phi i32 [ 132, %if.then ], [ 133, %if.end ]
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink11, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_sock_info, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef %.sink, i8* noundef null) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %return

4:                                                ; preds = %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #9
  br label %return

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_sock_info, i64 0, i64 0)) #10
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 140, i8* noundef null) #10
  br label %return

return:                                           ; preds = %4, %cleanup.thread, %sw.default
  %retval.1 = phi i32 [ 0, %sw.default ], [ 1, %4 ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, %struct.sockaddr* noundef, i32* noundef) local_unnamed_addr #5

declare %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_socket_wait(i32 noundef %fd, i32 noundef %for_read, i64 noundef %max_time) local_unnamed_addr #0 {
entry:
  %confds = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.fd_set* %confds to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %0) #9
  %1 = bitcast %struct.timeval* %tv to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #9
  %2 = icmp ugt i32 %fd, 1023
  br i1 %2, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i64 %max_time, 0
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call i64 @time(i64* noundef null) #10
  %cmp5.not = icmp slt i64 %call, %max_time
  br i1 %cmp5.not, label %do.body, label %cleanup

do.body:                                          ; preds = %if.end4
  %arrayidx = getelementptr inbounds %struct.fd_set, %struct.fd_set* %confds, i64 0, i32 0, i64 0
  %3 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %arrayidx) #9, !srcloc !13
  %rem3031 = and i32 %fd, 63
  %sh_prom = zext i32 %rem3031 to i64
  %shl = shl nuw i64 1, %sh_prom
  %div3233 = lshr i32 %fd, 6
  %4 = zext i32 %div3233 to i64
  %arrayidx10 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %confds, i64 0, i32 0, i64 %4
  %5 = load i64, i64* %arrayidx10, align 8, !tbaa !14
  %or = or i64 %5, %shl
  store i64 %or, i64* %arrayidx10, align 8, !tbaa !14
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1
  store i64 0, i64* %tv_usec, align 8, !tbaa !16
  %sub = sub nsw i64 %max_time, %call
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0
  store i64 %sub, i64* %tv_sec, align 8, !tbaa !18
  %add = add nuw nsw i32 %fd, 1
  %tobool.not = icmp eq i32 %for_read, 0
  %cond = select i1 %tobool.not, %struct.fd_set* null, %struct.fd_set* %confds
  %cond15 = select i1 %tobool.not, %struct.fd_set* %confds, %struct.fd_set* null
  %call16 = call i32 @select(i32 noundef %add, %struct.fd_set* noundef %cond, %struct.fd_set* noundef %cond15, %struct.fd_set* noundef null, %struct.timeval* noundef nonnull %tv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end, %entry, %do.body
  %retval.0 = phi i32 [ %call16, %do.body ], [ -1, %entry ], [ 1, %if.end ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #5

declare i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{i64 2148824769}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !15, i64 8}
!17 = !{!"timeval", !15, i64 0, !15, i64 8}
!18 = !{!17, !15, i64 0}
