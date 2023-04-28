; ModuleID = 'test/udp_proxy.c'
source_filename = "test/udp_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.options = type { i8*, i8*, i8*, i8*, i32, i32, i32, [10 x i8*], i8, [10 x i8*], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.packet = type { %struct.mbedtls_net_context*, i8*, i8*, i32, [18432 x i8] }
%struct.mbedtls_net_context = type { i32 }
%struct.ctx_buffer = type { %struct.mbedtls_net_context*, i8*, i32, i32, [18432 x i8], i64 }
%struct.mbedtls_timing_hr_time = type { [32 x i8] }
%struct.timeval = type { i64, i64 }
%struct.fd_set = type { [16 x i64] }

@.str = private unnamed_addr constant [34 x i8] c"  %05u dispatch %s %s (%u bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"  %05u dispatch %s %s (%u bytes): %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@opt = internal global %struct.options zeroinitializer, align 8
@inject_clihlo_state = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ClientHello\00", align 1
@initial_clihlo = internal global %struct.packet zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"CID\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"modified CID\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  ! dispatch returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ApplicationData\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"  ! can't corrupt empty AD record\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"duplicated\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"injected\00", align 1
@prev = internal global [5 x %struct.packet] zeroinitializer, align 16
@prev_len = internal global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"delayed\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"  ! mbedtls_net_recv returned %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"S <- C\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"HelloVerifyRequest\00", align 1
@held = internal global [2048 x i8] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [17 x i8] c"ChangeCipherSpec\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"forwarded\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"  . Pseudo-random seed: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"  . Connect to server on UDP/%s/%s ...\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c" failed\0A  ! mbedtls_net_connect returned %d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c" ok\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"  . Bind on UDP/%s/%s ...\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c" failed\0A  ! mbedtls_net_bind returned %d\0A\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"  . Waiting for a remote connection ...\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c" failed\0A  ! mbedtls_net_accept returned %d\0A\0A\00", align 1
@outbuf = internal global [2 x %struct.ctx_buffer] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [7 x i8] c"S -> C\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Last error was: -0x%04X - %s\0A\0A\00", align 1
@ellapsed_time.initialized = internal global i32 0, align 4
@ellapsed_time.hires = internal global %struct.mbedtls_timing_hr_time zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"net_send returned -%#04x\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"  ! buffer size %u too large (max %u)\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"ctx_buffer_flush failed with -%#04x\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Alert\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Invalid handshake\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Encrypted handshake\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"HelloRequest\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"ServerHello\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"NewSessionTicket\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ServerKeyExchange\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"CertificateRequest\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"ServerHelloDone\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"CertificateVerify\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"ClientKeyExchange\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Finished\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Unknown handshake\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"5556\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"server_addr\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"server_port\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"listen_addr\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"listen_port\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"delay_ccs\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"delay_cli\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"delay_srv\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c" too many uses of %s: only %d allowed\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c" Allocation failure\0A\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"bad_ad\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"protect_hvr\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"protect_len\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"inject_clihlo\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c" unknown option or missing value: %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c" option %s: illegal value: %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [2368 x i8] c"\0A usage: udp_proxy param=<>...\0A\0A acceptable parameters:\0A    server_addr=%%s      default: localhost\0A    server_port=%%d      default: 4433\0A    listen_addr=%%s      default: localhost\0A    listen_port=%%d      default: 4433\0A\0A    duplicate=%%d        default: 0 (no duplication)\0A                        duplicate about 1:N packets randomly\0A    delay=%%d            default: 0 (no delayed packets)\0A                        delay about 1:N packets randomly\0A    delay_ccs=0/1       default: 0 (don't delay ChangeCipherSpec)\0A    delay_cli=%%s        Handshake message from client that should be\0A                        delayed. Possible values are 'ClientHello',\0A                        'Certificate', 'CertificateVerify', and\0A                        'ClientKeyExchange'.\0A                        May be used multiple times, even for the same\0A                        message, in which case the respective message\0A                        gets delayed multiple times.\0A    delay_srv=%%s        Handshake message from server that should be\0A                        delayed. Possible values are 'HelloRequest',\0A                        'ServerHello', 'ServerHelloDone', 'Certificate'\0A                        'ServerKeyExchange', 'NewSessionTicket',\0A                        'HelloVerifyRequest' and ''CertificateRequest'.\0A                        May be used multiple times, even for the same\0A                        message, in which case the respective message\0A                        gets delayed multiple times.\0A    drop=%%d             default: 0 (no dropped packets)\0A                        drop about 1:N packets randomly\0A    mtu=%%d              default: 0 (unlimited)\0A                        drop packets larger than N bytes\0A    bad_ad=0/1          default: 0 (don't add bad ApplicationData)\0A    bad_cid=%%d          default: 0 (don't corrupt Connection IDs)\0A                        duplicate 1:N packets containing a CID,\0A                        modifying CID in first instance of the packet.\0A    protect_hvr=0/1     default: 0 (don't protect HelloVerifyRequest)\0A    protect_len=%%d      default: (don't protect packets of this size)\0A    inject_clihlo=0/1   default: 0 (don't inject fake ClientHello)\0A\0A    seed=%%d             default: (use current time)\0A    pack=%%d             default: 0     (don't pack)\0A                         options: t > 0 (pack for t milliseconds)\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"  %05u flush    %s: %u bytes, %u datagrams, last %u ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_packet(%struct.packet* noundef %p, i8* noundef %why) #0 {
entry:
  %p.addr = alloca %struct.packet*, align 8
  %why.addr = alloca i8*, align 8
  store %struct.packet* %p, %struct.packet** %p.addr, align 8
  store i8* %why, i8** %why.addr, align 8
  %0 = load i8*, i8** %why.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ellapsed_time() #5
  %1 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %way = getelementptr inbounds %struct.packet, %struct.packet* %1, i32 0, i32 1
  %2 = load i8*, i8** %way, align 8
  %3 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type = getelementptr inbounds %struct.packet, %struct.packet* %3, i32 0, i32 2
  %4 = load i8*, i8** %type, align 8
  %5 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len = getelementptr inbounds %struct.packet, %struct.packet* %5, i32 0, i32 3
  %6 = load i32, i32* %len, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %call, i8* noundef %2, i8* noundef %4, i32 noundef %6) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @ellapsed_time() #5
  %7 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %way3 = getelementptr inbounds %struct.packet, %struct.packet* %7, i32 0, i32 1
  %8 = load i8*, i8** %way3, align 8
  %9 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type4 = getelementptr inbounds %struct.packet, %struct.packet* %9, i32 0, i32 2
  %10 = load i8*, i8** %type4, align 8
  %11 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len5 = getelementptr inbounds %struct.packet, %struct.packet* %11, i32 0, i32 3
  %12 = load i32, i32* %len5, align 8
  %13 = load i8*, i8** %why.addr, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call2, i8* noundef %8, i8* noundef %10, i32 noundef %12, i8* noundef %13) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* noundef %14) #5
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ellapsed_time() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @ellapsed_time.initialized, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef @ellapsed_time.hires, i32 noundef 1) #5
  store i32 1, i32* @ellapsed_time.initialized, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef @ellapsed_time.hires, i32 noundef 0) #5
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_packet(%struct.packet* noundef %p, i8* noundef %why) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.packet*, align 8
  %why.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %dst = alloca %struct.mbedtls_net_context*, align 8
  %buf = alloca [18432 x i8], align 16
  %buf36 = alloca [18432 x i8], align 16
  store %struct.packet* %p, %struct.packet** %p.addr, align 8
  store i8* %why, i8** %why.addr, align 8
  %0 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %dst1 = getelementptr inbounds %struct.packet, %struct.packet* %0, i32 0, i32 0
  %1 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst1, align 8
  store %struct.mbedtls_net_context* %1, %struct.mbedtls_net_context** %dst, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @inject_clihlo_state, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type = getelementptr inbounds %struct.packet, %struct.packet* %4, i32 0, i32 2
  %5 = load i8*, i8** %type, align 8
  %call = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)) #6
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %6 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %7 = bitcast %struct.packet* %6 to i8*
  %call5 = call i8* @memcpy(i8* noundef bitcast (%struct.packet* @initial_clihlo to i8*), i8* noundef %7, i64 noundef 18464) #7
  store i32 1, i32* @inject_clihlo_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %entry
  %8 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end29

