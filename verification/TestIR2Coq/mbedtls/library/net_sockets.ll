; ModuleID = 'net_sockets.c'
source_filename = "net_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_net_context = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  store i32 -1, i32* %fd, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %ctx, i8* noundef %host, i8* noundef %port, i32 noundef %proto) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %host.addr = alloca i8*, align 8
  %port.addr = alloca i8*, align 8
  %proto.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %addr_list = alloca %struct.addrinfo*, align 8
  %cur = alloca %struct.addrinfo*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  store i8* %host, i8** %host.addr, align 8
  store i8* %port, i8** %port.addr, align 8
  store i32 %proto, i32* %proto.addr, align 4
  store i32 -110, i32* %ret, align 4
  %call = call i32 @net_prepare() #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %ret, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.addrinfo* %hints to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 48) #6
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 0, i32* %ai_family, align 4
  %2 = load i32, i32* %proto.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  %3 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 2, i32 1
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 %cond, i32* %ai_socktype, align 8
  %4 = load i32, i32* %proto.addr, align 4
  %cmp3 = icmp eq i32 %4, 1
  %5 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i32 17, i32 6
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 3
  store i32 %cond4, i32* %ai_protocol, align 4
  %6 = load i8*, i8** %host.addr, align 8
  %7 = load i8*, i8** %port.addr, align 8
  %call5 = call i32 @getaddrinfo(i8* noundef %6, i8* noundef %7, %struct.addrinfo* noundef %hints, %struct.addrinfo** noundef %addr_list) #5
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -82, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  store i32 -82, i32* %ret, align 4
  %8 = load %struct.addrinfo*, %struct.addrinfo** %addr_list, align 8
  store %struct.addrinfo* %8, %struct.addrinfo** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %9 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %cmp9 = icmp ne %struct.addrinfo* %9, null
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_family10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  %11 = load i32, i32* %ai_family10, align 4
  %12 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_socktype11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  %13 = load i32, i32* %ai_socktype11, align 8
  %14 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_protocol12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 3
  %15 = load i32, i32* %ai_protocol12, align 4
  %call13 = call i32 @socket(i32 noundef %11, i32 noundef %13, i32 noundef %15) #6
  %16 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %16, i32 0, i32 0
  store i32 %call13, i32* %fd, align 4
  %17 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd14 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %17, i32 0, i32 0
  %18 = load i32, i32* %fd14, align 4
  %cmp15 = icmp slt i32 %18, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  store i32 -66, i32* %ret, align 4
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %19 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd18 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %19, i32 0, i32 0
  %20 = load i32, i32* %fd18, align 4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 5
  %22 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %23 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 4
  %24 = load i32, i32* %ai_addrlen, align 8
  %call19 = call i32 @connect(i32 noundef %20, %struct.sockaddr* noundef %22, i32 noundef %24) #5
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  store i32 0, i32* %ret, align 4
  br label %for.end

