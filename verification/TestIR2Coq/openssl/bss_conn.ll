; ModuleID = 'crypto/bio/bss_conn.c'
source_filename = "crypto/bio/bss_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, {}*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_connect_st = type { i32, i32, i8*, i8*, i32, %struct.addrinfo*, %struct.addrinfo*, i32 (%struct.bio_st*, i32, i32)* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bss_conn.c\00", align 1
@__func__.BIO_CONNECT_new = private unnamed_addr constant [16 x i8] c"BIO_CONNECT_new\00", align 1
@methods_connectp = internal constant %struct.bio_method_st { i32 1292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @conn_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @conn_read, i32 (%struct.bio_st*, i8*)* @conn_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @conn_ctrl, i32 (%struct.bio_st*)* @conn_new, i32 (%struct.bio_st*)* @conn_free, i64 (%struct.bio_st*, i32, {}*)* @conn_callback_ctrl }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"socket connect\00", align 1
@__func__.conn_state = private unnamed_addr constant [11 x i8] c"conn_state\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hostname=%s service=%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"calling socket(%s, %s)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"calling connect(%s, %s)\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_connect_st* @BIO_CONNECT_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 243) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BIO_CONNECT_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bio_connect_st*
  %state = bitcast i8* %call to i32*
  store i32 1, i32* %state, align 8, !tbaa !4
  %connect_family = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %connect_family to i32*
  store i32 256, i32* %1, align 4, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_connect_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_connect_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @BIO_CONNECT_free(%struct.bio_connect_st* noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_connect_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %param_hostname = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %a, i64 0, i32 2
  %0 = load i8*, i8** %param_hostname, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 256) #7
  %param_service = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %a, i64 0, i32 3
  %1 = load i8*, i8** %param_service, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 257) #7
  %addr_first = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %a, i64 0, i32 5
  %2 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !13
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %2) #7
  %3 = bitcast %struct.bio_connect_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 259) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_ADDRINFO_free(%struct.addrinfo* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_connect() local_unnamed_addr #2 {
entry:
  ret %struct.bio_method_st* @methods_connectp
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_connect(i8* noundef %str) local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_connectp) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 100, i64 noundef 0, i8* noundef %str) #7
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.bio_st* [ null, %if.end4 ], [ null, %entry ], [ %call1, %if.end ]
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @conn_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #0 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_connect_st**
  %1 = load %struct.bio_connect_st*, %struct.bio_connect_st** %0, align 8, !tbaa !14
  %state = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 0
  %2 = load i32, i32* %state, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %2, 5
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @conn_state(%struct.bio_st* noundef nonnull %b, %struct.bio_connect_st* noundef nonnull %1) #8
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %call4 = tail call i32* @__errno_location() #9
  store i32 0, i32* %call4, align 4, !tbaa !18
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %3 = load i32, i32* %num, align 8, !tbaa !19
  %conv = sext i32 %inl to i64
  %call5 = tail call i64 @write(i32 noundef %3, i8* noundef %in, i64 noundef %conv) #7
  %conv6 = trunc i64 %call5 to i32
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %cmp7 = icmp slt i32 %conv6, 1
  br i1 %cmp7, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end3
  %call10 = tail call i32 @BIO_sock_should_retry(i32 noundef %conv6) #7
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %cleanup, label %if.then11

if.then11:                                        ; preds = %if.then9
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then11, %if.then9, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv6, %if.then9 ], [ %conv6, %if.then11 ], [ %conv6, %if.end3 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @conn_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #0 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_connect_st**
  %1 = load %struct.bio_connect_st*, %struct.bio_connect_st** %0, align 8, !tbaa !14
  %state = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 0
  %2 = load i32, i32* %state, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %2, 5
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @conn_state(%struct.bio_st* noundef nonnull %b, %struct.bio_connect_st* noundef nonnull %1) #8
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.then, %entry
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %cmp4.not = icmp eq i8* %out, null
  br i1 %cmp4.not, label %cleanup, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call i32* @__errno_location() #9
  store i32 0, i32* %call6, align 4, !tbaa !18
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %3 = load i32, i32* %num, align 8, !tbaa !19
  %conv = sext i32 %outl to i64
  %call7 = tail call i64 @read(i32 noundef %3, i8* noundef nonnull %out, i64 noundef %conv) #7
  %conv8 = trunc i64 %call7 to i32
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %cmp9 = icmp slt i32 %conv8, 1
  br i1 %cmp9, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.then5
  %call12 = tail call i32 @BIO_sock_should_retry(i32 noundef %conv8) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 9) #7
  br label %cleanup

