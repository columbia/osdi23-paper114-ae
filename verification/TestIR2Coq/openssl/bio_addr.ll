; ModuleID = 'crypto/bio/bio_addr.c'
source_filename = "crypto/bio/bio_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }

@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bio_addr.c\00", align 1
@__func__.BIO_ADDR_new = private unnamed_addr constant [13 x i8] c"BIO_ADDR_new\00", align 1
@__func__.BIO_parse_hostserv = private unnamed_addr constant [19 x i8] c"BIO_parse_hostserv\00", align 1
@__func__.BIO_lookup_ex = private unnamed_addr constant [14 x i8] c"BIO_lookup_ex\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"calling getaddrinfo()\00", align 1
@bio_lookup_lock = local_unnamed_addr global i8* null, align 8
@__func__.addr_strings = private unnamed_addr constant [13 x i8] c"addr_strings\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"calling getnameinfo()\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__func__.addrinfo_wrap = private unnamed_addr constant [14 x i8] c"addrinfo_wrap\00", align 1

; Function Attrs: noinline nounwind uwtable
define %union.bio_addr_st* @BIO_ADDR_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 112, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #12
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_ADDR_new, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %union.bio_addr_st*
  %sa_family = bitcast i8* %call to i16*
  store i16 0, i16* %sa_family, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %union.bio_addr_st* [ null, %if.then ], [ %0, %if.end ]
  ret %union.bio_addr_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @BIO_ADDR_free(%union.bio_addr_st* noundef %ap) local_unnamed_addr #0 {
entry:
  %0 = bitcast %union.bio_addr_st* %ap to i8*
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 67) #12
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BIO_ADDR_clear(%union.bio_addr_st* noundef %ap) local_unnamed_addr #0 {
entry:
  %0 = bitcast %union.bio_addr_st* %ap to i8*
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 112) #12
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  store i16 0, i16* %sa_family, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_ADDR_make(%union.bio_addr_st* noundef %ap, %struct.sockaddr* noundef %sa) local_unnamed_addr #0 {
entry:
  %sa_family = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %sa, i64 0, i32 0
  %0 = load i16, i16* %sa_family, align 2, !tbaa !7
  switch i16 %0, label %return [
    i16 2, label %return.sink.split
    i16 10, label %if.then6
    i16 1, label %if.then13
  ]

if.then6:                                         ; preds = %entry
  br label %return.sink.split

if.then13:                                        ; preds = %entry
  br label %return.sink.split

return.sink.split:                                ; preds = %entry, %if.then6, %if.then13
  %.sink24 = phi i64 [ 110, %if.then13 ], [ 28, %if.then6 ], [ 16, %entry ]
  %1 = bitcast %union.bio_addr_st* %ap to i8*
  %2 = bitcast %struct.sockaddr* %sa to i8*
  %call14 = tail call i8* @memcpy(i8* noundef %1, i8* noundef %2, i64 noundef %.sink24) #12
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_ADDR_rawmake(%union.bio_addr_st* noundef %ap, i32 noundef %family, i8* noundef %where, i64 noundef %wherelen, i16 noundef zeroext %port) local_unnamed_addr #0 {
entry:
  switch i32 %family, label %return [
    i32 1, label %if.then
    i32 2, label %if.then9
    i32 10, label %if.then22
  ]

if.then:                                          ; preds = %entry
  %0 = add i64 %wherelen, -108
  %cmp1 = icmp ult i64 %0, -109
  br i1 %cmp1, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %1 = bitcast %union.bio_addr_st* %ap to i8*
  %call = tail call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 110) #12
  %sun_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  store i16 1, i16* %sun_family, align 4, !tbaa !4
  %sun_path = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  %arraydecay = bitcast i16* %sun_path to i8*
  %call5 = tail call i8* @strncpy(i8* noundef nonnull %arraydecay, i8* noundef %where, i64 noundef 107) #12
  br label %return

if.then9:                                         ; preds = %entry
  %cmp10.not = icmp eq i64 %wherelen, 4
  br i1 %cmp10.not, label %if.end13, label %return