if.end22:                                         ; preds = %if.end17
  %25 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd23 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %25, i32 0, i32 0
  %26 = load i32, i32* %fd23, align 4
  %call24 = call i32 @close(i32 noundef %26) #5
  store i32 -68, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end22, %if.then16
  %27 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 7
  %28 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %28, %struct.addrinfo** %cur, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then21, %for.cond
  %29 = load %struct.addrinfo*, %struct.addrinfo** %addr_list, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %29) #6
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_prepare() #0 {
entry:
  %call = call void (i32)* @__sysv_signal(i32 noundef 13, void (i32)* noundef inttoptr (i64 1 to void (i32)*)) #6
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @getaddrinfo(i8* noundef, i8* noundef, %struct.addrinfo* noundef, %struct.addrinfo** noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #2

declare dso_local i32 @close(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @freeaddrinfo(%struct.addrinfo* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %ctx, i8* noundef %bind_ip, i8* noundef %port, i32 noundef %proto) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %bind_ip.addr = alloca i8*, align 8
  %port.addr = alloca i8*, align 8
  %proto.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %hints = alloca %struct.addrinfo, align 8
  %addr_list = alloca %struct.addrinfo*, align 8
  %cur = alloca %struct.addrinfo*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  store i8* %bind_ip, i8** %bind_ip.addr, align 8
  store i8* %port, i8** %port.addr, align 8
  store i32 %proto, i32* %proto.addr, align 4
  %call = call i32 @net_prepare() #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %ret, align 4
  store i32 %0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.addrinfo* %hints to i8*
  %call1 = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 48) #6
  %ai_family = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 1
  store i32 0, i32* %ai_family, align 4
  %2 = load i32, i32* %proto.addr, align 4
  %cmp2 = icmp eq i32 %2, 1
  %3 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 2, i32 1
  %ai_socktype = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 2
  store i32 %cond, i32* %ai_socktype, align 8
  %4 = load i32, i32* %proto.addr, align 4
  %cmp3 = icmp eq i32 %4, 1
  %5 = zext i1 %cmp3 to i64
  %cond4 = select i1 %cmp3, i32 17, i32 6
  %ai_protocol = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 3
  store i32 %cond4, i32* %ai_protocol, align 4
  %6 = load i8*, i8** %bind_ip.addr, align 8
  %cmp5 = icmp eq i8* %6, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %ai_flags = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %hints, i32 0, i32 0
  store i32 1, i32* %ai_flags, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %7 = load i8*, i8** %bind_ip.addr, align 8
  %8 = load i8*, i8** %port.addr, align 8
  %call8 = call i32 @getaddrinfo(i8* noundef %7, i8* noundef %8, %struct.addrinfo* noundef %hints, %struct.addrinfo** noundef %addr_list) #5
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store i32 -82, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  store i32 -82, i32* %ret, align 4
  %9 = load %struct.addrinfo*, %struct.addrinfo** %addr_list, align 8
  store %struct.addrinfo* %9, %struct.addrinfo** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %10 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %cmp12 = icmp ne %struct.addrinfo* %10, null
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_family13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  %12 = load i32, i32* %ai_family13, align 4
  %13 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_socktype14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  %14 = load i32, i32* %ai_socktype14, align 8
  %15 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_protocol15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 3
  %16 = load i32, i32* %ai_protocol15, align 4
  %call16 = call i32 @socket(i32 noundef %12, i32 noundef %14, i32 noundef %16) #6
  %17 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %17, i32 0, i32 0
  store i32 %call16, i32* %fd, align 4
  %18 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd17 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %18, i32 0, i32 0
  %19 = load i32, i32* %fd17, align 4
  %cmp18 = icmp slt i32 %19, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.body
  store i32 -66, i32* %ret, align 4
  br label %for.inc

if.end20:                                         ; preds = %for.body
  store i32 1, i32* %n, align 4
  %20 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd21 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %20, i32 0, i32 0
  %21 = load i32, i32* %fd21, align 4
  %22 = bitcast i32* %n to i8*
  %call22 = call i32 @setsockopt(i32 noundef %21, i32 noundef 1, i32 noundef 2, i8* noundef %22, i32 noundef 4) #6
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  %23 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd25 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %23, i32 0, i32 0
  %24 = load i32, i32* %fd25, align 4
  %call26 = call i32 @close(i32 noundef %24) #5
  store i32 -66, i32* %ret, align 4
  br label %for.inc

if.end27:                                         ; preds = %if.end20
  %25 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd28 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %25, i32 0, i32 0
  %26 = load i32, i32* %fd28, align 4
  %27 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_addr = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 5
  %28 = load %struct.sockaddr*, %struct.sockaddr** %ai_addr, align 8
  %29 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_addrlen = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %29, i32 0, i32 4
  %30 = load i32, i32* %ai_addrlen, align 8
  %call29 = call i32 @bind(i32 noundef %26, %struct.sockaddr* noundef %28, i32 noundef %30) #6
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  %31 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd32 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %31, i32 0, i32 0
  %32 = load i32, i32* %fd32, align 4
  %call33 = call i32 @close(i32 noundef %32) #5
  store i32 -70, i32* %ret, align 4
  br label %for.inc

if.end34:                                         ; preds = %if.end27
  %33 = load i32, i32* %proto.addr, align 4
  %cmp35 = icmp eq i32 %33, 0
  br i1 %cmp35, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.end34
  %34 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd37 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %34, i32 0, i32 0
  %35 = load i32, i32* %fd37, align 4
  %call38 = call i32 @listen(i32 noundef %35, i32 noundef 10) #6
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then36
  %36 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd41 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %36, i32 0, i32 0
  %37 = load i32, i32* %fd41, align 4
  %call42 = call i32 @close(i32 noundef %37) #5
  store i32 -72, i32* %ret, align 4
  br label %for.inc

if.end43:                                         ; preds = %if.then36
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end34
  store i32 0, i32* %ret, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then40, %if.then31, %if.then24, %if.then19
  %38 = load %struct.addrinfo*, %struct.addrinfo** %cur, align 8
  %ai_next = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 7
  %39 = load %struct.addrinfo*, %struct.addrinfo** %ai_next, align 8
  store %struct.addrinfo* %39, %struct.addrinfo** %cur, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end44, %for.cond
  %40 = load %struct.addrinfo*, %struct.addrinfo** %addr_list, align 8
  call void @freeaddrinfo(%struct.addrinfo* noundef %40) #6
  %41 = load i32, i32* %ret, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare dso_local i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @listen(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %bind_ctx, %struct.mbedtls_net_context* noundef %client_ctx, i8* noundef %client_ip, i64 noundef %buf_size, i64* noundef %ip_len) #0 {
entry:
  %retval = alloca i32, align 4
  %bind_ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %client_ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %client_ip.addr = alloca i8*, align 8
  %buf_size.addr = alloca i64, align 8
  %ip_len.addr = alloca i64*, align 8
  %ret = alloca i32, align 4
  %type = alloca i32, align 4
  %client_addr = alloca %struct.sockaddr_storage, align 8
  %n = alloca i32, align 4
  %type_len = alloca i32, align 4
  %buf = alloca [1 x i8], align 1
  %local_addr = alloca %struct.sockaddr_storage, align 8
  %one = alloca i32, align 4
  %addr4 = alloca %struct.sockaddr_in*, align 8
  %addr6 = alloca %struct.sockaddr_in6*, align 8
  store %struct.mbedtls_net_context* %bind_ctx, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  store %struct.mbedtls_net_context* %client_ctx, %struct.mbedtls_net_context** %client_ctx.addr, align 8
  store i8* %client_ip, i8** %client_ip.addr, align 8
  store i64 %buf_size, i64* %buf_size.addr, align 8
  store i64* %ip_len, i64** %ip_len.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i32 128, i32* %n, align 4
  store i32 4, i32* %type_len, align 4
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %2 = bitcast i32* %type to i8*
  %call = call i32 @getsockopt(i32 noundef %1, i32 noundef 1, i32 noundef 3, i8* noundef %2, i32* noundef %type_len) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %type, align 4
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %type, align 4
  %cmp2 = icmp ne i32 %4, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -74, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd5 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %6, i32 0, i32 0
  %7 = load i32, i32* %fd5, align 4
  %8 = bitcast %struct.sockaddr_storage* %client_addr to %struct.sockaddr*
  %call6 = call i32 @accept(i32 noundef %7, %struct.sockaddr* noundef %8, i32* noundef %n) #5
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %client_ctx.addr, align 8
  %fd7 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %9, i32 0, i32 0
  store i32 %call6, i32* %fd7, align 4
  store i32 %call6, i32* %ret, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %10 = bitcast [1 x i8]* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 1, i1 false)
  %11 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd8 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %11, i32 0, i32 0
  %12 = load i32, i32* %fd8, align 4
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0
  %13 = bitcast %struct.sockaddr_storage* %client_addr to %struct.sockaddr*
  %call9 = call i64 @recvfrom(i32 noundef %12, i8* noundef %arraydecay, i64 noundef 1, i32 noundef 2, %struct.sockaddr* noundef %13, i32* noundef %n) #5
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %ret, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %14 = load i32, i32* %ret, align 4
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end10
  %15 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %call14 = call i32 @net_would_block(%struct.mbedtls_net_context* noundef %15) #5
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  store i32 -74, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end10
  %16 = load i32, i32* %type, align 4
  %cmp20 = icmp ne i32 %16, 1
  br i1 %cmp20, label %if.then22, label %if.end55