land.lhs.true7:                                   ; preds = %if.end
  %9 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type8 = getelementptr inbounds %struct.packet, %struct.packet* %9, i32 0, i32 2
  %10 = load i8*, i8** %type8, align 8
  %call9 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.end29

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %call12 = call i32 @rand() #7
  %11 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 14), align 8
  %rem = urem i32 %call12, %11
  %cmp13 = icmp eq i32 %rem, 0
  br i1 %cmp13, label %if.then14, label %if.end29

if.then14:                                        ; preds = %land.lhs.true11
  %arraydecay = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf, i64 0, i64 0
  %12 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %buf15 = getelementptr inbounds %struct.packet, %struct.packet* %12, i32 0, i32 4
  %arraydecay16 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf15, i64 0, i64 0
  %13 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len = getelementptr inbounds %struct.packet, %struct.packet* %13, i32 0, i32 3
  %14 = load i32, i32* %len, align 8
  %conv = zext i32 %14 to i64
  %call17 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %arraydecay16, i64 noundef %conv) #7
  %arrayidx = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf, i64 0, i64 11
  %15 = load i8, i8* %arrayidx, align 1
  %conv18 = zext i8 %15 to i32
  %xor = xor i32 %conv18, 1
  %conv19 = trunc i32 %xor to i8
  store i8 %conv19, i8* %arrayidx, align 1
  %16 = load %struct.packet*, %struct.packet** %p.addr, align 8
  call void @print_packet(%struct.packet* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #5
  %17 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst, align 8
  %arraydecay20 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf, i64 0, i64 0
  %18 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len21 = getelementptr inbounds %struct.packet, %struct.packet* %18, i32 0, i32 3
  %19 = load i32, i32* %len21, align 8
  %conv22 = zext i32 %19 to i64
  %call23 = call i32 @dispatch_data(%struct.mbedtls_net_context* noundef %17, i8* noundef %arraydecay20, i64 noundef %conv22) #5
  store i32 %call23, i32* %ret, align 4
  %cmp24 = icmp sle i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then14
  %20 = load i32, i32* %ret, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %20) #5
  %21 = load i32, i32* %ret, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then14
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %land.lhs.true11, %land.lhs.true7, %if.end
  %22 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %land.lhs.true30, label %if.end59

land.lhs.true30:                                  ; preds = %if.end29
  %23 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type31 = getelementptr inbounds %struct.packet, %struct.packet* %23, i32 0, i32 2
  %24 = load i8*, i8** %type31, align 8
  %call32 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end59

if.then35:                                        ; preds = %land.lhs.true30
  %arraydecay37 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf36, i64 0, i64 0
  %25 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %buf38 = getelementptr inbounds %struct.packet, %struct.packet* %25, i32 0, i32 4
  %arraydecay39 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf38, i64 0, i64 0
  %26 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len40 = getelementptr inbounds %struct.packet, %struct.packet* %26, i32 0, i32 3
  %27 = load i32, i32* %len40, align 8
  %conv41 = zext i32 %27 to i64
  %call42 = call i8* @memcpy(i8* noundef %arraydecay37, i8* noundef %arraydecay39, i64 noundef %conv41) #7
  %28 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len43 = getelementptr inbounds %struct.packet, %struct.packet* %28, i32 0, i32 3
  %29 = load i32, i32* %len43, align 8
  %cmp44 = icmp ule i32 %29, 13
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then35
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #5
  br label %if.end49

if.else:                                          ; preds = %if.then35
  %arrayidx48 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf36, i64 0, i64 13
  %30 = load i8, i8* %arrayidx48, align 1
  %inc = add i8 %30, 1
  store i8 %inc, i8* %arrayidx48, align 1
  %31 = load %struct.packet*, %struct.packet** %p.addr, align 8
  call void @print_packet(%struct.packet* noundef %31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then46
  %32 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst, align 8
  %arraydecay50 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf36, i64 0, i64 0
  %33 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len51 = getelementptr inbounds %struct.packet, %struct.packet* %33, i32 0, i32 3
  %34 = load i32, i32* %len51, align 8
  %conv52 = zext i32 %34 to i64
  %call53 = call i32 @dispatch_data(%struct.mbedtls_net_context* noundef %32, i8* noundef %arraydecay50, i64 noundef %conv52) #5
  store i32 %call53, i32* %ret, align 4
  %cmp54 = icmp sle i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end49
  %35 = load i32, i32* %ret, align 4
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %35) #5
  %36 = load i32, i32* %ret, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end49
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %land.lhs.true30, %if.end29
  %37 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %38 = load i8*, i8** %why.addr, align 8
  call void @print_packet(%struct.packet* noundef %37, i8* noundef %38) #5
  %39 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst, align 8
  %40 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %buf60 = getelementptr inbounds %struct.packet, %struct.packet* %40, i32 0, i32 4
  %arraydecay61 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf60, i64 0, i64 0
  %41 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len62 = getelementptr inbounds %struct.packet, %struct.packet* %41, i32 0, i32 3
  %42 = load i32, i32* %len62, align 8
  %conv63 = zext i32 %42 to i64
  %call64 = call i32 @dispatch_data(%struct.mbedtls_net_context* noundef %39, i8* noundef %arraydecay61, i64 noundef %conv63) #5
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp sle i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end59
  %43 = load i32, i32* %ret, align 4
  %call68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %43) #5
  %44 = load i32, i32* %ret, align 4
  store i32 %44, i32* %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end59
  %45 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp70 = icmp ne i32 %45, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.end93

land.lhs.true72:                                  ; preds = %if.end69
  %46 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type73 = getelementptr inbounds %struct.packet, %struct.packet* %46, i32 0, i32 2
  %47 = load i8*, i8** %type73, align 8
  %call74 = call i32 @strcmp(i8* noundef %47, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %land.lhs.true77, label %if.end93

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %call78 = call i32 @rand() #7
  %48 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %rem79 = srem i32 %call78, %48
  %cmp80 = icmp eq i32 %rem79, 0
  br i1 %cmp80, label %if.then82, label %if.end93

if.then82:                                        ; preds = %land.lhs.true77
  %49 = load %struct.packet*, %struct.packet** %p.addr, align 8
  call void @print_packet(%struct.packet* noundef %49, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #5
  %50 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst, align 8
  %51 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %buf83 = getelementptr inbounds %struct.packet, %struct.packet* %51, i32 0, i32 4
  %arraydecay84 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf83, i64 0, i64 0
  %52 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %len85 = getelementptr inbounds %struct.packet, %struct.packet* %52, i32 0, i32 3
  %53 = load i32, i32* %len85, align 8
  %conv86 = zext i32 %53 to i64
  %call87 = call i32 @dispatch_data(%struct.mbedtls_net_context* noundef %50, i8* noundef %arraydecay84, i64 noundef %conv86) #5
  store i32 %call87, i32* %ret, align 4
  %cmp88 = icmp sle i32 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then82
  %54 = load i32, i32* %ret, align 4
  %call91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %54) #5
  %55 = load i32, i32* %ret, align 4
  store i32 %55, i32* %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.then82
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %land.lhs.true77, %land.lhs.true72, %if.end69
  %56 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp94 = icmp ne i32 %56, 0
  br i1 %cmp94, label %land.lhs.true96, label %if.end112

land.lhs.true96:                                  ; preds = %if.end93
  %57 = load i32, i32* @inject_clihlo_state, align 4
  %cmp97 = icmp eq i32 %57, 1
  br i1 %cmp97, label %land.lhs.true99, label %if.end112

land.lhs.true99:                                  ; preds = %land.lhs.true96
  %58 = load %struct.packet*, %struct.packet** %p.addr, align 8
  %type100 = getelementptr inbounds %struct.packet, %struct.packet* %58, i32 0, i32 2
  %59 = load i8*, i8** %type100, align 8
  %call101 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end112

if.then104:                                       ; preds = %land.lhs.true99
  call void @print_packet(%struct.packet* noundef @initial_clihlo, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #5
  %60 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.packet, %struct.packet* @initial_clihlo, i32 0, i32 3), align 8
  %conv105 = zext i32 %61 to i64
  %call106 = call i32 @dispatch_data(%struct.mbedtls_net_context* noundef %60, i8* noundef getelementptr inbounds (%struct.packet, %struct.packet* @initial_clihlo, i32 0, i32 4, i64 0), i64 noundef %conv105) #5
  store i32 %call106, i32* %ret, align 4
  %cmp107 = icmp sle i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then104
  %62 = load i32, i32* %ret, align 4
  %call110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 noundef %62) #5
  %63 = load i32, i32* %ret, align 4
  store i32 %63, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.then104
  store i32 2, i32* @inject_clihlo_state, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %land.lhs.true99, %land.lhs.true96, %if.end93
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then109, %if.then90, %if.then67, %if.then56, %if.then26
  %64 = load i32, i32* %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_data(%struct.mbedtls_net_context* noundef %ctx, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mbedtls_net_context*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %buf = alloca %struct.ctx_buffer*, align 8
  store %struct.mbedtls_net_context* %ctx, %struct.mbedtls_net_context** %ctx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct.ctx_buffer* null, %struct.ctx_buffer** %buf, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %1 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0, i32 0), align 16
  %2 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %cmp1 = icmp eq %struct.mbedtls_net_context* %1, %2
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store %struct.ctx_buffer* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0), %struct.ctx_buffer** %buf, align 8
  br label %if.end5

