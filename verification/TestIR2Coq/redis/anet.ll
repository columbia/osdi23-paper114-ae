; ModuleID = 'anet.c'
source_filename = "anet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.sockaddr = type { i16, [14 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"fcntl(F_GETFL): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fcntl(F_SETFL,O_NONBLOCK): %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"setsockopt TCP_NODELAY: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"setsockopt SO_SNDBUF: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"setsockopt SO_KEEPALIVE: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"can't resolve: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"socket: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"setsockopt SO_REUSEADDR: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Invalid bind address\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"bind: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"listen: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"accept: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"creating socket: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"connect: %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetNonBlock(i8* noundef %err, i32 noundef %fd) local_unnamed_addr #0 !dbg !71 {
entry:
  call void @llvm.dbg.value(metadata i8* %err, metadata !77, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 %fd, metadata !78, metadata !DIExpression()), !dbg !80
  %call = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %fd, i32 noundef 3) #9, !dbg !81
  call void @llvm.dbg.value(metadata i32 %call, metadata !79, metadata !DIExpression()), !dbg !80
  %cmp = icmp eq i32 %call, -1, !dbg !83
  br i1 %cmp, label %cleanup.sink.split, label %if.end, !dbg !84

if.end:                                           ; preds = %entry
  %or = or i32 %call, 2048, !dbg !85
  %call3 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %fd, i32 noundef 4, i32 noundef %or) #9, !dbg !87
  %cmp4 = icmp eq i32 %call3, -1, !dbg !88
  br i1 %cmp4, label %cleanup.sink.split, label %cleanup, !dbg !89

cleanup.sink.split:                               ; preds = %if.end, %entry
  %.sink = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %entry ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %if.end ]
  %call6 = tail call i32* @__errno_location() #10, !dbg !80
  %0 = load i32, i32* %call6, align 4, !dbg !80, !tbaa !90
  %call7 = tail call i8* @strerror(i32 noundef %0) #9, !dbg !80
  tail call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef %.sink, i8* noundef %call7) #11, !dbg !80
  br label %cleanup, !dbg !94

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %cleanup.sink.split ], !dbg !80
  ret i32 %retval.0, !dbg !94
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !95 dso_local i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @anetSetError(i8* noundef %err, i8* noundef %fmt, ...) unnamed_addr #0 !dbg !100 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %err, metadata !106, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !107, metadata !DIExpression()), !dbg !124
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #12, !dbg !125
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !108, metadata !DIExpression()), !dbg !126
  %tobool.not = icmp eq i8* %err, null, !dbg !127
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !129

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !130
  call void @llvm.va_start(i8* nonnull %0), !dbg !130
  %call = call i32 @vsnprintf(i8* noundef nonnull %err, i64 noundef 256, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #9, !dbg !131
  call void @llvm.va_end(i8* nonnull %0), !dbg !132
  br label %cleanup, !dbg !133

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #12, !dbg !133
  ret void, !dbg !133
}

; Function Attrs: nounwind
declare !dbg !134 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetTcpNoDelay(i8* noundef %err, i32 noundef %fd) local_unnamed_addr #0 !dbg !138 {
entry:
  %yes = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 %fd, metadata !141, metadata !DIExpression()), !dbg !143
  %0 = bitcast i32* %yes to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !144
  call void @llvm.dbg.value(metadata i32 1, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 1, i32* %yes, align 4, !dbg !145, !tbaa !90
  call void @llvm.dbg.value(metadata i32* %yes, metadata !142, metadata !DIExpression(DW_OP_deref)), !dbg !143
  %call = call i32 @setsockopt(i32 noundef %fd, i32 noundef 6, i32 noundef 1, i8* noundef nonnull %0, i32 noundef 4) #9, !dbg !146
  %cmp = icmp eq i32 %call, -1, !dbg !148
  br i1 %cmp, label %if.then, label %cleanup, !dbg !149

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #10, !dbg !150
  %1 = load i32, i32* %call1, align 4, !dbg !150, !tbaa !90
  %call2 = call i8* @strerror(i32 noundef %1) #9, !dbg !152
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %call2) #11, !dbg !153
  br label %cleanup, !dbg !154

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !155
  ret i32 %retval.0, !dbg !155
}

; Function Attrs: nounwind
declare !dbg !156 dso_local i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetSetSendBuffer(i8* noundef %err, i32 noundef %fd, i32 noundef %buffsize) local_unnamed_addr #0 !dbg !164 {
entry:
  %buffsize.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !168, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 %fd, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 %buffsize, metadata !170, metadata !DIExpression()), !dbg !171
  store i32 %buffsize, i32* %buffsize.addr, align 4, !tbaa !90
  %0 = bitcast i32* %buffsize.addr to i8*, !dbg !172
  call void @llvm.dbg.value(metadata i32* %buffsize.addr, metadata !170, metadata !DIExpression(DW_OP_deref)), !dbg !171
  %call = call i32 @setsockopt(i32 noundef %fd, i32 noundef 1, i32 noundef 7, i8* noundef nonnull %0, i32 noundef 4) #9, !dbg !174
  %cmp = icmp eq i32 %call, -1, !dbg !175
  br i1 %cmp, label %if.then, label %return, !dbg !176

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #10, !dbg !177
  %1 = load i32, i32* %call1, align 4, !dbg !177, !tbaa !90
  %call2 = call i8* @strerror(i32 noundef %1) #9, !dbg !179
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call2) #11, !dbg !180
  br label %return, !dbg !181

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !171
  ret i32 %retval.0, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetTcpKeepAlive(i8* noundef %err, i32 noundef %fd) local_unnamed_addr #0 !dbg !183 {
entry:
  %yes = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.value(metadata i32 %fd, metadata !186, metadata !DIExpression()), !dbg !188
  %0 = bitcast i32* %yes to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !189
  call void @llvm.dbg.value(metadata i32 1, metadata !187, metadata !DIExpression()), !dbg !188
  store i32 1, i32* %yes, align 4, !dbg !190, !tbaa !90
  call void @llvm.dbg.value(metadata i32* %yes, metadata !187, metadata !DIExpression(DW_OP_deref)), !dbg !188
  %call = call i32 @setsockopt(i32 noundef %fd, i32 noundef 1, i32 noundef 9, i8* noundef nonnull %0, i32 noundef 4) #9, !dbg !191
  %cmp = icmp eq i32 %call, -1, !dbg !193
  br i1 %cmp, label %if.then, label %cleanup, !dbg !194

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #10, !dbg !195
  %1 = load i32, i32* %call1, align 4, !dbg !195, !tbaa !90
  %call2 = call i8* @strerror(i32 noundef %1) #9, !dbg !197
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %call2) #11, !dbg !198
  br label %cleanup, !dbg !199

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry ], !dbg !188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !200
  ret i32 %retval.0, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetResolve(i8* noundef %err, i8* noundef %host, i8* noundef %ipbuf) local_unnamed_addr #0 !dbg !201 {
entry:
  %sa = alloca %struct.sockaddr_in, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !205, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i8* %host, metadata !206, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i8* %ipbuf, metadata !207, metadata !DIExpression()), !dbg !237
  %0 = bitcast %struct.sockaddr_in* %sa to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12, !dbg !238
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %sa, metadata !208, metadata !DIExpression()), !dbg !239
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 0, !dbg !240
  store i16 2, i16* %sin_family, align 4, !dbg !241, !tbaa !242
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 2, !dbg !246
  %call = call i32 @inet_aton(i8* noundef %host, %struct.in_addr* noundef nonnull %sin_addr) #9, !dbg !247
  %cmp = icmp eq i32 %call, 0, !dbg !248
  br i1 %cmp, label %if.then, label %if.end6, !dbg !249

if.then:                                          ; preds = %entry
  %call1 = call %struct.hostent* @gethostbyname(i8* noundef %host) #9, !dbg !250
  call void @llvm.dbg.value(metadata %struct.hostent* %call1, metadata !224, metadata !DIExpression()), !dbg !251
  %cmp2 = icmp eq %struct.hostent* %call1, null, !dbg !252
  br i1 %cmp2, label %cleanup.thread, label %cleanup, !dbg !254

