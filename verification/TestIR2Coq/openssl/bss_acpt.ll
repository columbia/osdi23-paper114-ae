; ModuleID = 'crypto/bio/bss_acpt.c'
source_filename = "crypto/bio/bss_acpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_accept_st = type { i32, i32, i32, i32, i8*, i8*, i32, %struct.addrinfo*, %struct.addrinfo*, %union.bio_addr_st, i8*, i8*, %union.bio_addr_st, i8*, i8*, %struct.bio_st* }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%union.bio_addr_st = type { %struct.sockaddr_in6, [84 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%union.BIO_sock_info_u = type { %union.bio_addr_st* }

@methods_acceptp = internal constant %struct.bio_method_st { i32 1293, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @acpt_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @acpt_read, i32 (%struct.bio_st*, i8*)* @acpt_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @acpt_ctrl, i32 (%struct.bio_st*)* @acpt_new, i32 (%struct.bio_st*)* @acpt_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"socket accept\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"crypto/bio/bss_acpt.c\00", align 1
@__func__.acpt_state = private unnamed_addr constant [11 x i8] c"acpt_state\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"hostname=%s, service=%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"calling socket(%s, %s)\00", align 1
@__func__.BIO_ACCEPT_new = private unnamed_addr constant [15 x i8] c"BIO_ACCEPT_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_accept() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_acceptp
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_accept(i8* noundef %str) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_acceptp) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 118, i64 noundef 0, i8* noundef %str) #7
  %tobool.not = icmp eq i64 %call2, 0
  br i1 %tobool.not, label %if.end4, label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi %struct.bio_st* [ null, %if.end4 ], [ null, %entry ], [ %call1, %if.end ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @acpt_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_accept_st**
  %1 = load %struct.bio_accept_st*, %struct.bio_accept_st** %0, align 8, !tbaa !4
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc i32 @acpt_state(%struct.bio_st* noundef nonnull %b, %struct.bio_accept_st* noundef %1) #8
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup, label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %call3 = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %2, i8* noundef %in, i32 noundef %inl) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.end
  %retval.0 = phi i32 [ %call3, %while.end ], [ %call, %while.body ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @acpt_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_accept_st**
  %1 = load %struct.bio_accept_st*, %struct.bio_accept_st** %0, align 8, !tbaa !4
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = tail call fastcc i32 @acpt_state(%struct.bio_st* noundef nonnull %b, %struct.bio_accept_st* noundef %1) #8
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %cleanup, label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %call3 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %2, i8* noundef %out, i32 noundef %outl) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.end
  %retval.0 = phi i32 [ %call3, %while.end ], [ %call, %while.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @acpt_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #9
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @acpt_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @acpt_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_accept_st**
  %1 = load %struct.bio_accept_st*, %struct.bio_accept_st** %0, align 8, !tbaa !4
  switch i32 %cmd, label %sw.default152 [
    i32 1, label %sw.bb
    i32 101, label %sw.bb3
    i32 118, label %sw.bb4
    i32 102, label %sw.bb56
    i32 104, label %sw.bb65
    i32 105, label %sw.bb71
    i32 124, label %sw.bb83
    i32 8, label %sw.bb131
    i32 9, label %sw.bb134
    i32 10, label %sw.bb137
    i32 13, label %sw.bb137
    i32 11, label %sw.epilog153
    i32 131, label %sw.bb138
    i32 132, label %sw.bb141
    i32 12, label %sw.epilog153
    i32 2, label %sw.bb144
  ]

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 0
  store i32 1, i32* %state, align 8, !tbaa !16
  tail call fastcc void @acpt_close_socket(%struct.bio_st* noundef nonnull %b) #8
  %addr_first = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 7
  %2 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !18
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %2) #7
  store %struct.addrinfo* null, %struct.addrinfo** %addr_first, align 8, !tbaa !18
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !19
  br label %sw.epilog153

sw.bb3:                                           ; preds = %entry
  %call = tail call fastcc i32 @acpt_state(%struct.bio_st* noundef nonnull %b, %struct.bio_accept_st* noundef %1) #8
  %conv = sext i32 %call to i64
  br label %sw.epilog153

sw.bb4:                                           ; preds = %entry
  %cmp.not = icmp eq i8* %ptr, null
  br i1 %cmp.not, label %if.else49, label %if.then

if.then:                                          ; preds = %sw.bb4
  switch i64 %num, label %sw.epilog153 [
    i64 0, label %if.then8
    i64 1, label %if.then20
    i64 2, label %if.then33
    i64 3, label %if.then37
    i64 4, label %if.then43
  ]