if.else:                                          ; preds = %if.then
  %3 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1, i32 0), align 16
  %4 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %cmp3 = icmp eq %struct.mbedtls_net_context* %3, %4
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  store %struct.ctx_buffer* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1), %struct.ctx_buffer** %buf, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %5 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf, align 8
  %cmp6 = icmp eq %struct.ctx_buffer* %5, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %6 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %call = call i32 @ctx_buffer_append(%struct.ctx_buffer* noundef %6, i8* noundef %7, i64 noundef %8) #5
  store i32 %call, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %entry
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx.addr, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call10 = call i32 @mbedtls_net_send(i8* noundef %10, i8* noundef %11, i64 noundef %12) #5
  store i32 %call10, i32* %ret, align 4
  %13 = load i32, i32* %ret, align 4
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %14 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %14
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i32 noundef %sub) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.end8, %if.then7
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_pending() #0 {
entry:
  %call = call i8* @memset(i8* noundef bitcast ([5 x %struct.packet]* @prev to i8*), i32 noundef 0, i64 noundef 92320) #7
  store i64 0, i64* @prev_len, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delay_packet(%struct.packet* noundef %delay) #0 {
entry:
  %delay.addr = alloca %struct.packet*, align 8
  store %struct.packet* %delay, %struct.packet** %delay.addr, align 8
  %0 = load i64, i64* @prev_len, align 8
  %cmp = icmp eq i64 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @prev_len, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* @prev_len, align 8
  %arrayidx = getelementptr inbounds [5 x %struct.packet], [5 x %struct.packet]* @prev, i64 0, i64 %1
  %2 = bitcast %struct.packet* %arrayidx to i8*
  %3 = load %struct.packet*, %struct.packet** %delay.addr, align 8
  %4 = bitcast %struct.packet* %3 to i8*
  %call = call i8* @memcpy(i8* noundef %2, i8* noundef %4, i64 noundef 18464) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_delayed() #0 {
entry:
  %retval = alloca i32, align 4
  %offset = alloca i8, align 1
  %ret = alloca i32, align 4
  store i8 0, i8* %offset, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %offset, align 1
  %conv = zext i8 %0 to i64
  %1 = load i64, i64* @prev_len, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8, i8* %offset, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.packet], [5 x %struct.packet]* @prev, i64 0, i64 %idxprom
  %call = call i32 @send_packet(%struct.packet* noundef %arrayidx, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)) #5
  store i32 %call, i32* %ret, align 4
  %3 = load i32, i32* %ret, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i8, i8* %offset, align 1
  %inc = add i8 %5, 1
  store i8 %inc, i8* %offset, align 1
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @clear_pending() #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_message(i8* noundef %way, %struct.mbedtls_net_context* noundef %dst, %struct.mbedtls_net_context* noundef %src) #0 {
entry:
  %retval = alloca i32, align 4
  %way.addr = alloca i8*, align 8
  %dst.addr = alloca %struct.mbedtls_net_context*, align 8
  %src.addr = alloca %struct.mbedtls_net_context*, align 8
  %ret = alloca i32, align 4
  %cur = alloca %struct.packet, align 8
  %id = alloca i64, align 8
  %delay_idx = alloca i8, align 1
  %delay_list = alloca i8**, align 8
  %delay_list_len = alloca i8, align 1
  store i8* %way, i8** %way.addr, align 8
  store %struct.mbedtls_net_context* %dst, %struct.mbedtls_net_context** %dst.addr, align 8
  store %struct.mbedtls_net_context* %src, %struct.mbedtls_net_context** %src.addr, align 8
  %0 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %src.addr, align 8
  %1 = bitcast %struct.mbedtls_net_context* %0 to i8*
  %buf = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 4
  %arraydecay = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf, i64 0, i64 0
  %call = call i32 @mbedtls_net_recv(i8* noundef %1, i8* noundef %arraydecay, i64 noundef 18432) #5
  store i32 %call, i32* %ret, align 4
  %cmp = icmp sle i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 noundef %2) #5
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %ret, align 4
  %len = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  store i32 %4, i32* %len, align 8
  %buf2 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [18432 x i8], [18432 x i8]* %buf2, i64 0, i64 0
  %len4 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  %5 = load i32, i32* %len4, align 8
  %conv = zext i32 %5 to i64
  %call5 = call i8* @msg_type(i8* noundef %arraydecay3, i64 noundef %conv) #5
  %type = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  store i8* %call5, i8** %type, align 8
  %6 = load i8*, i8** %way.addr, align 8
  %way6 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 1
  store i8* %6, i8** %way6, align 8
  %7 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %dst.addr, align 8
  %dst7 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 0
  store %struct.mbedtls_net_context* %7, %struct.mbedtls_net_context** %dst7, align 8
  call void @print_packet(%struct.packet* noundef %cur, i8* noundef null) #5
  %len8 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  %8 = load i32, i32* %len8, align 8
  %conv9 = zext i32 %8 to i64
  %rem = urem i64 %conv9, 2048
  store i64 %rem, i64* %id, align 8
  %9 = load i8*, i8** %way.addr, align 8
  %call10 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #6
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  store i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7, i64 0), i8*** %delay_list, align 8
  %10 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8 %10, i8* %delay_list_len, align 1
  br label %if.end14

if.else:                                          ; preds = %if.end
  store i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9, i64 0), i8*** %delay_list, align 8
  %11 = load i8, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  store i8 %11, i8* %delay_list_len, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  store i8 0, i8* %delay_idx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %12 = load i8, i8* %delay_idx, align 1
  %conv15 = zext i8 %12 to i32
  %13 = load i8, i8* %delay_list_len, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp slt i32 %conv15, %conv16
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8**, i8*** %delay_list, align 8
  %15 = load i8, i8* %delay_idx, align 1
  %idxprom = zext i8 %15 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  %cmp19 = icmp eq i8* %16, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %17 = load i8**, i8*** %delay_list, align 8
  %18 = load i8, i8* %delay_idx, align 1
  %idxprom23 = zext i8 %18 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %17, i64 %idxprom23
  %19 = load i8*, i8** %arrayidx24, align 8
  %type25 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %20 = load i8*, i8** %type25, align 8
  %call26 = call i32 @strcmp(i8* noundef %19, i8* noundef %20) #6
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.end22
  call void @delay_packet(%struct.packet* noundef %cur) #5
  %21 = load i8**, i8*** %delay_list, align 8
  %22 = load i8, i8* %delay_idx, align 1
  %idxprom30 = zext i8 %22 to i64
  %arrayidx31 = getelementptr inbounds i8*, i8** %21, i64 %idxprom30
  %23 = load i8*, i8** %arrayidx31, align 8
  call void @free(i8* noundef %23) #7
  %24 = load i8**, i8*** %delay_list, align 8
  %25 = load i8, i8* %delay_idx, align 1
  %idxprom32 = zext i8 %25 to i64
  %arrayidx33 = getelementptr inbounds i8*, i8** %24, i64 %idxprom32
  store i8* null, i8** %arrayidx33, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end22
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then21
  %26 = load i8, i8* %delay_idx, align 1
  %inc = add i8 %26, 1
  store i8 %inc, i8* %delay_idx, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp35 = icmp ne i32 %27, 0
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %len37 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  %28 = load i32, i32* %len37, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp38 = icmp ugt i32 %28, %29
  br i1 %cmp38, label %if.then74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %30 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %cmp40 = icmp ne i32 %30, 0
  br i1 %cmp40, label %land.lhs.true42, label %if.else77