if.else:                                          ; preds = %if.then11
  %cmp14 = icmp eq i32 %conv8, 0
  br i1 %cmp14, label %if.then16, label %cleanup

if.then16:                                        ; preds = %if.else
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %4 = load i32, i32* %flags, align 8, !tbaa !20
  %or = or i32 %4, 2048
  store i32 %or, i32* %flags, align 8, !tbaa !20
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then13, %if.then16, %if.else, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv8, %if.then13 ], [ 0, %if.then16 ], [ %conv8, %if.else ], [ %conv8, %if.then5 ], [ %ret.0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @conn_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #10
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @conn_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @conn_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #0 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_connect_st**
  %1 = load %struct.bio_connect_st*, %struct.bio_connect_st** %0, align 8, !tbaa !14
  switch i32 %cmd, label %sw.default158 [
    i32 1, label %sw.bb
    i32 101, label %sw.bb3
    i32 123, label %sw.bb5
    i32 100, label %sw.bb38
    i32 102, label %sw.bb100
    i32 155, label %sw.bb107
    i32 105, label %sw.bb110
    i32 8, label %sw.bb123
    i32 9, label %sw.bb125
    i32 10, label %sw.bb128
    i32 13, label %sw.bb128
    i32 11, label %sw.epilog159
    i32 12, label %sw.bb129
    i32 14, label %sw.bb149
    i32 15, label %sw.bb150
    i32 2, label %sw.bb152
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 0
  store i32 1, i32* %state, align 8, !tbaa !4
  tail call fastcc void @conn_close_socket(%struct.bio_st* noundef nonnull %b) #8
  %addr_first = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 5
  %2 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !13
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %2) #7
  store %struct.addrinfo* null, %struct.addrinfo** %addr_first, align 8, !tbaa !13
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !20
  br label %sw.epilog159

sw.bb3:                                           ; preds = %entry
  %state4 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 0
  %3 = load i32, i32* %state4, align 8, !tbaa !4
  %cmp.not = icmp eq i32 %3, 5
  br i1 %cmp.not, label %sw.epilog159, label %if.then

if.then:                                          ; preds = %sw.bb3
  %call = tail call fastcc i32 @conn_state(%struct.bio_st* noundef nonnull %b, %struct.bio_connect_st* noundef nonnull %1) #8
  %conv = sext i32 %call to i64
  br label %sw.epilog159

sw.bb5:                                           ; preds = %entry
  %cmp6.not = icmp eq i8* %ptr, null
  br i1 %cmp6.not, label %sw.epilog159, label %if.then8

if.then8:                                         ; preds = %sw.bb5
  %4 = bitcast i8* %ptr to i8**
  switch i64 %num, label %sw.epilog159 [
    i64 0, label %if.then11
    i64 1, label %if.then15
    i64 2, label %if.then19
    i64 3, label %if.then24
  ]

if.then11:                                        ; preds = %if.then8
  %param_hostname = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 2
  %5 = load i8*, i8** %param_hostname, align 8, !tbaa !11
  store i8* %5, i8** %4, align 8, !tbaa !21
  br label %sw.epilog159

if.then15:                                        ; preds = %if.then8
  %param_service = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 3
  %6 = load i8*, i8** %param_service, align 8, !tbaa !12
  store i8* %6, i8** %4, align 8, !tbaa !21
  br label %sw.epilog159

if.then19:                                        ; preds = %if.then8
  %addr_iter = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 6
  %7 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter, align 8, !tbaa !22
  %call20 = tail call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %7) #7
  %8 = bitcast i8* %ptr to %union.bio_addr_st**
  store %union.bio_addr_st* %call20, %union.bio_addr_st** %8, align 8, !tbaa !21
  br label %sw.epilog159