if.then8:                                         ; preds = %if.then
  %param_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 5
  %3 = load i8*, i8** %param_serv, align 8, !tbaa !20
  %param_addr = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 4
  %4 = load i8*, i8** %param_addr, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 433) #7
  store i8* null, i8** %param_addr, align 8, !tbaa !21
  %call12 = tail call i32 @BIO_parse_hostserv(i8* noundef nonnull %ptr, i8** noundef nonnull %param_addr, i8** noundef nonnull %param_serv, i32 noundef 1) #7
  %conv13 = sext i32 %call12 to i64
  %5 = load i8*, i8** %param_serv, align 8, !tbaa !20
  %cmp15.not = icmp eq i8* %3, %5
  br i1 %cmp15.not, label %if.end, label %if.then17

if.then17:                                        ; preds = %if.then8
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 440) #7
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then8
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !22
  br label %sw.epilog153

if.then20:                                        ; preds = %if.then
  %param_serv21 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 5
  %6 = load i8*, i8** %param_serv21, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 443) #7
  %call22 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %ptr, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 444) #7
  store i8* %call22, i8** %param_serv21, align 8, !tbaa !20
  %cmp24 = icmp eq i8* %call22, null
  br i1 %cmp24, label %sw.epilog153, label %if.else27

if.else27:                                        ; preds = %if.then20
  %init28 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init28, align 8, !tbaa !22
  br label %sw.epilog153

if.then33:                                        ; preds = %if.then
  %bind_mode = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 2
  %7 = load i32, i32* %bind_mode, align 8, !tbaa !23
  %or = or i32 %7, 8
  store i32 %or, i32* %bind_mode, align 8, !tbaa !23
  br label %sw.epilog153

if.then37:                                        ; preds = %if.then
  %bio_chain = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 15
  %8 = load %struct.bio_st*, %struct.bio_st** %bio_chain, align 8, !tbaa !24
  %call38 = tail call i32 @BIO_free(%struct.bio_st* noundef %8) #7
  %9 = bitcast %struct.bio_st** %bio_chain to i8**
  store i8* %ptr, i8** %9, align 8, !tbaa !24
  br label %sw.epilog153

if.then43:                                        ; preds = %if.then
  %10 = bitcast i8* %ptr to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !25
  %accept_family = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 1
  store i32 %11, i32* %accept_family, align 4, !tbaa !26
  br label %sw.epilog153

if.else49:                                        ; preds = %sw.bb4
  %cmp50 = icmp eq i64 %num, 2
  br i1 %cmp50, label %if.then52, label %sw.epilog153

if.then52:                                        ; preds = %if.else49
  %bind_mode53 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 2
  %12 = load i32, i32* %bind_mode53, align 8, !tbaa !23
  %and = and i32 %12, -9
  store i32 %and, i32* %bind_mode53, align 8, !tbaa !23
  br label %sw.epilog153

sw.bb56:                                          ; preds = %entry
  %cmp57.not = icmp eq i64 %num, 0
  %accepted_mode62 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 3
  %13 = load i32, i32* %accepted_mode62, align 4, !tbaa !27
  br i1 %cmp57.not, label %if.else61, label %if.then59

if.then59:                                        ; preds = %sw.bb56
  %or60 = or i32 %13, 8
  store i32 %or60, i32* %accepted_mode62, align 4, !tbaa !27
  br label %sw.epilog153

if.else61:                                        ; preds = %sw.bb56
  %and63 = and i32 %13, -9
  store i32 %and63, i32* %accepted_mode62, align 4, !tbaa !27
  br label %sw.epilog153

sw.bb65:                                          ; preds = %entry
  %14 = bitcast i8* %ptr to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !25
  %num66 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  store i32 %15, i32* %num66, align 8, !tbaa !28
  %accept_sock = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 6
  store i32 %15, i32* %accept_sock, align 8, !tbaa !29
  %state68 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 0
  store i32 5, i32* %state68, align 8, !tbaa !16
  %conv69 = trunc i64 %num to i32
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv69, i32* %shutdown, align 4, !tbaa !30
  %init70 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  store i32 1, i32* %init70, align 8, !tbaa !22
  br label %sw.epilog153

sw.bb71:                                          ; preds = %entry
  %init72 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %16 = load i32, i32* %init72, align 8, !tbaa !22
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %sw.epilog153, label %if.then73