if.end13:                                         ; preds = %if.then9
  %2 = bitcast %union.bio_addr_st* %ap to i8*
  %call14 = tail call i8* @memset(i8* noundef %2, i32 noundef 0, i64 noundef 16) #12
  %sin_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  store i16 2, i16* %sin_family, align 4, !tbaa !4
  %3 = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  store i16 %port, i16* %3, align 2, !tbaa !4
  %sin_addr = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 2
  %4 = bitcast i8* %where to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !10
  store i32 %5, i32* %sin_addr, align 4, !tbaa !10
  br label %return

if.then22:                                        ; preds = %entry
  %cmp23.not = icmp eq i64 %wherelen, 16
  br i1 %cmp23.not, label %if.end26, label %return

if.end26:                                         ; preds = %if.then22
  %6 = bitcast %union.bio_addr_st* %ap to i8*
  %call27 = tail call i8* @memset(i8* noundef %6, i32 noundef 0, i64 noundef 28) #12
  %sin6_family = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  store i16 10, i16* %sin6_family, align 4, !tbaa !4
  %sin6_port = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  store i16 %port, i16* %sin6_port, align 2, !tbaa !4
  %sin6_addr = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 3
  %7 = bitcast %struct.in6_addr* %sin6_addr to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(16) %7, i8* noundef nonnull align 4 dereferenceable(16) %where, i64 16, i1 false), !tbaa.struct !12
  br label %return

return:                                           ; preds = %entry, %if.then22, %if.then9, %if.then, %if.end26, %if.end13, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 1, %if.end13 ], [ 1, %if.end26 ], [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then22 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDR_family(%union.bio_addr_st* nocapture noundef readonly %ap) local_unnamed_addr #5 {
entry:
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  %0 = load i16, i16* %sa_family, align 4, !tbaa !4
  %conv = zext i16 %0 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_ADDR_rawaddress(%union.bio_addr_st* noundef %ap, i8* noundef %p, i64* noundef writeonly %l) local_unnamed_addr #0 {
entry:
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  %0 = load i16, i16* %sa_family, align 4, !tbaa !4
  switch i16 %0, label %cleanup [
    i16 2, label %if.then
    i16 10, label %if.then7
    i16 1, label %if.then14
  ]

if.then:                                          ; preds = %entry
  %sin_addr = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 2
  %1 = bitcast i32* %sin_addr to i8*
  br label %if.end22

if.then7:                                         ; preds = %entry
  %sin6_addr = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 3
  %2 = bitcast %struct.in6_addr* %sin6_addr to i8*
  br label %if.end22

if.then14:                                        ; preds = %entry
  %sun_path = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  %arraydecay = bitcast i16* %sun_path to i8*
  %call = tail call i64 @strlen(i8* noundef nonnull %arraydecay) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then, %if.then7, %if.then14
  %len.0.ph = phi i64 [ %call, %if.then14 ], [ 16, %if.then7 ], [ 4, %if.then ]
  %addrptr.0.ph = phi i8* [ %arraydecay, %if.then14 ], [ %2, %if.then7 ], [ %1, %if.then ]
  %cmp23.not = icmp eq i8* %p, null
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end22
  %call26 = tail call i8* @memcpy(i8* noundef nonnull %p, i8* noundef nonnull %addrptr.0.ph, i64 noundef %len.0.ph) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22
  %cmp28.not = icmp eq i64* %l, null
  br i1 %cmp28.not, label %cleanup, label %if.then30

if.then30:                                        ; preds = %if.end27
  store i64 %len.0.ph, i64* %l, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end27, %if.then30
  %retval.0 = phi i32 [ 1, %if.then30 ], [ 1, %if.end27 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* nocapture noundef readonly %ap) local_unnamed_addr #5 {
entry:
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  %0 = load i16, i16* %sa_family, align 4, !tbaa !4
  switch i16 %0, label %return [
    i16 2, label %return.sink.split
    i16 10, label %return.sink.split
  ]

return.sink.split:                                ; preds = %entry, %entry
  %sin6_port = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  %1 = load i16, i16* %sin6_port, align 2, !tbaa !4
  br label %return

return:                                           ; preds = %return.sink.split, %entry
  %retval.0 = phi i16 [ 0, %entry ], [ %1, %return.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef %ap, i32 noundef %numeric) local_unnamed_addr #0 {
entry:
  %hostname = alloca i8*, align 8
  %0 = bitcast i8** %hostname to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %hostname, align 8, !tbaa !15
  %call = call fastcc i32 @addr_strings(%union.bio_addr_st* noundef %ap, i32 noundef %numeric, i8** noundef nonnull %hostname, i8** noundef null) #15
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i8*, i8** %hostname, align 8
  %retval.0 = select i1 %tobool.not, i8* null, i8* %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @addr_strings(%union.bio_addr_st* noundef %ap, i32 noundef %numeric, i8** noundef %hostname, i8** noundef %service) unnamed_addr #0 {
entry:
  %host = alloca [1025 x i8], align 16
  %serv = alloca [32 x i8], align 16
  %call = tail call i32 @BIO_sock_init() #12
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds [1025 x i8], [1025 x i8]* %host, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1025, i8* nonnull %0) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(1025) %0, i8 0, i64 1025, i1 false)
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %serv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %tobool.not = icmp eq i32 %numeric, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 3
  %call3 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef %ap) #15
  %call4 = tail call i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* noundef %ap) #15, !range !17
  %call6 = call i32 @getnameinfo(%struct.sockaddr* noundef %call3, i32 noundef %call4, i8* noundef nonnull %0, i32 noundef 1025, i8* noundef nonnull %1, i32 noundef 32, i32 noundef %spec.select) #12
  switch i32 %call6, label %if.else [
    i32 0, label %if.end14
    i32 -11, label %if.then10
  ]