if.then24:                                        ; preds = %if.then8
  %addr_iter25 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 6
  %9 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter25, align 8, !tbaa !22
  %call26 = tail call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %9) #7
  switch i32 %call26, label %sw.default [
    i32 10, label %sw.epilog159
    i32 2, label %sw.bb28
    i32 0, label %sw.bb29
  ]

sw.bb28:                                          ; preds = %if.then24
  br label %sw.epilog159

sw.bb29:                                          ; preds = %if.then24
  %connect_family = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 1
  %10 = load i32, i32* %connect_family, align 4, !tbaa !10
  %conv30 = sext i32 %10 to i64
  br label %sw.epilog159

sw.default:                                       ; preds = %if.then24
  br label %sw.epilog159

sw.bb38:                                          ; preds = %entry
  %cmp39.not = icmp eq i8* %ptr, null
  br i1 %cmp39.not, label %sw.epilog159, label %if.then41

if.then41:                                        ; preds = %sw.bb38
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !23
  switch i64 %num, label %sw.epilog159 [
    i64 0, label %if.then44
    i64 1, label %if.then60
    i64 2, label %if.then71
    i64 3, label %if.then92
  ]

if.then44:                                        ; preds = %if.then41
  %param_service45 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 3
  %11 = load i8*, i8** %param_service45, align 8, !tbaa !12
  %param_hostname46 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 2
  %12 = load i8*, i8** %param_hostname46, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %12, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 444) #7
  store i8* null, i8** %param_hostname46, align 8, !tbaa !11
  %call50 = tail call i32 @BIO_parse_hostserv(i8* noundef nonnull %ptr, i8** noundef nonnull %param_hostname46, i8** noundef nonnull %param_service45, i32 noundef 0) #7
  %conv51 = sext i32 %call50 to i64
  %13 = load i8*, i8** %param_service45, align 8, !tbaa !12
  %cmp53.not = icmp eq i8* %11, %13
  br i1 %cmp53.not, label %sw.epilog159, label %if.then55

if.then55:                                        ; preds = %if.then44
  tail call void @CRYPTO_free(i8* noundef %11, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 451) #7
  br label %sw.epilog159

if.then60:                                        ; preds = %if.then41
  %param_service61 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 3
  %14 = load i8*, i8** %param_service61, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 453) #7
  %call62 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %ptr, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 454) #7
  store i8* %call62, i8** %param_service61, align 8, !tbaa !12
  %cmp64 = icmp ne i8* %call62, null
  %spec.select = zext i1 %cmp64 to i64
  br label %sw.epilog159

if.then71:                                        ; preds = %if.then41
  %15 = bitcast i8* %ptr to %union.bio_addr_st*
  %call72 = tail call i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef nonnull %15, i32 noundef 1) #7
  %call73 = tail call i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef nonnull %15, i32 noundef 1) #7
  %cmp74 = icmp ne i8* %call72, null
  %cmp76 = icmp ne i8* %call73, null
  %16 = select i1 %cmp74, i1 %cmp76, i1 false
  br i1 %16, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.then71
  %param_hostname80 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 2
  %17 = load i8*, i8** %param_hostname80, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 463) #7
  store i8* %call72, i8** %param_hostname80, align 8, !tbaa !11
  %param_service82 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 3
  %18 = load i8*, i8** %param_service82, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 465) #7
  store i8* %call73, i8** %param_service82, align 8, !tbaa !12
  %addr_first84 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 5
  %19 = load %struct.addrinfo*, %struct.addrinfo** %addr_first84, align 8, !tbaa !13
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %19) #7
  %20 = bitcast %struct.addrinfo** %addr_first84 to <2 x %struct.addrinfo*>*
  store <2 x %struct.addrinfo*> zeroinitializer, <2 x %struct.addrinfo*>* %20, align 8, !tbaa !21
  br label %sw.epilog159

if.else87:                                        ; preds = %if.then71
  tail call void @CRYPTO_free(i8* noundef %call72, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 471) #7
  tail call void @CRYPTO_free(i8* noundef %call73, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 472) #7
  br label %sw.epilog159

if.then92:                                        ; preds = %if.then41
  %21 = bitcast i8* %ptr to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !18
  %connect_family93 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 1
  store i32 %22, i32* %connect_family93, align 4, !tbaa !10
  br label %sw.epilog159