if.then22:                                        ; preds = %if.end19
  store i32 1, i32* %one, align 4
  %17 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd23 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %17, i32 0, i32 0
  %18 = load i32, i32* %fd23, align 4
  %19 = bitcast %struct.sockaddr_storage* %client_addr to %struct.sockaddr*
  %20 = load i32, i32* %n, align 4
  %call24 = call i32 @connect(i32 noundef %18, %struct.sockaddr* noundef %19, i32 noundef %20) #5
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then22
  store i32 -74, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then22
  %21 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd29 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %21, i32 0, i32 0
  %22 = load i32, i32* %fd29, align 4
  %23 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %client_ctx.addr, align 8
  %fd30 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %23, i32 0, i32 0
  store i32 %22, i32* %fd30, align 4
  %24 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd31 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %24, i32 0, i32 0
  store i32 -1, i32* %fd31, align 4
  store i32 128, i32* %n, align 4
  %25 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %client_ctx.addr, align 8
  %fd32 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %25, i32 0, i32 0
  %26 = load i32, i32* %fd32, align 4
  %27 = bitcast %struct.sockaddr_storage* %local_addr to %struct.sockaddr*
  %call33 = call i32 @getsockname(i32 noundef %26, %struct.sockaddr* noundef %27, i32* noundef %n) #6
  %cmp34 = icmp ne i32 %call33, 0
  br i1 %cmp34, label %if.then47, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end28
  %ss_family = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %local_addr, i32 0, i32 0
  %28 = load i16, i16* %ss_family, align 8
  %conv37 = zext i16 %28 to i32
  %call38 = call i32 @socket(i32 noundef %conv37, i32 noundef 2, i32 noundef 17) #6
  %29 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd39 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %29, i32 0, i32 0
  store i32 %call38, i32* %fd39, align 4
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %if.then47, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false36
  %30 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd43 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %30, i32 0, i32 0
  %31 = load i32, i32* %fd43, align 4
  %32 = bitcast i32* %one to i8*
  %call44 = call i32 @setsockopt(i32 noundef %31, i32 noundef 1, i32 noundef 2, i8* noundef %32, i32 noundef 4) #6
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false42, %lor.lhs.false36, %if.end28
  store i32 -66, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %lor.lhs.false42
  %33 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %bind_ctx.addr, align 8
  %fd49 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %33, i32 0, i32 0
  %34 = load i32, i32* %fd49, align 4
  %35 = bitcast %struct.sockaddr_storage* %local_addr to %struct.sockaddr*
  %36 = load i32, i32* %n, align 4
  %call50 = call i32 @bind(i32 noundef %34, %struct.sockaddr* noundef %35, i32 noundef %36) #6
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end48
  store i32 -70, i32* %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.end48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end19
  %37 = load i8*, i8** %client_ip.addr, align 8
  %cmp56 = icmp ne i8* %37, null
  br i1 %cmp56, label %if.then58, label %if.end76