if.then10:                                        ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.addr_strings, i64 0, i64 0)) #12
  %call11 = tail call i32* @__errno_location() #16
  %2 = load i32, i32* %call11, align 4, !tbaa !10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.addr_strings, i64 0, i64 0)) #12
  %call12 = call i8* @gai_strerror(i32 noundef %call6) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef %call12) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %3 = load i8, i8* %1, align 16, !tbaa !4
  %cmp15 = icmp eq i8 %3, 0
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %call19 = call zeroext i16 @BIO_ADDR_rawport(%union.bio_addr_st* noundef %ap) #15
  %call20 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %call19) #15
  %conv21 = zext i16 %call20 to i32
  %call22 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %1, i64 noundef 32, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv21) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end14
  %cmp24.not = icmp eq i8** %hostname, null
  br i1 %cmp24.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call28 = call i8* @CRYPTO_strdup(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 246) #12
  store i8* %call28, i8** %hostname, align 8, !tbaa !15
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23
  %cmp30.not = icmp eq i8** %service, null
  br i1 %cmp30.not, label %cleanup.cont, label %if.then32

if.then32:                                        ; preds = %if.end29
  %call34 = call i8* @CRYPTO_strdup(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 248) #12
  store i8* %call34, i8** %service, align 8, !tbaa !15
  br label %cleanup.cont

cleanup:                                          ; preds = %if.then10, %if.else
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #14
  br label %return

cleanup.cont:                                     ; preds = %if.end29, %if.then32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #14
  call void @llvm.lifetime.end.p0i8(i64 1025, i8* nonnull %0) #14
  br i1 %cmp24.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.cont
  %4 = load i8*, i8** %hostname, align 8, !tbaa !15
  %cmp41 = icmp eq i8* %4, null
  br i1 %cmp41, label %if.end52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cleanup.cont
  br i1 %cmp30.not, label %return, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %5 = load i8*, i8** %service, align 8, !tbaa !15
  %cmp46 = icmp eq i8* %5, null
  br i1 %cmp46, label %if.then48, label %return

if.then48:                                        ; preds = %land.lhs.true45
  br i1 %cmp24.not, label %if.then55, label %if.end52.thread

if.end52.thread:                                  ; preds = %if.then48
  %.pre = load i8*, i8** %hostname, align 8, !tbaa !15
  call void @CRYPTO_free(i8* noundef %.pre, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #12
  store i8* null, i8** %hostname, align 8, !tbaa !15
  br label %if.end52.if.then55_crit_edge

if.end52:                                         ; preds = %land.lhs.true
  call void @CRYPTO_free(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 263) #12
  store i8* null, i8** %hostname, align 8, !tbaa !15
  br i1 %cmp30.not, label %if.end56, label %if.end52.if.then55_crit_edge

if.end52.if.then55_crit_edge:                     ; preds = %if.end52.thread, %if.end52
  %.pre77 = load i8*, i8** %service, align 8, !tbaa !15
  br label %if.then55

if.then55:                                        ; preds = %if.end52.if.then55_crit_edge, %if.then48
  %6 = phi i8* [ %.pre77, %if.end52.if.then55_crit_edge ], [ null, %if.then48 ]
  call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 267) #12
  store i8* null, i8** %service, align 8, !tbaa !15
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end52
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.addr_strings, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %return