sw.bb100:                                         ; preds = %entry
  %cmp101.not = icmp eq i64 %num, 0
  %connect_mode105 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 4
  %23 = load i32, i32* %connect_mode105, align 8, !tbaa !24
  br i1 %cmp101.not, label %if.else104, label %if.then103

if.then103:                                       ; preds = %sw.bb100
  %or = or i32 %23, 8
  store i32 %or, i32* %connect_mode105, align 8, !tbaa !24
  br label %sw.epilog159

if.else104:                                       ; preds = %sw.bb100
  %and = and i32 %23, -9
  store i32 %and, i32* %connect_mode105, align 8, !tbaa !24
  br label %sw.epilog159

sw.bb107:                                         ; preds = %entry
  %conv108 = trunc i64 %num to i32
  %connect_mode109 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 4
  store i32 %conv108, i32* %connect_mode109, align 8, !tbaa !24
  br label %sw.epilog159

sw.bb110:                                         ; preds = %entry
  %init111 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %24 = load i32, i32* %init111, align 8, !tbaa !23
  %tobool112.not = icmp eq i32 %24, 0
  br i1 %tobool112.not, label %sw.epilog159, label %if.then113

if.then113:                                       ; preds = %sw.bb110
  %cmp114.not = icmp eq i8* %ptr, null
  br i1 %cmp114.not, label %if.end118, label %if.then116

if.then116:                                       ; preds = %if.then113
  %25 = bitcast i8* %ptr to i32*
  %num117 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %26 = load i32, i32* %num117, align 8, !tbaa !19
  store i32 %26, i32* %25, align 4, !tbaa !18
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.then113
  %num119 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %27 = load i32, i32* %num119, align 8, !tbaa !19
  %conv120 = sext i32 %27 to i64
  br label %sw.epilog159

sw.bb123:                                         ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %28 = load i32, i32* %shutdown, align 4, !tbaa !25
  %conv124 = sext i32 %28 to i64
  br label %sw.epilog159

sw.bb125:                                         ; preds = %entry
  %conv126 = trunc i64 %num to i32
  %shutdown127 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv126, i32* %shutdown127, align 4, !tbaa !25
  br label %sw.epilog159

sw.bb128:                                         ; preds = %entry, %entry
  br label %sw.epilog159

sw.bb129:                                         ; preds = %entry
  %29 = bitcast i8* %ptr to %struct.bio_st*
  %param_hostname130 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 2
  %30 = load i8*, i8** %param_hostname130, align 8, !tbaa !11
  %tobool131.not = icmp eq i8* %30, null
  br i1 %tobool131.not, label %if.end135, label %if.then132

if.then132:                                       ; preds = %sw.bb129
  %call134 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %29, i32 noundef 100, i64 noundef 0, i8* noundef nonnull %30) #7
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %sw.bb129
  %param_service136 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 3
  %31 = load i8*, i8** %param_service136, align 8, !tbaa !12
  %tobool137.not = icmp eq i8* %31, null
  br i1 %tobool137.not, label %if.end141, label %if.then138

if.then138:                                       ; preds = %if.end135
  %call140 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %29, i32 noundef 100, i64 noundef 1, i8* noundef nonnull %31) #7
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135
  %connect_family142 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 1
  %32 = load i32, i32* %connect_family142, align 4, !tbaa !10
  %call143 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef %29, i32 noundef 100, i64 noundef 3, i32 noundef %32) #7
  %connect_mode144 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 4
  %33 = load i32, i32* %connect_mode144, align 8, !tbaa !24
  %conv145 = sext i32 %33 to i64
  %call146 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %29, i32 noundef 155, i64 noundef %conv145, i8* noundef null) #7
  %info_callback = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 7
  %34 = bitcast i32 (%struct.bio_st*, i32, i32)** %info_callback to {}**
  %35 = load {}*, {}** %34, align 8, !tbaa !26
  %call147 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef %29, i32 noundef 14, {}* noundef %35) #7
  br label %sw.epilog159

sw.bb149:                                         ; preds = %entry
  br label %sw.epilog159