if.then73:                                        ; preds = %sw.bb71
  %cmp74.not = icmp eq i8* %ptr, null
  br i1 %cmp74.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.then73
  %17 = bitcast i8* %ptr to i32*
  %accept_sock77 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 6
  %18 = load i32, i32* %accept_sock77, align 8, !tbaa !29
  store i32 %18, i32* %17, align 4, !tbaa !25
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then73
  %accept_sock79 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 6
  %19 = load i32, i32* %accept_sock79, align 8, !tbaa !29
  %conv80 = sext i32 %19 to i64
  br label %sw.epilog153

sw.bb83:                                          ; preds = %entry
  %init84 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %20 = load i32, i32* %init84, align 8, !tbaa !22
  %tobool85.not = icmp eq i32 %20, 0
  br i1 %tobool85.not, label %sw.epilog153, label %if.then86

if.then86:                                        ; preds = %sw.bb83
  %cmp87 = icmp eq i64 %num, 0
  %cmp89 = icmp ne i8* %ptr, null
  %or.cond = and i1 %cmp87, %cmp89
  br i1 %or.cond, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.then86
  %21 = bitcast i8* %ptr to i8**
  %cache_accepting_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 10
  %22 = load i8*, i8** %cache_accepting_name, align 8, !tbaa !31
  store i8* %22, i8** %21, align 8, !tbaa !32
  br label %sw.epilog153

if.else92:                                        ; preds = %if.then86
  %cmp93 = icmp eq i64 %num, 1
  %or.cond154 = and i1 %cmp93, %cmp89
  br i1 %or.cond154, label %if.then98, label %if.else99

if.then98:                                        ; preds = %if.else92
  %23 = bitcast i8* %ptr to i8**
  %cache_accepting_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 11
  %24 = load i8*, i8** %cache_accepting_serv, align 8, !tbaa !33
  store i8* %24, i8** %23, align 8, !tbaa !32
  br label %sw.epilog153

if.else99:                                        ; preds = %if.else92
  %cmp100 = icmp eq i64 %num, 2
  %or.cond155 = and i1 %cmp100, %cmp89
  br i1 %or.cond155, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.else99
  %25 = bitcast i8* %ptr to i8**
  %cache_peer_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 13
  %26 = load i8*, i8** %cache_peer_name, align 8, !tbaa !34
  store i8* %26, i8** %25, align 8, !tbaa !32
  br label %sw.epilog153

if.else106:                                       ; preds = %if.else99
  %cmp107 = icmp eq i64 %num, 3
  %or.cond156 = and i1 %cmp107, %cmp89
  br i1 %or.cond156, label %if.then112, label %if.else113

if.then112:                                       ; preds = %if.else106
  %27 = bitcast i8* %ptr to i8**
  %cache_peer_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 14
  %28 = load i8*, i8** %cache_peer_serv, align 8, !tbaa !35
  store i8* %28, i8** %27, align 8, !tbaa !32
  br label %sw.epilog153

if.else113:                                       ; preds = %if.else106
  %cmp114 = icmp eq i64 %num, 4
  br i1 %cmp114, label %if.then116, label %sw.epilog153

if.then116:                                       ; preds = %if.else113
  %addr_iter = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 8
  %29 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter, align 8, !tbaa !36
  %call117 = tail call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %29) #7
  switch i32 %call117, label %sw.default [
    i32 10, label %sw.epilog153
    i32 2, label %sw.bb119
    i32 0, label %sw.bb120
  ]

sw.bb119:                                         ; preds = %if.then116
  br label %sw.epilog153

sw.bb120:                                         ; preds = %if.then116
  %accept_family121 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 1
  %30 = load i32, i32* %accept_family121, align 4, !tbaa !26
  %conv122 = sext i32 %30 to i64
  br label %sw.epilog153

sw.default:                                       ; preds = %if.then116
  br label %sw.epilog153

sw.bb131:                                         ; preds = %entry
  %shutdown132 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %31 = load i32, i32* %shutdown132, align 4, !tbaa !30
  %conv133 = sext i32 %31 to i64
  br label %sw.epilog153

sw.bb134:                                         ; preds = %entry
  %conv135 = trunc i64 %num to i32
  %shutdown136 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv135, i32* %shutdown136, align 4, !tbaa !30
  br label %sw.epilog153

sw.bb137:                                         ; preds = %entry, %entry
  br label %sw.epilog153

sw.bb138:                                         ; preds = %entry
  %conv139 = trunc i64 %num to i32
  %bind_mode140 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 2
  store i32 %conv139, i32* %bind_mode140, align 8, !tbaa !23
  br label %sw.epilog153