return:                                           ; preds = %cleanup, %lor.lhs.false, %land.lhs.true45, %entry, %if.end56
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.end56 ], [ 0, %entry ], [ 1, %land.lhs.true45 ], [ 1, %lor.lhs.false ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef %ap, i32 noundef %numeric) local_unnamed_addr #0 {
entry:
  %service = alloca i8*, align 8
  %0 = bitcast i8** %service to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  store i8* null, i8** %service, align 8, !tbaa !15
  %call = call fastcc i32 @addr_strings(%union.bio_addr_st* noundef %ap, i32 noundef %numeric, i8** noundef null, i8** noundef nonnull %service) #15
  %tobool.not = icmp eq i32 %call, 0
  %1 = load i8*, i8** %service, align 8
  %retval.0 = select i1 %tobool.not, i8* null, i8* %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @BIO_ADDR_path_string(%union.bio_addr_st* noundef %ap) local_unnamed_addr #0 {
entry:
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  %0 = load i16, i16* %sa_family, align 4, !tbaa !4
  %cmp = icmp eq i16 %0, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %sun_path = getelementptr inbounds %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 1
  %arraydecay = bitcast i16* %sun_path to i8*
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 301) #12
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ null, %entry ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.sockaddr* @BIO_ADDR_sockaddr(%union.bio_addr_st* noundef readnone %ap) local_unnamed_addr #7 {
entry:
  %sa = bitcast %union.bio_addr_st* %ap to %struct.sockaddr*
  ret %struct.sockaddr* %sa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef readnone %ap) local_unnamed_addr #7 {
entry:
  %sa = bitcast %union.bio_addr_st* %ap to %struct.sockaddr*
  ret %struct.sockaddr* %sa
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDR_sockaddr_size(%union.bio_addr_st* nocapture noundef readonly %ap) local_unnamed_addr #5 {
entry:
  %sa_family = getelementptr %union.bio_addr_st, %union.bio_addr_st* %ap, i64 0, i32 0, i32 0
  %0 = load i16, i16* %sa_family, align 4, !tbaa !4
  switch i16 %0, label %if.end15 [
    i16 2, label %return
    i16 10, label %if.then7
    i16 1, label %if.then14
  ]

if.then7:                                         ; preds = %entry
  br label %return

if.then14:                                        ; preds = %entry
  br label %return

if.end15:                                         ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %if.end15, %if.then14, %if.then7
  %retval.0 = phi i32 [ 28, %if.then7 ], [ 110, %if.then14 ], [ 112, %if.end15 ], [ 16, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 7
  %0 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.addrinfo* [ %0, %if.then ], [ null, %entry ]
  ret %struct.addrinfo* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 1
  %0 = load i32, i32* %ai_family, align 4, !tbaa !20
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 2
  %0 = load i32, i32* %ai_socktype, align 8, !tbaa !21
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 3
  %0 = load i32, i32* %ai_protocol, align 4, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %if.end, label %return

if.end:                                           ; preds = %if.then
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 1
  %1 = load i32, i32* %ai_family, align 4, !tbaa !20
  %cmp4 = icmp eq i32 %1, 1
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 2
  %2 = load i32, i32* %ai_socktype, align 8, !tbaa !21
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 17, i32 0
  %switch.selectcmp13 = icmp eq i32 %2, 1
  %switch.select14 = select i1 %switch.selectcmp13, i32 6, i32 %switch.select
  br label %return

return:                                           ; preds = %entry, %if.end6, %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ], [ %switch.select14, %if.end6 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_ADDRINFO_sockaddr_size(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 4
  %0 = load i32, i32* %ai_addrlen, align 8, !tbaa !23
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.sockaddr* @BIO_ADDRINFO_sockaddr(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 5
  %0 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.sockaddr* [ %0, %if.then ], [ null, %entry ]
  ret %struct.sockaddr* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef readonly %bai) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 5
  %0 = bitcast %struct.sockaddr** %ai_addr to %union.bio_addr_st**
  %1 = load %union.bio_addr_st*, %union.bio_addr_st** %0, align 8, !tbaa !24
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.bio_addr_st* [ %1, %if.then ], [ null, %entry ]
  ret %union.bio_addr_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %bai) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.addrinfo* %bai, null
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %entry
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai, i64 0, i32 1
  %0 = load i32, i32* %ai_family, align 4, !tbaa !20
  %cmp1.not = icmp eq i32 %0, 1
  br i1 %cmp1.not, label %while.body, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @freeaddrinfo(%struct.addrinfo* noundef nonnull %bai) #12
  br label %while.end

while.body:                                       ; preds = %if.end, %while.body
  %bai.addr.013 = phi %struct.addrinfo* [ %1, %while.body ], [ %bai, %if.end ]
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai.addr.013, i64 0, i32 7
  %1 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8, !tbaa !18
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %bai.addr.013, i64 0, i32 5
  %2 = bitcast %struct.sockaddr** %ai_addr to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !24
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 449) #12
  %4 = bitcast %struct.addrinfo* %bai.addr.013 to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 450) #12
  %cmp4.not = icmp eq %struct.addrinfo* %1, null
  br i1 %cmp4.not, label %while.end, label %while.body, !llvm.loop !25