sw.bb150:                                         ; preds = %entry
  %36 = bitcast i8* %ptr to i32 (%struct.bio_st*, i32, i32)**
  %info_callback151 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 7
  %37 = load i32 (%struct.bio_st*, i32, i32)*, i32 (%struct.bio_st*, i32, i32)** %info_callback151, align 8, !tbaa !26
  store i32 (%struct.bio_st*, i32, i32)* %37, i32 (%struct.bio_st*, i32, i32)** %36, align 8, !tbaa !21
  br label %sw.epilog159

sw.bb152:                                         ; preds = %entry
  %flags153 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %38 = load i32, i32* %flags153, align 8, !tbaa !20
  %and154 = lshr i32 %38, 11
  %and154.lobit = and i32 %and154, 1
  %39 = zext i32 %and154.lobit to i64
  br label %sw.epilog159

sw.default158:                                    ; preds = %entry
  br label %sw.epilog159

sw.epilog159:                                     ; preds = %if.then60, %sw.bb110, %if.then41, %if.then79, %if.else87, %if.then44, %if.then55, %sw.bb5, %if.then8, %if.then24, %sw.bb3, %if.end118, %if.then103, %if.else104, %sw.bb38, %if.then92, %if.then15, %sw.default, %sw.bb29, %sw.bb28, %if.then19, %if.then11, %if.then, %sw.default158, %sw.bb152, %sw.bb150, %sw.bb149, %if.end141, %entry, %sw.bb128, %sw.bb125, %sw.bb123, %sw.bb107, %sw.bb
  %ret.0 = phi i64 [ 0, %sw.default158 ], [ %39, %sw.bb152 ], [ 1, %sw.bb150 ], [ 0, %sw.bb149 ], [ 1, %if.end141 ], [ 1, %entry ], [ 0, %sw.bb128 ], [ 1, %sw.bb125 ], [ %conv124, %sw.bb123 ], [ %conv120, %if.end118 ], [ 1, %sw.bb107 ], [ 1, %if.then103 ], [ 1, %if.else104 ], [ 1, %if.then92 ], [ 1, %sw.bb38 ], [ 1, %if.then11 ], [ 1, %if.then15 ], [ 1, %if.then19 ], [ -1, %sw.default ], [ %conv30, %sw.bb29 ], [ 4, %sw.bb28 ], [ %conv, %if.then ], [ 0, %sw.bb ], [ 1, %sw.bb3 ], [ 6, %if.then24 ], [ 0, %if.then8 ], [ 0, %sw.bb5 ], [ %conv51, %if.then55 ], [ %conv51, %if.then44 ], [ %spec.select, %if.then60 ], [ 0, %if.else87 ], [ 1, %if.then79 ], [ 0, %if.then41 ], [ -1, %sw.bb110 ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @conn_new(%struct.bio_st* nocapture noundef writeonly %bi) #0 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !23
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 -1, i32* %num, align 8, !tbaa !19
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !20
  %call = tail call %struct.bio_connect_st* @BIO_CONNECT_new() #8
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_connect_st**
  store %struct.bio_connect_st* %call, %struct.bio_connect_st** %0, align 8, !tbaa !14
  %cmp = icmp ne %struct.bio_connect_st* %call, null
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @conn_free(%struct.bio_st* noundef %a) #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !25
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = bitcast i8** %ptr to %struct.bio_connect_st**
  %2 = load %struct.bio_connect_st*, %struct.bio_connect_st** %1, align 8, !tbaa !14
  tail call fastcc void @conn_close_socket(%struct.bio_st* noundef nonnull %a) #8
  tail call void @BIO_CONNECT_free(%struct.bio_connect_st* noundef %2) #8
  store i8* null, i8** %ptr, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !20
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then1, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then1 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i64 @conn_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, {}* noundef %fp.coerce) #3 {
entry:
  %cond = icmp eq i32 %cmd, 14
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_connect_st**
  %1 = load %struct.bio_connect_st*, %struct.bio_connect_st** %0, align 8, !tbaa !14
  %info_callback = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %1, i64 0, i32 7
  %2 = bitcast i32 (%struct.bio_st*, i32, i32)** %info_callback to {}**
  store {}* %fp.coerce, {}** %2, align 8, !tbaa !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb
  %ret.0 = phi i64 [ 1, %sw.bb ], [ 0, %entry ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @conn_state(%struct.bio_st* noundef %b, %struct.bio_connect_st* noundef %c) unnamed_addr #0 {
entry:
  %info_callback = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 7
  %0 = load i32 (%struct.bio_st*, i32, i32)*, i32 (%struct.bio_st*, i32, i32)** %info_callback, align 8, !tbaa !26
  %cmp.not = icmp eq i32 (%struct.bio_st*, i32, i32)* %0, null
  %state = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 0
  %num73 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %addr_iter77 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 6
  %connect_mode = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 4
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 8
  %param_hostname64 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 2
  %param_service65 = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 3
  %connect_family = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 1
  %addr_first = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %c, i64 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %ret.0 = phi i32 [ -1, %entry ], [ %ret.0.be, %for.cond.backedge ]
  %1 = load i32, i32* %state, align 8, !tbaa !4
  switch i32 %1, label %exit_loop.loopexit [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb24
    i32 4, label %sw.bb39
    i32 6, label %sw.bb72
    i32 7, label %sw.bb91
    i32 5, label %exit_loop
  ]

sw.bb:                                            ; preds = %for.cond
  %2 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %sw.bb
  %3 = load i8*, i8** %param_service65, align 8, !tbaa !12
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  %4 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %5 = load i8*, i8** %param_service65, align 8, !tbaa !12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 144, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #7
  br label %exit_loop

if.end7:                                          ; preds = %land.lhs.true, %sw.bb
  store i32 2, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

sw.bb9:                                           ; preds = %for.cond
  %6 = load i32, i32* %connect_family, align 4, !tbaa !10
  switch i32 %6, label %sw.default [
    i32 6, label %sw.epilog
    i32 4, label %sw.bb11
    i32 256, label %sw.bb12
  ]

sw.bb11:                                          ; preds = %sw.bb9
  br label %sw.epilog

sw.bb12:                                          ; preds = %sw.bb9
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 146, i8* noundef null) #7
  br label %exit_loop

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb12, %sw.bb11
  %family.0 = phi i32 [ 0, %sw.bb12 ], [ 2, %sw.bb11 ], [ 10, %sw.bb9 ]
  %7 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %8 = load i8*, i8** %param_service65, align 8, !tbaa !12
  %call = tail call i32 @BIO_lookup(i8* noundef %7, i8* noundef %8, i32 noundef 0, i32 noundef %family.0, i32 noundef 1, %struct.addrinfo** noundef nonnull %addr_first) #7
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %exit_loop.loopexit, label %cleanup.cont