if.then58:                                        ; preds = %if.end55
  %ss_family59 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %client_addr, i32 0, i32 0
  %38 = load i16, i16* %ss_family59, align 8
  %conv60 = zext i16 %38 to i32
  %cmp61 = icmp eq i32 %conv60, 2
  br i1 %cmp61, label %if.then63, label %if.else69

if.then63:                                        ; preds = %if.then58
  %39 = bitcast %struct.sockaddr_storage* %client_addr to %struct.sockaddr_in*
  store %struct.sockaddr_in* %39, %struct.sockaddr_in** %addr4, align 8
  %40 = load i64*, i64** %ip_len.addr, align 8
  store i64 4, i64* %40, align 8
  %41 = load i64, i64* %buf_size.addr, align 8
  %42 = load i64*, i64** %ip_len.addr, align 8
  %43 = load i64, i64* %42, align 8
  %cmp64 = icmp ult i64 %41, %43
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then63
  store i32 -67, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.then63
  %44 = load i8*, i8** %client_ip.addr, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %addr4, align 8
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  %46 = bitcast i32* %s_addr to i8*
  %47 = load i64*, i64** %ip_len.addr, align 8
  %48 = load i64, i64* %47, align 8
  %call68 = call i8* @memcpy(i8* noundef %44, i8* noundef %46, i64 noundef %48) #6
  br label %if.end75