while.end:                                        ; preds = %while.body, %entry, %if.then2
  ret void
}

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_parse_hostserv(i8* noundef %hostserv, i8** noundef writeonly %host, i8** noundef writeonly %service, i32 noundef %hostserv_prio) local_unnamed_addr #0 {
entry:
  %0 = load i8, i8* %hostserv, align 1, !tbaa !4
  %cmp = icmp eq i8 %0, 91
  br i1 %cmp, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %call = tail call i8* @strchr(i8* noundef nonnull %hostserv, i32 noundef 93) #13
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %spec_err, label %if.end

if.end:                                           ; preds = %if.then
  %add.ptr = getelementptr inbounds i8, i8* %hostserv, i64 1
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 1
  %1 = load i8, i8* %incdec.ptr, align 1, !tbaa !4
  switch i8 %1, label %spec_err [
    i8 0, label %if.end47
    i8 58, label %if.end42.thread
  ]

if.end42.thread:                                  ; preds = %if.end
  %incdec.ptr14 = getelementptr inbounds i8, i8* %call, i64 2
  br label %land.lhs.true.sink.split

if.else18:                                        ; preds = %entry
  %call19 = tail call i8* @strrchr(i8* noundef nonnull %hostserv, i32 noundef 58) #13
  %call20 = tail call i8* @strchr(i8* noundef nonnull %hostserv, i32 noundef 58) #13
  %cmp21.not = icmp eq i8* %call20, %call19
  br i1 %cmp21.not, label %if.end24, label %amb_err

if.end24:                                         ; preds = %if.else18
  %cmp25.not = icmp eq i8* %call19, null
  br i1 %cmp25.not, label %if.else33, label %if.then27

if.then27:                                        ; preds = %if.end24
  %sub.ptr.lhs.cast28 = ptrtoint i8* %call19 to i64
  %sub.ptr.rhs.cast29 = ptrtoint i8* %hostserv to i64
  %sub.ptr.sub30 = sub i64 %sub.ptr.lhs.cast28, %sub.ptr.rhs.cast29
  %incdec.ptr31 = getelementptr inbounds i8, i8* %call19, i64 1
  br label %land.lhs.true.sink.split

if.else33:                                        ; preds = %if.end24
  %cmp34 = icmp eq i32 %hostserv_prio, 0
  %call37 = tail call i64 @strlen(i8* noundef nonnull %hostserv) #13
  br i1 %cmp34, label %if.end47, label %land.lhs.true