land.lhs.true42:                                  ; preds = %lor.lhs.false
  %type43 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %31 = load i8*, i8** %type43, align 8
  %call44 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %land.lhs.true47, label %if.else77

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %type48 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %32 = load i8*, i8** %type48, align 8
  %call49 = call i32 @strcmp(i8* noundef %32, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.else77

land.lhs.true52:                                  ; preds = %land.lhs.true47
  %33 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %land.lhs.true53, label %land.lhs.true58

land.lhs.true53:                                  ; preds = %land.lhs.true52
  %type54 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %34 = load i8*, i8** %type54, align 8
  %call55 = call i32 @strcmp(i8* noundef %34, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.else77, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true53, %land.lhs.true52
  %len59 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  %35 = load i32, i32* %len59, align 8
  %conv60 = zext i32 %35 to i64
  %36 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %conv61 = sext i32 %36 to i64
  %cmp62 = icmp ne i64 %conv60, %conv61
  br i1 %cmp62, label %land.lhs.true64, label %if.else77

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %37 = load i64, i64* %id, align 8
  %arrayidx65 = getelementptr inbounds [2048 x i8], [2048 x i8]* @held, i64 0, i64 %37
  %38 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %38 to i32
  %cmp67 = icmp slt i32 %conv66, 2
  br i1 %cmp67, label %land.lhs.true69, label %if.else77

land.lhs.true69:                                  ; preds = %land.lhs.true64
  %call70 = call i32 @rand() #7
  %39 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %rem71 = srem i32 %call70, %39
  %cmp72 = icmp eq i32 %rem71, 0
  br i1 %cmp72, label %if.then74, label %if.else77

if.then74:                                        ; preds = %land.lhs.true69, %land.lhs.true
  %40 = load i64, i64* %id, align 8
  %arrayidx75 = getelementptr inbounds [2048 x i8], [2048 x i8]* @held, i64 0, i64 %40
  %41 = load i8, i8* %arrayidx75, align 1
  %inc76 = add i8 %41, 1
  store i8 %inc76, i8* %arrayidx75, align 1
  br label %if.end136

if.else77:                                        ; preds = %land.lhs.true69, %land.lhs.true64, %land.lhs.true58, %land.lhs.true53, %land.lhs.true47, %land.lhs.true42, %lor.lhs.false
  %42 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp78 = icmp eq i32 %42, 1
  br i1 %cmp78, label %land.lhs.true80, label %lor.lhs.false85

land.lhs.true80:                                  ; preds = %if.else77
  %type81 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %43 = load i8*, i8** %type81, align 8
  %call82 = call i32 @strcmp(i8* noundef %43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #6
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then121, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %land.lhs.true80, %if.else77
  %44 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp86 = icmp ne i32 %44, 0
  br i1 %cmp86, label %land.lhs.true88, label %if.else124

land.lhs.true88:                                  ; preds = %lor.lhs.false85
  %type89 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %45 = load i8*, i8** %type89, align 8
  %call90 = call i32 @strcmp(i8* noundef %45, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %land.lhs.true93, label %if.else124

land.lhs.true93:                                  ; preds = %land.lhs.true88
  %type94 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %46 = load i8*, i8** %type94, align 8
  %call95 = call i32 @strcmp(i8* noundef %46, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %land.lhs.true98, label %if.else124

land.lhs.true98:                                  ; preds = %land.lhs.true93
  %47 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %tobool99 = icmp ne i32 %47, 0
  br i1 %tobool99, label %land.lhs.true100, label %land.lhs.true105

land.lhs.true100:                                 ; preds = %land.lhs.true98
  %type101 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 2
  %48 = load i8*, i8** %type101, align 8
  %call102 = call i32 @strcmp(i8* noundef %48, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0)) #6
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %if.else124, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true100, %land.lhs.true98
  %len106 = getelementptr inbounds %struct.packet, %struct.packet* %cur, i32 0, i32 3
  %49 = load i32, i32* %len106, align 8
  %conv107 = zext i32 %49 to i64
  %50 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %conv108 = sext i32 %50 to i64
  %cmp109 = icmp ne i64 %conv107, %conv108
  br i1 %cmp109, label %land.lhs.true111, label %if.else124

land.lhs.true111:                                 ; preds = %land.lhs.true105
  %51 = load i64, i64* %id, align 8
  %arrayidx112 = getelementptr inbounds [2048 x i8], [2048 x i8]* @held, i64 0, i64 %51
  %52 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %52 to i32
  %cmp114 = icmp slt i32 %conv113, 2
  br i1 %cmp114, label %land.lhs.true116, label %if.else124

land.lhs.true116:                                 ; preds = %land.lhs.true111
  %call117 = call i32 @rand() #7
  %53 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %rem118 = srem i32 %call117, %53
  %cmp119 = icmp eq i32 %rem118, 0
  br i1 %cmp119, label %if.then121, label %if.else124

if.then121:                                       ; preds = %land.lhs.true116, %land.lhs.true80
  %54 = load i64, i64* %id, align 8
  %arrayidx122 = getelementptr inbounds [2048 x i8], [2048 x i8]* @held, i64 0, i64 %54
  %55 = load i8, i8* %arrayidx122, align 1
  %inc123 = add i8 %55, 1
  store i8 %inc123, i8* %arrayidx122, align 1
  call void @delay_packet(%struct.packet* noundef %cur) #5
  br label %if.end135

if.else124:                                       ; preds = %land.lhs.true116, %land.lhs.true111, %land.lhs.true105, %land.lhs.true100, %land.lhs.true93, %land.lhs.true88, %lor.lhs.false85
  %call125 = call i32 @send_packet(%struct.packet* noundef %cur, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #5
  store i32 %call125, i32* %ret, align 4
  %cmp126 = icmp ne i32 %call125, 0
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.else124
  %56 = load i32, i32* %ret, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

if.end129:                                        ; preds = %if.else124
  %call130 = call i32 @send_delayed() #5
  store i32 %call130, i32* %ret, align 4
  %57 = load i32, i32* %ret, align 4
  %cmp131 = icmp ne i32 %57, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  %58 = load i32, i32* %ret, align 4
  store i32 %58, i32* %retval, align 4
  br label %return

if.end134:                                        ; preds = %if.end129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then121
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then74
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end136, %if.then133, %if.then128, %if.then29, %if.then
  %59 = load i32, i32* %retval, align 4
  ret i32 %59
}

declare dso_local i32 @mbedtls_net_recv(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @msg_type(i8* noundef %msg, i64 noundef %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %msg.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %msg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  switch i32 %conv, label %sw.default [
    i32 20, label %sw.bb
    i32 21, label %sw.bb1
    i32 23, label %sw.bb2
    i32 25, label %sw.bb3
    i32 22, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %if.end
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %sw.bb4
  %3 = load i64, i64* %len.addr, align 8
  %cmp5 = icmp ult i64 %3, 25
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.epilog
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %sw.epilog
  %4 = load i8*, i8** %msg.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %4, i64 14
  %5 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv10, 0
  br i1 %tobool, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %6 = load i8*, i8** %msg.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %6, i64 19
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %tobool13 = icmp ne i32 %conv12, 0
  br i1 %tobool13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %8 = load i8*, i8** %msg.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 22
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %9 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.end8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end19:                                         ; preds = %lor.lhs.false14
  %10 = load i8*, i8** %msg.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %10, i64 13
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  switch i32 %conv21, label %sw.default34 [
    i32 0, label %sw.bb22
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
    i32 4, label %sw.bb26
    i32 11, label %sw.bb27
    i32 12, label %sw.bb28
    i32 13, label %sw.bb29
    i32 14, label %sw.bb30
    i32 15, label %sw.bb31
    i32 16, label %sw.bb32
    i32 20, label %sw.bb33
  ]

sw.bb22:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb23:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb24:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb25:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb26:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb27:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb28:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb29:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb30:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb31:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb32:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb33:                                          ; preds = %if.end19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.default34:                                     ; preds = %if.end19
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %if.then18, %if.then7, %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %12 = load i8*, i8** %retval, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %exit_code = alloca i32, align 4
  %delay_idx = alloca i8, align 1
  %listen_fd = alloca %struct.mbedtls_net_context, align 4
  %client_fd = alloca %struct.mbedtls_net_context, align 4
  %server_fd = alloca %struct.mbedtls_net_context, align 4
  %tm = alloca %struct.timeval, align 8
  %tm_ptr = alloca %struct.timeval*, align 8
  %nb_fds = alloca i32, align 4
  %read_fds = alloca %struct.fd_set, align 8
  %max_wait_server = alloca i32, align 4
  %max_wait_client = alloca i32, align 4
  %max_wait = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %error_buf = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %ret, align 4
  store i32 1, i32* %exit_code, align 4
  store %struct.timeval* null, %struct.timeval** %tm_ptr, align 8
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %listen_fd) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_net_init(%struct.mbedtls_net_context* noundef %server_fd) #5
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @get_options(i32 noundef %0, i8** noundef %1) #5
  %2 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @time(i64* noundef null) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  call void @srand(i32 noundef %4) #7
  %5 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %6 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* noundef %5, i8* noundef %6) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* noundef %7) #5
  %8 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  %call4 = call i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef %server_fd, i8* noundef %8, i8* noundef %9, i32 noundef 1) #5
  store i32 %call4, i32* %ret, align 4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %ret, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i32 noundef %10) #5
  br label %exit

if.end9:                                          ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #5
  %11 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %12 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* noundef %11, i8* noundef %12) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fflush(%struct._IO_FILE* noundef %13) #5
  %14 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  %call13 = call i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef %listen_fd, i8* noundef %14, i8* noundef %15, i32 noundef 1) #5
  store i32 %call13, i32* %ret, align 4
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end9
  %16 = load i32, i32* %ret, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 noundef %16) #5
  br label %exit