sw.bb141:                                         ; preds = %entry
  %bind_mode142 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 2
  %32 = load i32, i32* %bind_mode142, align 8, !tbaa !23
  %conv143 = sext i32 %32 to i64
  br label %sw.epilog153

sw.bb144:                                         ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %33 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp145 = icmp eq %struct.bio_st* %33, null
  br i1 %cmp145, label %sw.epilog153, label %if.else148

if.else148:                                       ; preds = %sw.bb144
  %call150 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %33, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #7
  br label %sw.epilog153

sw.default152:                                    ; preds = %entry
  br label %sw.epilog153

sw.epilog153:                                     ; preds = %sw.bb144, %sw.bb83, %if.else113, %if.then116, %sw.bb71, %if.then, %if.then20, %if.else148, %if.then98, %if.then112, %sw.bb119, %sw.bb120, %sw.default, %if.then105, %if.then91, %if.end78, %if.then59, %if.else61, %if.else27, %if.then37, %if.then43, %if.then33, %if.end, %if.then52, %if.else49, %sw.default152, %entry, %sw.bb141, %sw.bb138, %entry, %sw.bb137, %sw.bb134, %sw.bb131, %sw.bb65, %sw.bb3, %sw.bb
  %ret.0 = phi i64 [ 0, %sw.default152 ], [ %call150, %if.else148 ], [ %conv143, %sw.bb141 ], [ 1, %sw.bb138 ], [ 1, %entry ], [ 1, %entry ], [ 0, %sw.bb137 ], [ 1, %sw.bb134 ], [ %conv133, %sw.bb131 ], [ 1, %if.then91 ], [ 1, %if.then98 ], [ 1, %if.then105 ], [ 1, %if.then112 ], [ -1, %sw.default ], [ %conv122, %sw.bb120 ], [ 4, %sw.bb119 ], [ %conv80, %if.end78 ], [ 1, %sw.bb65 ], [ 1, %if.then59 ], [ 1, %if.else61 ], [ %conv13, %if.end ], [ 1, %if.else27 ], [ 1, %if.then33 ], [ 1, %if.then37 ], [ 1, %if.then43 ], [ 1, %if.then52 ], [ 1, %if.else49 ], [ %conv, %sw.bb3 ], [ 0, %sw.bb ], [ 0, %if.then20 ], [ 1, %if.then ], [ -1, %sw.bb71 ], [ 6, %if.then116 ], [ -1, %if.else113 ], [ -1, %sw.bb83 ], [ 0, %sw.bb144 ]
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @acpt_new(%struct.bio_st* nocapture noundef writeonly %bi) #1 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !22
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 -1, i32* %num, align 8, !tbaa !28
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !19
  %call = tail call fastcc %struct.bio_accept_st* @BIO_ACCEPT_new() #8
  %cmp = icmp eq %struct.bio_accept_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_accept_st**
  store %struct.bio_accept_st* %call, %struct.bio_accept_st** %0, align 8, !tbaa !4
  %state = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %call, i64 0, i32 0
  store i32 1, i32* %state, align 8, !tbaa !16
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 6
  store i32 1, i32* %shutdown, align 4, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @acpt_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !30
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.then1

if.then1:                                         ; preds = %if.end
  %1 = bitcast i8** %ptr to %struct.bio_accept_st**
  %2 = load %struct.bio_accept_st*, %struct.bio_accept_st** %1, align 8, !tbaa !4
  tail call fastcc void @acpt_close_socket(%struct.bio_st* noundef nonnull %a) #8
  tail call fastcc void @BIO_ACCEPT_free(%struct.bio_accept_st* noundef %2) #8
  store i8* null, i8** %ptr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !19
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then1, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.then1 ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @acpt_state(%struct.bio_st* noundef %b, %struct.bio_accept_st* noundef %c) unnamed_addr #1 {
entry:
  %info = alloca %union.BIO_sock_info_u, align 8
  %state = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 0
  %next_bio127 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %addr_iter26 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 8
  %accept_sock = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 6
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %accept_family = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 1
  %param_addr13 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 4
  %param_serv14 = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 5
  %addr_first = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 7
  %cache_accepting_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 10
  %cache_accepting_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 11
  %cache_peer_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 13
  %cache_peer_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %0 = load i32, i32* %state, align 8, !tbaa !16
  switch i32 %0, label %cleanup142 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb24
    i32 4, label %sw.bb48
    i32 5, label %sw.bb74
    i32 6, label %sw.bb126
  ]