cleanup.cont:                                     ; preds = %sw.epilog
  %9 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !13
  %cmp19 = icmp eq %struct.addrinfo* %9, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %cleanup.cont
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 142, i8* noundef null) #7
  br label %exit_loop

if.end21:                                         ; preds = %cleanup.cont
  store %struct.addrinfo* %9, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  store i32 3, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

sw.bb24:                                          ; preds = %for.cond
  %10 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call26 = tail call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %10) #7
  %11 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call28 = tail call i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef %11) #7
  %12 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call30 = tail call i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef %12) #7
  %call31 = tail call i32 @BIO_socket(i32 noundef %call26, i32 noundef %call28, i32 noundef %call30, i32 noundef 0) #7
  %cmp32 = icmp eq i32 %call31, -1
  br i1 %cmp32, label %if.then33, label %if.end37

if.then33:                                        ; preds = %sw.bb24
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  %call34 = tail call i32* @__errno_location() #9
  %13 = load i32, i32* %call34, align 4, !tbaa !18
  %14 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %15 = load i8*, i8** %param_service65, align 8, !tbaa !12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* noundef %14, i8* noundef %15) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 118, i8* noundef null) #7
  br label %exit_loop

if.end37:                                         ; preds = %sw.bb24
  store i32 %call31, i32* %num73, align 8, !tbaa !19
  store i32 4, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