land.lhs.true.sink.split:                         ; preds = %if.end42.thread, %if.then27
  %incdec.ptr31.sink = phi i8* [ %incdec.ptr31, %if.then27 ], [ %incdec.ptr14, %if.end42.thread ]
  %hl.2157.ph = phi i64 [ %sub.ptr.sub30, %if.then27 ], [ %sub.ptr.sub, %if.end42.thread ]
  %h.2155.ph = phi i8* [ %hostserv, %if.then27 ], [ %add.ptr, %if.end42.thread ]
  %call32 = tail call i64 @strlen(i8* noundef nonnull %incdec.ptr31.sink) #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %if.else33
  %pl.2161 = phi i64 [ %call37, %if.else33 ], [ %call32, %land.lhs.true.sink.split ]
  %p.2158 = phi i8* [ %hostserv, %if.else33 ], [ %incdec.ptr31.sink, %land.lhs.true.sink.split ]
  %hl.2157 = phi i64 [ 0, %if.else33 ], [ %hl.2157.ph, %land.lhs.true.sink.split ]
  %h.2155 = phi i8* [ null, %if.else33 ], [ %h.2155.ph, %land.lhs.true.sink.split ]
  %call45 = tail call i8* @strchr(i8* noundef nonnull %p.2158, i32 noundef 58) #13
  %tobool.not = icmp eq i8* %call45, null
  br i1 %tobool.not, label %if.end47, label %spec_err

if.end47:                                         ; preds = %if.else33, %if.end, %land.lhs.true
  %cmp43162 = phi i1 [ true, %land.lhs.true ], [ false, %if.end ], [ false, %if.else33 ]
  %pl.2160 = phi i64 [ %pl.2161, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.else33 ]
  %p.2159 = phi i8* [ %p.2158, %land.lhs.true ], [ null, %if.end ], [ null, %if.else33 ]
  %hl.2156 = phi i64 [ %hl.2157, %land.lhs.true ], [ %sub.ptr.sub, %if.end ], [ %call37, %if.else33 ]
  %h.2154 = phi i8* [ %h.2155, %land.lhs.true ], [ %add.ptr, %if.end ], [ %hostserv, %if.else33 ]
  %cmp48 = icmp ne i8* %h.2154, null
  %cmp51 = icmp ne i8** %host, null
  %or.cond = and i1 %cmp51, %cmp48
  br i1 %or.cond, label %if.then53, label %if.end70

if.then53:                                        ; preds = %if.end47
  switch i64 %hl.2156, label %if.else63 [
    i64 0, label %if.then62
    i64 1, label %land.lhs.true58
  ]

land.lhs.true58:                                  ; preds = %if.then53
  %2 = load i8, i8* %h.2154, align 1, !tbaa !4
  %cmp60 = icmp eq i8 %2, 42
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.then53, %land.lhs.true58
  store i8* null, i8** %host, align 8, !tbaa !15
  br label %if.end70

if.else63:                                        ; preds = %if.then53, %land.lhs.true58
  %call64 = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %h.2154, i64 noundef %hl.2156, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 539) #12
  store i8* %call64, i8** %host, align 8, !tbaa !15
  %cmp65 = icmp eq i8* %call64, null
  br i1 %cmp65, label %memerr, label %if.end70

if.end70:                                         ; preds = %if.then62, %if.else63, %if.end47
  %cmp74 = icmp ne i8** %service, null
  %or.cond100 = and i1 %cmp74, %cmp43162
  br i1 %or.cond100, label %if.then76, label %cleanup96

if.then76:                                        ; preds = %if.end70
  switch i64 %pl.2160, label %if.else88 [
    i64 0, label %if.then87
    i64 1, label %land.lhs.true82
  ]

land.lhs.true82:                                  ; preds = %if.then76
  %3 = load i8, i8* %p.2159, align 1, !tbaa !4
  %cmp85 = icmp eq i8 %3, 42
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.then76, %land.lhs.true82
  store i8* null, i8** %service, align 8, !tbaa !15
  br label %cleanup96

if.else88:                                        ; preds = %if.then76, %land.lhs.true82
  %call89 = tail call i8* @CRYPTO_strndup(i8* noundef nonnull %p.2159, i64 noundef %pl.2160, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 549) #12
  store i8* %call89, i8** %service, align 8, !tbaa !15
  %cmp90 = icmp eq i8* %call89, null
  br i1 %cmp90, label %memerr, label %cleanup96

amb_err:                                          ; preds = %if.else18
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BIO_parse_hostserv, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 129, i8* noundef null) #12
  br label %cleanup96

spec_err:                                         ; preds = %if.end, %land.lhs.true, %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 560, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BIO_parse_hostserv, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 130, i8* noundef null) #12
  br label %cleanup96

memerr:                                           ; preds = %if.else88, %if.else63
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 563, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BIO_parse_hostserv, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup96