sw.bb:                                            ; preds = %for.cond
  %1 = load i8*, i8** %param_addr13, align 8, !tbaa !21
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i8*, i8** %param_serv14, align 8, !tbaa !20
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.acpt_state, i64 0, i64 0)) #7
  %3 = load i8*, i8** %param_addr13, align 8, !tbaa !21
  %4 = load i8*, i8** %param_serv14, align 8, !tbaa !20
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 143, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* noundef %3, i8* noundef %4) #7
  br label %cleanup142

if.end:                                           ; preds = %land.lhs.true, %sw.bb
  %5 = load i8*, i8** %cache_accepting_name, align 8, !tbaa !31
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170) #7
  store i8* null, i8** %cache_accepting_name, align 8, !tbaa !31
  %6 = load i8*, i8** %cache_accepting_serv, align 8, !tbaa !33
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 172) #7
  store i8* null, i8** %cache_accepting_serv, align 8, !tbaa !33
  %7 = load i8*, i8** %cache_peer_name, align 8, !tbaa !34
  tail call void @CRYPTO_free(i8* noundef %7, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 174) #7
  store i8* null, i8** %cache_peer_name, align 8, !tbaa !34
  %8 = load i8*, i8** %cache_peer_serv, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 176) #7
  store i8* null, i8** %cache_peer_serv, align 8, !tbaa !35
  store i32 2, i32* %state, align 8, !tbaa !16
  br label %for.cond.backedge

sw.bb9:                                           ; preds = %for.cond
  %9 = load i32, i32* %accept_family, align 4, !tbaa !26
  switch i32 %9, label %sw.default [
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
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.acpt_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 146, i8* noundef null) #7
  br label %cleanup142

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb12, %sw.bb11
  %family.0 = phi i32 [ 0, %sw.bb12 ], [ 2, %sw.bb11 ], [ 10, %sw.bb9 ]
  %10 = load i8*, i8** %param_addr13, align 8, !tbaa !21
  %11 = load i8*, i8** %param_serv14, align 8, !tbaa !20
  %call = tail call i32 @BIO_lookup(i8* noundef %10, i8* noundef %11, i32 noundef 1, i32 noundef %family.0, i32 noundef 1, %struct.addrinfo** noundef nonnull %addr_first) #7
  %cmp15 = icmp eq i32 %call, 0
  br i1 %cmp15, label %cleanup142, label %cleanup.cont

cleanup.cont:                                     ; preds = %sw.epilog
  %12 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !18
  %cmp19 = icmp eq %struct.addrinfo* %12, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %cleanup.cont
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 214, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.acpt_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 142, i8* noundef null) #7
  br label %cleanup142

if.end21:                                         ; preds = %cleanup.cont
  store %struct.addrinfo* %12, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  store i32 3, i32* %state, align 8, !tbaa !16
  br label %for.cond.backedge

sw.bb24:                                          ; preds = %for.cond
  %call25 = tail call i32 @ERR_set_mark() #7
  %13 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %call27 = tail call i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef %13) #7
  %14 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %call29 = tail call i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef %14) #7
  %15 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %call31 = tail call i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef %15) #7
  %call32 = tail call i32 @BIO_socket(i32 noundef %call27, i32 noundef %call29, i32 noundef %call31, i32 noundef 0) #7
  %cmp33 = icmp eq i32 %call32, -1
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %sw.bb24
  %16 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %call36 = tail call %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef %16) #7
  store %struct.addrinfo* %call36, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %cmp38.not = icmp eq %struct.addrinfo* %call36, null
  br i1 %cmp38.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %if.then34
  %call40 = tail call i32 @ERR_pop_to_mark() #7
  br label %for.cond.backedge

if.end41:                                         ; preds = %if.then34
  %call42 = tail call i32 @ERR_clear_last_mark() #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.acpt_state, i64 0, i64 0)) #7
  %call43 = tail call i32* @__errno_location() #10
  %17 = load i32, i32* %call43, align 4, !tbaa !25
  %18 = load i8*, i8** %param_addr13, align 8, !tbaa !21
  %19 = load i8*, i8** %param_serv14, align 8, !tbaa !20
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 2, i32 noundef %17, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* noundef %18, i8* noundef %19) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.acpt_state, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 118, i8* noundef null) #7
  br label %cleanup142

if.end46:                                         ; preds = %sw.bb24
  store i32 %call32, i32* %accept_sock, align 8, !tbaa !29
  store i32 %call32, i32* %num, align 8, !tbaa !28
  store i32 4, i32* %state, align 8, !tbaa !16
  br label %for.cond.backedge