if.end18:                                         ; preds = %if.end9
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %accept

accept:                                           ; preds = %if.then154, %if.then135, %if.then117, %if.end18
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* noundef %17) #5
  %call22 = call i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef %listen_fd, %struct.mbedtls_net_context* noundef %client_fd, i8* noundef null, i64 noundef 0, i64* noundef null) #5
  store i32 %call22, i32* %ret, align 4
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %accept
  %18 = load i32, i32* %ret, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i32 noundef %18) #5
  br label %exit

if.end27:                                         ; preds = %accept
  %call28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #5
  call void @clear_pending() #5
  %call29 = call i8* @memset(i8* noundef getelementptr inbounds ([2048 x i8], [2048 x i8]* @held, i64 0, i64 0), i32 noundef 0, i64 noundef 2048) #7
  %fd = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %client_fd, i32 0, i32 0
  %19 = load i32, i32* %fd, align 4
  store i32 %19, i32* %nb_fds, align 4
  %20 = load i32, i32* %nb_fds, align 4
  %fd30 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %21 = load i32, i32* %fd30, align 4
  %cmp31 = icmp slt i32 %20, %21
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end27
  %fd34 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %22 = load i32, i32* %fd34, align 4
  store i32 %22, i32* %nb_fds, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end27
  %23 = load i32, i32* %nb_fds, align 4
  %fd36 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %24 = load i32, i32* %fd36, align 4
  %cmp37 = icmp slt i32 %23, %24
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end35
  %fd40 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %25 = load i32, i32* %fd40, align 4
  store i32 %25, i32* %nb_fds, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end35
  %26 = load i32, i32* %nb_fds, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %nb_fds, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp42 = icmp ugt i32 %27, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  store %struct.mbedtls_net_context* %server_fd, %struct.mbedtls_net_context** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0, i32 0), align 16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0, i32 5), align 8
  store %struct.mbedtls_net_context* %client_fd, %struct.mbedtls_net_context** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1, i32 0), align 16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8** getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1, i32 1), align 8
  store i32 0, i32* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1, i32 3), align 4
  store i64 0, i64* getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1, i32 5), align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41
  br label %while.body

while.body:                                       ; preds = %if.end45, %if.end156
  %28 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp46 = icmp ugt i32 %28, 0
  br i1 %cmp46, label %if.then48, label %if.end73

if.then48:                                        ; preds = %while.body
  %call49 = call i32 @ctx_buffer_time_remaining(%struct.ctx_buffer* noundef getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0)) #5
  store i32 %call49, i32* %max_wait_server, align 4
  %call50 = call i32 @ctx_buffer_time_remaining(%struct.ctx_buffer* noundef getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1)) #5
  store i32 %call50, i32* %max_wait_client, align 4
  store i32 -1, i32* %max_wait, align 4
  %29 = load i32, i32* %max_wait_server, align 4
  %cmp51 = icmp eq i32 %29, 0
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.then48
  %call54 = call i32 @ctx_buffer_flush(%struct.ctx_buffer* noundef getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 0)) #5
  br label %if.end55

if.else:                                          ; preds = %if.then48
  %30 = load i32, i32* %max_wait_server, align 4
  store i32 %30, i32* %max_wait, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then53
  %31 = load i32, i32* %max_wait_client, align 4
  %cmp56 = icmp eq i32 %31, 0
  br i1 %cmp56, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.end55
  %call59 = call i32 @ctx_buffer_flush(%struct.ctx_buffer* noundef getelementptr inbounds ([2 x %struct.ctx_buffer], [2 x %struct.ctx_buffer]* @outbuf, i64 0, i64 1)) #5
  br label %if.end65

if.else60:                                        ; preds = %if.end55
  %32 = load i32, i32* %max_wait_client, align 4
  %33 = load i32, i32* %max_wait, align 4
  %cmp61 = icmp ult i32 %32, %33
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else60
  %34 = load i32, i32* %max_wait_client, align 4
  store i32 %34, i32* %max_wait, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else60
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then58
  %35 = load i32, i32* %max_wait, align 4
  %cmp66 = icmp ne i32 %35, -1
  br i1 %cmp66, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.end65
  %36 = load i32, i32* %max_wait, align 4
  %div = udiv i32 %36, 1000
  %conv69 = zext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 0
  store i64 %conv69, i64* %tv_sec, align 8
  %37 = load i32, i32* %max_wait, align 4
  %rem = urem i32 %37, 1000
  %mul = mul i32 %rem, 1000
  %conv70 = zext i32 %mul to i64
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tm, i32 0, i32 1
  store i64 %conv70, i64* %tv_usec, align 8
  store %struct.timeval* %tm, %struct.timeval** %tm_ptr, align 8
  br label %if.end72

if.else71:                                        ; preds = %if.end65
  store %struct.timeval* null, %struct.timeval** %tm_ptr, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else71, %if.then68
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %while.body
  br label %do.body