if.else69:                                        ; preds = %if.then58
  %49 = bitcast %struct.sockaddr_storage* %client_addr to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %49, %struct.sockaddr_in6** %addr6, align 8
  %50 = load i64*, i64** %ip_len.addr, align 8
  store i64 16, i64* %50, align 8
  %51 = load i64, i64* %buf_size.addr, align 8
  %52 = load i64*, i64** %ip_len.addr, align 8
  %53 = load i64, i64* %52, align 8
  %cmp70 = icmp ult i64 %51, %53
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.else69
  store i32 -67, i32* %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.else69
  %54 = load i8*, i8** %client_ip.addr, align 8
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %addr6, align 8
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 3
  %__in6_u = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %sin6_addr, i32 0, i32 0
  %__u6_addr8 = bitcast %union.anon* %__in6_u to [16 x i8]*
  %56 = bitcast [16 x i8]* %__u6_addr8 to i8*
  %57 = load i64*, i64** %ip_len.addr, align 8
  %58 = load i64, i64* %57, align 8
  %call74 = call i8* @memcpy(i8* noundef %54, i8* noundef %56, i64 noundef %58) #6
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.end67
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end55
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then72, %if.then66, %if.then53, %if.then47, %if.then27, %if.end18, %if.then17, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare dso_local i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32* noundef) #1