sw.bb48:                                          ; preds = %for.cond
  %20 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %21 = load %struct.addrinfo*, %struct.addrinfo** %addr_iter26, align 8, !tbaa !36
  %call51 = tail call %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef %21) #7
  %bind_mode = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 2
  %22 = load i32, i32* %bind_mode, align 8, !tbaa !23
  %call52 = tail call i32 @BIO_listen(i32 noundef %20, %union.bio_addr_st* noundef %call51, i32 noundef %22) #7
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %if.then53, label %if.end56

if.then53:                                        ; preds = %sw.bb48
  %23 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %call55 = tail call i32 @BIO_closesocket(i32 noundef %23) #7
  br label %cleanup142

if.end56:                                         ; preds = %sw.bb48
  %24 = bitcast %union.BIO_sock_info_u* %info to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #11
  %cache_accepting_addr = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 9
  %addr = getelementptr inbounds %union.BIO_sock_info_u, %union.BIO_sock_info_u* %info, i64 0, i32 0
  store %union.bio_addr_st* %cache_accepting_addr, %union.bio_addr_st** %addr, align 8, !tbaa !37
  %25 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %call58 = call i32 @BIO_sock_info(i32 noundef %25, i32 noundef 0, %union.BIO_sock_info_u* noundef nonnull %info) #7
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %cleanup64, label %cleanup.cont66

cleanup64:                                        ; preds = %if.end56
  %26 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %call62 = call i32 @BIO_closesocket(i32 noundef %26) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #11
  br label %cleanup142

cleanup.cont66:                                   ; preds = %if.end56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #11
  %call68 = call i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef nonnull %cache_accepting_addr, i32 noundef 1) #7
  store i8* %call68, i8** %cache_accepting_name, align 8, !tbaa !31
  %call71 = call i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef nonnull %cache_accepting_addr, i32 noundef 1) #7
  store i8* %call71, i8** %cache_accepting_serv, align 8, !tbaa !33
  store i32 5, i32* %state, align 8, !tbaa !16
  br label %cleanup142

sw.bb74:                                          ; preds = %for.cond
  %27 = load %struct.bio_st*, %struct.bio_st** %next_bio127, align 8, !tbaa !12
  %cmp75.not = icmp eq %struct.bio_st* %27, null
  br i1 %cmp75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %sw.bb74
  store i32 6, i32* %state, align 8, !tbaa !16
  br label %for.cond.backedge

if.end78:                                         ; preds = %sw.bb74
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 8
  store i32 0, i32* %retry_reason, align 4, !tbaa !38
  %28 = load i8*, i8** %cache_peer_name, align 8, !tbaa !34
  tail call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 285) #7
  store i8* null, i8** %cache_peer_name, align 8, !tbaa !34
  %29 = load i8*, i8** %cache_peer_serv, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 287) #7
  store i8* null, i8** %cache_peer_serv, align 8, !tbaa !35
  %30 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %cache_peer_addr = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 12
  %accepted_mode = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 3
  %31 = load i32, i32* %accepted_mode, align 4, !tbaa !27
  %call84 = tail call i32 @BIO_accept_ex(i32 noundef %30, %union.bio_addr_st* noundef nonnull %cache_peer_addr, i32 noundef %31) #7
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then86, label %if.end95

if.then86:                                        ; preds = %if.end78
  %call87 = tail call i32 @BIO_sock_should_retry(i32 noundef %call84) #7
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %cleanup142, label %if.then89

if.then89:                                        ; preds = %if.then86
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 12) #7
  store i32 3, i32* %retry_reason, align 4, !tbaa !38
  br label %cleanup142

if.end95:                                         ; preds = %if.end78
  %call96 = tail call %struct.bio_st* @BIO_new_socket(i32 noundef %call84, i32 noundef 1) #7
  %cmp97 = icmp eq %struct.bio_st* %call96, null
  br i1 %cmp97, label %if.then138, label %if.end99

if.end99:                                         ; preds = %if.end95
  %call100 = tail call i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* @BIO_get_callback_ex(%struct.bio_st* noundef nonnull %b) #7
  tail call void @BIO_set_callback_ex(%struct.bio_st* noundef nonnull %call96, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef %call100) #7
  %call101 = tail call i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* noundef nonnull %b) #7
  tail call void @BIO_set_callback(%struct.bio_st* noundef nonnull %call96, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* noundef %call101) #7
  %call102 = tail call i8* @BIO_get_callback_arg(%struct.bio_st* noundef nonnull %b) #7
  tail call void @BIO_set_callback_arg(%struct.bio_st* noundef nonnull %call96, i8* noundef %call102) #7
  %bio_chain = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %c, i64 0, i32 15
  %32 = load %struct.bio_st*, %struct.bio_st** %bio_chain, align 8, !tbaa !24
  %cmp103.not = icmp eq %struct.bio_st* %32, null
  br i1 %cmp103.not, label %if.end114, label %if.then104