cleanup96:                                        ; preds = %if.end70, %if.else88, %if.then87, %memerr, %spec_err, %amb_err
  %retval.0 = phi i32 [ 0, %spec_err ], [ 0, %memerr ], [ 0, %amb_err ], [ 1, %if.then87 ], [ 1, %if.else88 ], [ 1, %if.end70 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #6

declare i8* @CRYPTO_strndup(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_lookup(i8* noundef %host, i8* noundef %service, i32 noundef %lookup_type, i32 noundef %family, i32 noundef %socktype, %struct.addrinfo** noundef %res) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_lookup_ex(i8* noundef %host, i8* noundef %service, i32 noundef %lookup_type, i32 noundef %family, i32 noundef %socktype, i32 noundef 0, %struct.addrinfo** noundef %res) #15
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_lookup_ex(i8* noundef %host, i8* noundef %service, i32 noundef %lookup_type, i32 noundef %family, i32 noundef %socktype, i32 noundef %protocol, %struct.addrinfo** noundef %res) local_unnamed_addr #0 {
entry:
  %hints = alloca %struct.addrinfo, align 8
  switch i32 %family, label %sw.default [
    i32 1, label %if.then
    i32 0, label %if.end3
    i32 2, label %if.end3
    i32 10, label %if.end3
  ]

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 670, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 131, i8* noundef null) #12
  br label %cleanup123

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %host) #13
  %call1 = tail call fastcc i32 @addrinfo_wrap(i32 noundef %socktype, i8* noundef %host, i64 noundef %call, %struct.addrinfo** noundef %res) #15
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %cleanup123

if.else:                                          ; preds = %if.then
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 679, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %cleanup123

if.end3:                                          ; preds = %entry, %entry, %entry
  %call4 = tail call i32 @BIO_sock_init() #12
  %cmp5.not = icmp eq i32 %call4, 1
  br i1 %cmp5.not, label %if.then8, label %cleanup123

if.then8:                                         ; preds = %if.end3
  %0 = bitcast %struct.addrinfo* %hints to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #14
  %call9 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 48) #12
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 1
  store i32 %family, i32* %ai_family, align 4, !tbaa !20
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 2
  store i32 %socktype, i32* %ai_socktype, align 8, !tbaa !21
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 3
  store i32 %protocol, i32* %ai_protocol, align 4, !tbaa !22
  %cmp10 = icmp ne i8* %host, null
  %cmp11 = icmp eq i32 %family, 0
  %or.cond = and i1 %cmp10, %cmp11
  br i1 %or.cond, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 0
  %1 = load i32, i32* %ai_flags, align 8, !tbaa !27
  %or = or i32 %1, 32
  store i32 %or, i32* %ai_flags, align 8, !tbaa !27
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then8
  %cmp14 = icmp eq i32 %lookup_type, 1
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %ai_flags16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 0
  %2 = load i32, i32* %ai_flags16, align 8, !tbaa !27
  %or17 = or i32 %2, 1
  store i32 %or17, i32* %ai_flags16, align 8, !tbaa !27
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  %ai_flags25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i64 0, i32 0
  br label %retry

retry:                                            ; preds = %if.then27, %if.end18
  %old_ret.0 = phi i32 [ 0, %if.end18 ], [ %call19, %if.then27 ]
  %call19 = call i32 @getaddrinfo(i8* noundef %host, i8* noundef %service, %struct.addrinfo* noundef nonnull %hints, %struct.addrinfo** noundef %res) #12
  switch i32 %call19, label %sw.default24 [
    i32 -11, label %sw.bb20
    i32 -10, label %sw.bb22
    i32 0, label %sw.epilog35
  ]

sw.bb20:                                          ; preds = %retry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 716, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  %call21 = tail call i32* @__errno_location() #16
  %3 = load i32, i32* %call21, align 4, !tbaa !10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #12
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 718, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef null) #12
  br label %sw.epilog35

sw.bb22:                                          ; preds = %retry
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 723, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %sw.epilog35

sw.default24:                                     ; preds = %retry
  %4 = load i32, i32* %ai_flags25, align 8, !tbaa !27
  %and = and i32 %4, 32
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %sw.default24
  %and29 = and i32 %4, -37
  %or31 = or i32 %and29, 4
  store i32 %or31, i32* %ai_flags25, align 8, !tbaa !27
  br label %retry