do.body:                                          ; preds = %if.end73
  %__fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits, i64 0, i64 0
  %38 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #8, !srcloc !7
  %asmresult = extractvalue { i64, i64* } %38, 0
  %asmresult74 = extractvalue { i64, i64* } %38, 1
  %39 = trunc i64 %asmresult to i32
  store i32 %39, i32* %__d0, align 4
  %40 = ptrtoint i64* %asmresult74 to i64
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %fd75 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %42 = load i32, i32* %fd75, align 4
  %rem76 = srem i32 %42, 64
  %sh_prom = zext i32 %rem76 to i64
  %shl = shl i64 1, %sh_prom
  %__fds_bits77 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd78 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %43 = load i32, i32* %fd78, align 4
  %div79 = sdiv i32 %43, 64
  %idxprom = sext i32 %div79 to i64
  %arrayidx80 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits77, i64 0, i64 %idxprom
  %44 = load i64, i64* %arrayidx80, align 8
  %or = or i64 %44, %shl
  store i64 %or, i64* %arrayidx80, align 8
  %fd81 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %client_fd, i32 0, i32 0
  %45 = load i32, i32* %fd81, align 4
  %rem82 = srem i32 %45, 64
  %sh_prom83 = zext i32 %rem82 to i64
  %shl84 = shl i64 1, %sh_prom83
  %__fds_bits85 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd86 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %client_fd, i32 0, i32 0
  %46 = load i32, i32* %fd86, align 4
  %div87 = sdiv i32 %46, 64
  %idxprom88 = sext i32 %div87 to i64
  %arrayidx89 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits85, i64 0, i64 %idxprom88
  %47 = load i64, i64* %arrayidx89, align 8
  %or90 = or i64 %47, %shl84
  store i64 %or90, i64* %arrayidx89, align 8
  %fd91 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %48 = load i32, i32* %fd91, align 4
  %rem92 = srem i32 %48, 64
  %sh_prom93 = zext i32 %rem92 to i64
  %shl94 = shl i64 1, %sh_prom93
  %__fds_bits95 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd96 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %49 = load i32, i32* %fd96, align 4
  %div97 = sdiv i32 %49, 64
  %idxprom98 = sext i32 %div97 to i64
  %arrayidx99 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits95, i64 0, i64 %idxprom98
  %50 = load i64, i64* %arrayidx99, align 8
  %or100 = or i64 %50, %shl94
  store i64 %or100, i64* %arrayidx99, align 8
  %51 = load i32, i32* %nb_fds, align 4
  %52 = load %struct.timeval*, %struct.timeval** %tm_ptr, align 8
  %call101 = call i32 @select(i32 noundef %51, %struct.fd_set* noundef %read_fds, %struct.fd_set* noundef null, %struct.fd_set* noundef null, %struct.timeval* noundef %52) #5
  store i32 %call101, i32* %ret, align 4
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %do.end
  call void @perror(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #5
  br label %exit

if.end105:                                        ; preds = %do.end
  %__fds_bits106 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd107 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %53 = load i32, i32* %fd107, align 4
  %div108 = sdiv i32 %53, 64
  %idxprom109 = sext i32 %div108 to i64
  %arrayidx110 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits106, i64 0, i64 %idxprom109
  %54 = load i64, i64* %arrayidx110, align 8
  %fd111 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %listen_fd, i32 0, i32 0
  %55 = load i32, i32* %fd111, align 4
  %rem112 = srem i32 %55, 64
  %sh_prom113 = zext i32 %rem112 to i64
  %shl114 = shl i64 1, %sh_prom113
  %and = and i64 %54, %shl114
  %cmp115 = icmp ne i64 %and, 0
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end105
  br label %accept

if.end118:                                        ; preds = %if.end105
  %__fds_bits119 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd120 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %client_fd, i32 0, i32 0
  %56 = load i32, i32* %fd120, align 4
  %div121 = sdiv i32 %56, 64
  %idxprom122 = sext i32 %div121 to i64
  %arrayidx123 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits119, i64 0, i64 %idxprom122
  %57 = load i64, i64* %arrayidx123, align 8
  %fd124 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %client_fd, i32 0, i32 0
  %58 = load i32, i32* %fd124, align 4
  %rem125 = srem i32 %58, 64
  %sh_prom126 = zext i32 %rem125 to i64
  %shl127 = shl i64 1, %sh_prom126
  %and128 = and i64 %57, %shl127
  %cmp129 = icmp ne i64 %and128, 0
  br i1 %cmp129, label %if.then131, label %if.end137

if.then131:                                       ; preds = %if.end118
  %call132 = call i32 @handle_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.mbedtls_net_context* noundef %server_fd, %struct.mbedtls_net_context* noundef %client_fd) #5
  store i32 %call132, i32* %ret, align 4
  %cmp133 = icmp ne i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then131
  br label %accept

if.end136:                                        ; preds = %if.then131
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end118
  %__fds_bits138 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %read_fds, i32 0, i32 0
  %fd139 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %59 = load i32, i32* %fd139, align 4
  %div140 = sdiv i32 %59, 64
  %idxprom141 = sext i32 %div140 to i64
  %arrayidx142 = getelementptr inbounds [16 x i64], [16 x i64]* %__fds_bits138, i64 0, i64 %idxprom141
  %60 = load i64, i64* %arrayidx142, align 8
  %fd143 = getelementptr inbounds %struct.mbedtls_net_context, %struct.mbedtls_net_context* %server_fd, i32 0, i32 0
  %61 = load i32, i32* %fd143, align 4
  %rem144 = srem i32 %61, 64
  %sh_prom145 = zext i32 %rem144 to i64
  %shl146 = shl i64 1, %sh_prom145
  %and147 = and i64 %60, %shl146
  %cmp148 = icmp ne i64 %and147, 0
  br i1 %cmp148, label %if.then150, label %if.end156

if.then150:                                       ; preds = %if.end137
  %call151 = call i32 @handle_message(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), %struct.mbedtls_net_context* noundef %client_fd, %struct.mbedtls_net_context* noundef %server_fd) #5
  store i32 %call151, i32* %ret, align 4
  %cmp152 = icmp ne i32 %call151, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.then150
  br label %accept

if.end155:                                        ; preds = %if.then150
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end137
  br label %while.body

exit:                                             ; preds = %if.then104, %if.then25, %if.then16, %if.then7
  %62 = load i32, i32* %exit_code, align 4
  %cmp157 = icmp ne i32 %62, 0
  br i1 %cmp157, label %if.then159, label %if.end163

if.then159:                                       ; preds = %exit
  %63 = load i32, i32* %ret, align 4
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  call void @mbedtls_strerror(i32 noundef %63, i8* noundef %arraydecay, i64 noundef 100) #5
  %64 = load i32, i32* %ret, align 4
  %sub = sub nsw i32 0, %64
  %arraydecay160 = getelementptr inbounds [100 x i8], [100 x i8]* %error_buf, i64 0, i64 0
  %call161 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 noundef %sub, i8* noundef %arraydecay160) #5
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call162 = call i32 @fflush(%struct._IO_FILE* noundef %65) #5
  br label %if.end163

if.end163:                                        ; preds = %if.then159, %exit
  store i8 0, i8* %delay_idx, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end163
  %66 = load i8, i8* %delay_idx, align 1
  %conv164 = zext i8 %66 to i32
  %cmp165 = icmp slt i32 %conv164, 10
  br i1 %cmp165, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i8, i8* %delay_idx, align 1
  %idxprom167 = zext i8 %67 to i64
  %arrayidx168 = getelementptr inbounds [10 x i8*], [10 x i8*]* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7), i64 0, i64 %idxprom167
  %68 = load i8*, i8** %arrayidx168, align 8
  call void @free(i8* noundef %68) #7
  %69 = load i8, i8* %delay_idx, align 1
  %idxprom169 = zext i8 %69 to i64
  %arrayidx170 = getelementptr inbounds [10 x i8*], [10 x i8*]* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9), i64 0, i64 %idxprom169
  %70 = load i8*, i8** %arrayidx170, align 8
  call void @free(i8* noundef %70) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i8, i8* %delay_idx, align 1
  %inc171 = add i8 %71, 1
  store i8 %inc171, i8* %delay_idx, align 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %client_fd) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %server_fd) #5
  call void @mbedtls_net_free(%struct.mbedtls_net_context* noundef %listen_fd) #5
  %72 = load i32, i32* %exit_code, align 4
  call void @exit(i32 noundef %72) #9
  unreachable
}

declare dso_local void @mbedtls_net_init(%struct.mbedtls_net_context* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_options(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %delay_cnt = alloca i8*, align 8
  %delay_list = alloca i8**, align 8
  %len = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), align 8
  store i8 0, i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), align 8
  %call = call i8* @memset(i8* noundef bitcast (i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7, i64 0) to i8*), i32 noundef 0, i64 noundef 80) #7
  %call1 = call i8* @memset(i8* noundef bitcast (i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9, i64 0) to i8*), i32 noundef 0, i64 noundef 80) #7
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %call2 = call i8* @strchr(i8* noundef %5, i32 noundef 61) #6
  store i8* %call2, i8** %q, align 8
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %p, align 8
  call void @exit_usage(i8* noundef %6, i8* noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 0, i8* %7, align 1
  %8 = load i8*, i8** %p, align 8
  %call4 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %9 = load i8*, i8** %q, align 8
  store i8* %9, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 0), align 8
  br label %if.end187

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %call7 = call i32 @strcmp(i8* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0)) #6
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %11 = load i8*, i8** %q, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 1), align 8
  br label %if.end186

if.else10:                                        ; preds = %if.else
  %12 = load i8*, i8** %p, align 8
  %call11 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0)) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else10
  %13 = load i8*, i8** %q, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 2), align 8
  br label %if.end185

if.else14:                                        ; preds = %if.else10
  %14 = load i8*, i8** %p, align 8
  %call15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)) #6
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else14
  %15 = load i8*, i8** %q, align 8
  store i8* %15, i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 3), align 8
  br label %if.end184

if.else18:                                        ; preds = %if.else14
  %16 = load i8*, i8** %p, align 8
  %call19 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0)) #6
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else27

if.then21:                                        ; preds = %if.else18
  %17 = load i8*, i8** %q, align 8
  %call22 = call i32 @atoi(i8* noundef %17) #6
  store i32 %call22, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp23 = icmp slt i32 %18, 0
  br i1 %cmp23, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21
  %19 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 4), align 8
  %cmp24 = icmp sgt i32 %19, 20
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false, %if.then21
  %20 = load i8*, i8** %p, align 8
  %21 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %20, i8* noundef %21) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false
  br label %if.end183

if.else27:                                        ; preds = %if.else18
  %22 = load i8*, i8** %p, align 8
  %call28 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0)) #6
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else39