if.then104:                                       ; preds = %if.end99
  %call106 = tail call %struct.bio_st* @BIO_dup_chain(%struct.bio_st* noundef nonnull %32) #7
  %cmp107 = icmp eq %struct.bio_st* %call106, null
  br i1 %cmp107, label %if.then135, label %if.end109

if.end109:                                        ; preds = %if.then104
  %call110 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %call106, %struct.bio_st* noundef nonnull %call96) #7
  %tobool111.not = icmp eq %struct.bio_st* %call110, null
  br i1 %tobool111.not, label %if.then135, label %if.end114

if.end114:                                        ; preds = %if.end109, %if.end99
  %bio.0 = phi %struct.bio_st* [ %call96, %if.end99 ], [ %call106, %if.end109 ]
  %call115 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef nonnull %b, %struct.bio_st* noundef nonnull %bio.0) #7
  %cmp116 = icmp eq %struct.bio_st* %call115, null
  br i1 %cmp116, label %if.then135, label %if.end118

if.end118:                                        ; preds = %if.end114
  %call120 = tail call i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef nonnull %cache_peer_addr, i32 noundef 1) #7
  store i8* %call120, i8** %cache_peer_name, align 8, !tbaa !34
  %call123 = tail call i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef nonnull %cache_peer_addr, i32 noundef 1) #7
  store i8* %call123, i8** %cache_peer_serv, align 8, !tbaa !35
  store i32 6, i32* %state, align 8, !tbaa !16
  br label %cleanup142

sw.bb126:                                         ; preds = %for.cond
  %33 = load %struct.bio_st*, %struct.bio_st** %next_bio127, align 8, !tbaa !12
  %cmp128 = icmp eq %struct.bio_st* %33, null
  br i1 %cmp128, label %if.then129, label %cleanup142

if.then129:                                       ; preds = %sw.bb126
  store i32 5, i32* %state, align 8, !tbaa !16
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then129, %if.then76, %if.end46, %if.then39, %if.end21, %if.end
  br label %for.cond

if.then135:                                       ; preds = %if.then104, %if.end109, %if.end114
  %bio.1 = phi %struct.bio_st* [ %call96, %if.then104 ], [ %bio.0, %if.end114 ], [ %call96, %if.end109 ]
  %call136 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %bio.1) #7
  br label %cleanup142

if.then138:                                       ; preds = %if.end95
  %call139 = tail call i32 @BIO_closesocket(i32 noundef %call84) #7
  br label %cleanup142