sw.bb39:                                          ; preds = %for.cond
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %call40 = tail call i32 @ERR_set_mark() #7
  %16 = load i32, i32* %num73, align 8, !tbaa !19
  %17 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call43 = tail call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %17) #7
  %18 = load i32, i32* %connect_mode, align 8, !tbaa !24
  %or = or i32 %18, 4
  %call44 = tail call i32 @BIO_connect(i32 noundef %16, %union.bio_addr_st* noundef %call43, i32 noundef %or) #7
  store i32 0, i32* %retry_reason, align 4, !tbaa !27
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.else68

if.then46:                                        ; preds = %sw.bb39
  %call47 = tail call i32 @BIO_sock_should_retry(i32 noundef 0) #7
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.then46
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 12) #7
  store i32 6, i32* %state, align 8, !tbaa !4
  store i32 2, i32* %retry_reason, align 4, !tbaa !27
  %call51 = tail call i32 @ERR_pop_to_mark() #7
  br label %exit_loop

if.else:                                          ; preds = %if.then46
  %19 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call53 = tail call %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef %19) #7
  store %struct.addrinfo* %call53, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %cmp55.not = icmp eq %struct.addrinfo* %call53, null
  br i1 %cmp55.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.else
  %20 = load i32, i32* %num73, align 8, !tbaa !19
  %call58 = tail call i32 @BIO_closesocket(i32 noundef %20) #7
  store i32 3, i32* %state, align 8, !tbaa !4
  %call60 = tail call i32 @ERR_pop_to_mark() #7
  br label %sw.epilog94

if.else61:                                        ; preds = %if.else
  %call62 = tail call i32 @ERR_clear_last_mark() #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  %call63 = tail call i32* @__errno_location() #9
  %21 = load i32, i32* %call63, align 4, !tbaa !18
  %22 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %23 = load i8*, i8** %param_service65, align 8, !tbaa !12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %21, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef %22, i8* noundef %23) #7
  store i32 7, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

if.else68:                                        ; preds = %sw.bb39
  %call69 = tail call i32 @ERR_clear_last_mark() #7
  store i32 5, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

sw.bb72:                                          ; preds = %for.cond
  %24 = load i32, i32* %num73, align 8, !tbaa !19
  %call74 = tail call i32 @BIO_sock_error(i32 noundef %24) #7
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %if.else88, label %if.then76

if.then76:                                        ; preds = %sw.bb72
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %25 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %call78 = tail call %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef %25) #7
  store %struct.addrinfo* %call78, %struct.addrinfo** %addr_iter77, align 8, !tbaa !22
  %cmp80.not = icmp eq %struct.addrinfo* %call78, null
  br i1 %cmp80.not, label %if.end85, label %if.then81

if.then81:                                        ; preds = %if.then76
  %26 = load i32, i32* %num73, align 8, !tbaa !19
  %call83 = tail call i32 @BIO_closesocket(i32 noundef %26) #7
  store i32 3, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

if.end85:                                         ; preds = %if.then76
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  %27 = load i8*, i8** %param_hostname64, align 8, !tbaa !11
  %28 = load i8*, i8** %param_service65, align 8, !tbaa !12
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %call74, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef %27, i8* noundef %28) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 110, i8* noundef null) #7
  br label %exit_loop

if.else88:                                        ; preds = %sw.bb72
  store i32 5, i32* %state, align 8, !tbaa !4
  br label %sw.epilog94

sw.bb91:                                          ; preds = %for.cond
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.conn_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 103, i8* noundef null) #7
  br label %exit_loop

sw.epilog94:                                      ; preds = %if.else88, %if.then81, %if.else68, %if.else61, %if.then56, %if.end37, %if.end21, %if.end7
  %ret.1 = phi i32 [ %ret.0, %if.then81 ], [ %ret.0, %if.else88 ], [ 0, %if.then56 ], [ 0, %if.else61 ], [ %call44, %if.else68 ], [ %call31, %if.end37 ], [ %ret.0, %if.end21 ], [ %ret.0, %if.end7 ]
  br i1 %cmp.not, label %for.cond.backedge, label %if.then96