if.then30:                                        ; preds = %if.else27
  %23 = load i8*, i8** %q, align 8
  %call31 = call i32 @atoi(i8* noundef %23) #6
  store i32 %call31, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp32 = icmp slt i32 %24, 0
  br i1 %cmp32, label %if.then37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %if.then30
  %25 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp34 = icmp sgt i32 %25, 20
  br i1 %cmp34, label %if.then37, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %26 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 5), align 4
  %cmp36 = icmp eq i32 %26, 1
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %lor.lhs.false35, %lor.lhs.false33, %if.then30
  %27 = load i8*, i8** %p, align 8
  %28 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %27, i8* noundef %28) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false35
  br label %if.end182

if.else39:                                        ; preds = %if.else27
  %29 = load i8*, i8** %p, align 8
  %call40 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0)) #6
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.else49

if.then42:                                        ; preds = %if.else39
  %30 = load i8*, i8** %q, align 8
  %call43 = call i32 @atoi(i8* noundef %30) #6
  store i32 %call43, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp44 = icmp slt i32 %31, 0
  br i1 %cmp44, label %if.then47, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.then42
  %32 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 6), align 8
  %cmp46 = icmp sgt i32 %32, 1
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %lor.lhs.false45, %if.then42
  %33 = load i8*, i8** %p, align 8
  %34 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %33, i8* noundef %34) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %lor.lhs.false45
  br label %if.end181

if.else49:                                        ; preds = %if.else39
  %35 = load i8*, i8** %p, align 8
  %call50 = call i32 @strcmp(i8* noundef %35, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0)) #6
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else49
  %36 = load i8*, i8** %p, align 8
  %call53 = call i32 @strcmp(i8* noundef %36, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i64 0, i64 0)) #6
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.else77

if.then55:                                        ; preds = %lor.lhs.false52, %if.else49
  %37 = load i8*, i8** %p, align 8
  %call56 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0)) #6
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.then55
  store i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 8), i8** %delay_cnt, align 8
  store i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 7, i64 0), i8*** %delay_list, align 8
  br label %if.end60

if.else59:                                        ; preds = %if.then55
  store i8* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 10), i8** %delay_cnt, align 8
  store i8** getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 9, i64 0), i8*** %delay_list, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  %38 = load i8*, i8** %delay_cnt, align 8
  %39 = load i8, i8* %38, align 1
  %conv = zext i8 %39 to i32
  %cmp61 = icmp eq i32 %conv, 10
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  %40 = load i8*, i8** %p, align 8
  %call64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.59, i64 0, i64 0), i8* noundef %40, i32 noundef 10) #5
  %41 = load i8*, i8** %p, align 8
  call void @exit_usage(i8* noundef %41, i8* noundef null) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60
  %42 = load i8*, i8** %q, align 8
  %call66 = call i64 @strlen(i8* noundef %42) #6
  store i64 %call66, i64* %len, align 8
  %43 = load i64, i64* %len, align 8
  %add = add i64 %43, 1
  %call67 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %add) #7
  store i8* %call67, i8** %buf, align 8
  %44 = load i8*, i8** %buf, align 8
  %cmp68 = icmp eq i8* %44, null
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end65
  %call71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0)) #5
  call void @exit(i32 noundef 1) #9
  unreachable

if.end72:                                         ; preds = %if.end65
  %45 = load i8*, i8** %buf, align 8
  %46 = load i8*, i8** %q, align 8
  %47 = load i64, i64* %len, align 8
  %add73 = add i64 %47, 1
  %call74 = call i8* @memcpy(i8* noundef %45, i8* noundef %46, i64 noundef %add73) #7
  %48 = load i8*, i8** %buf, align 8
  %49 = load i8**, i8*** %delay_list, align 8
  %50 = load i8*, i8** %delay_cnt, align 8
  %51 = load i8, i8* %50, align 1
  %inc = add i8 %51, 1
  store i8 %inc, i8* %50, align 1
  %idxprom75 = zext i8 %51 to i64
  %arrayidx76 = getelementptr inbounds i8*, i8** %49, i64 %idxprom75
  store i8* %48, i8** %arrayidx76, align 8
  br label %if.end180

if.else77:                                        ; preds = %lor.lhs.false52
  %52 = load i8*, i8** %p, align 8
  %call78 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #6
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %if.else93

if.then81:                                        ; preds = %if.else77
  %53 = load i8*, i8** %q, align 8
  %call82 = call i32 @atoi(i8* noundef %53) #6
  store i32 %call82, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %cmp83 = icmp slt i32 %54, 0
  br i1 %cmp83, label %if.then91, label %lor.lhs.false85

lor.lhs.false85:                                  ; preds = %if.then81
  %55 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %cmp86 = icmp sgt i32 %55, 20
  br i1 %cmp86, label %if.then91, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %56 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 11), align 4
  %cmp89 = icmp eq i32 %56, 1
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %lor.lhs.false88, %lor.lhs.false85, %if.then81
  %57 = load i8*, i8** %p, align 8
  %58 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %57, i8* noundef %58) #5
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %lor.lhs.false88
  br label %if.end179

if.else93:                                        ; preds = %if.else77
  %59 = load i8*, i8** %p, align 8
  %call94 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0)) #6
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.else93
  %60 = load i8*, i8** %q, align 8
  %call98 = call i32 @atoi(i8* noundef %60) #6
  store i32 %call98, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  br label %if.end178

if.else99:                                        ; preds = %if.else93
  %61 = load i8*, i8** %p, align 8
  %call100 = call i32 @strcmp(i8* noundef %61, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #6
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.else112

if.then103:                                       ; preds = %if.else99
  %62 = load i8*, i8** %q, align 8
  %call104 = call i32 @atoi(i8* noundef %62) #6
  store i32 %call104, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp105 = icmp slt i32 %63, 0
  br i1 %cmp105, label %if.then110, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.then103
  %64 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 12), align 8
  %cmp108 = icmp sgt i32 %64, 18432
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %lor.lhs.false107, %if.then103
  %65 = load i8*, i8** %p, align 8
  %66 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %65, i8* noundef %66) #5
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %lor.lhs.false107
  br label %if.end177

if.else112:                                       ; preds = %if.else99
  %67 = load i8*, i8** %p, align 8
  %call113 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0)) #6
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then116, label %if.else125

if.then116:                                       ; preds = %if.else112
  %68 = load i8*, i8** %q, align 8
  %call117 = call i32 @atoi(i8* noundef %68) #6
  store i32 %call117, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %cmp118 = icmp slt i32 %69, 0
  br i1 %cmp118, label %if.then123, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.then116
  %70 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 13), align 4
  %cmp121 = icmp sgt i32 %70, 1
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %lor.lhs.false120, %if.then116
  %71 = load i8*, i8** %p, align 8
  %72 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %71, i8* noundef %72) #5
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %lor.lhs.false120
  br label %if.end176

if.else125:                                       ; preds = %if.else112
  %73 = load i8*, i8** %p, align 8
  %call126 = call i32 @strcmp(i8* noundef %73, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0)) #6
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.else138

if.then129:                                       ; preds = %if.else125
  %74 = load i8*, i8** %q, align 8
  %call130 = call i32 @atoi(i8* noundef %74) #6
  store i32 %call130, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %cmp131 = icmp slt i32 %75, 0
  br i1 %cmp131, label %if.then136, label %lor.lhs.false133

lor.lhs.false133:                                 ; preds = %if.then129
  %76 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 15), align 4
  %cmp134 = icmp sgt i32 %76, 1
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %lor.lhs.false133, %if.then129
  %77 = load i8*, i8** %p, align 8
  %78 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %77, i8* noundef %78) #5
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %lor.lhs.false133
  br label %if.end175

if.else138:                                       ; preds = %if.else125
  %79 = load i8*, i8** %p, align 8
  %call139 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0)) #6
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.else148

if.then142:                                       ; preds = %if.else138
  %80 = load i8*, i8** %q, align 8
  %call143 = call i32 @atoi(i8* noundef %80) #6
  store i32 %call143, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 16), align 8
  %cmp144 = icmp slt i32 %81, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.then142
  %82 = load i8*, i8** %p, align 8
  %83 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %82, i8* noundef %83) #5
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.then142
  br label %if.end174

if.else148:                                       ; preds = %if.else138
  %84 = load i8*, i8** %p, align 8
  %call149 = call i32 @strcmp(i8* noundef %84, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i64 0, i64 0)) #6
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else161