cleanup.thread:                                   ; preds = %if.then
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %host) #11, !dbg !255
  br label %cleanup10

cleanup:                                          ; preds = %if.then
  %1 = bitcast %struct.in_addr* %sin_addr to i8*, !dbg !257
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %call1, i64 0, i32 4, !dbg !258
  %2 = load i8**, i8*** %h_addr_list, align 8, !dbg !258, !tbaa !259
  %3 = load i8*, i8** %2, align 8, !dbg !262, !tbaa !263
  %call5 = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %3, i64 noundef 4) #9, !dbg !264
  br label %if.end6

if.end6:                                          ; preds = %cleanup, %entry
  %coerce.dive = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i64 0, i32 0, !dbg !265
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !265
  %call8 = call i8* @inet_ntoa(i32 %4) #9, !dbg !265
  %call9 = call i8* @strcpy(i8* noundef %ipbuf, i8* noundef %call8) #9, !dbg !266
  br label %cleanup10, !dbg !267

cleanup10:                                        ; preds = %cleanup.thread, %if.end6
  %retval.1 = phi i32 [ 0, %if.end6 ], [ -1, %cleanup.thread ], !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12, !dbg !268
  ret i32 %retval.1, !dbg !268
}

; Function Attrs: nounwind
declare !dbg !269 dso_local i32 @inet_aton(i8* noundef, %struct.in_addr* noundef) local_unnamed_addr #4

declare !dbg !274 dso_local %struct.hostent* @gethostbyname(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !277 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !285 dso_local i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !290 dso_local i8* @inet_ntoa(i32) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetTcpConnect(i8* noundef %err, i8* noundef %addr, i32 noundef %port) local_unnamed_addr #0 !dbg !293 {
entry:
  call void @llvm.dbg.value(metadata i8* %err, metadata !297, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %addr, metadata !298, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 %port, metadata !299, metadata !DIExpression()), !dbg !300
  %call = tail call fastcc i32 @anetTcpGenericConnect(i8* noundef %err, i8* noundef %addr, i32 noundef %port, i32 noundef 0) #11, !dbg !301
  ret i32 %call, !dbg !302
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @anetTcpGenericConnect(i8* noundef %err, i8* noundef %addr, i32 noundef %port, i32 noundef %flags) unnamed_addr #0 !dbg !303 {
entry:
  %on = alloca i32, align 4
  %sa = alloca %struct.sockaddr_in, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !307, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i8* %addr, metadata !308, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %port, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i32 %flags, metadata !310, metadata !DIExpression()), !dbg !317
  %0 = bitcast i32* %on to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !318
  call void @llvm.dbg.value(metadata i32 1, metadata !312, metadata !DIExpression()), !dbg !317
  store i32 1, i32* %on, align 4, !dbg !319, !tbaa !90
  %1 = bitcast %struct.sockaddr_in* %sa to i8*, !dbg !320
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12, !dbg !320
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %sa, metadata !313, metadata !DIExpression()), !dbg !321
  %call = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #9, !dbg !322
  call void @llvm.dbg.value(metadata i32 %call, metadata !311, metadata !DIExpression()), !dbg !317
  %cmp = icmp eq i32 %call, -1, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #10, !dbg !326
  %2 = load i32, i32* %call1, align 4, !dbg !326, !tbaa !90
  %call2 = tail call i8* @strerror(i32 noundef %2) #9, !dbg !328
  tail call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* noundef %call2) #11, !dbg !329
  br label %cleanup40, !dbg !330

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %on, metadata !312, metadata !DIExpression(DW_OP_deref)), !dbg !317
  %call3 = call i32 @setsockopt(i32 noundef %call, i32 noundef 1, i32 noundef 2, i8* noundef nonnull %0, i32 noundef 4) #9, !dbg !331
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 0, !dbg !332
  store i16 2, i16* %sin_family, align 4, !dbg !333, !tbaa !242
  %conv = trunc i32 %port to i16, !dbg !334
  %call4 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv) #11, !dbg !334
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 1, !dbg !335
  store i16 %call4, i16* %sin_port, align 2, !dbg !336, !tbaa !337
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 2, !dbg !338
  %call5 = call i32 @inet_aton(i8* noundef %addr, %struct.in_addr* noundef nonnull %sin_addr) #9, !dbg !339
  %cmp6 = icmp eq i32 %call5, 0, !dbg !340
  br i1 %cmp6, label %if.then8, label %if.end17, !dbg !341

if.then8:                                         ; preds = %if.end
  %call9 = call %struct.hostent* @gethostbyname(i8* noundef %addr) #9, !dbg !342
  call void @llvm.dbg.value(metadata %struct.hostent* %call9, metadata !314, metadata !DIExpression()), !dbg !343
  %cmp10 = icmp eq %struct.hostent* %call9, null, !dbg !344
  br i1 %cmp10, label %cleanup.thread, label %cleanup, !dbg !346

cleanup.thread:                                   ; preds = %if.then8
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* noundef %addr) #11, !dbg !347
  %call13 = call i32 @close(i32 noundef %call) #9, !dbg !349
  br label %cleanup40

cleanup:                                          ; preds = %if.then8
  %3 = bitcast %struct.in_addr* %sin_addr to i8*, !dbg !350
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %call9, i64 0, i32 4, !dbg !351
  %4 = load i8**, i8*** %h_addr_list, align 8, !dbg !351, !tbaa !259
  %5 = load i8*, i8** %4, align 8, !dbg !352, !tbaa !263
  %call16 = call i8* @memcpy(i8* noundef nonnull %3, i8* noundef %5, i64 noundef 4) #9, !dbg !353
  br label %if.end17

if.end17:                                         ; preds = %cleanup, %if.end
  %and = and i32 %flags, 1, !dbg !354
  %tobool.not = icmp eq i32 %and, 0, !dbg !354
  br i1 %tobool.not, label %if.end24, label %if.then18, !dbg !356

if.then18:                                        ; preds = %if.end17
  %call19 = call i32 @anetNonBlock(i8* noundef %err, i32 noundef %call) #11, !dbg !357
  %cmp20.not = icmp eq i32 %call19, 0, !dbg !360
  br i1 %cmp20.not, label %if.end24, label %cleanup40, !dbg !361

if.end24:                                         ; preds = %if.then18, %if.end17
  %6 = bitcast %struct.sockaddr_in* %sa to %struct.sockaddr*, !dbg !362
  %call25 = call i32 @connect(i32 noundef %call, %struct.sockaddr* noundef nonnull %6, i32 noundef 16) #9, !dbg !364
  %cmp26 = icmp eq i32 %call25, -1, !dbg !365
  br i1 %cmp26, label %if.then28, label %cleanup40, !dbg !366

if.then28:                                        ; preds = %if.end24
  %call29 = tail call i32* @__errno_location() #10, !dbg !367
  %7 = load i32, i32* %call29, align 4, !dbg !367, !tbaa !90
  %cmp30 = icmp ne i32 %7, 115, !dbg !370
  %brmerge = or i1 %tobool.not, %cmp30, !dbg !371
  br i1 %brmerge, label %if.end35, label %cleanup40, !dbg !371

if.end35:                                         ; preds = %if.then28
  %call37 = call i8* @strerror(i32 noundef %7) #9, !dbg !372
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef %call37) #11, !dbg !373
  %call38 = call i32 @close(i32 noundef %call) #9, !dbg !374
  br label %cleanup40, !dbg !375

cleanup40:                                        ; preds = %cleanup.thread, %if.end24, %if.then28, %if.then18, %if.end35, %if.then
  %retval.1 = phi i32 [ -1, %if.then ], [ -1, %if.end35 ], [ -1, %if.then18 ], [ %call, %if.then28 ], [ %call, %if.end24 ], [ -1, %cleanup.thread ], !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12, !dbg !376
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !376
  ret i32 %retval.1, !dbg !376
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetTcpNonBlockConnect(i8* noundef %err, i8* noundef %addr, i32 noundef %port) local_unnamed_addr #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata i8* %err, metadata !379, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i8* %addr, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i32 %port, metadata !381, metadata !DIExpression()), !dbg !382
  %call = tail call fastcc i32 @anetTcpGenericConnect(i8* noundef %err, i8* noundef %addr, i32 noundef %port, i32 noundef 1) #11, !dbg !383
  ret i32 %call, !dbg !384
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetRead(i32 noundef %fd, i8* noundef %buf, i32 noundef %count) local_unnamed_addr #0 !dbg !385 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !389, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %buf, metadata !390, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %count, metadata !391, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 0, metadata !393, metadata !DIExpression()), !dbg !394
  %cmp.not21 = icmp eq i32 %count, 0, !dbg !395
  br i1 %cmp.not21, label %cleanup, label %while.body, !dbg !396