if.then96:                                        ; preds = %sw.epilog94
  %29 = load i32, i32* %state, align 8, !tbaa !4
  %call98 = tail call i32 %0(%struct.bio_st* noundef %b, i32 noundef %29, i32 noundef %ret.1) #7
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %cleanup108, label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then96, %sw.epilog94
  %ret.0.be = phi i32 [ %call98, %if.then96 ], [ %ret.1, %sw.epilog94 ]
  br label %for.cond

exit_loop.loopexit:                               ; preds = %for.cond, %sw.epilog
  br label %exit_loop

exit_loop:                                        ; preds = %for.cond, %exit_loop.loopexit, %sw.default, %sw.bb91, %if.end85, %if.then48, %if.then33, %if.then20, %if.then4
  %ret.3 = phi i32 [ 0, %sw.bb91 ], [ 0, %if.end85 ], [ 0, %if.then48 ], [ -1, %if.then33 ], [ %ret.0, %if.then20 ], [ %ret.0, %if.then4 ], [ %ret.0, %sw.default ], [ %ret.0, %exit_loop.loopexit ], [ 1, %for.cond ]
  br i1 %cmp.not, label %cleanup108, label %if.then104

if.then104:                                       ; preds = %exit_loop
  %30 = load i32, i32* %state, align 8, !tbaa !4
  %call106 = tail call i32 %0(%struct.bio_st* noundef %b, i32 noundef %30, i32 noundef %ret.3) #7
  br label %cleanup108

cleanup108:                                       ; preds = %if.then96, %if.then104, %exit_loop
  %retval.0 = phi i32 [ %call106, %if.then104 ], [ %ret.3, %exit_loop ], [ 0, %if.then96 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

declare i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #1

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_lookup(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.addrinfo** noundef) local_unnamed_addr #1

declare i32 @BIO_socket(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef) local_unnamed_addr #1

declare i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef) local_unnamed_addr #1

declare i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef) local_unnamed_addr #1

declare i32 @ERR_set_mark() local_unnamed_addr #1

declare i32 @BIO_connect(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #1

declare %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef) local_unnamed_addr #1

declare i32 @ERR_pop_to_mark() local_unnamed_addr #1

declare %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef) local_unnamed_addr #1

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #1

declare i32 @ERR_clear_last_mark() local_unnamed_addr #1

declare i32 @BIO_sock_error(i32 noundef) local_unnamed_addr #1

declare i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @conn_close_socket(%struct.bio_st* nocapture noundef %bio) unnamed_addr #0 {
entry:
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 9
  %0 = load i32, i32* %num, align 8, !tbaa !19
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_connect_st**
  %2 = load %struct.bio_connect_st*, %struct.bio_connect_st** %1, align 8, !tbaa !14
  %state = getelementptr inbounds %struct.bio_connect_st, %struct.bio_connect_st* %2, i64 0, i32 0
  %3 = load i32, i32* %state, align 8, !tbaa !4
  %cmp1 = icmp eq i32 %3, 5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @shutdown(i32 noundef %0, i32 noundef 2) #7
  %.pre = load i32, i32* %num, align 8, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = phi i32 [ %.pre, %if.then2 ], [ %0, %if.then ]
  %call5 = tail call i32 @BIO_closesocket(i32 noundef %4) #7
  store i32 -1, i32* %num, align 8, !tbaa !19
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  ret void
}

declare i32 @BIO_parse_hostserv(i8* noundef, i8** noundef, i8** noundef, i32 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #1

declare i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, {}* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bio_connect_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !6, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !6, i64 4}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !9, i64 16}
!13 = !{!5, !9, i64 32}
!14 = !{!15, !9, i64 64}
!15 = !{!"bio_st", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !7, i64 88, !16, i64 96, !16, i64 104, !17, i64 112, !9, i64 128}
!16 = !{!"long", !7, i64 0}
!17 = !{!"crypto_ex_data_st", !9, i64 0, !9, i64 8}
!18 = !{!6, !6, i64 0}
!19 = !{!15, !6, i64 56}
!20 = !{!15, !6, i64 48}
!21 = !{!9, !9, i64 0}
!22 = !{!5, !9, i64 40}
!23 = !{!15, !6, i64 40}
!24 = !{!5, !6, i64 24}
!25 = !{!15, !6, i64 44}
!26 = !{!5, !9, i64 48}
!27 = !{!15, !6, i64 52}