if.then152:                                       ; preds = %if.else148
  %85 = load i8*, i8** %q, align 8
  %call153 = call i32 @atoi(i8* noundef %85) #6
  store i32 %call153, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp154 = icmp slt i32 %86, 0
  br i1 %cmp154, label %if.then159, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %if.then152
  %87 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 17), align 4
  %cmp157 = icmp sgt i32 %87, 1
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %lor.lhs.false156, %if.then152
  %88 = load i8*, i8** %p, align 8
  %89 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %88, i8* noundef %89) #5
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %lor.lhs.false156
  br label %if.end173

if.else161:                                       ; preds = %if.else148
  %90 = load i8*, i8** %p, align 8
  %call162 = call i32 @strcmp(i8* noundef %90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #6
  %cmp163 = icmp eq i32 %call162, 0
  br i1 %cmp163, label %if.then165, label %if.else171

if.then165:                                       ; preds = %if.else161
  %91 = load i8*, i8** %q, align 8
  %call166 = call i32 @atoi(i8* noundef %91) #6
  store i32 %call166, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 19), align 4
  %cmp167 = icmp eq i32 %92, 0
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then165
  %93 = load i8*, i8** %p, align 8
  %94 = load i8*, i8** %q, align 8
  call void @exit_usage(i8* noundef %93, i8* noundef %94) #5
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then165
  br label %if.end172

if.else171:                                       ; preds = %if.else161
  %95 = load i8*, i8** %p, align 8
  call void @exit_usage(i8* noundef %95, i8* noundef null) #5
  br label %if.end172

if.end172:                                        ; preds = %if.else171, %if.end170
  br label %if.end173

if.end173:                                        ; preds = %if.end172, %if.end160
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.end147
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end137
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end124
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end111
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then97
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end92
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.end72
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end48
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end38
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end26
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then17
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then13
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.then9
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end187
  %96 = load i32, i32* %i, align 4
  %inc188 = add nsw i32 %96, 1
  store i32 %inc188, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

declare dso_local i32 @mbedtls_net_connect(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @mbedtls_net_bind(%struct.mbedtls_net_context* noundef, i8* noundef, i8* noundef, i32 noundef) #1

declare dso_local void @mbedtls_net_free(%struct.mbedtls_net_context* noundef) #1

declare dso_local i32 @mbedtls_net_accept(%struct.mbedtls_net_context* noundef, %struct.mbedtls_net_context* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctx_buffer_time_remaining(%struct.ctx_buffer* noundef %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.ctx_buffer*, align 8
  %cur_time = alloca i32, align 4
  store %struct.ctx_buffer* %buf, %struct.ctx_buffer** %buf.addr, align 8
  %call = call i32 @ellapsed_time() #5
  store i32 %call, i32* %cur_time, align 4
  %0 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %num_datagrams = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %0, i32 0, i32 3
  %1 = load i32, i32* %num_datagrams, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %cur_time, align 4
  %3 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %packet_lifetime = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %3, i32 0, i32 2
  %4 = load i32, i32* %packet_lifetime, align 8
  %sub = sub i32 %2, %4
  %5 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %cmp1 = icmp uge i32 %sub, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i32, i32* getelementptr inbounds (%struct.options, %struct.options* @opt, i32 0, i32 18), align 8
  %7 = load i32, i32* %cur_time, align 4
  %8 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %packet_lifetime4 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %8, i32 0, i32 2
  %9 = load i32, i32* %packet_lifetime4, align 8
  %sub5 = sub i32 %7, %9
  %sub6 = sub i32 %6, %sub5
  store i32 %sub6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctx_buffer_flush(%struct.ctx_buffer* noundef %buf) #0 {
entry:
  %buf.addr = alloca %struct.ctx_buffer*, align 8
  %ret = alloca i32, align 4
  store %struct.ctx_buffer* %buf, %struct.ctx_buffer** %buf.addr, align 8
  %call = call i32 @ellapsed_time() #5
  %0 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %description = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %0, i32 0, i32 1
  %1 = load i8*, i8** %description, align 8
  %2 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %2, i32 0, i32 5
  %3 = load i64, i64* %len, align 8
  %conv = trunc i64 %3 to i32
  %4 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %num_datagrams = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %4, i32 0, i32 3
  %5 = load i32, i32* %num_datagrams, align 4
  %call1 = call i32 @ellapsed_time() #5
  %6 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %packet_lifetime = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %6, i32 0, i32 2
  %7 = load i32, i32* %packet_lifetime, align 8
  %sub = sub i32 %call1, %7
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.72, i64 0, i64 0), i32 noundef %call, i8* noundef %1, i32 noundef %conv, i32 noundef %5, i32 noundef %sub) #5
  %8 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %ctx = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %8, i32 0, i32 0
  %9 = load %struct.mbedtls_net_context*, %struct.mbedtls_net_context** %ctx, align 8
  %10 = bitcast %struct.mbedtls_net_context* %9 to i8*
  %11 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %data = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [18432 x i8], [18432 x i8]* %data, i64 0, i64 0
  %12 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len3 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %12, i32 0, i32 5
  %13 = load i64, i64* %len3, align 8
  %call4 = call i32 @mbedtls_net_send(i8* noundef %10, i8* noundef %arraydecay, i64 noundef %13) #5
  store i32 %call4, i32* %ret, align 4
  %14 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len5 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %14, i32 0, i32 5
  store i64 0, i64* %len5, align 8
  %15 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %num_datagrams6 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %15, i32 0, i32 3
  store i32 0, i32* %num_datagrams6, align 4
  %16 = load i32, i32* %ret, align 4
  ret i32 %16
}

declare dso_local i32 @select(i32 noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.fd_set* noundef, %struct.timeval* noundef) #1

declare dso_local void @perror(i8* noundef) #1

declare dso_local void @mbedtls_strerror(i32 noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local i64 @mbedtls_timing_get_timer(%struct.mbedtls_timing_hr_time* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctx_buffer_append(%struct.ctx_buffer* noundef %buf, i8* noundef %data, i64 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.ctx_buffer*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.ctx_buffer* %buf, %struct.ctx_buffer** %buf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %1, 18432
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %2 to i32
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv, i32 noundef 18432) #5
  store i32 -1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len4 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %3, i32 0, i32 5
  %4 = load i64, i64* %len4, align 8
  %sub = sub i64 18432, %4
  %5 = load i64, i64* %len.addr, align 8
  %cmp5 = icmp ult i64 %sub, %5
  br i1 %cmp5, label %if.then7, label %if.end15

if.then7:                                         ; preds = %if.end3
  %6 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %call8 = call i32 @ctx_buffer_flush(%struct.ctx_buffer* noundef %6) #5
  store i32 %call8, i32* %ret, align 4
  %cmp9 = icmp sle i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  %7 = load i32, i32* %ret, align 4
  %sub12 = sub nsw i32 0, %7
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0), i32 noundef %sub12) #5
  %8 = load i32, i32* %ret, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end3
  %9 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %data16 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [18432 x i8], [18432 x i8]* %data16, i64 0, i64 0
  %10 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len17 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %10, i32 0, i32 5
  %11 = load i64, i64* %len17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %11
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i64, i64* %len.addr, align 8
  %call18 = call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %12, i64 noundef %13) #7
  %14 = load i64, i64* %len.addr, align 8
  %15 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %len19 = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %15, i32 0, i32 5
  %16 = load i64, i64* %len19, align 8
  %add = add i64 %16, %14
  store i64 %add, i64* %len19, align 8
  %17 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %num_datagrams = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %17, i32 0, i32 3
  %18 = load i32, i32* %num_datagrams, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %num_datagrams, align 4
  %cmp20 = icmp eq i32 %inc, 1
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end15
  %call23 = call i32 @ellapsed_time() #5
  %19 = load %struct.ctx_buffer*, %struct.ctx_buffer** %buf.addr, align 8
  %packet_lifetime = getelementptr inbounds %struct.ctx_buffer, %struct.ctx_buffer* %19, i32 0, i32 2
  store i32 %call23, i32* %packet_lifetime, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end15
  %20 = load i64, i64* %len.addr, align 8
  %conv25 = trunc i64 %20 to i32
  store i32 %conv25, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then11, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @mbedtls_net_send(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_usage(i8* noundef %name, i8* noundef %value) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0), i8* noundef %1) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2368 x i8], [2368 x i8]* @.str.71, i64 0, i64 0)) #5
  call void @exit(i32 noundef 1) #9
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = !{i64 2148971588}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