if.end32:                                         ; preds = %sw.default24
  call void @ERR_new() #12
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 738, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_lookup_ex, i64 0, i64 0)) #12
  %tobool33.not = icmp eq i32 %old_ret.0, 0
  %cond = select i1 %tobool33.not, i32 %call19, i32 %old_ret.0
  %call34 = call i8* @gai_strerror(i32 noundef %cond) #12
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 524290, i8* noundef %call34) #12
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %retry, %if.end32, %sw.bb22, %sw.bb20
  %ret.0 = phi i32 [ 0, %if.end32 ], [ 0, %sw.bb22 ], [ 0, %sw.bb20 ], [ 1, %retry ]
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #14
  br label %cleanup123

cleanup123:                                       ; preds = %if.end3, %if.then, %sw.epilog35, %if.else, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.else ], [ %ret.0, %sw.epilog35 ], [ 1, %if.then ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @addrinfo_wrap(i32 noundef %socktype, i8* noundef %where, i64 noundef %wherelen, %struct.addrinfo** nocapture noundef %bai) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 48, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 581) #12
  %0 = bitcast %struct.addrinfo** %bai to i8**
  store i8* %call, i8** %0, align 8, !tbaa !15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #12
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 582, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.addrinfo_wrap, i64 0, i64 0)) #12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #12
  br label %return

if.end:                                           ; preds = %entry
  %ai_family = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %ai_family to i32*
  store i32 1, i32* %1, align 4, !tbaa !20
  %ai_socktype = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %ai_socktype to i32*
  store i32 %socktype, i32* %2, align 8, !tbaa !21
  %ai_protocol10 = getelementptr inbounds i8, i8* %call, i64 12
  %3 = bitcast i8* %ai_protocol10 to i32*
  store i32 0, i32* %3, align 4, !tbaa !22
  %call12 = tail call %union.bio_addr_st* @BIO_ADDR_new() #15
  %cmp13.not = icmp eq %union.bio_addr_st* %call12, null
  br i1 %cmp13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  %call15 = tail call i32 @BIO_ADDR_rawmake(%union.bio_addr_st* noundef nonnull %call12, i32 noundef 1, i8* noundef %where, i64 noundef %wherelen, i16 noundef zeroext 0) #15
  %call16 = tail call %struct.sockaddr* @BIO_ADDR_sockaddr_noconst(%union.bio_addr_st* noundef nonnull %call12) #15
  %4 = load %struct.addrinfo*, %struct.addrinfo** %bai, align 8, !tbaa !15
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i64 0, i32 5
  store %struct.sockaddr* %call16, %struct.sockaddr** %ai_addr, align 8, !tbaa !24
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end
  %5 = load %struct.addrinfo*, %struct.addrinfo** %bai, align 8, !tbaa !15
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i64 0, i32 7
  store %struct.addrinfo* null, %struct.addrinfo** %ai_next, align 8, !tbaa !18
  %6 = load %struct.addrinfo*, %struct.addrinfo** %bai, align 8, !tbaa !15
  %ai_addr18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i64 0, i32 5
  %7 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr18, align 8, !tbaa !24
  %cmp19 = icmp eq %struct.sockaddr* %7, null
  br i1 %cmp19, label %if.then20, label %return

if.then20:                                        ; preds = %if.end17
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef nonnull %6) #15
  store %struct.addrinfo* null, %struct.addrinfo** %bai, align 8, !tbaa !15
  br label %return

return:                                           ; preds = %if.end17, %if.then20, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then20 ], [ 1, %if.end17 ]
  ret i32 %retval.0
}

declare i32 @BIO_sock_init() local_unnamed_addr #2

declare i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @gai_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #10 {
entry:
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev
}

declare i32 @getnameinfo(%struct.sockaddr* noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"sockaddr", !9, i64 0, !5, i64 2}
!9 = !{!"short", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !5, i64 0}
!12 = !{i64 0, i64 16, !4, i64 0, i64 16, !4, i64 0, i64 16, !4}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{i32 16, i32 113}
!18 = !{!19, !16, i64 40}
!19 = !{!"addrinfo", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{!19, !11, i64 12}
!23 = !{!19, !11, i64 16}
!24 = !{!19, !16, i64 24}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!19, !11, i64 0}