declare dso_local i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @recvfrom(i32 noundef, i8* noundef, i64 noundef, i32 noundef, %struct.sockaddr* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_would_block(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %err = alloca i32, align 4
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %call = call i32* @__errno_location() #7
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %err, align 4
  %1 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %1, i32 0, i32 0
  %2 = load i32, i32* %fd, align 4
  %call1 = call i32 (i32, i32, ...) @fcntl(i32 noundef %2, i32 noundef 3) #5
  %and = and i32 %call1, 2048
  %cmp = icmp ne i32 %and, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %err, align 4
  %call2 = call i32* @__errno_location() #7
  store i32 %3, i32* %call2, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %err, align 4
  %call3 = call i32* @__errno_location() #7
  store i32 %4, i32* %call3, align 4
  switch i32 %4, label %sw.epilog [
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare dso_local i32 @getsockname(i32 noundef, %struct.sockaddr* noundef, i32* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_set_block(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %2, i32 0, i32 0
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3) #5
  %and = and i32 %call, -2049
  %call2 = call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 4, i32 noundef %and) #5
  ret i32 %call2
}

declare dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_set_nonblock(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %2, i32 0, i32 0
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 noundef %3, i32 noundef 3) #5
  %or = or i32 %call, 2048
  %call2 = call i32 (i32, i32, ...) @fcntl(i32 noundef %1, i32 noundef 4, i32 noundef %or) #5
  ret i32 %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_poll(%struct.mbedtls_net_context* noundef %ctx, i32 noundef %rw, i32 noundef %timeout) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %rw.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  %read_fds = alloca %struct.fd_set, align 8
  %write_fds = alloca %struct.fd_set, align 8
  %fd = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %__d09 = alloca i32, align 4
  %__d110 = alloca i32, align 4
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  store i32 %rw, i32* %rw.addr, align 4
  store i32 %timeout, i32* %timeout.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd1, align 4
  store i32 %1, i32* %fd, align 4
  %2 = load i32, i32* %fd, align 4
  %call = call i32 @check_fd(i32 noundef %2, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i64 0, i64 0
  %5 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #8, !srcloc !7
  %asmresult = extractvalue { i64, i64* } %5, 0
  %asmresult2 = extractvalue { i64, i64* } %5, 1
  %6 = trunc i64 %asmresult to i32
  store i32 %6, i32* %__d0, align 4
  %7 = ptrtoint i64* %asmresult2 to i64
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %9 = load i32, i32* %rw.addr, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %do.end
  %10 = load i32, i32* %rw.addr, align 4
  %and4 = and i32 %10, -2
  store i32 %and4, i32* %rw.addr, align 4
  %11 = load i32, i32* %fd, align 4
  %rem = srem i32 %11, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %fds_bits5 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %12 = load i32, i32* %fd, align 4
  %div = sdiv i32 %12, 64
  %idxprom = sext i32 %div to i64
  %arrayidx6 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits5, i64 0, i64 %idxprom
  %13 = load i64, i64* %arrayidx6, align 8
  %or = or i64 %13, %shl
  store i64 %or, i64* %arrayidx6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %do.end
  br label %do.body8

do.body8:                                         ; preds = %if.end7
  %fds_bits11 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_fds, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits11, i64 0, i64 0
  %14 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx12) #8, !srcloc !8
  %asmresult13 = extractvalue { i64, i64* } %14, 0
  %asmresult14 = extractvalue { i64, i64* } %14, 1
  %15 = trunc i64 %asmresult13 to i32
  store i32 %15, i32* %__d09, align 4
  %16 = ptrtoint i64* %asmresult14 to i64
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %__d110, align 4
  br label %do.end15

do.end15:                                         ; preds = %do.body8
  %18 = load i32, i32* %rw.addr, align 4
  %and16 = and i32 %18, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end28

if.then18:                                        ; preds = %do.end15
  %19 = load i32, i32* %rw.addr, align 4
  %and19 = and i32 %19, -3
  store i32 %and19, i32* %rw.addr, align 4
  %20 = load i32, i32* %fd, align 4
  %rem20 = srem i32 %20, 64
  %sh_prom21 = zext i32 %rem20 to i64
  %shl22 = shl i64 1, %sh_prom21
  %fds_bits23 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_fds, i32 0, i32 0
  %21 = load i32, i32* %fd, align 4
  %div24 = sdiv i32 %21, 64
  %idxprom25 = sext i32 %div24 to i64
  %arrayidx26 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits23, i64 0, i64 %idxprom25
  %22 = load i64, i64* %arrayidx26, align 8
  %or27 = or i64 %22, %shl22
  store i64 %or27, i64* %arrayidx26, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then18, %do.end15
  %23 = load i32, i32* %rw.addr, align 4
  %cmp29 = icmp ne i32 %23, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end28
  store i32 -73, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end28
  %24 = load i32, i32* %timeout.addr, align 4
  %div32 = udiv i32 %24, 1000
  %conv = zext i32 %div32 to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %25 = load i32, i32* %timeout.addr, align 4
  %rem33 = urem i32 %25, 1000
  %mul = mul i32 %rem33, 1000
  %conv34 = zext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %conv34, i64* %tv_usec, align 8
  br label %do.body35

do.body35:                                        ; preds = %do.cond, %if.end31
  %26 = load i32, i32* %fd, align 4
  %add = add nsw i32 %26, 1
  %27 = load i32, i32* %timeout.addr, align 4
  %cmp36 = icmp eq i32 %27, -1
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body35
  br label %cond.end

cond.false:                                       ; preds = %do.body35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.timeval* [ null, %cond.true ], [ %tv, %cond.false ]
  %call38 = call i32 @select(i32 noundef %add, %struct.fd_set* noundef %read_fds, %struct.fd_set* noundef %write_fds, %struct.fd_set* noundef null, %struct.timeval* noundef %cond) #5
  store i32 %call38, i32* %ret, align 4
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %28 = load i32, i32* %ret, align 4
  %cmp39 = icmp eq i32 %28, 4
  br i1 %cmp39, label %do.body35, label %do.end41, !llvm.loop !9

do.end41:                                         ; preds = %do.cond
  %29 = load i32, i32* %ret, align 4
  %cmp42 = icmp slt i32 %29, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.end41
  store i32 -71, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %do.end41
  store i32 0, i32* %ret, align 4
  %fds_bits46 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %30 = load i32, i32* %fd, align 4
  %div47 = sdiv i32 %30, 64
  %idxprom48 = sext i32 %div47 to i64
  %arrayidx49 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits46, i64 0, i64 %idxprom48
  %31 = load i64, i64* %arrayidx49, align 8
  %32 = load i32, i32* %fd, align 4
  %rem50 = srem i32 %32, 64
  %sh_prom51 = zext i32 %rem50 to i64
  %shl52 = shl i64 1, %sh_prom51
  %and53 = and i64 %31, %shl52
  %cmp54 = icmp ne i64 %and53, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end45
  %33 = load i32, i32* %ret, align 4
  %or57 = or i32 %33, 1
  store i32 %or57, i32* %ret, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end45
  %fds_bits59 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %write_fds, i32 0, i32 0
  %34 = load i32, i32* %fd, align 4
  %div60 = sdiv i32 %34, 64
  %idxprom61 = sext i32 %div60 to i64
  %arrayidx62 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits59, i64 0, i64 %idxprom61
  %35 = load i64, i64* %arrayidx62, align 8
  %36 = load i32, i32* %fd, align 4
  %rem63 = srem i32 %36, 64
  %sh_prom64 = zext i32 %rem63 to i64
  %shl65 = shl i64 1, %sh_prom64
  %and66 = and i64 %35, %shl65
  %cmp67 = icmp ne i64 %and66, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end58
  %37 = load i32, i32* %ret, align 4
  %or70 = or i32 %37, 2
  store i32 %or70, i32* %ret, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end58
  %38 = load i32, i32* %ret, align 4
  store i32 %38, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end71, %if.then44, %if.then30, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fd(i32 noundef %fd, i32 noundef %for_select) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %for_select.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %for_select, i32* %for_select.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -69, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %for_select.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %fd.addr, align 4
  %cmp1 = icmp sge i32 %2, 1024
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  store i32 -71, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

declare dso_local i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_net_usleep(i64 noundef %usec) #0 {
entry:
  %usec.addr = alloca i64, align 8
  %tv = alloca %struct.timeval, align 8
  store i64 %usec, i64* %usec.addr, align 8
  %0 = load i64, i64* %usec.addr, align 8
  %div = udiv i64 %0, 1000000
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %div, i64* %tv_sec, align 8
  %1 = load i64, i64* %usec.addr, align 8
  %rem = srem i64 %1, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %rem, i64* %tv_usec, align 8
  %call = call i32 @select(i32 noundef 0, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef %tv) #5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_recv(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_net_context*
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %1, i32 0, i32 0
  %2 = load i32, i32* %fd1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %call = call i32 @check_fd(i32 noundef %3, i32 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd, align 4
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call2 = call i64 @read(i32 noundef %6, i8* noundef %7, i64 noundef %8) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then5, label %if.end24

if.then5:                                         ; preds = %if.end
  %10 = load i8*, i8** %ctx.addr, align 8
  %11 = bitcast i8* %10 to %struct.mbedtls_net_context*
  %call6 = call i32 @net_would_block(%struct.mbedtls_net_context* noundef %11) #5
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then5
  %call11 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call11, align 4
  %cmp12 = icmp eq i32 %12, 32
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call14 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %13, 104
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 -80, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = call i32* @__errno_location() #7
  %14 = load i32, i32* %call19, align 4
  %cmp20 = icmp eq i32 %14, 4
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  store i32 -76, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.end23, %if.then22, %if.then17, %if.then9, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_recv_timeout(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len, i32 noundef %timeout) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %timeout.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tv = alloca %struct.timeval, align 8
  %read_fds = alloca %struct.fd_set, align 8
  %fd = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %timeout, i32* %timeout.addr, align 4
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_net_context*
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %1, i32 0, i32 0
  %2 = load i32, i32* %fd1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %call = call i32 @check_fd(i32 noundef %3, i32 noundef 1) #5
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i64 0, i64 0
  %6 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #8, !srcloc !10
  %asmresult = extractvalue { i64, i64* } %6, 0
  %asmresult2 = extractvalue { i64, i64* } %6, 1
  %7 = trunc i64 %asmresult to i32
  store i32 %7, i32* %__d0, align 4
  %8 = ptrtoint i64* %asmresult2 to i64
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load i32, i32* %fd, align 4
  %rem = srem i32 %10, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %fds_bits3 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %11 = load i32, i32* %fd, align 4
  %div = sdiv i32 %11, 64
  %idxprom = sext i32 %div to i64
  %arrayidx4 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits3, i64 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx4, align 8
  %or = or i64 %12, %shl
  store i64 %or, i64* %arrayidx4, align 8
  %13 = load i32, i32* %timeout.addr, align 4
  %div5 = udiv i32 %13, 1000
  %conv = zext i32 %div5 to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %14 = load i32, i32* %timeout.addr, align 4
  %rem6 = urem i32 %14, 1000
  %mul = mul i32 %rem6, 1000
  %conv7 = zext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 %conv7, i64* %tv_usec, align 8
  %15 = load i32, i32* %fd, align 4
  %add = add nsw i32 %15, 1
  %16 = load i32, i32* %timeout.addr, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  br label %cond.end

cond.false:                                       ; preds = %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.timeval* [ null, %cond.true ], [ %tv, %cond.false ]
  %call10 = call i32 @select(i32 noundef %add, %struct.fd_set* noundef %read_fds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef %cond) #5
  store i32 %call10, i32* %ret, align 4
  %17 = load i32, i32* %ret, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %cond.end
  store i32 -26624, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %cond.end
  %18 = load i32, i32* %ret, align 4
  %cmp15 = icmp slt i32 %18, 0
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end14
  %call18 = call i32* @__errno_location() #7
  %19 = load i32, i32* %call18, align 4
  %cmp19 = icmp eq i32 %19, 4
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  store i32 -26880, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then17
  store i32 -76, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end14
  %20 = load i8*, i8** %ctx.addr, align 8
  %21 = load i8*, i8** %buf.addr, align 8
  %22 = load i64, i64* %len.addr, align 8
  %call24 = call i32 @mbedtls_net_recv(i8* noundef %20, i8* noundef %21, i64 noundef %22) #5
  store i32 %call24, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.end22, %if.then21, %if.then13, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_send(i8* noundef %ctx, i8* noundef %buf, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %fd = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 -110, i32* %ret, align 4
  %0 = load i8*, i8** %ctx.addr, align 8
  %1 = bitcast i8* %0 to %struct.mbedtls_net_context*
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %1, i32 0, i32 0
  %2 = load i32, i32* %fd1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %call = call i32 @check_fd(i32 noundef %3, i32 noundef 0) #5
  store i32 %call, i32* %ret, align 4
  %4 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd, align 4
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call2 = call i64 @write(i32 noundef %6, i8* noundef %7, i64 noundef %8) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %ret, align 4
  %9 = load i32, i32* %ret, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then5, label %if.end24

if.then5:                                         ; preds = %if.end
  %10 = load i8*, i8** %ctx.addr, align 8
  %11 = bitcast i8* %10 to %struct.mbedtls_net_context*
  %call6 = call i32 @net_would_block(%struct.mbedtls_net_context* noundef %11) #5
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  store i32 -26752, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then5
  %call11 = call i32* @__errno_location() #7
  %12 = load i32, i32* %call11, align 4
  %cmp12 = icmp eq i32 %12, 32
  br i1 %cmp12, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call14 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %13, 104
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 -80, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = call i32* @__errno_location() #7
  %14 = load i32, i32* %call19, align 4
  %cmp20 = icmp eq i32 %14, 4
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 -26752, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  store i32 -78, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.end23, %if.then22, %if.then17, %if.then9, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_net_close(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %2, i32 0, i32 0
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @close(i32 noundef %3) #5
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd2 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %4, i32 0, i32 0
  store i32 -1, i32* %fd2, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd1 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %2, i32 0, i32 0
  %3 = load i32, i32* %fd1, align 4
  %call = call i32 @shutdown(i32 noundef %3, i32 noundef 2) #6
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd2 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %4, i32 0, i32 0
  %5 = load i32, i32* %fd2, align 4
  %call3 = call i32 @close(i32 noundef %5) #5
  %6 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %fd4 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %6, i32 0, i32 0
  store i32 -1, i32* %fd4, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @shutdown(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @__sysv_signal(i32 noundef, void (i32)* noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i64 2149162055}
!8 = !{i64 2149162734}
!9 = distinct !{!9, !5}
!10 = !{i64 2149164176}