cleanup142:                                       ; preds = %sw.epilog, %sw.bb126, %for.cond, %sw.default, %cleanup64, %if.then53, %if.end41, %if.then20, %if.then, %if.then86, %cleanup.cont66, %if.then89, %if.end118, %if.then138, %if.then135
  %retval.0 = phi i32 [ -1, %if.then89 ], [ -1, %if.then135 ], [ -1, %if.then138 ], [ 1, %if.end118 ], [ 1, %cleanup.cont66 ], [ -1, %cleanup64 ], [ -1, %if.then53 ], [ -1, %if.end41 ], [ -1, %if.then20 ], [ -1, %if.then ], [ %call84, %if.then86 ], [ -1, %sw.default ], [ -1, %sw.epilog ], [ 0, %for.cond ], [ 1, %sw.bb126 ]
  ret i32 %retval.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_lookup(i8* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.addrinfo** noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @BIO_socket(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_family(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_socktype(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_ADDRINFO_protocol(%struct.addrinfo* noundef) local_unnamed_addr #3

declare %struct.addrinfo* @BIO_ADDRINFO_next(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #4

declare i32 @BIO_listen(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare %union.bio_addr_st* @BIO_ADDRINFO_address(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #3

declare i32 @BIO_sock_info(i32 noundef, i32 noundef, %union.BIO_sock_info_u* noundef) local_unnamed_addr #3

declare i8* @BIO_ADDR_hostname_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @BIO_ADDR_service_string(%union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_accept_ex(i32 noundef, %union.bio_addr_st* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_sock_should_retry(i32 noundef) local_unnamed_addr #3

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_new_socket(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_callback_ex(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef) local_unnamed_addr #3

declare i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* @BIO_get_callback_ex(%struct.bio_st* noundef) local_unnamed_addr #3

declare void @BIO_set_callback(%struct.bio_st* noundef, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* noundef) local_unnamed_addr #3

declare i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* noundef) local_unnamed_addr #3

declare void @BIO_set_callback_arg(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare i8* @BIO_get_callback_arg(%struct.bio_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_dup_chain(%struct.bio_st* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_push(%struct.bio_st* noundef, %struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @acpt_close_socket(%struct.bio_st* nocapture noundef %bio) unnamed_addr #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_accept_st**
  %1 = load %struct.bio_accept_st*, %struct.bio_accept_st** %0, align 8, !tbaa !4
  %accept_sock = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %1, i64 0, i32 6
  %2 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %cmp.not = icmp eq i32 %2, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @shutdown(i32 noundef %2, i32 noundef 2) #7
  %3 = load i32, i32* %accept_sock, align 8, !tbaa !29
  %call3 = tail call i32 @close(i32 noundef %3) #7
  store i32 -1, i32* %accept_sock, align 8, !tbaa !29
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 9
  store i32 -1, i32* %num, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @BIO_ADDRINFO_free(%struct.addrinfo* noundef) local_unnamed_addr #3

declare i32 @BIO_parse_hostserv(i8* noundef, i8** noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bio_accept_st* @BIO_ACCEPT_new() unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 320, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 95) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.BIO_ACCEPT_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bio_accept_st*
  %accept_family = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %accept_family to i32*
  store i32 256, i32* %1, align 4, !tbaa !26
  %accept_sock = getelementptr inbounds i8, i8* %call, i64 32
  %2 = bitcast i8* %accept_sock to i32*
  store i32 -1, i32* %2, align 8, !tbaa !29
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_accept_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_accept_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BIO_ACCEPT_free(%struct.bio_accept_st* noundef %a) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.bio_accept_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %param_addr = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 4
  %0 = load i8*, i8** %param_addr, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108) #7
  %param_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 5
  %1 = load i8*, i8** %param_serv, align 8, !tbaa !20
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 109) #7
  %addr_first = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 7
  %2 = load %struct.addrinfo*, %struct.addrinfo** %addr_first, align 8, !tbaa !18
  tail call void @BIO_ADDRINFO_free(%struct.addrinfo* noundef %2) #7
  %cache_accepting_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 10
  %3 = load i8*, i8** %cache_accepting_name, align 8, !tbaa !31
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 111) #7
  %cache_accepting_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 11
  %4 = load i8*, i8** %cache_accepting_serv, align 8, !tbaa !33
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 112) #7
  %cache_peer_name = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 13
  %5 = load i8*, i8** %cache_peer_name, align 8, !tbaa !34
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 113) #7
  %cache_peer_serv = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 14
  %6 = load i8*, i8** %cache_peer_serv, align 8, !tbaa !35
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 114) #7
  %bio_chain = getelementptr inbounds %struct.bio_accept_st, %struct.bio_accept_st* %a, i64 0, i32 15
  %7 = load %struct.bio_st*, %struct.bio_st** %bio_chain, align 8, !tbaa !24
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %7) #7
  %8 = bitcast %struct.bio_accept_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 116) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 64}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 72}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !9, i64 0}
!17 = !{!"bio_accept_st", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !6, i64 16, !6, i64 24, !9, i64 32, !6, i64 40, !6, i64 48, !7, i64 56, !6, i64 168, !6, i64 176, !7, i64 184, !6, i64 296, !6, i64 304, !6, i64 312}
!18 = !{!17, !6, i64 40}
!19 = !{!5, !9, i64 48}
!20 = !{!17, !6, i64 24}
!21 = !{!17, !6, i64 16}
!22 = !{!5, !9, i64 40}
!23 = !{!17, !9, i64 8}
!24 = !{!17, !6, i64 312}
!25 = !{!9, !9, i64 0}
!26 = !{!17, !9, i64 4}
!27 = !{!17, !9, i64 12}
!28 = !{!5, !9, i64 56}
!29 = !{!17, !9, i64 32}
!30 = !{!5, !9, i64 44}
!31 = !{!17, !6, i64 168}
!32 = !{!6, !6, i64 0}
!33 = !{!17, !6, i64 176}
!34 = !{!17, !6, i64 296}
!35 = !{!17, !6, i64 304}
!36 = !{!17, !6, i64 48}
!37 = !{!7, !7, i64 0}
!38 = !{!5, !9, i64 52}