while.body:                                       ; preds = %entry, %if.end7
  %totlen.023 = phi i32 [ %add, %if.end7 ], [ 0, %entry ]
  %buf.addr.022 = phi i8* [ %add.ptr, %if.end7 ], [ %buf, %entry ]
  call void @llvm.dbg.value(metadata i32 %totlen.023, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %buf.addr.022, metadata !390, metadata !DIExpression()), !dbg !394
  %sub = sub nsw i32 %count, %totlen.023, !dbg !397
  %conv = sext i32 %sub to i64, !dbg !399
  %call = tail call i64 @read(i32 noundef %fd, i8* noundef %buf.addr.022, i64 noundef %conv) #9, !dbg !400
  %conv1 = trunc i64 %call to i32, !dbg !400
  call void @llvm.dbg.value(metadata i32 %conv1, metadata !392, metadata !DIExpression()), !dbg !394
  switch i32 %conv1, label %if.end7 [
    i32 0, label %cleanup.loopexit
    i32 -1, label %cleanup
  ], !dbg !401

if.end7:                                          ; preds = %while.body
  %add = add nsw i32 %totlen.023, %conv1, !dbg !402
  call void @llvm.dbg.value(metadata i32 %add, metadata !393, metadata !DIExpression()), !dbg !394
  %sext = shl i64 %call, 32, !dbg !403
  %idx.ext = ashr exact i64 %sext, 32, !dbg !403
  %add.ptr = getelementptr inbounds i8, i8* %buf.addr.022, i64 %idx.ext, !dbg !403
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !390, metadata !DIExpression()), !dbg !394
  %cmp.not = icmp eq i32 %add, %count, !dbg !395
  br i1 %cmp.not, label %cleanup.loopexit, label %while.body, !dbg !396, !llvm.loop !404

cleanup.loopexit:                                 ; preds = %if.end7, %while.body
  %retval.0.ph = phi i32 [ %count, %if.end7 ], [ %totlen.023, %while.body ]
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %while.body, %cleanup.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], [ -1, %while.body ], !dbg !394
  ret i32 %retval.0, !dbg !406
}

declare !dbg !407 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetWrite(i32 noundef %fd, i8* noundef %buf, i32 noundef %count) local_unnamed_addr #0 !dbg !415 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !417, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8* %buf, metadata !418, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 %count, metadata !419, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 0, metadata !421, metadata !DIExpression()), !dbg !422
  %cmp.not21 = icmp eq i32 %count, 0, !dbg !423
  br i1 %cmp.not21, label %cleanup, label %while.body, !dbg !424

while.body:                                       ; preds = %entry, %if.end7
  %totlen.023 = phi i32 [ %add, %if.end7 ], [ 0, %entry ]
  %buf.addr.022 = phi i8* [ %add.ptr, %if.end7 ], [ %buf, %entry ]
  call void @llvm.dbg.value(metadata i32 %totlen.023, metadata !421, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i8* %buf.addr.022, metadata !418, metadata !DIExpression()), !dbg !422
  %sub = sub nsw i32 %count, %totlen.023, !dbg !425
  %conv = sext i32 %sub to i64, !dbg !427
  %call = tail call i64 @write(i32 noundef %fd, i8* noundef %buf.addr.022, i64 noundef %conv) #9, !dbg !428
  %conv1 = trunc i64 %call to i32, !dbg !428
  call void @llvm.dbg.value(metadata i32 %conv1, metadata !420, metadata !DIExpression()), !dbg !422
  switch i32 %conv1, label %if.end7 [
    i32 0, label %cleanup.loopexit
    i32 -1, label %cleanup
  ], !dbg !429

if.end7:                                          ; preds = %while.body
  %add = add nsw i32 %totlen.023, %conv1, !dbg !430
  call void @llvm.dbg.value(metadata i32 %add, metadata !421, metadata !DIExpression()), !dbg !422
  %sext = shl i64 %call, 32, !dbg !431
  %idx.ext = ashr exact i64 %sext, 32, !dbg !431
  %add.ptr = getelementptr inbounds i8, i8* %buf.addr.022, i64 %idx.ext, !dbg !431
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !418, metadata !DIExpression()), !dbg !422
  %cmp.not = icmp eq i32 %add, %count, !dbg !423
  br i1 %cmp.not, label %cleanup.loopexit, label %while.body, !dbg !424, !llvm.loop !432

cleanup.loopexit:                                 ; preds = %if.end7, %while.body
  %retval.0.ph = phi i32 [ %count, %if.end7 ], [ %totlen.023, %while.body ]
  br label %cleanup, !dbg !434

cleanup:                                          ; preds = %while.body, %cleanup.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], [ -1, %while.body ], !dbg !422
  ret i32 %retval.0, !dbg !434
}

declare !dbg !435 dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetTcpServer(i8* noundef %err, i32 noundef %port, i8* noundef %bindaddr) local_unnamed_addr #0 !dbg !438 {
entry:
  %on = alloca i32, align 4
  %sa = alloca %struct.sockaddr_in, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i32 %port, metadata !443, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata i8* %bindaddr, metadata !444, metadata !DIExpression()), !dbg !448
  %0 = bitcast i32* %on to i8*, !dbg !449
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #12, !dbg !449
  call void @llvm.dbg.value(metadata i32 1, metadata !446, metadata !DIExpression()), !dbg !448
  store i32 1, i32* %on, align 4, !dbg !450, !tbaa !90
  %1 = bitcast %struct.sockaddr_in* %sa to i8*, !dbg !451
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #12, !dbg !451
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %sa, metadata !447, metadata !DIExpression()), !dbg !452
  %call = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #9, !dbg !453
  call void @llvm.dbg.value(metadata i32 %call, metadata !445, metadata !DIExpression()), !dbg !448
  %cmp = icmp eq i32 %call, -1, !dbg !455
  br i1 %cmp, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  %call1 = tail call i32* @__errno_location() #10, !dbg !457
  %2 = load i32, i32* %call1, align 4, !dbg !457, !tbaa !90
  %call2 = tail call i8* @strerror(i32 noundef %2) #9, !dbg !459
  tail call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call2) #11, !dbg !460
  br label %cleanup, !dbg !461

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %on, metadata !446, metadata !DIExpression(DW_OP_deref)), !dbg !448
  %call3 = call i32 @setsockopt(i32 noundef %call, i32 noundef 1, i32 noundef 2, i8* noundef nonnull %0, i32 noundef 4) #9, !dbg !462
  %cmp4 = icmp eq i32 %call3, -1, !dbg !464
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !465

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32* @__errno_location() #10, !dbg !466
  %3 = load i32, i32* %call6, align 4, !dbg !466, !tbaa !90
  %call7 = call i8* @strerror(i32 noundef %3) #9, !dbg !468
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* noundef %call7) #11, !dbg !469
  %call8 = call i32 @close(i32 noundef %call) #9, !dbg !470
  br label %cleanup, !dbg !471

if.end9:                                          ; preds = %if.end
  %call10 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 16) #9, !dbg !472
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 0, !dbg !473
  store i16 2, i16* %sin_family, align 4, !dbg !474, !tbaa !242
  %conv = trunc i32 %port to i16, !dbg !475
  %call11 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %conv) #11, !dbg !475
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 1, !dbg !476
  store i16 %call11, i16* %sin_port, align 2, !dbg !477, !tbaa !337
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 2, !dbg !478
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i64 0, i32 0, !dbg !479
  store i32 0, i32* %s_addr, align 4, !dbg !480, !tbaa !481
  %tobool.not = icmp eq i8* %bindaddr, null, !dbg !482
  br i1 %tobool.not, label %if.end21, label %if.then13, !dbg !484

if.then13:                                        ; preds = %if.end9
  %call15 = call i32 @inet_aton(i8* noundef nonnull %bindaddr, %struct.in_addr* noundef nonnull %sin_addr) #9, !dbg !485
  %cmp16 = icmp eq i32 %call15, 0, !dbg !488
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !489

if.then18:                                        ; preds = %if.then13
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !490
  %call19 = call i32 @close(i32 noundef %call) #9, !dbg !492
  br label %cleanup, !dbg !493

if.end21:                                         ; preds = %if.then13, %if.end9
  %4 = bitcast %struct.sockaddr_in* %sa to %struct.sockaddr*, !dbg !494
  %call22 = call i32 @bind(i32 noundef %call, %struct.sockaddr* noundef nonnull %4, i32 noundef 16) #9, !dbg !496
  %cmp23 = icmp eq i32 %call22, -1, !dbg !497
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !498

if.then25:                                        ; preds = %if.end21
  %call26 = tail call i32* @__errno_location() #10, !dbg !499
  %5 = load i32, i32* %call26, align 4, !dbg !499, !tbaa !90
  %call27 = call i8* @strerror(i32 noundef %5) #9, !dbg !501
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %call27) #11, !dbg !502
  %call28 = call i32 @close(i32 noundef %call) #9, !dbg !503
  br label %cleanup, !dbg !504

if.end29:                                         ; preds = %if.end21
  %call30 = call i32 @listen(i32 noundef %call, i32 noundef 511) #9, !dbg !505
  %cmp31 = icmp eq i32 %call30, -1, !dbg !507
  br i1 %cmp31, label %if.then33, label %cleanup, !dbg !508

if.then33:                                        ; preds = %if.end29
  %call34 = tail call i32* @__errno_location() #10, !dbg !509
  %6 = load i32, i32* %call34, align 4, !dbg !509, !tbaa !90
  %call35 = call i8* @strerror(i32 noundef %6) #9, !dbg !511
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* noundef %call35) #11, !dbg !512
  %call36 = call i32 @close(i32 noundef %call) #9, !dbg !513
  br label %cleanup, !dbg !514

cleanup:                                          ; preds = %if.end29, %if.then33, %if.then25, %if.then18, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then5 ], [ -1, %if.then18 ], [ -1, %if.then25 ], [ -1, %if.then33 ], [ %call, %if.end29 ], !dbg !448
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #12, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #12, !dbg !515
  ret i32 %retval.0, !dbg !515
}

; Function Attrs: nounwind
declare !dbg !516 dso_local i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !519 dso_local i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !522 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) unnamed_addr #6 !dbg !525 {
entry:
  call void @llvm.dbg.value(metadata i16 %__bsx, metadata !530, metadata !DIExpression()), !dbg !531
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev, !dbg !532
}

; Function Attrs: nounwind
declare !dbg !533 dso_local i32 @bind(i32 noundef, %struct.sockaddr* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !538 dso_local i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @anetAccept(i8* noundef %err, i32 noundef %serversock, i8* noundef %ip, i32* noundef writeonly %port) local_unnamed_addr #0 !dbg !541 {
entry:
  %sa = alloca %struct.sockaddr_in, align 4
  %saLen = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %err, metadata !546, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32 %serversock, metadata !547, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i8* %ip, metadata !548, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.value(metadata i32* %port, metadata !549, metadata !DIExpression()), !dbg !553
  %0 = bitcast %struct.sockaddr_in* %sa to i8*, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #12, !dbg !554
  call void @llvm.dbg.declare(metadata %struct.sockaddr_in* %sa, metadata !551, metadata !DIExpression()), !dbg !555
  %1 = bitcast i32* %saLen to i8*, !dbg !556
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #12, !dbg !556
  %2 = bitcast %struct.sockaddr_in* %sa to %struct.sockaddr*
  br label %while.cond, !dbg !557

while.cond:                                       ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 16, metadata !552, metadata !DIExpression()), !dbg !553
  store i32 16, i32* %saLen, align 4, !dbg !558, !tbaa !90
  call void @llvm.dbg.value(metadata i32* %saLen, metadata !552, metadata !DIExpression(DW_OP_deref)), !dbg !553
  %call = call i32 @accept(i32 noundef %serversock, %struct.sockaddr* noundef nonnull %2, i32* noundef nonnull %saLen) #9, !dbg !560
  call void @llvm.dbg.value(metadata i32 %call, metadata !550, metadata !DIExpression()), !dbg !553
  %cmp = icmp eq i32 %call, -1, !dbg !561
  br i1 %cmp, label %if.then, label %while.end, !dbg !563

if.then:                                          ; preds = %while.cond
  %call1 = tail call i32* @__errno_location() #10, !dbg !564
  %3 = load i32, i32* %call1, align 4, !dbg !564, !tbaa !90
  %cmp2 = icmp eq i32 %3, 4, !dbg !567
  br i1 %cmp2, label %while.cond, label %if.else, !dbg !568, !llvm.loop !569

if.else:                                          ; preds = %if.then
  %call5 = call i8* @strerror(i32 noundef %3) #9, !dbg !571
  call void (i8*, i8*, ...) @anetSetError(i8* noundef %err, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call5) #11, !dbg !573
  br label %cleanup, !dbg !574

while.end:                                        ; preds = %while.cond
  %tobool.not = icmp eq i8* %ip, null, !dbg !575
  br i1 %tobool.not, label %if.end9, label %if.then6, !dbg !577

if.then6:                                         ; preds = %while.end
  %coerce.dive = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 2, i32 0, !dbg !578
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !578
  %call7 = call i8* @inet_ntoa(i32 %4) #9, !dbg !578
  %call8 = call i8* @strcpy(i8* noundef nonnull %ip, i8* noundef %call7) #9, !dbg !579
  br label %if.end9, !dbg !579

if.end9:                                          ; preds = %if.then6, %while.end
  %tobool10.not = icmp eq i32* %port, null, !dbg !580
  br i1 %tobool10.not, label %cleanup, label %if.then11, !dbg !582

if.then11:                                        ; preds = %if.end9
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %sa, i64 0, i32 1, !dbg !583
  %5 = load i16, i16* %sin_port, align 2, !dbg !583, !tbaa !337
  %call12 = call fastcc zeroext i16 @__bswap_16(i16 noundef zeroext %5) #11, !dbg !583
  %conv = zext i16 %call12 to i32, !dbg !583
  store i32 %conv, i32* %port, align 4, !dbg !584, !tbaa !90
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %if.end9, %if.then11, %if.else
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #12, !dbg !586
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #12, !dbg !586
  ret i32 %call, !dbg !586
}

declare !dbg !587 dso_local i32 @accept(i32 noundef, %struct.sockaddr* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare !dbg !593 dso_local i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #7

declare !dbg !597 dso_local i32 @connect(i32 noundef, %struct.sockaddr* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !45, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "anet.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "c11e12e4cd0c077b86045e0e50204316")
!2 = !{!3, !33}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "6a5254a491bcdb8c3253de75bf3571c1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!7 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!8 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!9 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!10 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!11 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!12 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!13 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!14 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!15 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!16 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!17 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!18 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!19 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!20 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!21 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!22 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!23 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!24 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!25 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!26 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!27 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!28 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!29 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!30 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!31 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!32 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !34, line: 24, baseType: !5, size: 32, elements: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "630d972ab4324a8e936ce28b39a40b01")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44}
!36 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!37 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!38 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!39 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!40 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!41 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!42 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!43 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!44 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!45 = !{!46, !47, !52, !65}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 26, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !51, line: 42, baseType: !5)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !54, line: 178, size: 128, elements: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "b1d3343a573cbf39b225111209e02966")
!55 = !{!56, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !53, file: !54, line: 180, baseType: !57, size: 16)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !58, line: 28, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "b70cbaf07ffb7e8bf11ee98d9a21e2fc")
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !53, file: !54, line: 181, baseType: !61, size: 112, offset: 16)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 112, elements: !63)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !{!64}
!64 = !DISubrange(count: 14)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !51, line: 40, baseType: !59)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{!"clang version 14.0.0"}
!71 = distinct !DISubprogram(name: "anetNonBlock", scope: !1, file: !1, line: 58, type: !72, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !75, !74}
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!76 = !{!77, !78, !79}
!77 = !DILocalVariable(name: "err", arg: 1, scope: !71, file: !1, line: 58, type: !75)
!78 = !DILocalVariable(name: "fd", arg: 2, scope: !71, file: !1, line: 58, type: !74)
!79 = !DILocalVariable(name: "flags", scope: !71, file: !1, line: 60, type: !74)
!80 = !DILocation(line: 0, scope: !71)
!81 = !DILocation(line: 65, column: 18, scope: !82)
!82 = distinct !DILexicalBlock(scope: !71, file: !1, line: 65, column: 9)
!83 = !DILocation(line: 65, column: 38, scope: !82)
!84 = !DILocation(line: 65, column: 9, scope: !71)
!85 = !DILocation(line: 69, column: 34, scope: !86)
!86 = distinct !DILexicalBlock(scope: !71, file: !1, line: 69, column: 9)
!87 = !DILocation(line: 69, column: 9, scope: !86)
!88 = !DILocation(line: 69, column: 48, scope: !86)
!89 = !DILocation(line: 69, column: 9, scope: !71)
!90 = !{!91, !91, i64 0}
!91 = !{!"int", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 74, column: 1, scope: !71)
!95 = !DISubprogram(name: "fcntl", linkageName: "fcntl64", scope: !96, file: !96, line: 151, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!96 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!97 = !DISubroutineType(types: !98)
!98 = !{!74, !74, !74, null}
!99 = !{}
!100 = distinct !DISubprogram(name: "anetSetError", scope: !1, file: !1, line: 48, type: !101, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !75, !103, null}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(name: "err", arg: 1, scope: !100, file: !1, line: 48, type: !75)
!107 = !DILocalVariable(name: "fmt", arg: 2, scope: !100, file: !1, line: 48, type: !103)
!108 = !DILocalVariable(name: "ap", scope: !100, file: !1, line: 50, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !110, line: 52, baseType: !111)
!110 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !112, line: 32, baseType: !113)
!112 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !114, baseType: !115)
!114 = !DIFile(filename: "anet.c", directory: "/home/xuheng/blackbox/llvm-test/redis")
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 192, elements: !122)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !117)
!117 = !{!118, !119, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !116, file: !114, line: 50, baseType: !5, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !116, file: !114, line: 50, baseType: !5, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !116, file: !114, line: 50, baseType: !46, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !116, file: !114, line: 50, baseType: !46, size: 64, offset: 128)
!122 = !{!123}
!123 = !DISubrange(count: 1)
!124 = !DILocation(line: 0, scope: !100)
!125 = !DILocation(line: 50, column: 5, scope: !100)
!126 = !DILocation(line: 50, column: 13, scope: !100)
!127 = !DILocation(line: 52, column: 10, scope: !128)
!128 = distinct !DILexicalBlock(scope: !100, file: !1, line: 52, column: 9)
!129 = !DILocation(line: 52, column: 9, scope: !100)
!130 = !DILocation(line: 53, column: 5, scope: !100)
!131 = !DILocation(line: 54, column: 5, scope: !100)
!132 = !DILocation(line: 55, column: 5, scope: !100)
!133 = !DILocation(line: 56, column: 1, scope: !100)
!134 = !DISubprogram(name: "strerror", scope: !135, file: !135, line: 397, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!135 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!136 = !DISubroutineType(types: !137)
!137 = !{!75, !74}
!138 = distinct !DISubprogram(name: "anetTcpNoDelay", scope: !1, file: !1, line: 76, type: !72, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "err", arg: 1, scope: !138, file: !1, line: 76, type: !75)
!141 = !DILocalVariable(name: "fd", arg: 2, scope: !138, file: !1, line: 76, type: !74)
!142 = !DILocalVariable(name: "yes", scope: !138, file: !1, line: 78, type: !74)
!143 = !DILocation(line: 0, scope: !138)
!144 = !DILocation(line: 78, column: 5, scope: !138)
!145 = !DILocation(line: 78, column: 9, scope: !138)
!146 = !DILocation(line: 79, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !138, file: !1, line: 79, column: 9)
!148 = !DILocation(line: 79, column: 69, scope: !147)
!149 = !DILocation(line: 79, column: 9, scope: !138)
!150 = !DILocation(line: 81, column: 68, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 80, column: 5)
!152 = !DILocation(line: 81, column: 59, scope: !151)
!153 = !DILocation(line: 81, column: 9, scope: !151)
!154 = !DILocation(line: 82, column: 9, scope: !151)
!155 = !DILocation(line: 85, column: 1, scope: !138)
!156 = !DISubprogram(name: "setsockopt", scope: !157, file: !157, line: 215, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "2fce7039a1b2768148129dec2fa585be")
!158 = !DISubroutineType(types: !159)
!159 = !{!74, !74, !74, !74, !160, !162}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !54, line: 33, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !51, line: 209, baseType: !5)
!164 = distinct !DISubprogram(name: "anetSetSendBuffer", scope: !1, file: !1, line: 87, type: !165, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!74, !75, !74, !74}
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "err", arg: 1, scope: !164, file: !1, line: 87, type: !75)
!169 = !DILocalVariable(name: "fd", arg: 2, scope: !164, file: !1, line: 87, type: !74)
!170 = !DILocalVariable(name: "buffsize", arg: 3, scope: !164, file: !1, line: 87, type: !74)
!171 = !DILocation(line: 0, scope: !164)
!172 = !DILocation(line: 89, column: 47, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !1, line: 89, column: 9)
!174 = !DILocation(line: 89, column: 9, scope: !173)
!175 = !DILocation(line: 89, column: 76, scope: !173)
!176 = !DILocation(line: 89, column: 9, scope: !164)
!177 = !DILocation(line: 91, column: 66, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 90, column: 5)
!179 = !DILocation(line: 91, column: 57, scope: !178)
!180 = !DILocation(line: 91, column: 9, scope: !178)
!181 = !DILocation(line: 92, column: 9, scope: !178)
!182 = !DILocation(line: 95, column: 1, scope: !164)
!183 = distinct !DISubprogram(name: "anetTcpKeepAlive", scope: !1, file: !1, line: 97, type: !72, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!184 = !{!185, !186, !187}
!185 = !DILocalVariable(name: "err", arg: 1, scope: !183, file: !1, line: 97, type: !75)
!186 = !DILocalVariable(name: "fd", arg: 2, scope: !183, file: !1, line: 97, type: !74)
!187 = !DILocalVariable(name: "yes", scope: !183, file: !1, line: 99, type: !74)
!188 = !DILocation(line: 0, scope: !183)
!189 = !DILocation(line: 99, column: 5, scope: !183)
!190 = !DILocation(line: 99, column: 9, scope: !183)
!191 = !DILocation(line: 100, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !1, line: 100, column: 9)
!193 = !DILocation(line: 100, column: 69, scope: !192)
!194 = !DILocation(line: 100, column: 9, scope: !183)
!195 = !DILocation(line: 101, column: 69, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !1, line: 100, column: 76)
!197 = !DILocation(line: 101, column: 60, scope: !196)
!198 = !DILocation(line: 101, column: 9, scope: !196)
!199 = !DILocation(line: 102, column: 9, scope: !196)
!200 = !DILocation(line: 105, column: 1, scope: !183)
!201 = distinct !DISubprogram(name: "anetResolve", scope: !1, file: !1, line: 107, type: !202, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{!74, !75, !75, !75}
!204 = !{!205, !206, !207, !208, !224}
!205 = !DILocalVariable(name: "err", arg: 1, scope: !201, file: !1, line: 107, type: !75)
!206 = !DILocalVariable(name: "host", arg: 2, scope: !201, file: !1, line: 107, type: !75)
!207 = !DILocalVariable(name: "ipbuf", arg: 3, scope: !201, file: !1, line: 107, type: !75)
!208 = !DILocalVariable(name: "sa", scope: !201, file: !1, line: 109, type: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !4, line: 238, size: 128, elements: !210)
!210 = !{!211, !212, !215, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !209, file: !4, line: 240, baseType: !57, size: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !209, file: !4, line: 241, baseType: !213, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !4, line: 119, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !49, line: 25, baseType: !65)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !209, file: !4, line: 242, baseType: !216, size: 32, offset: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !216, file: !4, line: 33, baseType: !47, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !209, file: !4, line: 245, baseType: !220, size: 64, offset: 64)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 64, elements: !222)
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !{!223}
!223 = !DISubrange(count: 8)
!224 = !DILocalVariable(name: "he", scope: !225, file: !1, line: 113, type: !227)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 112, column: 45)
!226 = distinct !DILexicalBlock(scope: !201, file: !1, line: 112, column: 9)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hostent", file: !229, line: 98, size: 256, elements: !230)
!229 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "40967f9bfe5cb5ab7f3c078edab190e6")
!230 = !{!231, !232, !234, !235, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "h_name", scope: !228, file: !229, line: 100, baseType: !75, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "h_aliases", scope: !228, file: !229, line: 101, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "h_addrtype", scope: !228, file: !229, line: 102, baseType: !74, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "h_length", scope: !228, file: !229, line: 103, baseType: !74, size: 32, offset: 160)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "h_addr_list", scope: !228, file: !229, line: 104, baseType: !233, size: 64, offset: 192)
!237 = !DILocation(line: 0, scope: !201)
!238 = !DILocation(line: 109, column: 5, scope: !201)
!239 = !DILocation(line: 109, column: 24, scope: !201)
!240 = !DILocation(line: 111, column: 8, scope: !201)
!241 = !DILocation(line: 111, column: 19, scope: !201)
!242 = !{!243, !244, i64 0}
!243 = !{!"sockaddr_in", !244, i64 0, !244, i64 2, !245, i64 4, !92, i64 8}
!244 = !{!"short", !92, i64 0}
!245 = !{!"in_addr", !91, i64 0}
!246 = !DILocation(line: 112, column: 29, scope: !226)
!247 = !DILocation(line: 112, column: 9, scope: !226)
!248 = !DILocation(line: 112, column: 39, scope: !226)
!249 = !DILocation(line: 112, column: 9, scope: !201)
!250 = !DILocation(line: 115, column: 14, scope: !225)
!251 = !DILocation(line: 0, scope: !225)
!252 = !DILocation(line: 116, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !225, file: !1, line: 116, column: 13)
!254 = !DILocation(line: 116, column: 13, scope: !225)
!255 = !DILocation(line: 117, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 116, column: 25)
!257 = !DILocation(line: 120, column: 16, scope: !225)
!258 = !DILocation(line: 120, column: 34, scope: !225)
!259 = !{!260, !261, i64 24}
!260 = !{!"hostent", !261, i64 0, !261, i64 8, !91, i64 16, !91, i64 20, !261, i64 24}
!261 = !{!"any pointer", !92, i64 0}
!262 = !DILocation(line: 120, column: 30, scope: !225)
!263 = !{!261, !261, i64 0}
!264 = !DILocation(line: 120, column: 9, scope: !225)
!265 = !DILocation(line: 122, column: 18, scope: !201)
!266 = !DILocation(line: 122, column: 5, scope: !201)
!267 = !DILocation(line: 123, column: 5, scope: !201)
!268 = !DILocation(line: 124, column: 1, scope: !201)
!269 = !DISubprogram(name: "inet_aton", scope: !270, file: !270, line: 73, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!270 = !DIFile(filename: "/usr/include/arpa/inet.h", directory: "", checksumkind: CSK_MD5, checksum: "d240b01f5b2c2634e10800becf2d4e4d")
!271 = !DISubroutineType(types: !272)
!272 = !{!74, !103, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!274 = !DISubprogram(name: "gethostbyname", scope: !229, file: !229, line: 142, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!275 = !DISubroutineType(types: !276)
!276 = !{!227, !103}
!277 = !DISubprogram(name: "memcpy", scope: !135, file: !135, line: 43, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!278 = !DISubroutineType(types: !279)
!279 = !{!46, !280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!281 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !283, line: 46, baseType: !284)
!283 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!284 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!285 = !DISubprogram(name: "strcpy", scope: !135, file: !135, line: 122, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!286 = !DISubroutineType(types: !287)
!287 = !{!75, !288, !289}
!288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!289 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!290 = !DISubprogram(name: "inet_ntoa", scope: !270, file: !270, line: 53, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!291 = !DISubroutineType(types: !292)
!292 = !{!75, !216}
!293 = distinct !DISubprogram(name: "anetTcpConnect", scope: !1, file: !1, line: 170, type: !294, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{!74, !75, !75, !74}
!296 = !{!297, !298, !299}
!297 = !DILocalVariable(name: "err", arg: 1, scope: !293, file: !1, line: 170, type: !75)
!298 = !DILocalVariable(name: "addr", arg: 2, scope: !293, file: !1, line: 170, type: !75)
!299 = !DILocalVariable(name: "port", arg: 3, scope: !293, file: !1, line: 170, type: !74)
!300 = !DILocation(line: 0, scope: !293)
!301 = !DILocation(line: 172, column: 12, scope: !293)
!302 = !DILocation(line: 172, column: 5, scope: !293)
!303 = distinct !DISubprogram(name: "anetTcpGenericConnect", scope: !1, file: !1, line: 128, type: !304, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!74, !75, !75, !74, !74}
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314}
!307 = !DILocalVariable(name: "err", arg: 1, scope: !303, file: !1, line: 128, type: !75)
!308 = !DILocalVariable(name: "addr", arg: 2, scope: !303, file: !1, line: 128, type: !75)
!309 = !DILocalVariable(name: "port", arg: 3, scope: !303, file: !1, line: 128, type: !74)
!310 = !DILocalVariable(name: "flags", arg: 4, scope: !303, file: !1, line: 128, type: !74)
!311 = !DILocalVariable(name: "s", scope: !303, file: !1, line: 130, type: !74)
!312 = !DILocalVariable(name: "on", scope: !303, file: !1, line: 130, type: !74)
!313 = !DILocalVariable(name: "sa", scope: !303, file: !1, line: 131, type: !209)
!314 = !DILocalVariable(name: "he", scope: !315, file: !1, line: 144, type: !227)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 143, column: 45)
!316 = distinct !DILexicalBlock(scope: !303, file: !1, line: 143, column: 9)
!317 = !DILocation(line: 0, scope: !303)
!318 = !DILocation(line: 130, column: 5, scope: !303)
!319 = !DILocation(line: 130, column: 12, scope: !303)
!320 = !DILocation(line: 131, column: 5, scope: !303)
!321 = !DILocation(line: 131, column: 24, scope: !303)
!322 = !DILocation(line: 133, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !303, file: !1, line: 133, column: 9)
!324 = !DILocation(line: 133, column: 47, scope: !323)
!325 = !DILocation(line: 133, column: 9, scope: !303)
!326 = !DILocation(line: 134, column: 61, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !1, line: 133, column: 54)
!328 = !DILocation(line: 134, column: 52, scope: !327)
!329 = !DILocation(line: 134, column: 9, scope: !327)
!330 = !DILocation(line: 135, column: 9, scope: !327)
!331 = !DILocation(line: 139, column: 5, scope: !303)
!332 = !DILocation(line: 141, column: 8, scope: !303)
!333 = !DILocation(line: 141, column: 19, scope: !303)
!334 = !DILocation(line: 142, column: 19, scope: !303)
!335 = !DILocation(line: 142, column: 8, scope: !303)
!336 = !DILocation(line: 142, column: 17, scope: !303)
!337 = !{!243, !244, i64 2}
!338 = !DILocation(line: 143, column: 29, scope: !316)
!339 = !DILocation(line: 143, column: 9, scope: !316)
!340 = !DILocation(line: 143, column: 39, scope: !316)
!341 = !DILocation(line: 143, column: 9, scope: !303)
!342 = !DILocation(line: 146, column: 14, scope: !315)
!343 = !DILocation(line: 0, scope: !315)
!344 = !DILocation(line: 147, column: 16, scope: !345)
!345 = distinct !DILexicalBlock(scope: !315, file: !1, line: 147, column: 13)
!346 = !DILocation(line: 147, column: 13, scope: !315)
!347 = !DILocation(line: 148, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !1, line: 147, column: 25)
!349 = !DILocation(line: 149, column: 13, scope: !348)
!350 = !DILocation(line: 152, column: 16, scope: !315)
!351 = !DILocation(line: 152, column: 34, scope: !315)
!352 = !DILocation(line: 152, column: 30, scope: !315)
!353 = !DILocation(line: 152, column: 9, scope: !315)
!354 = !DILocation(line: 154, column: 15, scope: !355)
!355 = distinct !DILexicalBlock(scope: !303, file: !1, line: 154, column: 9)
!356 = !DILocation(line: 154, column: 9, scope: !303)
!357 = !DILocation(line: 155, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !1, line: 155, column: 13)
!359 = distinct !DILexicalBlock(scope: !355, file: !1, line: 154, column: 40)
!360 = !DILocation(line: 155, column: 33, scope: !358)
!361 = !DILocation(line: 155, column: 13, scope: !359)
!362 = !DILocation(line: 158, column: 20, scope: !363)
!363 = distinct !DILexicalBlock(scope: !303, file: !1, line: 158, column: 9)
!364 = !DILocation(line: 158, column: 9, scope: !363)
!365 = !DILocation(line: 158, column: 55, scope: !363)
!366 = !DILocation(line: 158, column: 9, scope: !303)
!367 = !DILocation(line: 159, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !1, line: 159, column: 13)
!369 = distinct !DILexicalBlock(scope: !363, file: !1, line: 158, column: 62)
!370 = !DILocation(line: 159, column: 19, scope: !368)
!371 = !DILocation(line: 159, column: 34, scope: !368)
!372 = !DILocation(line: 163, column: 44, scope: !369)
!373 = !DILocation(line: 163, column: 9, scope: !369)
!374 = !DILocation(line: 164, column: 9, scope: !369)
!375 = !DILocation(line: 165, column: 9, scope: !369)
!376 = !DILocation(line: 168, column: 1, scope: !303)
!377 = distinct !DISubprogram(name: "anetTcpNonBlockConnect", scope: !1, file: !1, line: 175, type: !294, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "err", arg: 1, scope: !377, file: !1, line: 175, type: !75)
!380 = !DILocalVariable(name: "addr", arg: 2, scope: !377, file: !1, line: 175, type: !75)
!381 = !DILocalVariable(name: "port", arg: 3, scope: !377, file: !1, line: 175, type: !74)
!382 = !DILocation(line: 0, scope: !377)
!383 = !DILocation(line: 177, column: 12, scope: !377)
!384 = !DILocation(line: 177, column: 5, scope: !377)
!385 = distinct !DISubprogram(name: "anetRead", scope: !1, file: !1, line: 182, type: !386, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!74, !74, !75, !74}
!388 = !{!389, !390, !391, !392, !393}
!389 = !DILocalVariable(name: "fd", arg: 1, scope: !385, file: !1, line: 182, type: !74)
!390 = !DILocalVariable(name: "buf", arg: 2, scope: !385, file: !1, line: 182, type: !75)
!391 = !DILocalVariable(name: "count", arg: 3, scope: !385, file: !1, line: 182, type: !74)
!392 = !DILocalVariable(name: "nread", scope: !385, file: !1, line: 184, type: !74)
!393 = !DILocalVariable(name: "totlen", scope: !385, file: !1, line: 184, type: !74)
!394 = !DILocation(line: 0, scope: !385)
!395 = !DILocation(line: 185, column: 18, scope: !385)
!396 = !DILocation(line: 185, column: 5, scope: !385)
!397 = !DILocation(line: 186, column: 34, scope: !398)
!398 = distinct !DILexicalBlock(scope: !385, file: !1, line: 185, column: 28)
!399 = !DILocation(line: 186, column: 29, scope: !398)
!400 = !DILocation(line: 186, column: 17, scope: !398)
!401 = !DILocation(line: 187, column: 13, scope: !398)
!402 = !DILocation(line: 189, column: 16, scope: !398)
!403 = !DILocation(line: 190, column: 13, scope: !398)
!404 = distinct !{!404, !396, !405}
!405 = !DILocation(line: 191, column: 5, scope: !385)
!406 = !DILocation(line: 193, column: 1, scope: !385)
!407 = !DISubprogram(name: "read", scope: !408, file: !408, line: 360, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!408 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!409 = !DISubroutineType(types: !410)
!410 = !{!411, !74, !46, !282}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !412, line: 108, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !51, line: 193, baseType: !414)
!414 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!415 = distinct !DISubprogram(name: "anetWrite", scope: !1, file: !1, line: 197, type: !386, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !416)
!416 = !{!417, !418, !419, !420, !421}
!417 = !DILocalVariable(name: "fd", arg: 1, scope: !415, file: !1, line: 197, type: !74)
!418 = !DILocalVariable(name: "buf", arg: 2, scope: !415, file: !1, line: 197, type: !75)
!419 = !DILocalVariable(name: "count", arg: 3, scope: !415, file: !1, line: 197, type: !74)
!420 = !DILocalVariable(name: "nwritten", scope: !415, file: !1, line: 199, type: !74)
!421 = !DILocalVariable(name: "totlen", scope: !415, file: !1, line: 199, type: !74)
!422 = !DILocation(line: 0, scope: !415)
!423 = !DILocation(line: 200, column: 18, scope: !415)
!424 = !DILocation(line: 200, column: 5, scope: !415)
!425 = !DILocation(line: 201, column: 38, scope: !426)
!426 = distinct !DILexicalBlock(scope: !415, file: !1, line: 200, column: 28)
!427 = !DILocation(line: 201, column: 33, scope: !426)
!428 = !DILocation(line: 201, column: 20, scope: !426)
!429 = !DILocation(line: 202, column: 13, scope: !426)
!430 = !DILocation(line: 204, column: 16, scope: !426)
!431 = !DILocation(line: 205, column: 13, scope: !426)
!432 = distinct !{!432, !424, !433}
!433 = !DILocation(line: 206, column: 5, scope: !415)
!434 = !DILocation(line: 208, column: 1, scope: !415)
!435 = !DISubprogram(name: "write", scope: !408, file: !408, line: 366, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!436 = !DISubroutineType(types: !437)
!437 = !{!411, !74, !160, !282}
!438 = distinct !DISubprogram(name: "anetTcpServer", scope: !1, file: !1, line: 210, type: !439, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{!74, !75, !74, !75}
!441 = !{!442, !443, !444, !445, !446, !447}
!442 = !DILocalVariable(name: "err", arg: 1, scope: !438, file: !1, line: 210, type: !75)
!443 = !DILocalVariable(name: "port", arg: 2, scope: !438, file: !1, line: 210, type: !74)
!444 = !DILocalVariable(name: "bindaddr", arg: 3, scope: !438, file: !1, line: 210, type: !75)
!445 = !DILocalVariable(name: "s", scope: !438, file: !1, line: 212, type: !74)
!446 = !DILocalVariable(name: "on", scope: !438, file: !1, line: 212, type: !74)
!447 = !DILocalVariable(name: "sa", scope: !438, file: !1, line: 213, type: !209)
!448 = !DILocation(line: 0, scope: !438)
!449 = !DILocation(line: 212, column: 5, scope: !438)
!450 = !DILocation(line: 212, column: 12, scope: !438)
!451 = !DILocation(line: 213, column: 5, scope: !438)
!452 = !DILocation(line: 213, column: 24, scope: !438)
!453 = !DILocation(line: 215, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !438, file: !1, line: 215, column: 9)
!455 = !DILocation(line: 215, column: 47, scope: !454)
!456 = !DILocation(line: 215, column: 9, scope: !438)
!457 = !DILocation(line: 216, column: 52, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !1, line: 215, column: 54)
!459 = !DILocation(line: 216, column: 43, scope: !458)
!460 = !DILocation(line: 216, column: 9, scope: !458)
!461 = !DILocation(line: 217, column: 9, scope: !458)
!462 = !DILocation(line: 219, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !438, file: !1, line: 219, column: 9)
!464 = !DILocation(line: 219, column: 66, scope: !463)
!465 = !DILocation(line: 219, column: 9, scope: !438)
!466 = !DILocation(line: 220, column: 69, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !1, line: 219, column: 73)
!468 = !DILocation(line: 220, column: 60, scope: !467)
!469 = !DILocation(line: 220, column: 9, scope: !467)
!470 = !DILocation(line: 221, column: 9, scope: !467)
!471 = !DILocation(line: 222, column: 9, scope: !467)
!472 = !DILocation(line: 224, column: 5, scope: !438)
!473 = !DILocation(line: 225, column: 8, scope: !438)
!474 = !DILocation(line: 225, column: 19, scope: !438)
!475 = !DILocation(line: 226, column: 19, scope: !438)
!476 = !DILocation(line: 226, column: 8, scope: !438)
!477 = !DILocation(line: 226, column: 17, scope: !438)
!478 = !DILocation(line: 227, column: 8, scope: !438)
!479 = !DILocation(line: 227, column: 17, scope: !438)
!480 = !DILocation(line: 227, column: 24, scope: !438)
!481 = !{!243, !91, i64 4}
!482 = !DILocation(line: 228, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !438, file: !1, line: 228, column: 9)
!484 = !DILocation(line: 228, column: 9, scope: !438)
!485 = !DILocation(line: 229, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !1, line: 229, column: 13)
!487 = distinct !DILexicalBlock(scope: !483, file: !1, line: 228, column: 19)
!488 = !DILocation(line: 229, column: 47, scope: !486)
!489 = !DILocation(line: 229, column: 13, scope: !487)
!490 = !DILocation(line: 230, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !1, line: 229, column: 53)
!492 = !DILocation(line: 231, column: 13, scope: !491)
!493 = !DILocation(line: 232, column: 13, scope: !491)
!494 = !DILocation(line: 235, column: 17, scope: !495)
!495 = distinct !DILexicalBlock(scope: !438, file: !1, line: 235, column: 9)
!496 = !DILocation(line: 235, column: 9, scope: !495)
!497 = !DILocation(line: 235, column: 52, scope: !495)
!498 = !DILocation(line: 235, column: 9, scope: !438)
!499 = !DILocation(line: 236, column: 50, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !1, line: 235, column: 59)
!501 = !DILocation(line: 236, column: 41, scope: !500)
!502 = !DILocation(line: 236, column: 9, scope: !500)
!503 = !DILocation(line: 237, column: 9, scope: !500)
!504 = !DILocation(line: 238, column: 9, scope: !500)
!505 = !DILocation(line: 240, column: 9, scope: !506)
!506 = distinct !DILexicalBlock(scope: !438, file: !1, line: 240, column: 9)
!507 = !DILocation(line: 240, column: 24, scope: !506)
!508 = !DILocation(line: 240, column: 9, scope: !438)
!509 = !DILocation(line: 241, column: 52, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !1, line: 240, column: 31)
!511 = !DILocation(line: 241, column: 43, scope: !510)
!512 = !DILocation(line: 241, column: 9, scope: !510)
!513 = !DILocation(line: 242, column: 9, scope: !510)
!514 = !DILocation(line: 243, column: 9, scope: !510)
!515 = !DILocation(line: 246, column: 1, scope: !438)
!516 = !DISubprogram(name: "socket", scope: !157, file: !157, line: 102, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!517 = !DISubroutineType(types: !518)
!518 = !{!74, !74, !74, !74}
!519 = !DISubprogram(name: "close", scope: !408, file: !408, line: 353, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!520 = !DISubroutineType(types: !521)
!521 = !{!74, !74}
!522 = !DISubprogram(name: "memset", scope: !135, file: !135, line: 61, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!523 = !DISubroutineType(types: !524)
!524 = !{!46, !46, !74, !282}
!525 = distinct !DISubprogram(name: "__bswap_16", scope: !526, file: !526, line: 34, type: !527, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !529)
!526 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!527 = !DISubroutineType(types: !528)
!528 = !{!65, !65}
!529 = !{!530}
!530 = !DILocalVariable(name: "__bsx", arg: 1, scope: !525, file: !526, line: 34, type: !65)
!531 = !DILocation(line: 0, scope: !525)
!532 = !DILocation(line: 39, column: 3, scope: !525)
!533 = !DISubprogram(name: "bind", scope: !157, file: !157, line: 112, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!534 = !DISubroutineType(types: !535)
!535 = !{!74, !74, !536, !162}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!538 = !DISubprogram(name: "listen", scope: !157, file: !157, line: 222, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!539 = !DISubroutineType(types: !540)
!540 = !{!74, !74, !74}
!541 = distinct !DISubprogram(name: "anetAccept", scope: !1, file: !1, line: 248, type: !542, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{!74, !75, !74, !75, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!545 = !{!546, !547, !548, !549, !550, !551, !552}
!546 = !DILocalVariable(name: "err", arg: 1, scope: !541, file: !1, line: 248, type: !75)
!547 = !DILocalVariable(name: "serversock", arg: 2, scope: !541, file: !1, line: 248, type: !74)
!548 = !DILocalVariable(name: "ip", arg: 3, scope: !541, file: !1, line: 248, type: !75)
!549 = !DILocalVariable(name: "port", arg: 4, scope: !541, file: !1, line: 248, type: !544)
!550 = !DILocalVariable(name: "fd", scope: !541, file: !1, line: 250, type: !74)
!551 = !DILocalVariable(name: "sa", scope: !541, file: !1, line: 251, type: !209)
!552 = !DILocalVariable(name: "saLen", scope: !541, file: !1, line: 252, type: !5)
!553 = !DILocation(line: 0, scope: !541)
!554 = !DILocation(line: 251, column: 5, scope: !541)
!555 = !DILocation(line: 251, column: 24, scope: !541)
!556 = !DILocation(line: 252, column: 5, scope: !541)
!557 = !DILocation(line: 254, column: 5, scope: !541)
!558 = !DILocation(line: 255, column: 15, scope: !559)
!559 = distinct !DILexicalBlock(scope: !541, file: !1, line: 254, column: 14)
!560 = !DILocation(line: 256, column: 14, scope: !559)
!561 = !DILocation(line: 257, column: 16, scope: !562)
!562 = distinct !DILexicalBlock(scope: !559, file: !1, line: 257, column: 13)
!563 = !DILocation(line: 257, column: 13, scope: !559)
!564 = !DILocation(line: 258, column: 17, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !1, line: 258, column: 17)
!566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 257, column: 23)
!567 = !DILocation(line: 258, column: 23, scope: !565)
!568 = !DILocation(line: 258, column: 17, scope: !566)
!569 = distinct !{!569, !557, !570}
!570 = !DILocation(line: 266, column: 5, scope: !541)
!571 = !DILocation(line: 261, column: 51, scope: !572)
!572 = distinct !DILexicalBlock(scope: !565, file: !1, line: 260, column: 18)
!573 = !DILocation(line: 261, column: 17, scope: !572)
!574 = !DILocation(line: 262, column: 17, scope: !572)
!575 = !DILocation(line: 267, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !541, file: !1, line: 267, column: 9)
!577 = !DILocation(line: 267, column: 9, scope: !541)
!578 = !DILocation(line: 267, column: 23, scope: !576)
!579 = !DILocation(line: 267, column: 13, scope: !576)
!580 = !DILocation(line: 268, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !541, file: !1, line: 268, column: 9)
!582 = !DILocation(line: 268, column: 9, scope: !541)
!583 = !DILocation(line: 268, column: 23, scope: !581)
!584 = !DILocation(line: 268, column: 21, scope: !581)
!585 = !DILocation(line: 268, column: 15, scope: !581)
!586 = !DILocation(line: 270, column: 1, scope: !541)
!587 = !DISubprogram(name: "accept", scope: !157, file: !157, line: 232, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!588 = !DISubroutineType(types: !589)
!589 = !{!74, !74, !590, !591}
!590 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!593 = !DISubprogram(name: "vsnprintf", scope: !110, file: !110, line: 358, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!594 = !DISubroutineType(types: !595)
!595 = !{!74, !288, !282, !289, !596}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!597 = !DISubprogram(name: "connect", scope: !157, file: !157, line: 126, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
