; ModuleID = 'redis-benchmark.c'
source_filename = "redis-benchmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aeEventLoop*, i8*, i32, i32, i64, i64, i32*, %struct.list*, i32, i32, i32 }
%struct.aeEventLoop = type { i32, i64, [10240 x %struct.aeFileEvent], [10240 x %struct.aeFiredEvent], %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i32 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._client = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i64 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@config = internal unnamed_addr global %struct.config zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Can't resolve %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Wrong option '%s' or option argument missing\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [95 x i8] c"Usage: redis-benchmark [-h <host>] [-p <port>] [-c <clients>] [-n <requests]> [-k <boolean>]\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c" -h <hostname>      Server hostname (default 127.0.0.1)\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c" -p <hostname>      Server port (default 6379)\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c" -c <clients>       Number of parallel connections (default 50)\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c" -n <requests>      Total number of requests (default 10000)\0A\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c" -d <size>          Data size of SET/GET value in bytes (default 2)\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c" -k <boolean>       1=keep alive 0=reconnect (default 1)\0A\00", align 1
@.str.20 = private unnamed_addr constant [78 x i8] c" -r <keyspacelen>   Use random keys for SET/GET/INCR, random values for SADD\0A\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"  Using this option the benchmark will get/set keys\0A\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"  in the form mykey_rand000000012456 instead of constant\0A\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"  keys, the <keyspacelen> argument determines the max\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"  number of values for the random number. For instance\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"  if set to 10 only rand000000000000 - rand000000000009\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"  range will be allowed.\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c" -q                 Quiet. Just show query/sec values\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c" -l                 Loop. Run the tests forever\0A\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c" -I                 Idle mode. Just open N idle connections and wait.\0A\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c" -D                 Debug mode. more verbose.\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.32 = private unnamed_addr constant [199 x i8] c"WARNING: keepalive disabled, you probably need 'echo 1 > /proc/sys/net/ipv4/tcp_tw_reuse' for Linux and 'sudo sysctl -w net.inet.tcp.msl=1000' for Mac OS X in order to use a lot of clients/requests\0A\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Creating %d idle connections and waiting forever (Ctrl+C when done)\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"PING\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"*1\0D\0A$4\0D\0APING\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"PING (multi bulk)\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"SET foo_rand000000000000 %d\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"GET foo_rand000000000000\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"INCR counter_rand000000000000\0D\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"INCR\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"LPUSH mylist 3\0D\0Abar\0D\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"LPUSH\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"LPOP mylist\0D\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"LPOP\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"SADD myset 24\0D\0Acounter_rand000000000000\0D\0A\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"SADD\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"SPOP myset\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"SPOP\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"LPUSH (again, in order to bench LRANGE)\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"LRANGE mylist 0 99\0D\0A\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"LRANGE (first 100 elements)\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"LRANGE mylist 0 299\0D\0A\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"LRANGE (first 300 elements)\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"LRANGE mylist 0 449\0D\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"LRANGE (first 450 elements)\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"LRANGE mylist 0 599\0D\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"LRANGE (first 600 elements)\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.62 = private unnamed_addr constant [13 x i8] c"Connect: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"Writing to socket: %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"redis-benchmark.c\00", align 1
@__PRETTY_FUNCTION__.freeClient = private unnamed_addr constant [24 x i8] c"void freeClient(client)\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Reading from socket: %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"EOF from client\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@clientDone.last_tot_received = internal unnamed_addr global i32 1, align 4, !dbg !19
@.str.69 = private unnamed_addr constant [24 x i8] c"Tot bytes received: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"_rand\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"====== %s ======\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"  %d requests completed in %.2f seconds\0A\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"  %d parallel clients\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"  %d bytes payload\0A\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"  keep alive: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"%.2f%% <= %d milliseconds\0A\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"%.2f requests per second\0A\0A\00", align 1
@.str.79 = private unnamed_addr constant [30 x i8] c"%s: %.2f requests per second\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @parseOptions(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !162, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i8** %argv, metadata !163, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.value(metadata i32 1, metadata !164, metadata !DIExpression()), !dbg !175
  %cmp228 = icmp sgt i32 %argc, 1, !dbg !176
  br i1 %cmp228, label %for.body.lr.ph, label %for.end, !dbg !177

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %argc, -1
  br label %for.body, !dbg !177

for.body:                                         ; preds = %for.body.lr.ph, %if.end158
  %i.0229 = phi i32 [ 1, %for.body.lr.ph ], [ %inc159, %if.end158 ]
  call void @llvm.dbg.value(metadata i32 %i.0229, metadata !164, metadata !DIExpression()), !dbg !175
  %cmp1 = icmp eq i32 %i.0229, %sub, !dbg !178
  call void @llvm.dbg.value(metadata i1 %cmp1, metadata !165, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !179
  %idxprom = sext i32 %i.0229 to i64, !dbg !180
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !180
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !180, !tbaa !181
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #11, !dbg !185
  %tobool = icmp ne i32 %call, 0, !dbg !185
  %or.cond = select i1 %tobool, i1 true, i1 %cmp1, !dbg !186
  br i1 %or.cond, label %if.else, label %if.then, !dbg !186

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %i.0229, 1, !dbg !187
  %idxprom3 = sext i32 %add to i64, !dbg !189
  %arrayidx4 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom3, !dbg !189
  %1 = load i8*, i8** %arrayidx4, align 8, !dbg !189, !tbaa !181
  %call5 = tail call i32 @atoi(i8* noundef %1) #11, !dbg !190
  store i32 %call5, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 1), align 4, !dbg !191, !tbaa !192
  call void @llvm.dbg.value(metadata i32 %add, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !196

if.else:                                          ; preds = %for.body
  %call8 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !197
  %tobool9 = icmp ne i32 %call8, 0, !dbg !197
  %or.cond160 = select i1 %tobool9, i1 true, i1 %cmp1, !dbg !198
  br i1 %or.cond160, label %if.else18, label %if.then12, !dbg !198

if.then12:                                        ; preds = %if.else
  %add13 = add nsw i32 %i.0229, 1, !dbg !199
  %idxprom14 = sext i32 %add13 to i64, !dbg !201
  %arrayidx15 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom14, !dbg !201
  %2 = load i8*, i8** %arrayidx15, align 8, !dbg !201, !tbaa !181
  %call16 = tail call i32 @atoi(i8* noundef %2) #11, !dbg !202
  store i32 %call16, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 2), align 8, !dbg !203, !tbaa !204
  call void @llvm.dbg.value(metadata i32 %add13, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !205

if.else18:                                        ; preds = %if.else
  %call21 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !206
  %tobool22 = icmp ne i32 %call21, 0, !dbg !206
  %or.cond161 = select i1 %tobool22, i1 true, i1 %cmp1, !dbg !207
  br i1 %or.cond161, label %if.else31, label %if.then25, !dbg !207

if.then25:                                        ; preds = %if.else18
  %add26 = add nsw i32 %i.0229, 1, !dbg !208
  %idxprom27 = sext i32 %add26 to i64, !dbg !210
  %arrayidx28 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom27, !dbg !210
  %3 = load i8*, i8** %arrayidx28, align 8, !dbg !210, !tbaa !181
  %call29 = tail call i32 @atoi(i8* noundef %3) #11, !dbg !211
  store i32 %call29, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 12), align 4, !dbg !212, !tbaa !213
  call void @llvm.dbg.value(metadata i32 %add26, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !214

if.else31:                                        ; preds = %if.else18
  %call34 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #11, !dbg !215
  %tobool35 = icmp ne i32 %call34, 0, !dbg !215
  %or.cond162 = select i1 %tobool35, i1 true, i1 %cmp1, !dbg !216
  br i1 %or.cond162, label %if.else51, label %if.then38, !dbg !216

if.then38:                                        ; preds = %if.else31
  %call39 = tail call i8* @zmalloc(i64 noundef 32) #12, !dbg !217
  call void @llvm.dbg.value(metadata i8* %call39, metadata !169, metadata !DIExpression()), !dbg !218
  %add40 = add nsw i32 %i.0229, 1, !dbg !219
  %idxprom41 = sext i32 %add40 to i64, !dbg !221
  %arrayidx42 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom41, !dbg !221
  %4 = load i8*, i8** %arrayidx42, align 8, !dbg !221, !tbaa !181
  %call43 = tail call i32 @anetResolve(i8* noundef null, i8* noundef %4, i8* noundef %call39) #12, !dbg !222
  %cmp44 = icmp eq i32 %call43, -1, !dbg !223
  br i1 %cmp44, label %if.then46, label %if.end, !dbg !224

if.then46:                                        ; preds = %if.then38
  %arrayidx.le = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !180
  %5 = load i8*, i8** %arrayidx.le, align 8, !dbg !225, !tbaa !181
  %call49 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* noundef %5) #12, !dbg !227
  tail call void @exit(i32 noundef 1) #13, !dbg !228
  unreachable, !dbg !228

if.end:                                           ; preds = %if.then38
  store i8* %call39, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 10), align 8, !dbg !229, !tbaa !230
  call void @llvm.dbg.value(metadata i32 %add40, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !231

if.else51:                                        ; preds = %if.else31
  %call54 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !232
  %tobool55 = icmp ne i32 %call54, 0, !dbg !232
  %or.cond163 = select i1 %tobool55, i1 true, i1 %cmp1, !dbg !234
  br i1 %or.cond163, label %if.else64, label %if.then58, !dbg !234

if.then58:                                        ; preds = %if.else51
  %add59 = add nsw i32 %i.0229, 1, !dbg !235
  %idxprom60 = sext i32 %add59 to i64, !dbg !237
  %arrayidx61 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom60, !dbg !237
  %6 = load i8*, i8** %arrayidx61, align 8, !dbg !237, !tbaa !181
  %call62 = tail call i32 @atoi(i8* noundef %6) #11, !dbg !238
  store i32 %call62, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 11), align 8, !dbg !239, !tbaa !240
  call void @llvm.dbg.value(metadata i32 %add59, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !241

if.else64:                                        ; preds = %if.else51
  %call67 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !242
  %tobool68 = icmp ne i32 %call67, 0, !dbg !242
  %or.cond164 = select i1 %tobool68, i1 true, i1 %cmp1, !dbg !244
  br i1 %or.cond164, label %if.else85, label %if.then71, !dbg !244

if.then71:                                        ; preds = %if.else64
  %add72 = add nsw i32 %i.0229, 1, !dbg !245
  %idxprom73 = sext i32 %add72 to i64, !dbg !247
  %arrayidx74 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom73, !dbg !247
  %7 = load i8*, i8** %arrayidx74, align 8, !dbg !247, !tbaa !181
  %call75 = tail call i32 @atoi(i8* noundef %7) #11, !dbg !248
  call void @llvm.dbg.value(metadata i32 %add72, metadata !164, metadata !DIExpression()), !dbg !175
  %8 = icmp sgt i32 %call75, 1, !dbg !249
  %spec.select = select i1 %8, i32 %call75, i32 1, !dbg !249
  %9 = icmp ult i32 %spec.select, 1048576, !dbg !250
  %spec.store.select225 = select i1 %9, i32 %spec.select, i32 1048576, !dbg !250
  store i32 %spec.store.select225, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !251
  br label %if.end158, !dbg !250

if.else85:                                        ; preds = %if.else64
  %call88 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !252
  %tobool89 = icmp ne i32 %call88, 0, !dbg !252
  %or.cond165 = select i1 %tobool89, i1 true, i1 %cmp1, !dbg !254
  br i1 %or.cond165, label %if.else102, label %if.then92, !dbg !254

if.then92:                                        ; preds = %if.else85
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 7), align 4, !dbg !255, !tbaa !257
  %add93 = add nsw i32 %i.0229, 1, !dbg !258
  %idxprom94 = sext i32 %add93 to i64, !dbg !259
  %arrayidx95 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom94, !dbg !259
  %10 = load i8*, i8** %arrayidx95, align 8, !dbg !259, !tbaa !181
  %call96 = tail call i32 @atoi(i8* noundef %10) #11, !dbg !260
  %11 = icmp sgt i32 %call96, 0, !dbg !261
  %spec.store.select = select i1 %11, i32 %call96, i32 0, !dbg !261
  store i32 %spec.store.select, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 8), align 8, !dbg !262
  call void @llvm.dbg.value(metadata i32 %add93, metadata !164, metadata !DIExpression()), !dbg !175
  br label %if.end158, !dbg !263

if.else102:                                       ; preds = %if.else85
  %call105 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !264
  %tobool106.not = icmp eq i32 %call105, 0, !dbg !264
  br i1 %tobool106.not, label %if.then107, label %if.else108, !dbg !266

if.then107:                                       ; preds = %if.else102
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 17), align 8, !dbg !267, !tbaa !269
  br label %if.end158, !dbg !270

if.else108:                                       ; preds = %if.else102
  %call111 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !271
  %tobool112.not = icmp eq i32 %call111, 0, !dbg !271
  br i1 %tobool112.not, label %if.then113, label %if.else114, !dbg !273

if.then113:                                       ; preds = %if.else108
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 18), align 4, !dbg !274, !tbaa !276
  br label %if.end158, !dbg !277

if.else114:                                       ; preds = %if.else108
  %call117 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !278
  %tobool118.not = icmp eq i32 %call117, 0, !dbg !278
  br i1 %tobool118.not, label %if.then119, label %if.else120, !dbg !280

if.then119:                                       ; preds = %if.else114
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 0), align 8, !dbg !281, !tbaa !283
  br label %if.end158, !dbg !284

if.else120:                                       ; preds = %if.else114
  %call123 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !285
  %tobool124.not = icmp eq i32 %call123, 0, !dbg !285
  br i1 %tobool124.not, label %if.then125, label %if.else126, !dbg !287

if.then125:                                       ; preds = %if.else120
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 19), align 8, !dbg !288, !tbaa !290
  br label %if.end158

if.else126:                                       ; preds = %if.else120
  %call129 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #12, !dbg !291
  %call130 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !293
  %call131 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !294
  %call132 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !295
  %call133 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0)) #12, !dbg !296
  %call134 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !297
  %call135 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !298
  %call136 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !299
  %call137 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.20, i64 0, i64 0)) #12, !dbg !300
  %call138 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !301
  %call139 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !302
  %call140 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0)) #12, !dbg !303
  %call141 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0)) #12, !dbg !304
  %call142 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !305
  %call143 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !306
  %call144 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0)) #12, !dbg !307
  %call145 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.28, i64 0, i64 0)) #12, !dbg !308
  %call146 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0)) #12, !dbg !309
  %call147 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0)) #12, !dbg !310
  tail call void @exit(i32 noundef 1) #13, !dbg !311
  unreachable, !dbg !311

if.end158:                                        ; preds = %if.then71, %if.then12, %if.end, %if.then107, %if.then119, %if.then125, %if.then113, %if.then92, %if.then58, %if.then25, %if.then
  %i.1 = phi i32 [ %i.0229, %if.then125 ], [ %i.0229, %if.then119 ], [ %i.0229, %if.then113 ], [ %i.0229, %if.then107 ], [ %add93, %if.then92 ], [ %add59, %if.then58 ], [ %add40, %if.end ], [ %add26, %if.then25 ], [ %add13, %if.then12 ], [ %add, %if.then ], [ %add72, %if.then71 ], !dbg !312
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !164, metadata !DIExpression()), !dbg !175
  %inc159 = add nsw i32 %i.1, 1, !dbg !313
  call void @llvm.dbg.value(metadata i32 %inc159, metadata !164, metadata !DIExpression()), !dbg !175
  %cmp = icmp slt i32 %inc159, %argc, !dbg !176
  br i1 %cmp, label %for.body, label %for.end, !dbg !177, !llvm.loop !314

for.end:                                          ; preds = %if.end158, %entry
  ret void, !dbg !316
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !317 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #4

declare !dbg !324 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #5

declare !dbg !331 dso_local i32 @anetResolve(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !335 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare !dbg !340 dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !346, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.value(metadata i8** %argv, metadata !347, metadata !DIExpression()), !dbg !352
  %call = tail call void (i32)* @signal(i32 noundef 1, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #12, !dbg !353
  %call1 = tail call void (i32)* @signal(i32 noundef 13, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #12, !dbg !354
  store <4 x i32> <i32 0, i32 50, i32 10000, i32 0>, <4 x i32>* bitcast (%struct.config* @config to <4 x i32>*), align 16, !dbg !355, !tbaa !356
  %call2 = tail call %struct.aeEventLoop* @aeCreateEventLoop() #12, !dbg !357
  store %struct.aeEventLoop* %call2, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !358, !tbaa !359
  store i32 1, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 12), align 4, !dbg !360, !tbaa !213
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !361, !tbaa !362
  store i32 3, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !363, !tbaa !364
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 7), align 4, !dbg !365, !tbaa !257
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 8), align 16, !dbg !366, !tbaa !367
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 17), align 16, !dbg !368, !tbaa !269
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 18), align 4, !dbg !369, !tbaa !276
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 19), align 8, !dbg !370, !tbaa !290
  store i32* null, i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15), align 16, !dbg !371, !tbaa !372
  %call3 = tail call %struct.list* @listCreate() #12, !dbg !373
  store %struct.list* %call3, %struct.list** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 16), align 8, !dbg !374, !tbaa !375
  %call4 = tail call i8* @zmalloc(i64 noundef 20004) #12, !dbg !376
  store i8* %call4, i8** bitcast (i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15) to i8**), align 16, !dbg !377, !tbaa !372
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 10), align 16, !dbg !378, !tbaa !230
  store i32 6379, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 11), align 8, !dbg !379, !tbaa !240
  tail call void @parseOptions(i32 noundef %argc, i8** noundef %argv) #14, !dbg !380
  %0 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 12), align 4, !dbg !381, !tbaa !213
  %cmp = icmp eq i32 %0, 0, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  %call5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([199 x i8], [199 x i8]* @.str.32, i64 0, i64 0)) #12, !dbg !385
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 19), align 8, !dbg !388, !tbaa !290
  %tobool.not = icmp eq i32 %1, 0, !dbg !390
  br i1 %tobool.not, label %do.body.preheader, label %if.then6, !dbg !391

if.then6:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 1), align 4, !dbg !392, !tbaa !192
  %call7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 noundef %2) #12, !dbg !394
  tail call fastcc void @prepareForBenchmark() #14, !dbg !395
  %call8 = tail call fastcc %struct._client* @createClient() #14, !dbg !396
  call void @llvm.dbg.value(metadata %struct._client* %call8, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool9.not = icmp eq %struct._client* %call8, null, !dbg !397
  br i1 %tobool9.not, label %if.then10, label %if.end11, !dbg !399

if.then10:                                        ; preds = %if.then6
  tail call void @exit(i32 noundef 1) #13, !dbg !400
  unreachable, !dbg !400

if.end11:                                         ; preds = %if.then6
  %call12 = tail call i8* (...) @sdsempty() #12, !dbg !401
  %obuf = getelementptr inbounds %struct._client, %struct._client* %call8, i64 0, i32 2, !dbg !402
  store i8* %call12, i8** %obuf, align 8, !dbg !403, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call8, i32 noundef 1) #14, !dbg !406
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call8) #14, !dbg !407
  %3 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !408, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %3) #12, !dbg !409
  br label %do.body.preheader, !dbg !410

do.body.preheader:                                ; preds = %if.end11, %if.end
  br label %do.body, !dbg !411

do.body:                                          ; preds = %do.body.preheader, %if.end119
  tail call fastcc void @prepareForBenchmark() #14, !dbg !412
  %call14 = tail call fastcc %struct._client* @createClient() #14, !dbg !413
  call void @llvm.dbg.value(metadata %struct._client* %call14, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool15.not = icmp eq %struct._client* %call14, null, !dbg !414
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !416

if.then16:                                        ; preds = %do.body
  tail call void @exit(i32 noundef 1) #13, !dbg !417
  unreachable, !dbg !417

if.end17:                                         ; preds = %do.body
  %obuf18 = getelementptr inbounds %struct._client, %struct._client* %call14, i64 0, i32 2, !dbg !418
  %4 = load i8*, i8** %obuf18, align 8, !dbg !418, !tbaa !404
  %call19 = tail call i8* @sdscat(i8* noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)) #12, !dbg !419
  store i8* %call19, i8** %obuf18, align 8, !dbg !420, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call14, i32 noundef 1) #14, !dbg !421
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call14) #14, !dbg !422
  %5 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !423, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %5) #12, !dbg !424
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #14, !dbg !425
  tail call fastcc void @prepareForBenchmark() #14, !dbg !426
  %call21 = tail call fastcc %struct._client* @createClient() #14, !dbg !427
  call void @llvm.dbg.value(metadata %struct._client* %call21, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool22.not = icmp eq %struct._client* %call21, null, !dbg !428
  br i1 %tobool22.not, label %if.then23, label %if.end24, !dbg !430

if.then23:                                        ; preds = %if.end17
  tail call void @exit(i32 noundef 1) #13, !dbg !431
  unreachable, !dbg !431

if.end24:                                         ; preds = %if.end17
  %obuf25 = getelementptr inbounds %struct._client, %struct._client* %call21, i64 0, i32 2, !dbg !432
  %6 = load i8*, i8** %obuf25, align 8, !dbg !432, !tbaa !404
  %call26 = tail call i8* @sdscat(i8* noundef %6, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0)) #12, !dbg !433
  store i8* %call26, i8** %obuf25, align 8, !dbg !434, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call21, i32 noundef 1) #14, !dbg !435
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call21) #14, !dbg !436
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !437, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %7) #12, !dbg !438
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0)) #14, !dbg !439
  tail call fastcc void @prepareForBenchmark() #14, !dbg !440
  %call28 = tail call fastcc %struct._client* @createClient() #14, !dbg !441
  call void @llvm.dbg.value(metadata %struct._client* %call28, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool29.not = icmp eq %struct._client* %call28, null, !dbg !442
  br i1 %tobool29.not, label %if.then30, label %if.end31, !dbg !444

if.then30:                                        ; preds = %if.end24
  tail call void @exit(i32 noundef 1) #13, !dbg !445
  unreachable, !dbg !445

if.end31:                                         ; preds = %if.end24
  %obuf32 = getelementptr inbounds %struct._client, %struct._client* %call28, i64 0, i32 2, !dbg !446
  %8 = load i8*, i8** %obuf32, align 8, !dbg !446, !tbaa !404
  %9 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !447, !tbaa !364
  %call33 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* noundef %8, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0), i32 noundef %9) #12, !dbg !448
  store i8* %call33, i8** %obuf32, align 8, !dbg !449, !tbaa !404
  %10 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !450, !tbaa !364
  %add = add nsw i32 %10, 2, !dbg !451
  %conv = sext i32 %add to i64, !dbg !452
  %call35 = tail call i8* @zmalloc(i64 noundef %conv) #12, !dbg !453
  call void @llvm.dbg.value(metadata i8* %call35, metadata !349, metadata !DIExpression()), !dbg !454
  %11 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !455, !tbaa !364
  %conv36 = sext i32 %11 to i64, !dbg !456
  %call37 = tail call i8* @memset(i8* noundef %call35, i32 noundef 120, i64 noundef %conv36) #12, !dbg !457
  %12 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !458, !tbaa !364
  %idxprom = sext i32 %12 to i64, !dbg !459
  %arrayidx = getelementptr inbounds i8, i8* %call35, i64 %idxprom, !dbg !459
  store i8 13, i8* %arrayidx, align 1, !dbg !460, !tbaa !461
  %add38 = add nsw i32 %12, 1, !dbg !462
  %idxprom39 = sext i32 %add38 to i64, !dbg !463
  %arrayidx40 = getelementptr inbounds i8, i8* %call35, i64 %idxprom39, !dbg !463
  store i8 10, i8* %arrayidx40, align 1, !dbg !464, !tbaa !461
  %13 = load i8*, i8** %obuf32, align 8, !dbg !465, !tbaa !404
  %add42 = add nsw i32 %12, 2, !dbg !466
  %conv43 = sext i32 %add42 to i64, !dbg !467
  %call44 = tail call i8* @sdscatlen(i8* noundef %13, i8* noundef %call35, i64 noundef %conv43) #12, !dbg !468
  store i8* %call44, i8** %obuf32, align 8, !dbg !469, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call28, i32 noundef 1) #14, !dbg !470
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call28) #14, !dbg !471
  %14 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !472, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %14) #12, !dbg !473
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #14, !dbg !474
  tail call fastcc void @prepareForBenchmark() #14, !dbg !475
  %call46 = tail call fastcc %struct._client* @createClient() #14, !dbg !476
  call void @llvm.dbg.value(metadata %struct._client* %call46, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool47.not = icmp eq %struct._client* %call46, null, !dbg !477
  br i1 %tobool47.not, label %if.then48, label %if.end49, !dbg !479

if.then48:                                        ; preds = %if.end31
  tail call void @exit(i32 noundef 1) #13, !dbg !480
  unreachable, !dbg !480

if.end49:                                         ; preds = %if.end31
  %obuf50 = getelementptr inbounds %struct._client, %struct._client* %call46, i64 0, i32 2, !dbg !481
  %15 = load i8*, i8** %obuf50, align 8, !dbg !481, !tbaa !404
  %call51 = tail call i8* @sdscat(i8* noundef %15, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !482
  store i8* %call51, i8** %obuf50, align 8, !dbg !483, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call46, i32 noundef 2) #14, !dbg !484
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call46) #14, !dbg !485
  %16 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !486, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %16) #12, !dbg !487
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)) #14, !dbg !488
  tail call fastcc void @prepareForBenchmark() #14, !dbg !489
  %call53 = tail call fastcc %struct._client* @createClient() #14, !dbg !490
  call void @llvm.dbg.value(metadata %struct._client* %call53, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool54.not = icmp eq %struct._client* %call53, null, !dbg !491
  br i1 %tobool54.not, label %if.then55, label %if.end56, !dbg !493

if.then55:                                        ; preds = %if.end49
  tail call void @exit(i32 noundef 1) #13, !dbg !494
  unreachable, !dbg !494

if.end56:                                         ; preds = %if.end49
  %obuf57 = getelementptr inbounds %struct._client, %struct._client* %call53, i64 0, i32 2, !dbg !495
  %17 = load i8*, i8** %obuf57, align 8, !dbg !495, !tbaa !404
  %call58 = tail call i8* @sdscat(i8* noundef %17, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0)) #12, !dbg !496
  store i8* %call58, i8** %obuf57, align 8, !dbg !497, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call53, i32 noundef 0) #14, !dbg !498
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call53) #14, !dbg !499
  %18 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !500, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %18) #12, !dbg !501
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #14, !dbg !502
  tail call fastcc void @prepareForBenchmark() #14, !dbg !503
  %call60 = tail call fastcc %struct._client* @createClient() #14, !dbg !504
  call void @llvm.dbg.value(metadata %struct._client* %call60, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool61.not = icmp eq %struct._client* %call60, null, !dbg !505
  br i1 %tobool61.not, label %if.then62, label %if.end63, !dbg !507

if.then62:                                        ; preds = %if.end56
  tail call void @exit(i32 noundef 1) #13, !dbg !508
  unreachable, !dbg !508

if.end63:                                         ; preds = %if.end56
  %obuf64 = getelementptr inbounds %struct._client, %struct._client* %call60, i64 0, i32 2, !dbg !509
  %19 = load i8*, i8** %obuf64, align 8, !dbg !509, !tbaa !404
  %call65 = tail call i8* @sdscat(i8* noundef %19, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !510
  store i8* %call65, i8** %obuf64, align 8, !dbg !511, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call60, i32 noundef 0) #14, !dbg !512
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call60) #14, !dbg !513
  %20 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !514, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %20) #12, !dbg !515
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)) #14, !dbg !516
  tail call fastcc void @prepareForBenchmark() #14, !dbg !517
  %call67 = tail call fastcc %struct._client* @createClient() #14, !dbg !518
  call void @llvm.dbg.value(metadata %struct._client* %call67, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool68.not = icmp eq %struct._client* %call67, null, !dbg !519
  br i1 %tobool68.not, label %if.then69, label %if.end70, !dbg !521

if.then69:                                        ; preds = %if.end63
  tail call void @exit(i32 noundef 1) #13, !dbg !522
  unreachable, !dbg !522

if.end70:                                         ; preds = %if.end63
  %obuf71 = getelementptr inbounds %struct._client, %struct._client* %call67, i64 0, i32 2, !dbg !523
  %21 = load i8*, i8** %obuf71, align 8, !dbg !523, !tbaa !404
  %call72 = tail call i8* @sdscat(i8* noundef %21, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0)) #12, !dbg !524
  store i8* %call72, i8** %obuf71, align 8, !dbg !525, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call67, i32 noundef 2) #14, !dbg !526
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call67) #14, !dbg !527
  %22 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !528, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %22) #12, !dbg !529
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0)) #14, !dbg !530
  tail call fastcc void @prepareForBenchmark() #14, !dbg !531
  %call74 = tail call fastcc %struct._client* @createClient() #14, !dbg !532
  call void @llvm.dbg.value(metadata %struct._client* %call74, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool75.not = icmp eq %struct._client* %call74, null, !dbg !533
  br i1 %tobool75.not, label %if.then76, label %if.end77, !dbg !535

if.then76:                                        ; preds = %if.end70
  tail call void @exit(i32 noundef 1) #13, !dbg !536
  unreachable, !dbg !536

if.end77:                                         ; preds = %if.end70
  %obuf78 = getelementptr inbounds %struct._client, %struct._client* %call74, i64 0, i32 2, !dbg !537
  %23 = load i8*, i8** %obuf78, align 8, !dbg !537, !tbaa !404
  %call79 = tail call i8* @sdscat(i8* noundef %23, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i64 0, i64 0)) #12, !dbg !538
  store i8* %call79, i8** %obuf78, align 8, !dbg !539, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call74, i32 noundef 1) #14, !dbg !540
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call74) #14, !dbg !541
  %24 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !542, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %24) #12, !dbg !543
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0)) #14, !dbg !544
  tail call fastcc void @prepareForBenchmark() #14, !dbg !545
  %call81 = tail call fastcc %struct._client* @createClient() #14, !dbg !546
  call void @llvm.dbg.value(metadata %struct._client* %call81, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool82.not = icmp eq %struct._client* %call81, null, !dbg !547
  br i1 %tobool82.not, label %if.then83, label %if.end84, !dbg !549

if.then83:                                        ; preds = %if.end77
  tail call void @exit(i32 noundef 1) #13, !dbg !550
  unreachable, !dbg !550

if.end84:                                         ; preds = %if.end77
  %obuf85 = getelementptr inbounds %struct._client, %struct._client* %call81, i64 0, i32 2, !dbg !551
  %25 = load i8*, i8** %obuf85, align 8, !dbg !551, !tbaa !404
  %call86 = tail call i8* @sdscat(i8* noundef %25, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0)) #12, !dbg !552
  store i8* %call86, i8** %obuf85, align 8, !dbg !553, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call81, i32 noundef 2) #14, !dbg !554
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call81) #14, !dbg !555
  %26 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !556, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %26) #12, !dbg !557
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0)) #14, !dbg !558
  tail call fastcc void @prepareForBenchmark() #14, !dbg !559
  %call88 = tail call fastcc %struct._client* @createClient() #14, !dbg !560
  call void @llvm.dbg.value(metadata %struct._client* %call88, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool89.not = icmp eq %struct._client* %call88, null, !dbg !561
  br i1 %tobool89.not, label %if.then90, label %if.end91, !dbg !563

if.then90:                                        ; preds = %if.end84
  tail call void @exit(i32 noundef 1) #13, !dbg !564
  unreachable, !dbg !564

if.end91:                                         ; preds = %if.end84
  %obuf92 = getelementptr inbounds %struct._client, %struct._client* %call88, i64 0, i32 2, !dbg !565
  %27 = load i8*, i8** %obuf92, align 8, !dbg !565, !tbaa !404
  %call93 = tail call i8* @sdscat(i8* noundef %27, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0)) #12, !dbg !566
  store i8* %call93, i8** %obuf92, align 8, !dbg !567, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call88, i32 noundef 1) #14, !dbg !568
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call88) #14, !dbg !569
  %28 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !570, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %28) #12, !dbg !571
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0)) #14, !dbg !572
  tail call fastcc void @prepareForBenchmark() #14, !dbg !573
  %call95 = tail call fastcc %struct._client* @createClient() #14, !dbg !574
  call void @llvm.dbg.value(metadata %struct._client* %call95, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool96.not = icmp eq %struct._client* %call95, null, !dbg !575
  br i1 %tobool96.not, label %if.then97, label %if.end98, !dbg !577

if.then97:                                        ; preds = %if.end91
  tail call void @exit(i32 noundef 1) #13, !dbg !578
  unreachable, !dbg !578

if.end98:                                         ; preds = %if.end91
  %obuf99 = getelementptr inbounds %struct._client, %struct._client* %call95, i64 0, i32 2, !dbg !579
  %29 = load i8*, i8** %obuf99, align 8, !dbg !579, !tbaa !404
  %call100 = tail call i8* @sdscat(i8* noundef %29, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0)) #12, !dbg !580
  store i8* %call100, i8** %obuf99, align 8, !dbg !581, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call95, i32 noundef 3) #14, !dbg !582
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call95) #14, !dbg !583
  %30 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !584, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %30) #12, !dbg !585
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0)) #14, !dbg !586
  tail call fastcc void @prepareForBenchmark() #14, !dbg !587
  %call102 = tail call fastcc %struct._client* @createClient() #14, !dbg !588
  call void @llvm.dbg.value(metadata %struct._client* %call102, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool103.not = icmp eq %struct._client* %call102, null, !dbg !589
  br i1 %tobool103.not, label %if.then104, label %if.end105, !dbg !591

if.then104:                                       ; preds = %if.end98
  tail call void @exit(i32 noundef 1) #13, !dbg !592
  unreachable, !dbg !592

if.end105:                                        ; preds = %if.end98
  %obuf106 = getelementptr inbounds %struct._client, %struct._client* %call102, i64 0, i32 2, !dbg !593
  %31 = load i8*, i8** %obuf106, align 8, !dbg !593, !tbaa !404
  %call107 = tail call i8* @sdscat(i8* noundef %31, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #12, !dbg !594
  store i8* %call107, i8** %obuf106, align 8, !dbg !595, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call102, i32 noundef 3) #14, !dbg !596
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call102) #14, !dbg !597
  %32 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !598, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %32) #12, !dbg !599
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.56, i64 0, i64 0)) #14, !dbg !600
  tail call fastcc void @prepareForBenchmark() #14, !dbg !601
  %call109 = tail call fastcc %struct._client* @createClient() #14, !dbg !602
  call void @llvm.dbg.value(metadata %struct._client* %call109, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool110.not = icmp eq %struct._client* %call109, null, !dbg !603
  br i1 %tobool110.not, label %if.then111, label %if.end112, !dbg !605

if.then111:                                       ; preds = %if.end105
  tail call void @exit(i32 noundef 1) #13, !dbg !606
  unreachable, !dbg !606

if.end112:                                        ; preds = %if.end105
  %obuf113 = getelementptr inbounds %struct._client, %struct._client* %call109, i64 0, i32 2, !dbg !607
  %33 = load i8*, i8** %obuf113, align 8, !dbg !607, !tbaa !404
  %call114 = tail call i8* @sdscat(i8* noundef %33, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0)) #12, !dbg !608
  store i8* %call114, i8** %obuf113, align 8, !dbg !609, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call109, i32 noundef 3) #14, !dbg !610
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call109) #14, !dbg !611
  %34 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !612, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %34) #12, !dbg !613
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !614
  tail call fastcc void @prepareForBenchmark() #14, !dbg !615
  %call116 = tail call fastcc %struct._client* @createClient() #14, !dbg !616
  call void @llvm.dbg.value(metadata %struct._client* %call116, metadata !348, metadata !DIExpression()), !dbg !352
  %tobool117.not = icmp eq %struct._client* %call116, null, !dbg !617
  br i1 %tobool117.not, label %if.then118, label %if.end119, !dbg !619

if.then118:                                       ; preds = %if.end112
  tail call void @exit(i32 noundef 1) #13, !dbg !620
  unreachable, !dbg !620

if.end119:                                        ; preds = %if.end112
  %obuf120 = getelementptr inbounds %struct._client, %struct._client* %call116, i64 0, i32 2, !dbg !621
  %35 = load i8*, i8** %obuf120, align 8, !dbg !621, !tbaa !404
  %call121 = tail call i8* @sdscat(i8* noundef %35, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0)) #12, !dbg !622
  store i8* %call121, i8** %obuf120, align 8, !dbg !623, !tbaa !404
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call116, i32 noundef 3) #14, !dbg !624
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %call116) #14, !dbg !625
  %36 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !626, !tbaa !359
  tail call void @aeMain(%struct.aeEventLoop* noundef %36) #12, !dbg !627
  tail call fastcc void @endBenchmark(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !628
  %call123 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #12, !dbg !629
  %37 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 18), align 4, !dbg !630, !tbaa !276
  %tobool124.not = icmp eq i32 %37, 0, !dbg !631
  br i1 %tobool124.not, label %do.end, label %do.body, !dbg !631, !llvm.loop !632

do.end:                                           ; preds = %if.end119
  ret i32 0, !dbg !634
}

; Function Attrs: nounwind
declare !dbg !635 dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #7

declare !dbg !638 dso_local %struct.aeEventLoop* @aeCreateEventLoop() local_unnamed_addr #5

declare !dbg !641 dso_local %struct.list* @listCreate() local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @prepareForBenchmark() unnamed_addr #0 !dbg !644 {
entry:
  %0 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15) to i8**), align 16, !dbg !647, !tbaa !372
  %call = tail call i8* @memset(i8* noundef %0, i32 noundef 0, i64 noundef 20004) #12, !dbg !648
  %call1 = tail call fastcc i64 @mstime() #14, !dbg !649
  store i64 %call1, i64* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 13), align 16, !dbg !650, !tbaa !651
  store i32 0, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !652, !tbaa !362
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct._client* @createClient() unnamed_addr #0 !dbg !654 {
entry:
  %err = alloca [256 x i8], align 16
  %call = tail call i8* @zmalloc(i64 noundef 56) #12, !dbg !663
  call void @llvm.dbg.value(metadata i8* %call, metadata !658, metadata !DIExpression()), !dbg !664
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %err, i64 0, i64 0, !dbg !665
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #15, !dbg !665
  call void @llvm.dbg.declare(metadata [256 x i8]* %err, metadata !659, metadata !DIExpression()), !dbg !666
  %1 = load i8*, i8** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 10), align 16, !dbg !667, !tbaa !230
  %2 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 11), align 8, !dbg !668, !tbaa !240
  %call1 = call i32 @anetTcpNonBlockConnect(i8* noundef nonnull %0, i8* noundef %1, i32 noundef %2) #12, !dbg !669
  %fd = getelementptr inbounds i8, i8* %call, i64 4, !dbg !670
  %3 = bitcast i8* %fd to i32*, !dbg !670
  store i32 %call1, i32* %3, align 4, !dbg !671, !tbaa !672
  %cmp = icmp eq i32 %call1, -1, !dbg !673
  br i1 %cmp, label %if.then, label %if.end, !dbg !675

if.then:                                          ; preds = %entry
  call void @zfree(i8* noundef nonnull %call) #12, !dbg !676
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !678, !tbaa !181
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i64 0, i64 0), i8* noundef nonnull %0) #12, !dbg !679
  br label %cleanup, !dbg !680

if.end:                                           ; preds = %entry
  %5 = bitcast i8* %call to %struct._client*, !dbg !663
  call void @llvm.dbg.value(metadata %struct._client* %5, metadata !658, metadata !DIExpression()), !dbg !664
  %call6 = call i32 @anetTcpNoDelay(i8* noundef null, i32 noundef %call1) #12, !dbg !681
  %call7 = call i8* (...) @sdsempty() #12, !dbg !682
  %obuf = getelementptr inbounds i8, i8* %call, i64 8, !dbg !683
  %6 = bitcast i8* %obuf to i8**, !dbg !683
  store i8* %call7, i8** %6, align 8, !dbg !684, !tbaa !404
  %call8 = call i8* (...) @sdsempty() #12, !dbg !685
  %ibuf = getelementptr inbounds i8, i8* %call, i64 16, !dbg !686
  %7 = bitcast i8* %ibuf to i8**, !dbg !686
  store i8* %call8, i8** %7, align 8, !dbg !687, !tbaa !688
  %mbulk = getelementptr inbounds i8, i8* %call, i64 24, !dbg !689
  %8 = bitcast i8* %mbulk to <4 x i32>*, !dbg !690
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, <4 x i32>* %8, align 8, !dbg !690, !tbaa !356
  %state = bitcast i8* %call to i32*, !dbg !691
  store i32 0, i32* %state, align 8, !dbg !692, !tbaa !693
  %9 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !694, !tbaa !359
  %10 = load i32, i32* %3, align 4, !dbg !695, !tbaa !672
  %call10 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* noundef %9, i32 noundef %10, i32 noundef 2, void (%struct.aeEventLoop*, i32, i8*, i32)* noundef nonnull @writeHandler, i8* noundef nonnull %call) #12, !dbg !696
  %11 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !697, !tbaa !698
  %inc = add nsw i32 %11, 1, !dbg !697
  store i32 %inc, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !697, !tbaa !698
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 16), align 8, !dbg !699, !tbaa !375
  %call11 = call %struct.list* @listAddNodeTail(%struct.list* noundef %12, i8* noundef nonnull %call) #12, !dbg !700
  br label %cleanup, !dbg !701

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._client* [ null, %if.then ], [ %5, %if.end ], !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #15, !dbg !702
  ret %struct._client* %retval.0, !dbg !702
}

declare !dbg !703 dso_local i8* @sdsempty(...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @prepareClientForReply(%struct._client* nocapture noundef writeonly %c, i32 noundef %type) unnamed_addr #8 !dbg !706 {
entry:
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %type, metadata !711, metadata !DIExpression()), !dbg !712
  switch i32 %type, label %if.else5 [
    i32 2, label %if.then
    i32 3, label %if.then2
  ], !dbg !713

if.then:                                          ; preds = %entry
  %replytype = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 8, !dbg !714
  store i32 2, i32* %replytype, align 8, !dbg !717, !tbaa !718
  %readlen = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 5, !dbg !719
  store i32 -1, i32* %readlen, align 4, !dbg !720, !tbaa !721
  br label %if.end8, !dbg !722

if.then2:                                         ; preds = %entry
  %replytype3 = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 8, !dbg !723
  store i32 3, i32* %replytype3, align 8, !dbg !726, !tbaa !718
  %readlen4 = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 5, !dbg !727
  store i32 -1, i32* %readlen4, align 4, !dbg !728, !tbaa !721
  %mbulk = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 4, !dbg !729
  store i32 -1, i32* %mbulk, align 8, !dbg !730, !tbaa !731
  br label %if.end8, !dbg !732

if.else5:                                         ; preds = %entry
  %replytype6 = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 8, !dbg !733
  store i32 %type, i32* %replytype6, align 8, !dbg !735, !tbaa !718
  %readlen7 = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 5, !dbg !736
  store i32 0, i32* %readlen7, align 4, !dbg !737, !tbaa !721
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.else5, %if.then
  ret void, !dbg !738
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @createMissingClients(%struct._client* nocapture noundef readonly %c) unnamed_addr #0 !dbg !739 {
entry:
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !741, metadata !DIExpression()), !dbg !744
  %0 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !745, !tbaa !698
  %1 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 1), align 4, !dbg !746, !tbaa !192
  %cmp13 = icmp slt i32 %0, %1, !dbg !747
  br i1 %cmp13, label %while.body.lr.ph, label %while.end, !dbg !748

while.body.lr.ph:                                 ; preds = %entry
  %obuf1 = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 2
  %replytype = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 8
  br label %while.body, !dbg !748

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %call = tail call fastcc %struct._client* @createClient() #14, !dbg !749
  call void @llvm.dbg.value(metadata %struct._client* %call, metadata !742, metadata !DIExpression()), !dbg !750
  %tobool.not = icmp eq %struct._client* %call, null, !dbg !751
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !753, !llvm.loop !754

if.end:                                           ; preds = %while.body
  %obuf = getelementptr inbounds %struct._client, %struct._client* %call, i64 0, i32 2, !dbg !756
  %2 = load i8*, i8** %obuf, align 8, !dbg !756, !tbaa !404
  tail call void @sdsfree(i8* noundef %2) #12, !dbg !757
  %3 = load i8*, i8** %obuf1, align 8, !dbg !758, !tbaa !404
  %call2 = tail call i8* @sdsdup(i8* noundef %3) #12, !dbg !759
  store i8* %call2, i8** %obuf, align 8, !dbg !760, !tbaa !404
  %4 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 7), align 4, !dbg !761, !tbaa !257
  %tobool4.not = icmp eq i32 %4, 0, !dbg !763
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !764

if.then5:                                         ; preds = %if.end
  tail call fastcc void @randomizeClientKey(%struct._client* noundef nonnull %c) #14, !dbg !765
  br label %if.end6, !dbg !765

if.end6:                                          ; preds = %if.then5, %if.end
  %5 = load i32, i32* %replytype, align 8, !dbg !766, !tbaa !718
  tail call fastcc void @prepareClientForReply(%struct._client* noundef nonnull %call, i32 noundef %5) #14, !dbg !767
  br label %cleanup, !dbg !755

cleanup:                                          ; preds = %while.body, %if.end6
  %6 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !745, !tbaa !698
  %7 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 1), align 4, !dbg !746, !tbaa !192
  %cmp = icmp slt i32 %6, %7, !dbg !747
  br i1 %cmp, label %while.body, label %while.end, !dbg !748

while.end:                                        ; preds = %cleanup, %entry
  ret void, !dbg !768
}

declare !dbg !769 dso_local void @aeMain(%struct.aeEventLoop* noundef) local_unnamed_addr #5

declare !dbg !772 dso_local i8* @sdscat(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @endBenchmark(i8* noundef %title) unnamed_addr #0 !dbg !775 {
entry:
  call void @llvm.dbg.value(metadata i8* %title, metadata !779, metadata !DIExpression()), !dbg !780
  %call = tail call fastcc i64 @mstime() #14, !dbg !781
  %0 = load i64, i64* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 13), align 16, !dbg !782, !tbaa !651
  %sub = sub nsw i64 %call, %0, !dbg !783
  store i64 %sub, i64* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 14), align 8, !dbg !784, !tbaa !785
  tail call fastcc void @showLatencyReport(i8* noundef %title) #14, !dbg !786
  tail call fastcc void @freeAllClients() #14, !dbg !787
  ret void, !dbg !788
}

declare !dbg !789 dso_local i8* @sdscatprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !792 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !795 dso_local i8* @sdscatlen(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @mstime() unnamed_addr #0 !dbg !798 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !812
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #15, !dbg !812
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !802, metadata !DIExpression()), !dbg !813
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #12, !dbg !814
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !815
  %1 = load i64, i64* %tv_sec, align 8, !dbg !815, !tbaa !816
  %mul = mul nsw i64 %1, 1000, !dbg !819
  call void @llvm.dbg.value(metadata i64 %mul, metadata !811, metadata !DIExpression()), !dbg !820
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !821
  %2 = load i64, i64* %tv_usec, align 8, !dbg !821, !tbaa !822
  %div = sdiv i64 %2, 1000, !dbg !823
  %add = add nsw i64 %div, %mul, !dbg !824
  call void @llvm.dbg.value(metadata i64 %add, metadata !811, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #15, !dbg !825
  ret i64 %add, !dbg !826
}

; Function Attrs: nounwind
declare !dbg !827 dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #7

declare !dbg !834 dso_local i32 @anetTcpNonBlockConnect(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !837 dso_local void @zfree(i8* noundef) local_unnamed_addr #5

declare !dbg !838 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #5

declare !dbg !896 dso_local i32 @anetTcpNoDelay(i8* noundef, i32 noundef) local_unnamed_addr #5

declare !dbg !899 dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop* noundef, i32 noundef, i32 noundef, void (%struct.aeEventLoop*, i32, i8*, i32)* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal void @writeHandler(%struct.aeEventLoop* nocapture noundef readnone %el, i32 noundef %fd, i8* noundef %privdata, i32 noundef %mask) #0 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %el, metadata !906, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 %fd, metadata !907, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !908, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i32 %mask, metadata !909, metadata !DIExpression()), !dbg !916
  %0 = bitcast i8* %privdata to %struct._client*, !dbg !917
  call void @llvm.dbg.value(metadata %struct._client* %0, metadata !910, metadata !DIExpression()), !dbg !916
  %state = bitcast i8* %privdata to i32*, !dbg !918
  %1 = load i32, i32* %state, align 8, !dbg !918, !tbaa !693
  %cmp = icmp eq i32 %1, 0, !dbg !920
  br i1 %cmp, label %if.then, label %if.end, !dbg !921

if.then:                                          ; preds = %entry
  store i32 1, i32* %state, align 8, !dbg !922, !tbaa !693
  %call = tail call fastcc i64 @mstime() #14, !dbg !924
  %start = getelementptr inbounds i8, i8* %privdata, i64 48, !dbg !925
  %2 = bitcast i8* %start to i64*, !dbg !925
  store i64 %call, i64* %2, align 8, !dbg !926, !tbaa !927
  br label %if.end, !dbg !928

if.end:                                           ; preds = %if.then, %entry
  %obuf = getelementptr inbounds i8, i8* %privdata, i64 8, !dbg !929
  %3 = bitcast i8* %obuf to i8**, !dbg !929
  %4 = load i8*, i8** %3, align 8, !dbg !929, !tbaa !404
  %call2 = tail call i64 @sdslen(i8* noundef %4) #12, !dbg !930
  %written = getelementptr inbounds i8, i8* %privdata, i64 36, !dbg !931
  %5 = bitcast i8* %written to i32*, !dbg !931
  %6 = load i32, i32* %5, align 4, !dbg !931, !tbaa !932
  %conv = zext i32 %6 to i64, !dbg !933
  %cmp3 = icmp ugt i64 %call2, %conv, !dbg !934
  br i1 %cmp3, label %if.then5, label %cleanup45, !dbg !935

if.then5:                                         ; preds = %if.end
  %7 = load i8*, i8** %3, align 8, !dbg !936, !tbaa !404
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %conv, !dbg !937
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !911, metadata !DIExpression()), !dbg !938
  %call9 = tail call i64 @sdslen(i8* noundef %7) #12, !dbg !939
  %8 = load i32, i32* %5, align 4, !dbg !940, !tbaa !932
  %9 = trunc i64 %call9 to i32, !dbg !939
  %conv12 = sub i32 %9, %8, !dbg !939
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !914, metadata !DIExpression()), !dbg !938
  %fd13 = getelementptr inbounds i8, i8* %privdata, i64 4, !dbg !941
  %10 = bitcast i8* %fd13 to i32*, !dbg !941
  %11 = load i32, i32* %10, align 4, !dbg !941, !tbaa !672
  %conv14 = sext i32 %conv12 to i64, !dbg !942
  %call15 = tail call i64 @write(i32 noundef %11, i8* noundef %add.ptr, i64 noundef %conv14) #12, !dbg !943
  %conv16 = trunc i64 %call15 to i32, !dbg !943
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !915, metadata !DIExpression()), !dbg !938
  %cmp17 = icmp eq i32 %conv16, -1, !dbg !944
  br i1 %cmp17, label %if.then19, label %if.end28, !dbg !946

if.then19:                                        ; preds = %if.then5
  %call20 = tail call i32* @__errno_location() #16, !dbg !947
  %12 = load i32, i32* %call20, align 4, !dbg !947, !tbaa !356
  %cmp21.not = icmp eq i32 %12, 32, !dbg !950
  br i1 %cmp21.not, label %if.end27, label %if.then23, !dbg !951

if.then23:                                        ; preds = %if.then19
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !952, !tbaa !181
  %call25 = tail call i8* @strerror(i32 noundef %12) #12, !dbg !953
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), i8* noundef %call25) #12, !dbg !954
  br label %if.end27, !dbg !954

if.end27:                                         ; preds = %if.then23, %if.then19
  tail call fastcc void @freeClient(%struct._client* noundef nonnull %0) #14, !dbg !955
  br label %cleanup45, !dbg !956

if.end28:                                         ; preds = %if.then5
  %14 = load i32, i32* %5, align 4, !dbg !957, !tbaa !932
  %add = add i32 %14, %conv16, !dbg !957
  store i32 %add, i32* %5, align 4, !dbg !957, !tbaa !932
  %15 = load i8*, i8** %3, align 8, !dbg !958, !tbaa !404
  %call31 = tail call i64 @sdslen(i8* noundef %15) #12, !dbg !960
  %16 = load i32, i32* %5, align 4, !dbg !961, !tbaa !932
  %conv33 = zext i32 %16 to i64, !dbg !962
  %cmp34 = icmp eq i64 %call31, %conv33, !dbg !963
  br i1 %cmp34, label %if.then36, label %cleanup45, !dbg !964

if.then36:                                        ; preds = %if.end28
  %17 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !965, !tbaa !359
  %18 = load i32, i32* %10, align 4, !dbg !967, !tbaa !672
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* noundef %17, i32 noundef %18, i32 noundef 2) #12, !dbg !968
  %19 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !969, !tbaa !359
  %20 = load i32, i32* %10, align 4, !dbg !970, !tbaa !672
  %call39 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* noundef %19, i32 noundef %20, i32 noundef 1, void (%struct.aeEventLoop*, i32, i8*, i32)* noundef nonnull @readHandler, i8* noundef nonnull %privdata) #12, !dbg !971
  store i32 2, i32* %state, align 8, !dbg !972, !tbaa !693
  br label %cleanup45, !dbg !973

cleanup45:                                        ; preds = %if.end27, %if.then36, %if.end28, %if.end
  ret void, !dbg !974
}

declare !dbg !975 dso_local %struct.list* @listAddNodeTail(%struct.list* noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !978 dso_local i64 @sdslen(i8* noundef) local_unnamed_addr #5

declare !dbg !982 dso_local i64 @write(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !990 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @freeClient(%struct._client* noundef %c) unnamed_addr #0 !dbg !993 {
entry:
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !995, metadata !DIExpression()), !dbg !997
  %0 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !998, !tbaa !359
  %fd = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 1, !dbg !999
  %1 = load i32, i32* %fd, align 4, !dbg !999, !tbaa !672
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* noundef %0, i32 noundef %1, i32 noundef 2) #12, !dbg !1000
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !1001, !tbaa !359
  %3 = load i32, i32* %fd, align 4, !dbg !1002, !tbaa !672
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* noundef %2, i32 noundef %3, i32 noundef 1) #12, !dbg !1003
  %ibuf = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 3, !dbg !1004
  %4 = load i8*, i8** %ibuf, align 8, !dbg !1004, !tbaa !688
  tail call void @sdsfree(i8* noundef %4) #12, !dbg !1005
  %obuf = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 2, !dbg !1006
  %5 = load i8*, i8** %obuf, align 8, !dbg !1006, !tbaa !404
  tail call void @sdsfree(i8* noundef %5) #12, !dbg !1007
  %6 = load i32, i32* %fd, align 4, !dbg !1008, !tbaa !672
  %call = tail call i32 @close(i32 noundef %6) #12, !dbg !1009
  %7 = bitcast %struct._client* %c to i8*, !dbg !1010
  tail call void @zfree(i8* noundef %7) #12, !dbg !1011
  %8 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1012, !tbaa !698
  %dec = add nsw i32 %8, -1, !dbg !1012
  store i32 %dec, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1012, !tbaa !698
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 16), align 8, !dbg !1013, !tbaa !375
  %call3 = tail call %struct.listNode* @listSearchKey(%struct.list* noundef %9, i8* noundef %7) #12, !dbg !1014
  call void @llvm.dbg.value(metadata %struct.listNode* %call3, metadata !996, metadata !DIExpression()), !dbg !997
  %cmp.not = icmp eq %struct.listNode* %call3, null, !dbg !1015
  br i1 %cmp.not, label %cond.false, label %cond.end, !dbg !1015

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.65, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.freeClient, i64 0, i64 0)) #13, !dbg !1015
  unreachable, !dbg !1015

cond.end:                                         ; preds = %entry
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 16), align 8, !dbg !1016, !tbaa !375
  tail call void @listDelNode(%struct.list* noundef %10, %struct.listNode* noundef nonnull %call3) #12, !dbg !1017
  ret void, !dbg !1018
}

declare !dbg !1019 dso_local void @aeDeleteFileEvent(%struct.aeEventLoop* noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal void @readHandler(%struct.aeEventLoop* nocapture noundef readnone %el, i32 noundef %fd, i8* noundef %privdata, i32 noundef %mask) #0 !dbg !1022 {
entry:
  %buf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.aeEventLoop* %el, metadata !1024, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %fd, metadata !1025, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1026, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %mask, metadata !1027, metadata !DIExpression()), !dbg !1038
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #15, !dbg !1039
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !1028, metadata !DIExpression()), !dbg !1040
  %1 = bitcast i8* %privdata to %struct._client*, !dbg !1041
  call void @llvm.dbg.value(metadata %struct._client* %1, metadata !1033, metadata !DIExpression()), !dbg !1038
  %fd1 = getelementptr inbounds i8, i8* %privdata, i64 4, !dbg !1042
  %2 = bitcast i8* %fd1 to i32*, !dbg !1042
  %3 = load i32, i32* %2, align 4, !dbg !1042, !tbaa !672
  %call = call i64 @read(i32 noundef %3, i8* noundef nonnull %0, i64 noundef 1024) #12, !dbg !1043
  %conv = trunc i64 %call to i32, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1032, metadata !DIExpression()), !dbg !1038
  switch i32 %conv, label %if.end10 [
    i32 -1, label %if.then
    i32 0, label %if.then8
  ], !dbg !1044

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1045, !tbaa !181
  %call3 = tail call i32* @__errno_location() #16, !dbg !1048
  %5 = load i32, i32* %call3, align 4, !dbg !1048, !tbaa !356
  %call4 = call i8* @strerror(i32 noundef %5) #12, !dbg !1049
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i8* noundef %call4) #12, !dbg !1050
  call fastcc void @freeClient(%struct._client* noundef nonnull %1) #14, !dbg !1051
  br label %cleanup154, !dbg !1052

if.then8:                                         ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1053, !tbaa !181
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0)) #12, !dbg !1056
  call fastcc void @freeClient(%struct._client* noundef nonnull %1) #14, !dbg !1057
  br label %cleanup154, !dbg !1058

if.end10:                                         ; preds = %entry
  %totreceived = getelementptr inbounds i8, i8* %privdata, i64 32, !dbg !1059
  %7 = bitcast i8* %totreceived to i32*, !dbg !1059
  %8 = load i32, i32* %7, align 8, !dbg !1060, !tbaa !1061
  %add = add nsw i32 %8, %conv, !dbg !1060
  store i32 %add, i32* %7, align 8, !dbg !1060, !tbaa !1061
  %ibuf = getelementptr inbounds i8, i8* %privdata, i64 16, !dbg !1062
  %9 = bitcast i8* %ibuf to i8**, !dbg !1062
  %10 = load i8*, i8** %9, align 8, !dbg !1062, !tbaa !688
  %sext = shl i64 %call, 32, !dbg !1063
  %conv12 = ashr exact i64 %sext, 32, !dbg !1063
  %call13 = call i8* @sdscatlen(i8* noundef %10, i8* noundef nonnull %0, i64 noundef %conv12) #12, !dbg !1064
  store i8* %call13, i8** %9, align 8, !dbg !1065, !tbaa !688
  %replytype = getelementptr inbounds i8, i8* %privdata, i64 40
  %11 = bitcast i8* %replytype to i32*
  %readlen31 = getelementptr inbounds i8, i8* %privdata, i64 28
  %12 = bitcast i8* %readlen31 to i32*
  %mbulk = getelementptr inbounds i8, i8* %privdata, i64 24
  %13 = bitcast i8* %mbulk to i32*
  br label %processdata, !dbg !1066

processdata:                                      ; preds = %processdata.backedge, %if.end10
  %14 = phi i8* [ %call13, %if.end10 ], [ %.be, %processdata.backedge ]
  call void @llvm.dbg.label(metadata !1037), !dbg !1067
  %15 = load i32, i32* %11, align 8, !dbg !1068, !tbaa !718
  switch i32 %15, label %cleanup154 [
    i32 0, label %if.then41
    i32 1, label %if.then41
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true30
  ], !dbg !1069

land.lhs.true:                                    ; preds = %processdata
  %16 = load i32, i32* %12, align 4, !dbg !1070, !tbaa !721
  %cmp24 = icmp eq i32 %16, -1, !dbg !1071
  br i1 %cmp24, label %if.then41, label %land.lhs.true122, !dbg !1072

land.lhs.true30:                                  ; preds = %processdata
  %17 = load i32, i32* %12, align 4, !dbg !1073, !tbaa !721
  %cmp32 = icmp eq i32 %17, -1, !dbg !1074
  br i1 %cmp32, label %if.then41, label %land.lhs.true38, !dbg !1075

land.lhs.true38:                                  ; preds = %land.lhs.true30
  %18 = load i32, i32* %13, align 8, !dbg !1076, !tbaa !731
  %cmp39 = icmp eq i32 %18, -1, !dbg !1077
  br i1 %cmp39, label %if.then41, label %land.lhs.true122, !dbg !1078

if.then41:                                        ; preds = %processdata, %processdata, %land.lhs.true38, %land.lhs.true30, %land.lhs.true
  %call43 = call i8* @strchr(i8* noundef %14, i32 noundef 10) #11, !dbg !1079
  call void @llvm.dbg.value(metadata i8* %call43, metadata !1034, metadata !DIExpression()), !dbg !1081
  %cmp44.not = icmp eq i8* %call43, null, !dbg !1082
  br i1 %cmp44.not, label %if.end106, label %if.then46, !dbg !1083

if.then46:                                        ; preds = %if.then41
  switch i32 %15, label %if.else100 [
    i32 2, label %if.then58
    i32 3, label %land.lhs.true54
  ], !dbg !1084

land.lhs.true54:                                  ; preds = %if.then46
  %19 = load i32, i32* %13, align 8, !dbg !1087, !tbaa !731
  %cmp56.not = icmp eq i32 %19, -1, !dbg !1088
  br i1 %cmp56.not, label %if.then81, label %if.then58, !dbg !1089

if.then58:                                        ; preds = %if.then46, %land.lhs.true54
  store i8 0, i8* %call43, align 1, !dbg !1090, !tbaa !461
  %add.ptr = getelementptr inbounds i8, i8* %call43, i64 -1, !dbg !1092
  store i8 0, i8* %add.ptr, align 1, !dbg !1093, !tbaa !461
  %20 = load i8*, i8** %9, align 8, !dbg !1094, !tbaa !688
  %add.ptr60 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1095
  %call61 = call i32 @atoi(i8* noundef %add.ptr60) #11, !dbg !1096
  %add62 = add nsw i32 %call61, 2, !dbg !1097
  store i32 %add62, i32* %12, align 4, !dbg !1098, !tbaa !721
  %cmp65 = icmp eq i32 %call61, -1, !dbg !1099
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !1101

if.then67:                                        ; preds = %if.then58
  call fastcc void @clientDone(%struct._client* noundef nonnull %1) #14, !dbg !1102
  br label %cleanup154, !dbg !1104

if.end68:                                         ; preds = %if.then58
  %sub.ptr.lhs.cast = ptrtoint i8* %call43 to i64, !dbg !1105
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64, !dbg !1105
  %sub.ptr.sub = add i64 %sub.ptr.lhs.cast, 1, !dbg !1105
  %add71 = sub i64 %sub.ptr.sub, %sub.ptr.rhs.cast, !dbg !1106
  %call72 = call i8* @sdsrange(i8* noundef %20, i64 noundef %add71, i64 noundef -1) #12, !dbg !1107
  store i8* %call72, i8** %9, align 8, !dbg !1108, !tbaa !688
  %.pr.pre = load i32, i32* %11, align 8, !dbg !1109, !tbaa !718
  br label %if.end106, !dbg !1111

if.then81:                                        ; preds = %land.lhs.true54
  store i8 0, i8* %call43, align 1, !dbg !1112, !tbaa !461
  %add.ptr82 = getelementptr inbounds i8, i8* %call43, i64 -1, !dbg !1115
  store i8 0, i8* %add.ptr82, align 1, !dbg !1116, !tbaa !461
  %21 = load i8*, i8** %9, align 8, !dbg !1117, !tbaa !688
  %add.ptr84 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1118
  %call85 = call i32 @atoi(i8* noundef %add.ptr84) #11, !dbg !1119
  store i32 %call85, i32* %13, align 8, !dbg !1120, !tbaa !731
  %cmp88 = icmp eq i32 %call85, -1, !dbg !1121
  br i1 %cmp88, label %if.then90, label %cleanup, !dbg !1123

if.then90:                                        ; preds = %if.then81
  call fastcc void @clientDone(%struct._client* noundef nonnull %1) #14, !dbg !1124
  br label %cleanup154, !dbg !1126

if.else100:                                       ; preds = %if.then46
  %call102 = call i8* @sdstrim(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0)) #12, !dbg !1127
  store i8* %call102, i8** %9, align 8, !dbg !1129, !tbaa !688
  call fastcc void @clientDone(%struct._client* noundef nonnull %1) #14, !dbg !1130
  br label %cleanup154, !dbg !1131

cleanup:                                          ; preds = %if.then81
  %sub.ptr.lhs.cast94 = ptrtoint i8* %call43 to i64, !dbg !1132
  %sub.ptr.rhs.cast95 = ptrtoint i8* %21 to i64, !dbg !1132
  %sub.ptr.sub96 = add i64 %sub.ptr.lhs.cast94, 1, !dbg !1132
  %add97 = sub i64 %sub.ptr.sub96, %sub.ptr.rhs.cast95, !dbg !1133
  %call98 = call i8* @sdsrange(i8* noundef %21, i64 noundef %add97, i64 noundef -1) #12, !dbg !1134
  store i8* %call98, i8** %9, align 8, !dbg !1135, !tbaa !688
  br label %processdata.backedge

if.end106:                                        ; preds = %if.then41, %if.end68
  %22 = phi i8* [ %14, %if.then41 ], [ %call72, %if.end68 ]
  %.pr = phi i32 [ %15, %if.then41 ], [ %.pr.pre, %if.end68 ], !dbg !1109
  switch i32 %.pr, label %cleanup154 [
    i32 3, label %land.lhs.true110
    i32 2, label %land.lhs.true118
  ], !dbg !1136

land.lhs.true110:                                 ; preds = %if.end106
  %.pr244 = load i32, i32* %13, align 8, !dbg !1137, !tbaa !731
  %cmp112.not = icmp eq i32 %.pr244, -1, !dbg !1138
  br i1 %cmp112.not, label %cleanup154, label %land.lhs.true118, !dbg !1139

land.lhs.true118:                                 ; preds = %if.end106, %land.lhs.true110
  %.pr246.pr = load i32, i32* %12, align 4, !dbg !1140, !tbaa !721
  %cmp120.not = icmp eq i32 %.pr246.pr, -1, !dbg !1141
  br i1 %cmp120.not, label %cleanup154, label %land.lhs.true122, !dbg !1142

land.lhs.true122:                                 ; preds = %land.lhs.true38, %land.lhs.true, %land.lhs.true118
  %23 = phi i8* [ %22, %land.lhs.true118 ], [ %14, %land.lhs.true ], [ %14, %land.lhs.true38 ]
  %24 = phi i32 [ %.pr246.pr, %land.lhs.true118 ], [ %16, %land.lhs.true ], [ %17, %land.lhs.true38 ]
  %conv124 = zext i32 %24 to i64, !dbg !1143
  %call126 = call i64 @sdslen(i8* noundef %23) #12, !dbg !1144
  %cmp127.not = icmp ult i64 %call126, %conv124, !dbg !1145
  br i1 %cmp127.not, label %cleanup154, label %if.then129, !dbg !1146

if.then129:                                       ; preds = %land.lhs.true122
  %25 = load i32, i32* %11, align 8, !dbg !1147, !tbaa !718
  switch i32 %25, label %cleanup154 [
    i32 2, label %if.then133
    i32 3, label %if.then138
  ], !dbg !1150

if.then133:                                       ; preds = %if.then129
  call fastcc void @clientDone(%struct._client* noundef nonnull %1) #14, !dbg !1151
  br label %cleanup154, !dbg !1153

if.then138:                                       ; preds = %if.then129
  %26 = load i32, i32* %13, align 8, !dbg !1154, !tbaa !731
  %dec = add nsw i32 %26, -1, !dbg !1154
  store i32 %dec, i32* %13, align 8, !dbg !1154, !tbaa !731
  %cmp140 = icmp eq i32 %dec, 0, !dbg !1158
  br i1 %cmp140, label %if.then142, label %if.else143, !dbg !1159

if.then142:                                       ; preds = %if.then138
  call fastcc void @clientDone(%struct._client* noundef nonnull %1) #14, !dbg !1160
  br label %cleanup154, !dbg !1162

if.else143:                                       ; preds = %if.then138
  %27 = load i8*, i8** %9, align 8, !dbg !1163, !tbaa !688
  %28 = load i32, i32* %12, align 4, !dbg !1165, !tbaa !721
  %conv146 = sext i32 %28 to i64, !dbg !1166
  %call147 = call i8* @sdsrange(i8* noundef %27, i64 noundef %conv146, i64 noundef -1) #12, !dbg !1167
  store i8* %call147, i8** %9, align 8, !dbg !1168, !tbaa !688
  store i32 -1, i32* %12, align 4, !dbg !1169, !tbaa !721
  br label %processdata.backedge, !dbg !1170

processdata.backedge:                             ; preds = %if.else143, %cleanup
  %.be = phi i8* [ %call147, %if.else143 ], [ %call98, %cleanup ]
  br label %processdata, !dbg !1067

cleanup154:                                       ; preds = %if.end106, %processdata, %land.lhs.true110, %land.lhs.true118, %land.lhs.true122, %if.then129, %if.else100, %if.then90, %if.then67, %if.then142, %if.then133, %if.then8, %if.then
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #15, !dbg !1171
  ret void, !dbg !1171
}

declare !dbg !1172 dso_local void @sdsfree(i8* noundef) local_unnamed_addr #5

declare !dbg !1175 dso_local i32 @close(i32 noundef) local_unnamed_addr #5

declare !dbg !1178 dso_local %struct.listNode* @listSearchKey(%struct.list* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #6

declare !dbg !1181 dso_local void @listDelNode(%struct.list* noundef, %struct.listNode* noundef) local_unnamed_addr #5

declare !dbg !1184 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1187 dso_local i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @clientDone(%struct._client* noundef %c) unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !42, metadata !DIExpression()), !dbg !1190
  %0 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1191, !tbaa !362
  %inc = add nsw i32 %0, 1, !dbg !1191
  store i32 %inc, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1191, !tbaa !362
  %call = tail call fastcc i64 @mstime() #14, !dbg !1192
  %start = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 9, !dbg !1193
  %1 = load i64, i64* %start, align 8, !dbg !1193, !tbaa !927
  %sub = sub nsw i64 %call, %1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %sub, metadata !43, metadata !DIExpression()), !dbg !1190
  %2 = icmp slt i64 %sub, 5000, !dbg !1195
  %spec.store.select = select i1 %2, i64 %sub, i64 5000, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !43, metadata !DIExpression()), !dbg !1190
  %3 = load i32*, i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15), align 16, !dbg !1196, !tbaa !372
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %spec.store.select, !dbg !1197
  %4 = load i32, i32* %arrayidx, align 4, !dbg !1198, !tbaa !356
  %inc1 = add nsw i32 %4, 1, !dbg !1198
  store i32 %inc1, i32* %arrayidx, align 4, !dbg !1198, !tbaa !356
  %5 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 0), align 16, !dbg !1199, !tbaa !283
  %tobool.not = icmp eq i32 %5, 0, !dbg !1201
  br i1 %tobool.not, label %if.end7, label %land.lhs.true, !dbg !1202

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* @clientDone.last_tot_received, align 4, !dbg !1203, !tbaa !356
  %totreceived = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 6, !dbg !1204
  %7 = load i32, i32* %totreceived, align 8, !dbg !1204, !tbaa !1061
  %cmp2.not = icmp eq i32 %6, %7, !dbg !1205
  br i1 %cmp2.not, label %if.end7, label %if.then3, !dbg !1206

if.then3:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.69, i64 0, i64 0), i32 noundef %7) #12, !dbg !1207
  %8 = load i32, i32* %totreceived, align 8, !dbg !1209, !tbaa !1061
  store i32 %8, i32* @clientDone.last_tot_received, align 4, !dbg !1210, !tbaa !356
  br label %if.end7, !dbg !1211

if.end7:                                          ; preds = %if.then3, %land.lhs.true, %entry
  %9 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1212, !tbaa !362
  %10 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 2), align 8, !dbg !1214, !tbaa !204
  %cmp8 = icmp eq i32 %9, %10, !dbg !1215
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1216

if.then9:                                         ; preds = %if.end7
  tail call fastcc void @freeClient(%struct._client* noundef nonnull %c) #14, !dbg !1217
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !1219, !tbaa !359
  tail call void @aeStop(%struct.aeEventLoop* noundef %11) #12, !dbg !1220
  br label %cleanup, !dbg !1221

if.end10:                                         ; preds = %if.end7
  %12 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 12), align 4, !dbg !1222, !tbaa !213
  %tobool11.not = icmp eq i32 %12, 0, !dbg !1224
  br i1 %tobool11.not, label %if.else, label %if.then12, !dbg !1225

if.then12:                                        ; preds = %if.end10
  tail call fastcc void @resetClient(%struct._client* noundef nonnull %c) #14, !dbg !1226
  %13 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 7), align 4, !dbg !1228, !tbaa !257
  %tobool13.not = icmp eq i32 %13, 0, !dbg !1230
  br i1 %tobool13.not, label %cleanup, label %if.then14, !dbg !1231

if.then14:                                        ; preds = %if.then12
  tail call fastcc void @randomizeClientKey(%struct._client* noundef nonnull %c) #14, !dbg !1232
  br label %cleanup, !dbg !1232

if.else:                                          ; preds = %if.end10
  %14 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1233, !tbaa !698
  %dec = add nsw i32 %14, -1, !dbg !1233
  store i32 %dec, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1233, !tbaa !698
  tail call fastcc void @createMissingClients(%struct._client* noundef nonnull %c) #14, !dbg !1235
  %15 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1236, !tbaa !698
  %inc16 = add nsw i32 %15, 1, !dbg !1236
  store i32 %inc16, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 3), align 4, !dbg !1236, !tbaa !698
  tail call fastcc void @freeClient(%struct._client* noundef nonnull %c) #14, !dbg !1237
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.then12, %if.then9
  ret void, !dbg !1238
}

declare !dbg !1239 dso_local i8* @sdsrange(i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1242 dso_local i8* @sdstrim(i8* noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !1245 dso_local void @aeStop(%struct.aeEventLoop* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @resetClient(%struct._client* noundef %c) unnamed_addr #0 !dbg !1246 {
entry:
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !1248, metadata !DIExpression()), !dbg !1249
  %0 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !1250, !tbaa !359
  %fd = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 1, !dbg !1251
  %1 = load i32, i32* %fd, align 4, !dbg !1251, !tbaa !672
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* noundef %0, i32 noundef %1, i32 noundef 2) #12, !dbg !1252
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !1253, !tbaa !359
  %3 = load i32, i32* %fd, align 4, !dbg !1254, !tbaa !672
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* noundef %2, i32 noundef %3, i32 noundef 1) #12, !dbg !1255
  %4 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 9), align 8, !dbg !1256, !tbaa !359
  %5 = load i32, i32* %fd, align 4, !dbg !1257, !tbaa !672
  %6 = bitcast %struct._client* %c to i8*, !dbg !1258
  %call = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* noundef %4, i32 noundef %5, i32 noundef 2, void (%struct.aeEventLoop*, i32, i8*, i32)* noundef nonnull @writeHandler, i8* noundef %6) #12, !dbg !1259
  %ibuf = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 3, !dbg !1260
  %7 = load i8*, i8** %ibuf, align 8, !dbg !1260, !tbaa !688
  tail call void @sdsfree(i8* noundef %7) #12, !dbg !1261
  %call3 = tail call i8* (...) @sdsempty() #12, !dbg !1262
  store i8* %call3, i8** %ibuf, align 8, !dbg !1263, !tbaa !688
  %replytype = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 8, !dbg !1264
  %8 = load i32, i32* %replytype, align 8, !dbg !1264, !tbaa !718
  %9 = and i32 %8, -2, !dbg !1265
  %10 = icmp eq i32 %9, 2, !dbg !1265
  %11 = sext i1 %10 to i32, !dbg !1265
  %readlen = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 5, !dbg !1266
  store i32 %11, i32* %readlen, align 4, !dbg !1267, !tbaa !721
  %mbulk = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 4, !dbg !1268
  store i32 -1, i32* %mbulk, align 8, !dbg !1269, !tbaa !731
  %written = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 7, !dbg !1270
  store i32 0, i32* %written, align 4, !dbg !1271, !tbaa !932
  %totreceived = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 6, !dbg !1272
  store i32 0, i32* %totreceived, align 8, !dbg !1273, !tbaa !1061
  %state = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 0, !dbg !1274
  store i32 1, i32* %state, align 8, !dbg !1275, !tbaa !693
  %call7 = tail call fastcc i64 @mstime() #14, !dbg !1276
  %start = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 9, !dbg !1277
  store i64 %call7, i64* %start, align 8, !dbg !1278, !tbaa !927
  tail call fastcc void @createMissingClients(%struct._client* noundef %c) #14, !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @randomizeClientKey(%struct._client* nocapture noundef readonly %c) unnamed_addr #0 !dbg !1281 {
entry:
  %buf = alloca [32 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._client* %c, metadata !1283, metadata !DIExpression()), !dbg !1290
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1291
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #15, !dbg !1291
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !1285, metadata !DIExpression()), !dbg !1292
  %obuf = getelementptr inbounds %struct._client, %struct._client* %c, i64 0, i32 2, !dbg !1293
  %1 = load i8*, i8** %obuf, align 8, !dbg !1293, !tbaa !404
  %call = tail call i8* @strstr(i8* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11, !dbg !1294
  call void @llvm.dbg.value(metadata i8* %call, metadata !1284, metadata !DIExpression()), !dbg !1290
  %tobool.not = icmp eq i8* %call, null, !dbg !1295
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !1297

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 5, !dbg !1298
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1284, metadata !DIExpression()), !dbg !1290
  %call1 = tail call i64 @random() #12, !dbg !1299
  %2 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 8), align 16, !dbg !1300, !tbaa !367
  %conv = sext i32 %2 to i64, !dbg !1301
  %rem = srem i64 %call1, %conv, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1289, metadata !DIExpression()), !dbg !1290
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.71, i64 0, i64 0), i64 noundef %rem) #12, !dbg !1303
  %call5 = call i64 @strlen(i8* noundef nonnull %0) #11, !dbg !1304
  %call6 = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %0, i64 noundef %call5) #12, !dbg !1305
  br label %cleanup, !dbg !1306

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #15, !dbg !1306
  ret void, !dbg !1306
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1307 dso_local i8* @strstr(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1310 dso_local i64 @random() local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1313 dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1317 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1321 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare !dbg !1324 dso_local i8* @sdsdup(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @showLatencyReport(i8* noundef %title) unnamed_addr #0 !dbg !1327 {
entry:
  call void @llvm.dbg.value(metadata i8* %title, metadata !1329, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 0, metadata !1331, metadata !DIExpression()), !dbg !1334
  %0 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1335, !tbaa !362
  %conv = sitofp i32 %0 to float, !dbg !1336
  %1 = load i64, i64* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 14), align 8, !dbg !1337, !tbaa !785
  %conv1 = sitofp i64 %1 to float, !dbg !1338
  %div = fdiv float %conv1, 1.000000e+03, !dbg !1339
  %div2 = fdiv float %conv, %div, !dbg !1340
  call void @llvm.dbg.value(metadata float %div2, metadata !1333, metadata !DIExpression()), !dbg !1334
  %2 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 17), align 16, !dbg !1341, !tbaa !269
  %tobool.not = icmp eq i32 %2, 0, !dbg !1343
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1344

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.72, i64 0, i64 0), i8* noundef %title) #12, !dbg !1345
  %3 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1347, !tbaa !362
  %4 = load i64, i64* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 14), align 8, !dbg !1348, !tbaa !785
  %conv3 = sitofp i64 %4 to float, !dbg !1349
  %div4 = fdiv float %conv3, 1.000000e+03, !dbg !1350
  %conv5 = fpext float %div4 to double, !dbg !1349
  %call6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.73, i64 0, i64 0), i32 noundef %3, double noundef %conv5) #12, !dbg !1351
  %5 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 1), align 4, !dbg !1352, !tbaa !192
  %call7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.74, i64 0, i64 0), i32 noundef %5) #12, !dbg !1353
  %6 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 6), align 8, !dbg !1354, !tbaa !364
  %call8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i32 noundef %6) #12, !dbg !1355
  %7 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 12), align 4, !dbg !1356, !tbaa !213
  %call9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i64 0, i64 0), i32 noundef %7) #12, !dbg !1357
  %call10 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #12, !dbg !1358
  call void @llvm.dbg.value(metadata i32 0, metadata !1330, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 0, metadata !1331, metadata !DIExpression()), !dbg !1334
  %.pre41 = load i32*, i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15), align 16, !dbg !1359, !tbaa !372
  br label %for.body, !dbg !1364

for.body:                                         ; preds = %if.then, %for.inc
  %8 = phi i32* [ %.pre41, %if.then ], [ %12, %for.inc ], !dbg !1359
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.inc ]
  %seen.037 = phi i32 [ 0, %if.then ], [ %seen.1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1330, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i32 %seen.037, metadata !1331, metadata !DIExpression()), !dbg !1334
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %indvars.iv, !dbg !1365
  %9 = load i32, i32* %arrayidx, align 4, !dbg !1365, !tbaa !356
  %tobool12.not = icmp eq i32 %9, 0, !dbg !1365
  br i1 %tobool12.not, label %for.inc, label %if.then13, !dbg !1366

if.then13:                                        ; preds = %for.body
  %add = add nsw i32 %9, %seen.037, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %add, metadata !1331, metadata !DIExpression()), !dbg !1334
  %conv16 = sitofp i32 %add to float, !dbg !1369
  %mul = fmul float %conv16, 1.000000e+02, !dbg !1370
  %10 = load i32, i32* getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 4), align 16, !dbg !1371, !tbaa !362
  %conv17 = sitofp i32 %10 to float, !dbg !1372
  %div18 = fdiv float %mul, %conv17, !dbg !1373
  call void @llvm.dbg.value(metadata float %div18, metadata !1332, metadata !DIExpression()), !dbg !1334
  %conv19 = fpext float %div18 to double, !dbg !1374
  %11 = trunc i64 %indvars.iv to i32, !dbg !1375
  %call20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i64 0, i64 0), double noundef %conv19, i32 noundef %11) #12, !dbg !1375
  %.pre = load i32*, i32** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 15), align 16, !dbg !1359, !tbaa !372
  br label %for.inc, !dbg !1376

for.inc:                                          ; preds = %for.body, %if.then13
  %12 = phi i32* [ %.pre, %if.then13 ], [ %8, %for.body ]
  %seen.1 = phi i32 [ %add, %if.then13 ], [ %seen.037, %for.body ], !dbg !1334
  call void @llvm.dbg.value(metadata i32 %seen.1, metadata !1331, metadata !DIExpression()), !dbg !1334
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1330, metadata !DIExpression()), !dbg !1334
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5001, !dbg !1378
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1364, !llvm.loop !1379

for.end:                                          ; preds = %for.inc
  %conv21 = fpext float %div2 to double, !dbg !1381
  %call22 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i64 0, i64 0), double noundef %conv21) #12, !dbg !1382
  br label %if.end25, !dbg !1383

if.else:                                          ; preds = %entry
  %conv23 = fpext float %div2 to double, !dbg !1384
  %call24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.79, i64 0, i64 0), i8* noundef %title, double noundef %conv23) #12, !dbg !1386
  br label %if.end25

if.end25:                                         ; preds = %if.else, %for.end
  ret void, !dbg !1387
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @freeAllClients() unnamed_addr #0 !dbg !1388 {
entry:
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.config, %struct.config* @config, i64 0, i32 16), align 8, !dbg !1392, !tbaa !375
  %head = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !1393
  %1 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !1393, !tbaa !1394
  call void @llvm.dbg.value(metadata %struct.listNode* %1, metadata !1390, metadata !DIExpression()), !dbg !1396
  %tobool.not6 = icmp eq %struct.listNode* %1, null, !dbg !1397
  br i1 %tobool.not6, label %while.end, label %while.body, !dbg !1397

while.body:                                       ; preds = %entry, %while.body
  %ln.07 = phi %struct.listNode* [ %2, %while.body ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata %struct.listNode* %ln.07, metadata !1390, metadata !DIExpression()), !dbg !1396
  %next1 = getelementptr inbounds %struct.listNode, %struct.listNode* %ln.07, i64 0, i32 1, !dbg !1398
  %2 = load %struct.listNode*, %struct.listNode** %next1, align 8, !dbg !1398, !tbaa !1400
  call void @llvm.dbg.value(metadata %struct.listNode* %2, metadata !1391, metadata !DIExpression()), !dbg !1396
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %ln.07, i64 0, i32 2, !dbg !1402
  %3 = bitcast i8** %value to %struct._client**, !dbg !1402
  %4 = load %struct._client*, %struct._client** %3, align 8, !dbg !1402, !tbaa !1403
  tail call fastcc void @freeClient(%struct._client* noundef %4) #14, !dbg !1404
  call void @llvm.dbg.value(metadata %struct.listNode* %2, metadata !1390, metadata !DIExpression()), !dbg !1396
  %tobool.not = icmp eq %struct.listNode* %2, null, !dbg !1397
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !1397, !llvm.loop !1405

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !1407
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #12 = { nobuiltin nounwind "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nobuiltin "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "config", scope: !2, file: !3, line: 82, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-benchmark.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "a3ac98a6aac5410e1ccf48ff89318fb4")
!4 = !{!5, !10, !11, !14, !15, !16, !17}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !6, line: 72, baseType: !7)
!6 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "last_tot_received", scope: !21, file: !3, line: 181, type: !10, isLocal: true, isDefinition: true)
!21 = distinct !DISubprogram(name: "clientDone", scope: !3, file: !3, line: 180, type: !22, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !3, line: 95, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_client", file: !3, line: 84, size: 448, elements: !27)
!27 = !{!28, !29, !30, !33, !34, !35, !36, !37, !38, !39}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !26, file: !3, line: 85, baseType: !10, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !26, file: !3, line: 86, baseType: !10, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "obuf", scope: !26, file: !3, line: 87, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !32, line: 36, baseType: !12)
!32 = !DIFile(filename: "./sds.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "be5f4c5599eae55b8730033246030f20")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ibuf", scope: !26, file: !3, line: 88, baseType: !31, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "mbulk", scope: !26, file: !3, line: 89, baseType: !10, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "readlen", scope: !26, file: !3, line: 90, baseType: !10, size: 32, offset: 224)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "totreceived", scope: !26, file: !3, line: 91, baseType: !10, size: 32, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !26, file: !3, line: 92, baseType: !16, size: 32, offset: 288)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "replytype", scope: !26, file: !3, line: 93, baseType: !10, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !26, file: !3, line: 94, baseType: !40, size: 64, offset: 384)
!40 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!41 = !{!42, !43}
!42 = !DILocalVariable(name: "c", arg: 1, scope: !21, file: !3, line: 180, type: !24)
!43 = !DILocalVariable(name: "latency", scope: !21, file: !3, line: 183, type: !40)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config", file: !3, line: 61, size: 896, elements: !45)
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !114, !115, !116, !117, !118, !119, !121, !150, !151, !152}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !44, file: !3, line: 62, baseType: !10, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "numclients", scope: !44, file: !3, line: 63, baseType: !10, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "requests", scope: !44, file: !3, line: 64, baseType: !10, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "liveclients", scope: !44, file: !3, line: 65, baseType: !10, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "donerequests", scope: !44, file: !3, line: 66, baseType: !10, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keysize", scope: !44, file: !3, line: 67, baseType: !10, size: 32, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "datasize", scope: !44, file: !3, line: 68, baseType: !10, size: 32, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "randomkeys", scope: !44, file: !3, line: 69, baseType: !10, size: 32, offset: 224)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "randomkeys_keyspacelen", scope: !44, file: !3, line: 70, baseType: !10, size: 32, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "el", scope: !44, file: !3, line: 71, baseType: !56, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !58, line: 98, baseType: !59)
!58 = !DIFile(filename: "./ae.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "51650c7e83e254786f74107a47ea513a")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !58, line: 89, size: 3277184, elements: !60)
!60 = !{!61, !62, !63, !79, !86, !107, !108, !109}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !59, file: !58, line: 90, baseType: !10, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !59, file: !58, line: 91, baseType: !40, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !59, file: !58, line: 92, baseType: !64, size: 2621440, offset: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 2621440, elements: !77)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !58, line: 69, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !58, line: 64, size: 256, elements: !67)
!67 = !{!68, !69, !75, !76}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !66, file: !58, line: 65, baseType: !10, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !66, file: !58, line: 66, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !58, line: 58, baseType: !72)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !10, !14, !10}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !66, file: !58, line: 67, baseType: !70, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !66, file: !58, line: 68, baseType: !14, size: 64, offset: 192)
!77 = !{!78}
!78 = !DISubrange(count: 10240)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !59, file: !58, line: 93, baseType: !80, size: 655360, offset: 2621568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 655360, elements: !77)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !58, line: 86, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !58, line: 83, size: 64, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !82, file: !58, line: 84, baseType: !10, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !82, file: !58, line: 85, baseType: !10, size: 32, offset: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !59, file: !58, line: 94, baseType: !87, size: 64, offset: 3276928)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !58, line: 80, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !58, line: 72, size: 448, elements: !90)
!90 = !{!91, !92, !93, !94, !99, !104, !105}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !89, file: !58, line: 73, baseType: !40, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !89, file: !58, line: 74, baseType: !15, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !89, file: !58, line: 75, baseType: !15, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !89, file: !58, line: 76, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !58, line: 59, baseType: !97)
!97 = !DISubroutineType(types: !98)
!98 = !{!10, !74, !40, !14}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !89, file: !58, line: 77, baseType: !100, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !58, line: 60, baseType: !102)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !74, !14}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !89, file: !58, line: 78, baseType: !14, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !58, line: 79, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !59, file: !58, line: 95, baseType: !10, size: 32, offset: 3276992)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !59, file: !58, line: 96, baseType: !14, size: 64, offset: 3277056)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !59, file: !58, line: 97, baseType: !110, size: 64, offset: 3277120)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !58, line: 61, baseType: !112)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !74}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "hostip", scope: !44, file: !3, line: 72, baseType: !12, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "hostport", scope: !44, file: !3, line: 73, baseType: !10, size: 32, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !44, file: !3, line: 74, baseType: !10, size: 32, offset: 480)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !44, file: !3, line: 75, baseType: !40, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "totlatency", scope: !44, file: !3, line: 76, baseType: !40, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !44, file: !3, line: 77, baseType: !120, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !44, file: !3, line: 78, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !124, line: 54, baseType: !125)
!124 = !DIFile(filename: "./adlist.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "0461b55abfa9065d70cc6ca884308362")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !124, line: 47, size: 384, elements: !126)
!126 = !{!127, !136, !137, !141, !145, !149}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !125, file: !124, line: 48, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !124, line: 40, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !124, line: 36, size: 192, elements: !131)
!131 = !{!132, !134, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !130, file: !124, line: 37, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !124, line: 38, baseType: !133, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !130, file: !124, line: 39, baseType: !14, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !124, line: 49, baseType: !128, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !125, file: !124, line: 50, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!14, !14}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !125, file: !124, line: 51, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !14}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !125, file: !124, line: 52, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!10, !14, !14}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !125, file: !124, line: 53, baseType: !16, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !44, file: !3, line: 79, baseType: !10, size: 32, offset: 768)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "loop", scope: !44, file: !3, line: 80, baseType: !10, size: 32, offset: 800)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "idlemode", scope: !44, file: !3, line: 81, baseType: !10, size: 32, offset: 832)
!153 = !{i32 7, !"Dwarf Version", i32 5}
!154 = !{i32 2, !"Debug Info Version", i32 3}
!155 = !{i32 1, !"wchar_size", i32 4}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{!"clang version 14.0.0"}
!158 = distinct !DISubprogram(name: "parseOptions", scope: !3, file: !3, line: 413, type: !159, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !10, !11}
!161 = !{!162, !163, !164, !165, !169}
!162 = !DILocalVariable(name: "argc", arg: 1, scope: !158, file: !3, line: 413, type: !10)
!163 = !DILocalVariable(name: "argv", arg: 2, scope: !158, file: !3, line: 413, type: !11)
!164 = !DILocalVariable(name: "i", scope: !158, file: !3, line: 414, type: !10)
!165 = !DILocalVariable(name: "lastarg", scope: !166, file: !3, line: 417, type: !10)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 416, column: 32)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 416, column: 5)
!168 = distinct !DILexicalBlock(scope: !158, file: !3, line: 416, column: 5)
!169 = !DILocalVariable(name: "ip", scope: !170, file: !3, line: 429, type: !12)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 428, column: 55)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 428, column: 20)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 425, column: 20)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 422, column: 20)
!174 = distinct !DILexicalBlock(scope: !166, file: !3, line: 419, column: 13)
!175 = !DILocation(line: 0, scope: !158)
!176 = !DILocation(line: 416, column: 19, scope: !167)
!177 = !DILocation(line: 416, column: 5, scope: !168)
!178 = !DILocation(line: 417, column: 24, scope: !166)
!179 = !DILocation(line: 0, scope: !166)
!180 = !DILocation(line: 419, column: 21, scope: !174)
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !DILocation(line: 419, column: 14, scope: !174)
!186 = !DILocation(line: 419, column: 35, scope: !174)
!187 = !DILocation(line: 420, column: 44, scope: !188)
!188 = distinct !DILexicalBlock(scope: !174, file: !3, line: 419, column: 48)
!189 = !DILocation(line: 420, column: 38, scope: !188)
!190 = !DILocation(line: 420, column: 33, scope: !188)
!191 = !DILocation(line: 420, column: 31, scope: !188)
!192 = !{!193, !194, i64 4}
!193 = !{!"config", !194, i64 0, !194, i64 4, !194, i64 8, !194, i64 12, !194, i64 16, !194, i64 20, !194, i64 24, !194, i64 28, !194, i64 32, !182, i64 40, !182, i64 48, !194, i64 56, !194, i64 60, !195, i64 64, !195, i64 72, !182, i64 80, !182, i64 88, !194, i64 96, !194, i64 100, !194, i64 104}
!194 = !{!"int", !183, i64 0}
!195 = !{!"long long", !183, i64 0}
!196 = !DILocation(line: 422, column: 9, scope: !188)
!197 = !DILocation(line: 422, column: 21, scope: !173)
!198 = !DILocation(line: 422, column: 42, scope: !173)
!199 = !DILocation(line: 423, column: 42, scope: !200)
!200 = distinct !DILexicalBlock(scope: !173, file: !3, line: 422, column: 55)
!201 = !DILocation(line: 423, column: 36, scope: !200)
!202 = !DILocation(line: 423, column: 31, scope: !200)
!203 = !DILocation(line: 423, column: 29, scope: !200)
!204 = !{!193, !194, i64 8}
!205 = !DILocation(line: 425, column: 9, scope: !200)
!206 = !DILocation(line: 425, column: 21, scope: !172)
!207 = !DILocation(line: 425, column: 42, scope: !172)
!208 = !DILocation(line: 426, column: 43, scope: !209)
!209 = distinct !DILexicalBlock(scope: !172, file: !3, line: 425, column: 55)
!210 = !DILocation(line: 426, column: 37, scope: !209)
!211 = !DILocation(line: 426, column: 32, scope: !209)
!212 = !DILocation(line: 426, column: 30, scope: !209)
!213 = !{!193, !194, i64 60}
!214 = !DILocation(line: 428, column: 9, scope: !209)
!215 = !DILocation(line: 428, column: 21, scope: !171)
!216 = !DILocation(line: 428, column: 42, scope: !171)
!217 = !DILocation(line: 429, column: 24, scope: !170)
!218 = !DILocation(line: 0, scope: !170)
!219 = !DILocation(line: 430, column: 40, scope: !220)
!220 = distinct !DILexicalBlock(scope: !170, file: !3, line: 430, column: 17)
!221 = !DILocation(line: 430, column: 34, scope: !220)
!222 = !DILocation(line: 430, column: 17, scope: !220)
!223 = !DILocation(line: 430, column: 48, scope: !220)
!224 = !DILocation(line: 430, column: 17, scope: !170)
!225 = !DILocation(line: 431, column: 46, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !3, line: 430, column: 61)
!227 = !DILocation(line: 431, column: 17, scope: !226)
!228 = !DILocation(line: 432, column: 17, scope: !226)
!229 = !DILocation(line: 434, column: 27, scope: !170)
!230 = !{!193, !182, i64 48}
!231 = !DILocation(line: 436, column: 9, scope: !170)
!232 = !DILocation(line: 436, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !171, file: !3, line: 436, column: 20)
!234 = !DILocation(line: 436, column: 42, scope: !233)
!235 = !DILocation(line: 437, column: 42, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 436, column: 55)
!237 = !DILocation(line: 437, column: 36, scope: !236)
!238 = !DILocation(line: 437, column: 31, scope: !236)
!239 = !DILocation(line: 437, column: 29, scope: !236)
!240 = !{!193, !194, i64 56}
!241 = !DILocation(line: 439, column: 9, scope: !236)
!242 = !DILocation(line: 439, column: 21, scope: !243)
!243 = distinct !DILexicalBlock(scope: !233, file: !3, line: 439, column: 20)
!244 = !DILocation(line: 439, column: 42, scope: !243)
!245 = !DILocation(line: 440, column: 42, scope: !246)
!246 = distinct !DILexicalBlock(scope: !243, file: !3, line: 439, column: 55)
!247 = !DILocation(line: 440, column: 36, scope: !246)
!248 = !DILocation(line: 440, column: 31, scope: !246)
!249 = !DILocation(line: 442, column: 17, scope: !246)
!250 = !DILocation(line: 443, column: 17, scope: !246)
!251 = !DILocation(line: 0, scope: !246)
!252 = !DILocation(line: 444, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !243, file: !3, line: 444, column: 20)
!254 = !DILocation(line: 444, column: 42, scope: !253)
!255 = !DILocation(line: 445, column: 31, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 444, column: 55)
!257 = !{!193, !194, i64 28}
!258 = !DILocation(line: 446, column: 56, scope: !256)
!259 = !DILocation(line: 446, column: 50, scope: !256)
!260 = !DILocation(line: 446, column: 45, scope: !256)
!261 = !DILocation(line: 447, column: 17, scope: !256)
!262 = !DILocation(line: 0, scope: !256)
!263 = !DILocation(line: 450, column: 9, scope: !256)
!264 = !DILocation(line: 450, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !3, line: 450, column: 20)
!266 = !DILocation(line: 450, column: 20, scope: !253)
!267 = !DILocation(line: 451, column: 26, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !3, line: 450, column: 43)
!269 = !{!193, !194, i64 96}
!270 = !DILocation(line: 452, column: 9, scope: !268)
!271 = !DILocation(line: 452, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 452, column: 20)
!273 = !DILocation(line: 452, column: 20, scope: !265)
!274 = !DILocation(line: 453, column: 25, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 452, column: 43)
!276 = !{!193, !194, i64 100}
!277 = !DILocation(line: 454, column: 9, scope: !275)
!278 = !DILocation(line: 454, column: 21, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 454, column: 20)
!280 = !DILocation(line: 454, column: 20, scope: !272)
!281 = !DILocation(line: 455, column: 26, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 454, column: 43)
!283 = !{!193, !194, i64 0}
!284 = !DILocation(line: 456, column: 9, scope: !282)
!285 = !DILocation(line: 456, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !3, line: 456, column: 20)
!287 = !DILocation(line: 456, column: 20, scope: !279)
!288 = !DILocation(line: 457, column: 29, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 456, column: 43)
!290 = !{!193, !194, i64 104}
!291 = !DILocation(line: 459, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !286, file: !3, line: 458, column: 16)
!293 = !DILocation(line: 460, column: 13, scope: !292)
!294 = !DILocation(line: 461, column: 13, scope: !292)
!295 = !DILocation(line: 462, column: 13, scope: !292)
!296 = !DILocation(line: 463, column: 13, scope: !292)
!297 = !DILocation(line: 464, column: 13, scope: !292)
!298 = !DILocation(line: 465, column: 13, scope: !292)
!299 = !DILocation(line: 466, column: 13, scope: !292)
!300 = !DILocation(line: 467, column: 13, scope: !292)
!301 = !DILocation(line: 468, column: 13, scope: !292)
!302 = !DILocation(line: 469, column: 13, scope: !292)
!303 = !DILocation(line: 470, column: 13, scope: !292)
!304 = !DILocation(line: 471, column: 13, scope: !292)
!305 = !DILocation(line: 472, column: 13, scope: !292)
!306 = !DILocation(line: 473, column: 13, scope: !292)
!307 = !DILocation(line: 474, column: 13, scope: !292)
!308 = !DILocation(line: 475, column: 13, scope: !292)
!309 = !DILocation(line: 476, column: 13, scope: !292)
!310 = !DILocation(line: 477, column: 13, scope: !292)
!311 = !DILocation(line: 478, column: 13, scope: !292)
!312 = !DILocation(line: 0, scope: !168)
!313 = !DILocation(line: 416, column: 28, scope: !167)
!314 = distinct !{!314, !177, !315}
!315 = !DILocation(line: 480, column: 5, scope: !168)
!316 = !DILocation(line: 481, column: 1, scope: !158)
!317 = !DISubprogram(name: "strcmp", scope: !318, file: !318, line: 137, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!318 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!319 = !DISubroutineType(types: !320)
!320 = !{!10, !321, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!323 = !{}
!324 = !DISubprogram(name: "zmalloc", scope: !325, file: !325, line: 34, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!325 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!326 = !DISubroutineType(types: !327)
!327 = !{!14, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !329, line: 46, baseType: !330)
!329 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!330 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!331 = !DISubprogram(name: "anetResolve", scope: !332, file: !332, line: 41, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!332 = !DIFile(filename: "./anet.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "81285b86a9ecba6646b6ba287bca42c3")
!333 = !DISubroutineType(types: !334)
!334 = !{!10, !12, !12, !12}
!335 = !DISubprogram(name: "printf", scope: !336, file: !336, line: 332, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!336 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!337 = !DISubroutineType(types: !338)
!338 = !{!10, !339, null}
!339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
!340 = !DISubprogram(name: "exit", scope: !341, file: !341, line: 617, type: !8, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !323)
!341 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!342 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 483, type: !343, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!10, !10, !11}
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "argc", arg: 1, scope: !342, file: !3, line: 483, type: !10)
!347 = !DILocalVariable(name: "argv", arg: 2, scope: !342, file: !3, line: 483, type: !11)
!348 = !DILocalVariable(name: "c", scope: !342, file: !3, line: 484, type: !24)
!349 = !DILocalVariable(name: "data", scope: !350, file: !3, line: 551, type: !12)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 550, column: 9)
!351 = distinct !DILexicalBlock(scope: !342, file: !3, line: 527, column: 8)
!352 = !DILocation(line: 0, scope: !342)
!353 = !DILocation(line: 486, column: 5, scope: !342)
!354 = !DILocation(line: 487, column: 5, scope: !342)
!355 = !DILocation(line: 489, column: 18, scope: !342)
!356 = !{!194, !194, i64 0}
!357 = !DILocation(line: 493, column: 17, scope: !342)
!358 = !DILocation(line: 493, column: 15, scope: !342)
!359 = !{!193, !182, i64 40}
!360 = !DILocation(line: 494, column: 22, scope: !342)
!361 = !DILocation(line: 495, column: 25, scope: !342)
!362 = !{!193, !194, i64 16}
!363 = !DILocation(line: 496, column: 21, scope: !342)
!364 = !{!193, !194, i64 24}
!365 = !DILocation(line: 497, column: 23, scope: !342)
!366 = !DILocation(line: 498, column: 35, scope: !342)
!367 = !{!193, !194, i64 32}
!368 = !DILocation(line: 499, column: 18, scope: !342)
!369 = !DILocation(line: 500, column: 17, scope: !342)
!370 = !DILocation(line: 501, column: 21, scope: !342)
!371 = !DILocation(line: 502, column: 20, scope: !342)
!372 = !{!193, !182, i64 80}
!373 = !DILocation(line: 503, column: 22, scope: !342)
!374 = !DILocation(line: 503, column: 20, scope: !342)
!375 = !{!193, !182, i64 88}
!376 = !DILocation(line: 504, column: 22, scope: !342)
!377 = !DILocation(line: 504, column: 20, scope: !342)
!378 = !DILocation(line: 506, column: 19, scope: !342)
!379 = !DILocation(line: 507, column: 21, scope: !342)
!380 = !DILocation(line: 509, column: 5, scope: !342)
!381 = !DILocation(line: 511, column: 16, scope: !382)
!382 = distinct !DILexicalBlock(scope: !342, file: !3, line: 511, column: 9)
!383 = !DILocation(line: 511, column: 26, scope: !382)
!384 = !DILocation(line: 511, column: 9, scope: !342)
!385 = !DILocation(line: 512, column: 9, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !3, line: 511, column: 32)
!387 = !DILocation(line: 513, column: 5, scope: !386)
!388 = !DILocation(line: 515, column: 16, scope: !389)
!389 = distinct !DILexicalBlock(scope: !342, file: !3, line: 515, column: 9)
!390 = !DILocation(line: 515, column: 9, scope: !389)
!391 = !DILocation(line: 515, column: 9, scope: !342)
!392 = !DILocation(line: 516, column: 96, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 515, column: 26)
!394 = !DILocation(line: 516, column: 9, scope: !393)
!395 = !DILocation(line: 517, column: 9, scope: !393)
!396 = !DILocation(line: 518, column: 13, scope: !393)
!397 = !DILocation(line: 519, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !3, line: 519, column: 13)
!399 = !DILocation(line: 519, column: 13, scope: !393)
!400 = !DILocation(line: 519, column: 17, scope: !398)
!401 = !DILocation(line: 520, column: 19, scope: !393)
!402 = !DILocation(line: 520, column: 12, scope: !393)
!403 = !DILocation(line: 520, column: 17, scope: !393)
!404 = !{!405, !182, i64 8}
!405 = !{!"_client", !194, i64 0, !194, i64 4, !182, i64 8, !182, i64 16, !194, i64 24, !194, i64 28, !194, i64 32, !194, i64 36, !194, i64 40, !195, i64 48}
!406 = !DILocation(line: 521, column: 9, scope: !393)
!407 = !DILocation(line: 522, column: 9, scope: !393)
!408 = !DILocation(line: 523, column: 23, scope: !393)
!409 = !DILocation(line: 523, column: 9, scope: !393)
!410 = !DILocation(line: 525, column: 5, scope: !393)
!411 = !DILocation(line: 527, column: 5, scope: !342)
!412 = !DILocation(line: 528, column: 9, scope: !351)
!413 = !DILocation(line: 529, column: 13, scope: !351)
!414 = !DILocation(line: 530, column: 14, scope: !415)
!415 = distinct !DILexicalBlock(scope: !351, file: !3, line: 530, column: 13)
!416 = !DILocation(line: 530, column: 13, scope: !351)
!417 = !DILocation(line: 530, column: 17, scope: !415)
!418 = !DILocation(line: 531, column: 29, scope: !351)
!419 = !DILocation(line: 531, column: 19, scope: !351)
!420 = !DILocation(line: 531, column: 17, scope: !351)
!421 = !DILocation(line: 532, column: 9, scope: !351)
!422 = !DILocation(line: 533, column: 9, scope: !351)
!423 = !DILocation(line: 534, column: 23, scope: !351)
!424 = !DILocation(line: 534, column: 9, scope: !351)
!425 = !DILocation(line: 535, column: 9, scope: !351)
!426 = !DILocation(line: 537, column: 9, scope: !351)
!427 = !DILocation(line: 538, column: 13, scope: !351)
!428 = !DILocation(line: 539, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !351, file: !3, line: 539, column: 13)
!430 = !DILocation(line: 539, column: 13, scope: !351)
!431 = !DILocation(line: 539, column: 17, scope: !429)
!432 = !DILocation(line: 540, column: 29, scope: !351)
!433 = !DILocation(line: 540, column: 19, scope: !351)
!434 = !DILocation(line: 540, column: 17, scope: !351)
!435 = !DILocation(line: 541, column: 9, scope: !351)
!436 = !DILocation(line: 542, column: 9, scope: !351)
!437 = !DILocation(line: 543, column: 23, scope: !351)
!438 = !DILocation(line: 543, column: 9, scope: !351)
!439 = !DILocation(line: 544, column: 9, scope: !351)
!440 = !DILocation(line: 546, column: 9, scope: !351)
!441 = !DILocation(line: 547, column: 13, scope: !351)
!442 = !DILocation(line: 548, column: 14, scope: !443)
!443 = distinct !DILexicalBlock(scope: !351, file: !3, line: 548, column: 13)
!444 = !DILocation(line: 548, column: 13, scope: !351)
!445 = !DILocation(line: 548, column: 17, scope: !443)
!446 = !DILocation(line: 549, column: 35, scope: !351)
!447 = !DILocation(line: 549, column: 81, scope: !351)
!448 = !DILocation(line: 549, column: 19, scope: !351)
!449 = !DILocation(line: 549, column: 17, scope: !351)
!450 = !DILocation(line: 551, column: 41, scope: !350)
!451 = !DILocation(line: 551, column: 49, scope: !350)
!452 = !DILocation(line: 551, column: 34, scope: !350)
!453 = !DILocation(line: 551, column: 26, scope: !350)
!454 = !DILocation(line: 0, scope: !350)
!455 = !DILocation(line: 552, column: 36, scope: !350)
!456 = !DILocation(line: 552, column: 29, scope: !350)
!457 = !DILocation(line: 552, column: 13, scope: !350)
!458 = !DILocation(line: 553, column: 25, scope: !350)
!459 = !DILocation(line: 553, column: 13, scope: !350)
!460 = !DILocation(line: 553, column: 35, scope: !350)
!461 = !{!183, !183, i64 0}
!462 = !DILocation(line: 554, column: 33, scope: !350)
!463 = !DILocation(line: 554, column: 13, scope: !350)
!464 = !DILocation(line: 554, column: 37, scope: !350)
!465 = !DILocation(line: 555, column: 36, scope: !350)
!466 = !DILocation(line: 555, column: 61, scope: !350)
!467 = !DILocation(line: 555, column: 46, scope: !350)
!468 = !DILocation(line: 555, column: 23, scope: !350)
!469 = !DILocation(line: 555, column: 21, scope: !350)
!470 = !DILocation(line: 557, column: 9, scope: !351)
!471 = !DILocation(line: 558, column: 9, scope: !351)
!472 = !DILocation(line: 559, column: 23, scope: !351)
!473 = !DILocation(line: 559, column: 9, scope: !351)
!474 = !DILocation(line: 560, column: 9, scope: !351)
!475 = !DILocation(line: 562, column: 9, scope: !351)
!476 = !DILocation(line: 563, column: 13, scope: !351)
!477 = !DILocation(line: 564, column: 14, scope: !478)
!478 = distinct !DILexicalBlock(scope: !351, file: !3, line: 564, column: 13)
!479 = !DILocation(line: 564, column: 13, scope: !351)
!480 = !DILocation(line: 564, column: 17, scope: !478)
!481 = !DILocation(line: 565, column: 29, scope: !351)
!482 = !DILocation(line: 565, column: 19, scope: !351)
!483 = !DILocation(line: 565, column: 17, scope: !351)
!484 = !DILocation(line: 566, column: 9, scope: !351)
!485 = !DILocation(line: 567, column: 9, scope: !351)
!486 = !DILocation(line: 568, column: 23, scope: !351)
!487 = !DILocation(line: 568, column: 9, scope: !351)
!488 = !DILocation(line: 569, column: 9, scope: !351)
!489 = !DILocation(line: 571, column: 9, scope: !351)
!490 = !DILocation(line: 572, column: 13, scope: !351)
!491 = !DILocation(line: 573, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !351, file: !3, line: 573, column: 13)
!493 = !DILocation(line: 573, column: 13, scope: !351)
!494 = !DILocation(line: 573, column: 17, scope: !492)
!495 = !DILocation(line: 574, column: 29, scope: !351)
!496 = !DILocation(line: 574, column: 19, scope: !351)
!497 = !DILocation(line: 574, column: 17, scope: !351)
!498 = !DILocation(line: 575, column: 9, scope: !351)
!499 = !DILocation(line: 576, column: 9, scope: !351)
!500 = !DILocation(line: 577, column: 23, scope: !351)
!501 = !DILocation(line: 577, column: 9, scope: !351)
!502 = !DILocation(line: 578, column: 9, scope: !351)
!503 = !DILocation(line: 580, column: 9, scope: !351)
!504 = !DILocation(line: 581, column: 13, scope: !351)
!505 = !DILocation(line: 582, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !351, file: !3, line: 582, column: 13)
!507 = !DILocation(line: 582, column: 13, scope: !351)
!508 = !DILocation(line: 582, column: 17, scope: !506)
!509 = !DILocation(line: 583, column: 29, scope: !351)
!510 = !DILocation(line: 583, column: 19, scope: !351)
!511 = !DILocation(line: 583, column: 17, scope: !351)
!512 = !DILocation(line: 584, column: 9, scope: !351)
!513 = !DILocation(line: 585, column: 9, scope: !351)
!514 = !DILocation(line: 586, column: 23, scope: !351)
!515 = !DILocation(line: 586, column: 9, scope: !351)
!516 = !DILocation(line: 587, column: 9, scope: !351)
!517 = !DILocation(line: 589, column: 9, scope: !351)
!518 = !DILocation(line: 590, column: 13, scope: !351)
!519 = !DILocation(line: 591, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !351, file: !3, line: 591, column: 13)
!521 = !DILocation(line: 591, column: 13, scope: !351)
!522 = !DILocation(line: 591, column: 17, scope: !520)
!523 = !DILocation(line: 592, column: 29, scope: !351)
!524 = !DILocation(line: 592, column: 19, scope: !351)
!525 = !DILocation(line: 592, column: 17, scope: !351)
!526 = !DILocation(line: 593, column: 9, scope: !351)
!527 = !DILocation(line: 594, column: 9, scope: !351)
!528 = !DILocation(line: 595, column: 23, scope: !351)
!529 = !DILocation(line: 595, column: 9, scope: !351)
!530 = !DILocation(line: 596, column: 9, scope: !351)
!531 = !DILocation(line: 598, column: 9, scope: !351)
!532 = !DILocation(line: 599, column: 13, scope: !351)
!533 = !DILocation(line: 600, column: 14, scope: !534)
!534 = distinct !DILexicalBlock(scope: !351, file: !3, line: 600, column: 13)
!535 = !DILocation(line: 600, column: 13, scope: !351)
!536 = !DILocation(line: 600, column: 17, scope: !534)
!537 = !DILocation(line: 601, column: 29, scope: !351)
!538 = !DILocation(line: 601, column: 19, scope: !351)
!539 = !DILocation(line: 601, column: 17, scope: !351)
!540 = !DILocation(line: 602, column: 9, scope: !351)
!541 = !DILocation(line: 603, column: 9, scope: !351)
!542 = !DILocation(line: 604, column: 23, scope: !351)
!543 = !DILocation(line: 604, column: 9, scope: !351)
!544 = !DILocation(line: 605, column: 9, scope: !351)
!545 = !DILocation(line: 607, column: 9, scope: !351)
!546 = !DILocation(line: 608, column: 13, scope: !351)
!547 = !DILocation(line: 609, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !351, file: !3, line: 609, column: 13)
!549 = !DILocation(line: 609, column: 13, scope: !351)
!550 = !DILocation(line: 609, column: 17, scope: !548)
!551 = !DILocation(line: 610, column: 29, scope: !351)
!552 = !DILocation(line: 610, column: 19, scope: !351)
!553 = !DILocation(line: 610, column: 17, scope: !351)
!554 = !DILocation(line: 611, column: 9, scope: !351)
!555 = !DILocation(line: 612, column: 9, scope: !351)
!556 = !DILocation(line: 613, column: 23, scope: !351)
!557 = !DILocation(line: 613, column: 9, scope: !351)
!558 = !DILocation(line: 614, column: 9, scope: !351)
!559 = !DILocation(line: 616, column: 9, scope: !351)
!560 = !DILocation(line: 617, column: 13, scope: !351)
!561 = !DILocation(line: 618, column: 14, scope: !562)
!562 = distinct !DILexicalBlock(scope: !351, file: !3, line: 618, column: 13)
!563 = !DILocation(line: 618, column: 13, scope: !351)
!564 = !DILocation(line: 618, column: 17, scope: !562)
!565 = !DILocation(line: 619, column: 29, scope: !351)
!566 = !DILocation(line: 619, column: 19, scope: !351)
!567 = !DILocation(line: 619, column: 17, scope: !351)
!568 = !DILocation(line: 620, column: 9, scope: !351)
!569 = !DILocation(line: 621, column: 9, scope: !351)
!570 = !DILocation(line: 622, column: 23, scope: !351)
!571 = !DILocation(line: 622, column: 9, scope: !351)
!572 = !DILocation(line: 623, column: 9, scope: !351)
!573 = !DILocation(line: 625, column: 9, scope: !351)
!574 = !DILocation(line: 626, column: 13, scope: !351)
!575 = !DILocation(line: 627, column: 14, scope: !576)
!576 = distinct !DILexicalBlock(scope: !351, file: !3, line: 627, column: 13)
!577 = !DILocation(line: 627, column: 13, scope: !351)
!578 = !DILocation(line: 627, column: 17, scope: !576)
!579 = !DILocation(line: 628, column: 29, scope: !351)
!580 = !DILocation(line: 628, column: 19, scope: !351)
!581 = !DILocation(line: 628, column: 17, scope: !351)
!582 = !DILocation(line: 629, column: 9, scope: !351)
!583 = !DILocation(line: 630, column: 9, scope: !351)
!584 = !DILocation(line: 631, column: 23, scope: !351)
!585 = !DILocation(line: 631, column: 9, scope: !351)
!586 = !DILocation(line: 632, column: 9, scope: !351)
!587 = !DILocation(line: 634, column: 9, scope: !351)
!588 = !DILocation(line: 635, column: 13, scope: !351)
!589 = !DILocation(line: 636, column: 14, scope: !590)
!590 = distinct !DILexicalBlock(scope: !351, file: !3, line: 636, column: 13)
!591 = !DILocation(line: 636, column: 13, scope: !351)
!592 = !DILocation(line: 636, column: 17, scope: !590)
!593 = !DILocation(line: 637, column: 29, scope: !351)
!594 = !DILocation(line: 637, column: 19, scope: !351)
!595 = !DILocation(line: 637, column: 17, scope: !351)
!596 = !DILocation(line: 638, column: 9, scope: !351)
!597 = !DILocation(line: 639, column: 9, scope: !351)
!598 = !DILocation(line: 640, column: 23, scope: !351)
!599 = !DILocation(line: 640, column: 9, scope: !351)
!600 = !DILocation(line: 641, column: 9, scope: !351)
!601 = !DILocation(line: 643, column: 9, scope: !351)
!602 = !DILocation(line: 644, column: 13, scope: !351)
!603 = !DILocation(line: 645, column: 14, scope: !604)
!604 = distinct !DILexicalBlock(scope: !351, file: !3, line: 645, column: 13)
!605 = !DILocation(line: 645, column: 13, scope: !351)
!606 = !DILocation(line: 645, column: 17, scope: !604)
!607 = !DILocation(line: 646, column: 29, scope: !351)
!608 = !DILocation(line: 646, column: 19, scope: !351)
!609 = !DILocation(line: 646, column: 17, scope: !351)
!610 = !DILocation(line: 647, column: 9, scope: !351)
!611 = !DILocation(line: 648, column: 9, scope: !351)
!612 = !DILocation(line: 649, column: 23, scope: !351)
!613 = !DILocation(line: 649, column: 9, scope: !351)
!614 = !DILocation(line: 650, column: 9, scope: !351)
!615 = !DILocation(line: 652, column: 9, scope: !351)
!616 = !DILocation(line: 653, column: 13, scope: !351)
!617 = !DILocation(line: 654, column: 14, scope: !618)
!618 = distinct !DILexicalBlock(scope: !351, file: !3, line: 654, column: 13)
!619 = !DILocation(line: 654, column: 13, scope: !351)
!620 = !DILocation(line: 654, column: 17, scope: !618)
!621 = !DILocation(line: 655, column: 29, scope: !351)
!622 = !DILocation(line: 655, column: 19, scope: !351)
!623 = !DILocation(line: 655, column: 17, scope: !351)
!624 = !DILocation(line: 656, column: 9, scope: !351)
!625 = !DILocation(line: 657, column: 9, scope: !351)
!626 = !DILocation(line: 658, column: 23, scope: !351)
!627 = !DILocation(line: 658, column: 9, scope: !351)
!628 = !DILocation(line: 659, column: 9, scope: !351)
!629 = !DILocation(line: 661, column: 9, scope: !351)
!630 = !DILocation(line: 662, column: 20, scope: !342)
!631 = !DILocation(line: 662, column: 5, scope: !351)
!632 = distinct !{!632, !411, !633}
!633 = !DILocation(line: 662, column: 24, scope: !342)
!634 = !DILocation(line: 664, column: 5, scope: !342)
!635 = !DISubprogram(name: "signal", scope: !6, file: !6, line: 88, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!636 = !DISubroutineType(types: !637)
!637 = !{!5, !10, !5}
!638 = !DISubprogram(name: "aeCreateEventLoop", scope: !58, file: !58, line: 101, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!639 = !DISubroutineType(types: !640)
!640 = !{!56}
!641 = !DISubprogram(name: "listCreate", scope: !124, file: !124, line: 73, type: !642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!642 = !DISubroutineType(types: !643)
!643 = !{!122}
!644 = distinct !DISubprogram(name: "prepareForBenchmark", scope: !3, file: !3, line: 400, type: !645, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !323)
!645 = !DISubroutineType(types: !646)
!646 = !{null}
!647 = !DILocation(line: 402, column: 19, scope: !644)
!648 = !DILocation(line: 402, column: 5, scope: !644)
!649 = !DILocation(line: 403, column: 20, scope: !644)
!650 = !DILocation(line: 403, column: 18, scope: !644)
!651 = !{!193, !195, i64 64}
!652 = !DILocation(line: 404, column: 25, scope: !644)
!653 = !DILocation(line: 405, column: 1, scope: !644)
!654 = distinct !DISubprogram(name: "createClient", scope: !3, file: !3, line: 339, type: !655, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!24}
!657 = !{!658, !659}
!658 = !DILocalVariable(name: "c", scope: !654, file: !3, line: 340, type: !24)
!659 = !DILocalVariable(name: "err", scope: !654, file: !3, line: 341, type: !660)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 256)
!663 = !DILocation(line: 340, column: 16, scope: !654)
!664 = !DILocation(line: 0, scope: !654)
!665 = !DILocation(line: 341, column: 5, scope: !654)
!666 = !DILocation(line: 341, column: 10, scope: !654)
!667 = !DILocation(line: 343, column: 47, scope: !654)
!668 = !DILocation(line: 343, column: 61, scope: !654)
!669 = !DILocation(line: 343, column: 13, scope: !654)
!670 = !DILocation(line: 343, column: 8, scope: !654)
!671 = !DILocation(line: 343, column: 11, scope: !654)
!672 = !{!405, !194, i64 4}
!673 = !DILocation(line: 344, column: 15, scope: !674)
!674 = distinct !DILexicalBlock(scope: !654, file: !3, line: 344, column: 9)
!675 = !DILocation(line: 344, column: 9, scope: !654)
!676 = !DILocation(line: 345, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !3, line: 344, column: 28)
!678 = !DILocation(line: 346, column: 17, scope: !677)
!679 = !DILocation(line: 346, column: 9, scope: !677)
!680 = !DILocation(line: 347, column: 9, scope: !677)
!681 = !DILocation(line: 349, column: 5, scope: !654)
!682 = !DILocation(line: 350, column: 15, scope: !654)
!683 = !DILocation(line: 350, column: 8, scope: !654)
!684 = !DILocation(line: 350, column: 13, scope: !654)
!685 = !DILocation(line: 351, column: 15, scope: !654)
!686 = !DILocation(line: 351, column: 8, scope: !654)
!687 = !DILocation(line: 351, column: 13, scope: !654)
!688 = !{!405, !182, i64 16}
!689 = !DILocation(line: 352, column: 8, scope: !654)
!690 = !DILocation(line: 352, column: 14, scope: !654)
!691 = !DILocation(line: 356, column: 8, scope: !654)
!692 = !DILocation(line: 356, column: 14, scope: !654)
!693 = !{!405, !194, i64 0}
!694 = !DILocation(line: 357, column: 30, scope: !654)
!695 = !DILocation(line: 357, column: 37, scope: !654)
!696 = !DILocation(line: 357, column: 5, scope: !654)
!697 = !DILocation(line: 358, column: 23, scope: !654)
!698 = !{!193, !194, i64 12}
!699 = !DILocation(line: 359, column: 28, scope: !654)
!700 = !DILocation(line: 359, column: 5, scope: !654)
!701 = !DILocation(line: 360, column: 5, scope: !654)
!702 = !DILocation(line: 361, column: 1, scope: !654)
!703 = !DISubprogram(name: "sdsempty", scope: !32, file: !32, line: 46, type: !704, spFlags: DISPFlagOptimized, retainedNodes: !323)
!704 = !DISubroutineType(types: !705)
!705 = !{!31}
!706 = distinct !DISubprogram(name: "prepareClientForReply", scope: !3, file: !3, line: 166, type: !707, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !24, !10}
!709 = !{!710, !711}
!710 = !DILocalVariable(name: "c", arg: 1, scope: !706, file: !3, line: 166, type: !24)
!711 = !DILocalVariable(name: "type", arg: 2, scope: !706, file: !3, line: 166, type: !10)
!712 = !DILocation(line: 0, scope: !706)
!713 = !DILocation(line: 167, column: 9, scope: !706)
!714 = !DILocation(line: 168, column: 12, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 167, column: 29)
!716 = distinct !DILexicalBlock(scope: !706, file: !3, line: 167, column: 9)
!717 = !DILocation(line: 168, column: 22, scope: !715)
!718 = !{!405, !194, i64 40}
!719 = !DILocation(line: 169, column: 12, scope: !715)
!720 = !DILocation(line: 169, column: 20, scope: !715)
!721 = !{!405, !194, i64 28}
!722 = !DILocation(line: 170, column: 5, scope: !715)
!723 = !DILocation(line: 171, column: 12, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 170, column: 37)
!725 = distinct !DILexicalBlock(scope: !716, file: !3, line: 170, column: 16)
!726 = !DILocation(line: 171, column: 22, scope: !724)
!727 = !DILocation(line: 172, column: 12, scope: !724)
!728 = !DILocation(line: 172, column: 20, scope: !724)
!729 = !DILocation(line: 173, column: 12, scope: !724)
!730 = !DILocation(line: 173, column: 18, scope: !724)
!731 = !{!405, !194, i64 24}
!732 = !DILocation(line: 174, column: 5, scope: !724)
!733 = !DILocation(line: 175, column: 12, scope: !734)
!734 = distinct !DILexicalBlock(scope: !725, file: !3, line: 174, column: 12)
!735 = !DILocation(line: 175, column: 22, scope: !734)
!736 = !DILocation(line: 176, column: 12, scope: !734)
!737 = !DILocation(line: 176, column: 20, scope: !734)
!738 = !DILocation(line: 178, column: 1, scope: !706)
!739 = distinct !DISubprogram(name: "createMissingClients", scope: !3, file: !3, line: 363, type: !22, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !740)
!740 = !{!741, !742}
!741 = !DILocalVariable(name: "c", arg: 1, scope: !739, file: !3, line: 363, type: !24)
!742 = !DILocalVariable(name: "new", scope: !743, file: !3, line: 365, type: !24)
!743 = distinct !DILexicalBlock(scope: !739, file: !3, line: 364, column: 51)
!744 = !DILocation(line: 0, scope: !739)
!745 = !DILocation(line: 364, column: 18, scope: !739)
!746 = !DILocation(line: 364, column: 39, scope: !739)
!747 = !DILocation(line: 364, column: 30, scope: !739)
!748 = !DILocation(line: 364, column: 5, scope: !739)
!749 = !DILocation(line: 365, column: 22, scope: !743)
!750 = !DILocation(line: 0, scope: !743)
!751 = !DILocation(line: 366, column: 14, scope: !752)
!752 = distinct !DILexicalBlock(scope: !743, file: !3, line: 366, column: 13)
!753 = !DILocation(line: 366, column: 13, scope: !743)
!754 = distinct !{!754, !748, !755}
!755 = !DILocation(line: 371, column: 5, scope: !739)
!756 = !DILocation(line: 367, column: 22, scope: !743)
!757 = !DILocation(line: 367, column: 9, scope: !743)
!758 = !DILocation(line: 368, column: 31, scope: !743)
!759 = !DILocation(line: 368, column: 21, scope: !743)
!760 = !DILocation(line: 368, column: 19, scope: !743)
!761 = !DILocation(line: 369, column: 20, scope: !762)
!762 = distinct !DILexicalBlock(scope: !743, file: !3, line: 369, column: 13)
!763 = !DILocation(line: 369, column: 13, scope: !762)
!764 = !DILocation(line: 369, column: 13, scope: !743)
!765 = !DILocation(line: 369, column: 32, scope: !762)
!766 = !DILocation(line: 370, column: 38, scope: !743)
!767 = !DILocation(line: 370, column: 9, scope: !743)
!768 = !DILocation(line: 372, column: 1, scope: !739)
!769 = !DISubprogram(name: "aeMain", scope: !58, file: !58, line: 113, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !56}
!772 = !DISubprogram(name: "sdscat", scope: !32, file: !32, line: 52, type: !773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!773 = !DISubroutineType(types: !774)
!774 = !{!31, !31, !12}
!775 = distinct !DISubprogram(name: "endBenchmark", scope: !3, file: !3, line: 407, type: !776, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !12}
!778 = !{!779}
!779 = !DILocalVariable(name: "title", arg: 1, scope: !775, file: !3, line: 407, type: !12)
!780 = !DILocation(line: 0, scope: !775)
!781 = !DILocation(line: 408, column: 25, scope: !775)
!782 = !DILocation(line: 408, column: 41, scope: !775)
!783 = !DILocation(line: 408, column: 33, scope: !775)
!784 = !DILocation(line: 408, column: 23, scope: !775)
!785 = !{!193, !195, i64 72}
!786 = !DILocation(line: 409, column: 5, scope: !775)
!787 = !DILocation(line: 410, column: 5, scope: !775)
!788 = !DILocation(line: 411, column: 1, scope: !775)
!789 = !DISubprogram(name: "sdscatprintf", scope: !32, file: !32, line: 57, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!790 = !DISubroutineType(types: !791)
!791 = !{!31, !31, !321, null}
!792 = !DISubprogram(name: "memset", scope: !318, file: !318, line: 61, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!793 = !DISubroutineType(types: !794)
!794 = !{!14, !14, !10, !328}
!795 = !DISubprogram(name: "sdscatlen", scope: !32, file: !32, line: 51, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!796 = !DISubroutineType(types: !797)
!797 = !{!31, !31, !14, !328}
!798 = distinct !DISubprogram(name: "mstime", scope: !3, file: !3, line: 102, type: !799, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!799 = !DISubroutineType(types: !800)
!800 = !{!40}
!801 = !{!802, !811}
!802 = !DILocalVariable(name: "tv", scope: !798, file: !3, line: 103, type: !803)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !804, line: 8, size: 128, elements: !805)
!804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!805 = !{!806, !809}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !803, file: !804, line: 10, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !808, line: 160, baseType: !15)
!808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !803, file: !804, line: 11, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !808, line: 162, baseType: !15)
!811 = !DILocalVariable(name: "mst", scope: !798, file: !3, line: 104, type: !40)
!812 = !DILocation(line: 103, column: 5, scope: !798)
!813 = !DILocation(line: 103, column: 20, scope: !798)
!814 = !DILocation(line: 106, column: 5, scope: !798)
!815 = !DILocation(line: 107, column: 21, scope: !798)
!816 = !{!817, !818, i64 0}
!817 = !{!"timeval", !818, i64 0, !818, i64 8}
!818 = !{!"long", !183, i64 0}
!819 = !DILocation(line: 107, column: 28, scope: !798)
!820 = !DILocation(line: 0, scope: !798)
!821 = !DILocation(line: 108, column: 15, scope: !798)
!822 = !{!817, !818, i64 8}
!823 = !DILocation(line: 108, column: 22, scope: !798)
!824 = !DILocation(line: 108, column: 9, scope: !798)
!825 = !DILocation(line: 110, column: 1, scope: !798)
!826 = !DILocation(line: 109, column: 5, scope: !798)
!827 = !DISubprogram(name: "gettimeofday", scope: !828, file: !828, line: 66, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!829 = !DISubroutineType(types: !830)
!830 = !{!10, !831, !833}
!831 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!834 = !DISubprogram(name: "anetTcpNonBlockConnect", scope: !332, file: !332, line: 39, type: !835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!835 = !DISubroutineType(types: !836)
!836 = !{!10, !12, !12, !10}
!837 = !DISubprogram(name: "zfree", scope: !325, file: !325, line: 36, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!838 = !DISubprogram(name: "fprintf", scope: !336, file: !336, line: 326, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!839 = !DISubroutineType(types: !840)
!840 = !{!10, !841, !339, null}
!841 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !844, line: 7, baseType: !845)
!844 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !846, line: 49, size: 1728, elements: !847)
!846 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !863, !865, !866, !867, !869, !871, !873, !877, !880, !882, !885, !888, !889, !890, !891, !892}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !845, file: !846, line: 51, baseType: !10, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !845, file: !846, line: 54, baseType: !12, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !845, file: !846, line: 55, baseType: !12, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !845, file: !846, line: 56, baseType: !12, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !845, file: !846, line: 57, baseType: !12, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !845, file: !846, line: 58, baseType: !12, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !845, file: !846, line: 59, baseType: !12, size: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !845, file: !846, line: 60, baseType: !12, size: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !845, file: !846, line: 61, baseType: !12, size: 64, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !845, file: !846, line: 64, baseType: !12, size: 64, offset: 576)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !845, file: !846, line: 65, baseType: !12, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !845, file: !846, line: 66, baseType: !12, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !845, file: !846, line: 68, baseType: !861, size: 64, offset: 768)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !846, line: 36, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !845, file: !846, line: 70, baseType: !864, size: 64, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !845, file: !846, line: 72, baseType: !10, size: 32, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !845, file: !846, line: 73, baseType: !10, size: 32, offset: 928)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !845, file: !846, line: 74, baseType: !868, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !808, line: 152, baseType: !15)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !845, file: !846, line: 77, baseType: !870, size: 16, offset: 1024)
!870 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !845, file: !846, line: 78, baseType: !872, size: 8, offset: 1040)
!872 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !845, file: !846, line: 79, baseType: !874, size: 8, offset: 1048)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 1)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !845, file: !846, line: 81, baseType: !878, size: 64, offset: 1088)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !846, line: 43, baseType: null)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !845, file: !846, line: 89, baseType: !881, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !808, line: 153, baseType: !15)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !845, file: !846, line: 91, baseType: !883, size: 64, offset: 1216)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !846, line: 37, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !845, file: !846, line: 92, baseType: !886, size: 64, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !846, line: 38, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !845, file: !846, line: 93, baseType: !864, size: 64, offset: 1344)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !845, file: !846, line: 94, baseType: !14, size: 64, offset: 1408)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !845, file: !846, line: 95, baseType: !328, size: 64, offset: 1472)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !845, file: !846, line: 96, baseType: !10, size: 32, offset: 1536)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !845, file: !846, line: 98, baseType: !893, size: 160, offset: 1568)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 20)
!896 = !DISubprogram(name: "anetTcpNoDelay", scope: !332, file: !332, line: 46, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!897 = !DISubroutineType(types: !898)
!898 = !{!10, !12, !10}
!899 = !DISubprogram(name: "aeCreateFileEvent", scope: !58, file: !58, line: 104, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!900 = !DISubroutineType(types: !901)
!901 = !{!10, !56, !10, !10, !70, !14}
!902 = distinct !DISubprogram(name: "writeHandler", scope: !3, file: !3, line: 309, type: !903, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !56, !10, !14, !10}
!905 = !{!906, !907, !908, !909, !910, !911, !914, !915}
!906 = !DILocalVariable(name: "el", arg: 1, scope: !902, file: !3, line: 309, type: !56)
!907 = !DILocalVariable(name: "fd", arg: 2, scope: !902, file: !3, line: 309, type: !10)
!908 = !DILocalVariable(name: "privdata", arg: 3, scope: !902, file: !3, line: 309, type: !14)
!909 = !DILocalVariable(name: "mask", arg: 4, scope: !902, file: !3, line: 309, type: !10)
!910 = !DILocalVariable(name: "c", scope: !902, file: !3, line: 311, type: !24)
!911 = !DILocalVariable(name: "ptr", scope: !912, file: !3, line: 321, type: !14)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 320, column: 39)
!913 = distinct !DILexicalBlock(scope: !902, file: !3, line: 320, column: 9)
!914 = !DILocalVariable(name: "len", scope: !912, file: !3, line: 322, type: !10)
!915 = !DILocalVariable(name: "nwritten", scope: !912, file: !3, line: 323, type: !10)
!916 = !DILocation(line: 0, scope: !902)
!917 = !DILocation(line: 311, column: 16, scope: !902)
!918 = !DILocation(line: 316, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !902, file: !3, line: 316, column: 9)
!920 = !DILocation(line: 316, column: 18, scope: !919)
!921 = !DILocation(line: 316, column: 9, scope: !902)
!922 = !DILocation(line: 317, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !3, line: 316, column: 40)
!924 = !DILocation(line: 318, column: 20, scope: !923)
!925 = !DILocation(line: 318, column: 12, scope: !923)
!926 = !DILocation(line: 318, column: 18, scope: !923)
!927 = !{!405, !195, i64 48}
!928 = !DILocation(line: 319, column: 5, scope: !923)
!929 = !DILocation(line: 320, column: 19, scope: !913)
!930 = !DILocation(line: 320, column: 9, scope: !913)
!931 = !DILocation(line: 320, column: 30, scope: !913)
!932 = !{!405, !194, i64 36}
!933 = !DILocation(line: 320, column: 27, scope: !913)
!934 = !DILocation(line: 320, column: 25, scope: !913)
!935 = !DILocation(line: 320, column: 9, scope: !902)
!936 = !DILocation(line: 321, column: 24, scope: !912)
!937 = !DILocation(line: 321, column: 28, scope: !912)
!938 = !DILocation(line: 0, scope: !912)
!939 = !DILocation(line: 322, column: 19, scope: !912)
!940 = !DILocation(line: 322, column: 40, scope: !912)
!941 = !DILocation(line: 323, column: 33, scope: !912)
!942 = !DILocation(line: 323, column: 42, scope: !912)
!943 = !DILocation(line: 323, column: 24, scope: !912)
!944 = !DILocation(line: 324, column: 22, scope: !945)
!945 = distinct !DILexicalBlock(scope: !912, file: !3, line: 324, column: 13)
!946 = !DILocation(line: 324, column: 13, scope: !912)
!947 = !DILocation(line: 325, column: 17, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 325, column: 17)
!949 = distinct !DILexicalBlock(scope: !945, file: !3, line: 324, column: 29)
!950 = !DILocation(line: 325, column: 23, scope: !948)
!951 = !DILocation(line: 325, column: 17, scope: !949)
!952 = !DILocation(line: 326, column: 25, scope: !948)
!953 = !DILocation(line: 326, column: 60, scope: !948)
!954 = !DILocation(line: 326, column: 17, scope: !948)
!955 = !DILocation(line: 327, column: 13, scope: !949)
!956 = !DILocation(line: 328, column: 13, scope: !949)
!957 = !DILocation(line: 330, column: 20, scope: !912)
!958 = !DILocation(line: 331, column: 23, scope: !959)
!959 = distinct !DILexicalBlock(scope: !912, file: !3, line: 331, column: 13)
!960 = !DILocation(line: 331, column: 13, scope: !959)
!961 = !DILocation(line: 331, column: 35, scope: !959)
!962 = !DILocation(line: 331, column: 32, scope: !959)
!963 = !DILocation(line: 331, column: 29, scope: !959)
!964 = !DILocation(line: 331, column: 13, scope: !912)
!965 = !DILocation(line: 332, column: 38, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !3, line: 331, column: 44)
!967 = !DILocation(line: 332, column: 44, scope: !966)
!968 = !DILocation(line: 332, column: 13, scope: !966)
!969 = !DILocation(line: 333, column: 38, scope: !966)
!970 = !DILocation(line: 333, column: 44, scope: !966)
!971 = !DILocation(line: 333, column: 13, scope: !966)
!972 = !DILocation(line: 334, column: 22, scope: !966)
!973 = !DILocation(line: 335, column: 9, scope: !966)
!974 = !DILocation(line: 337, column: 1, scope: !902)
!975 = !DISubprogram(name: "listAddNodeTail", scope: !124, file: !124, line: 76, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!976 = !DISubroutineType(types: !977)
!977 = !{!122, !122, !14}
!978 = !DISubprogram(name: "sdslen", scope: !32, file: !32, line: 47, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!979 = !DISubroutineType(types: !980)
!980 = !{!328, !981}
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!982 = !DISubprogram(name: "write", scope: !983, file: !983, line: 366, type: !984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!983 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!984 = !DISubroutineType(types: !985)
!985 = !{!986, !10, !988, !328}
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !336, line: 77, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !808, line: 193, baseType: !15)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!990 = !DISubprogram(name: "strerror", scope: !318, file: !318, line: 397, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!991 = !DISubroutineType(types: !992)
!992 = !{!12, !10}
!993 = distinct !DISubprogram(name: "freeClient", scope: !3, file: !3, line: 112, type: !22, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996}
!995 = !DILocalVariable(name: "c", arg: 1, scope: !993, file: !3, line: 112, type: !24)
!996 = !DILocalVariable(name: "ln", scope: !993, file: !3, line: 113, type: !128)
!997 = !DILocation(line: 0, scope: !993)
!998 = !DILocation(line: 115, column: 30, scope: !993)
!999 = !DILocation(line: 115, column: 36, scope: !993)
!1000 = !DILocation(line: 115, column: 5, scope: !993)
!1001 = !DILocation(line: 116, column: 30, scope: !993)
!1002 = !DILocation(line: 116, column: 36, scope: !993)
!1003 = !DILocation(line: 116, column: 5, scope: !993)
!1004 = !DILocation(line: 117, column: 16, scope: !993)
!1005 = !DILocation(line: 117, column: 5, scope: !993)
!1006 = !DILocation(line: 118, column: 16, scope: !993)
!1007 = !DILocation(line: 118, column: 5, scope: !993)
!1008 = !DILocation(line: 119, column: 14, scope: !993)
!1009 = !DILocation(line: 119, column: 5, scope: !993)
!1010 = !DILocation(line: 120, column: 11, scope: !993)
!1011 = !DILocation(line: 120, column: 5, scope: !993)
!1012 = !DILocation(line: 121, column: 23, scope: !993)
!1013 = !DILocation(line: 122, column: 31, scope: !993)
!1014 = !DILocation(line: 122, column: 10, scope: !993)
!1015 = !DILocation(line: 123, column: 5, scope: !993)
!1016 = !DILocation(line: 124, column: 24, scope: !993)
!1017 = !DILocation(line: 124, column: 5, scope: !993)
!1018 = !DILocation(line: 125, column: 1, scope: !993)
!1019 = !DISubprogram(name: "aeDeleteFileEvent", scope: !58, file: !58, line: 106, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !56, !10, !10}
!1022 = distinct !DISubprogram(name: "readHandler", scope: !3, file: !3, line: 209, type: !903, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1032, !1033, !1034, !1037}
!1024 = !DILocalVariable(name: "el", arg: 1, scope: !1022, file: !3, line: 209, type: !56)
!1025 = !DILocalVariable(name: "fd", arg: 2, scope: !1022, file: !3, line: 209, type: !10)
!1026 = !DILocalVariable(name: "privdata", arg: 3, scope: !1022, file: !3, line: 209, type: !14)
!1027 = !DILocalVariable(name: "mask", arg: 4, scope: !1022, file: !3, line: 209, type: !10)
!1028 = !DILocalVariable(name: "buf", scope: !1022, file: !3, line: 211, type: !1029)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 1024)
!1032 = !DILocalVariable(name: "nread", scope: !1022, file: !3, line: 212, type: !10)
!1033 = !DILocalVariable(name: "c", scope: !1022, file: !3, line: 213, type: !24)
!1034 = !DILocalVariable(name: "p", scope: !1035, file: !3, line: 240, type: !12)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 239, column: 58)
!1036 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 235, column: 9)
!1037 = !DILabel(scope: !1022, name: "processdata", file: !3, line: 232)
!1038 = !DILocation(line: 0, scope: !1022)
!1039 = !DILocation(line: 211, column: 5, scope: !1022)
!1040 = !DILocation(line: 211, column: 10, scope: !1022)
!1041 = !DILocation(line: 213, column: 16, scope: !1022)
!1042 = !DILocation(line: 218, column: 21, scope: !1022)
!1043 = !DILocation(line: 218, column: 13, scope: !1022)
!1044 = !DILocation(line: 219, column: 9, scope: !1022)
!1045 = !DILocation(line: 220, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 219, column: 22)
!1047 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 219, column: 9)
!1048 = !DILocation(line: 220, column: 63, scope: !1046)
!1049 = !DILocation(line: 220, column: 54, scope: !1046)
!1050 = !DILocation(line: 220, column: 9, scope: !1046)
!1051 = !DILocation(line: 221, column: 9, scope: !1046)
!1052 = !DILocation(line: 222, column: 9, scope: !1046)
!1053 = !DILocation(line: 225, column: 17, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 224, column: 21)
!1055 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 224, column: 9)
!1056 = !DILocation(line: 225, column: 9, scope: !1054)
!1057 = !DILocation(line: 226, column: 9, scope: !1054)
!1058 = !DILocation(line: 227, column: 9, scope: !1054)
!1059 = !DILocation(line: 229, column: 8, scope: !1022)
!1060 = !DILocation(line: 229, column: 20, scope: !1022)
!1061 = !{!405, !194, i64 32}
!1062 = !DILocation(line: 230, column: 28, scope: !1022)
!1063 = !DILocation(line: 230, column: 37, scope: !1022)
!1064 = !DILocation(line: 230, column: 15, scope: !1022)
!1065 = !DILocation(line: 230, column: 13, scope: !1022)
!1066 = !DILocation(line: 230, column: 5, scope: !1022)
!1067 = !DILocation(line: 232, column: 1, scope: !1022)
!1068 = !DILocation(line: 235, column: 12, scope: !1036)
!1069 = !DILocation(line: 235, column: 35, scope: !1036)
!1070 = !DILocation(line: 237, column: 43, scope: !1036)
!1071 = !DILocation(line: 237, column: 51, scope: !1036)
!1072 = !DILocation(line: 237, column: 58, scope: !1036)
!1073 = !DILocation(line: 238, column: 44, scope: !1036)
!1074 = !DILocation(line: 238, column: 52, scope: !1036)
!1075 = !DILocation(line: 238, column: 59, scope: !1036)
!1076 = !DILocation(line: 239, column: 44, scope: !1036)
!1077 = !DILocation(line: 239, column: 50, scope: !1036)
!1078 = !DILocation(line: 235, column: 9, scope: !1022)
!1079 = !DILocation(line: 244, column: 18, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 244, column: 13)
!1081 = !DILocation(line: 0, scope: !1035)
!1082 = !DILocation(line: 244, column: 40, scope: !1080)
!1083 = !DILocation(line: 244, column: 13, scope: !1035)
!1084 = !DILocation(line: 245, column: 44, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 245, column: 17)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 244, column: 49)
!1087 = !DILocation(line: 246, column: 52, scope: !1085)
!1088 = !DILocation(line: 246, column: 58, scope: !1085)
!1089 = !DILocation(line: 245, column: 17, scope: !1086)
!1090 = !DILocation(line: 250, column: 20, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 247, column: 13)
!1092 = !DILocation(line: 251, column: 20, scope: !1091)
!1093 = !DILocation(line: 251, column: 24, scope: !1091)
!1094 = !DILocation(line: 252, column: 38, scope: !1091)
!1095 = !DILocation(line: 252, column: 42, scope: !1091)
!1096 = !DILocation(line: 252, column: 30, scope: !1091)
!1097 = !DILocation(line: 252, column: 45, scope: !1091)
!1098 = !DILocation(line: 252, column: 28, scope: !1091)
!1099 = !DILocation(line: 255, column: 34, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 255, column: 21)
!1101 = !DILocation(line: 255, column: 21, scope: !1091)
!1102 = !DILocation(line: 256, column: 21, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 255, column: 41)
!1104 = !DILocation(line: 257, column: 21, scope: !1103)
!1105 = !DILocation(line: 260, column: 46, scope: !1091)
!1106 = !DILocation(line: 260, column: 55, scope: !1091)
!1107 = !DILocation(line: 260, column: 27, scope: !1091)
!1108 = !DILocation(line: 260, column: 25, scope: !1091)
!1109 = !DILocation(line: 286, column: 14, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 286, column: 9)
!1111 = !DILocation(line: 283, column: 9, scope: !1086)
!1112 = !DILocation(line: 266, column: 20, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 263, column: 71)
!1114 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 263, column: 24)
!1115 = !DILocation(line: 267, column: 20, scope: !1113)
!1116 = !DILocation(line: 267, column: 24, scope: !1113)
!1117 = !DILocation(line: 268, column: 36, scope: !1113)
!1118 = !DILocation(line: 268, column: 40, scope: !1113)
!1119 = !DILocation(line: 268, column: 28, scope: !1113)
!1120 = !DILocation(line: 268, column: 26, scope: !1113)
!1121 = !DILocation(line: 270, column: 30, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 270, column: 21)
!1123 = !DILocation(line: 270, column: 21, scope: !1113)
!1124 = !DILocation(line: 271, column: 21, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 270, column: 37)
!1126 = !DILocation(line: 272, column: 21, scope: !1125)
!1127 = !DILocation(line: 279, column: 27, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 278, column: 20)
!1129 = !DILocation(line: 279, column: 25, scope: !1128)
!1130 = !DILocation(line: 280, column: 17, scope: !1128)
!1131 = !DILocation(line: 281, column: 17, scope: !1128)
!1132 = !DILocation(line: 276, column: 46, scope: !1113)
!1133 = !DILocation(line: 276, column: 55, scope: !1113)
!1134 = !DILocation(line: 276, column: 27, scope: !1113)
!1135 = !DILocation(line: 276, column: 25, scope: !1113)
!1136 = !DILocation(line: 286, column: 39, scope: !1110)
!1137 = !DILocation(line: 286, column: 45, scope: !1110)
!1138 = !DILocation(line: 286, column: 51, scope: !1110)
!1139 = !DILocation(line: 286, column: 58, scope: !1110)
!1140 = !DILocation(line: 287, column: 46, scope: !1110)
!1141 = !DILocation(line: 287, column: 54, scope: !1110)
!1142 = !DILocation(line: 287, column: 60, scope: !1110)
!1143 = !DILocation(line: 288, column: 11, scope: !1110)
!1144 = !DILocation(line: 288, column: 35, scope: !1110)
!1145 = !DILocation(line: 288, column: 32, scope: !1110)
!1146 = !DILocation(line: 286, column: 9, scope: !1022)
!1147 = !DILocation(line: 292, column: 16, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 292, column: 13)
!1149 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 289, column: 5)
!1150 = !DILocation(line: 292, column: 13, scope: !1149)
!1151 = !DILocation(line: 293, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 292, column: 41)
!1153 = !DILocation(line: 294, column: 9, scope: !1152)
!1154 = !DILocation(line: 298, column: 17, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 298, column: 17)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 294, column: 49)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 294, column: 20)
!1158 = !DILocation(line: 298, column: 28, scope: !1155)
!1159 = !DILocation(line: 298, column: 17, scope: !1156)
!1160 = !DILocation(line: 299, column: 17, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 298, column: 34)
!1162 = !DILocation(line: 305, column: 9, scope: !1156)
!1163 = !DILocation(line: 301, column: 39, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 300, column: 20)
!1165 = !DILocation(line: 301, column: 47, scope: !1164)
!1166 = !DILocation(line: 301, column: 44, scope: !1164)
!1167 = !DILocation(line: 301, column: 27, scope: !1164)
!1168 = !DILocation(line: 301, column: 25, scope: !1164)
!1169 = !DILocation(line: 302, column: 28, scope: !1164)
!1170 = !DILocation(line: 303, column: 17, scope: !1164)
!1171 = !DILocation(line: 307, column: 1, scope: !1022)
!1172 = !DISubprogram(name: "sdsfree", scope: !32, file: !32, line: 49, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !31}
!1175 = !DISubprogram(name: "close", scope: !983, file: !983, line: 353, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!10, !10}
!1178 = !DISubprogram(name: "listSearchKey", scope: !124, file: !124, line: 82, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!128, !122, !14}
!1181 = !DISubprogram(name: "listDelNode", scope: !124, file: !124, line: 77, type: !1182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !122, !128}
!1184 = !DISubprogram(name: "read", scope: !983, file: !983, line: 360, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!986, !10, !14, !328}
!1187 = !DISubprogram(name: "strchr", scope: !318, file: !318, line: 226, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!12, !321, !10}
!1190 = !DILocation(line: 0, scope: !21)
!1191 = !DILocation(line: 184, column: 25, scope: !21)
!1192 = !DILocation(line: 185, column: 15, scope: !21)
!1193 = !DILocation(line: 185, column: 29, scope: !21)
!1194 = !DILocation(line: 185, column: 24, scope: !21)
!1195 = !DILocation(line: 186, column: 9, scope: !21)
!1196 = !DILocation(line: 187, column: 12, scope: !21)
!1197 = !DILocation(line: 187, column: 5, scope: !21)
!1198 = !DILocation(line: 187, column: 28, scope: !21)
!1199 = !DILocation(line: 189, column: 16, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !21, file: !3, line: 189, column: 9)
!1201 = !DILocation(line: 189, column: 9, scope: !1200)
!1202 = !DILocation(line: 189, column: 22, scope: !1200)
!1203 = !DILocation(line: 189, column: 25, scope: !1200)
!1204 = !DILocation(line: 189, column: 49, scope: !1200)
!1205 = !DILocation(line: 189, column: 43, scope: !1200)
!1206 = !DILocation(line: 189, column: 9, scope: !21)
!1207 = !DILocation(line: 190, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 189, column: 62)
!1209 = !DILocation(line: 191, column: 32, scope: !1208)
!1210 = !DILocation(line: 191, column: 27, scope: !1208)
!1211 = !DILocation(line: 192, column: 5, scope: !1208)
!1212 = !DILocation(line: 193, column: 16, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !21, file: !3, line: 193, column: 9)
!1214 = !DILocation(line: 193, column: 39, scope: !1213)
!1215 = !DILocation(line: 193, column: 29, scope: !1213)
!1216 = !DILocation(line: 193, column: 9, scope: !21)
!1217 = !DILocation(line: 194, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 193, column: 49)
!1219 = !DILocation(line: 195, column: 23, scope: !1218)
!1220 = !DILocation(line: 195, column: 9, scope: !1218)
!1221 = !DILocation(line: 196, column: 9, scope: !1218)
!1222 = !DILocation(line: 198, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !21, file: !3, line: 198, column: 9)
!1224 = !DILocation(line: 198, column: 9, scope: !1223)
!1225 = !DILocation(line: 198, column: 9, scope: !21)
!1226 = !DILocation(line: 199, column: 9, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 198, column: 27)
!1228 = !DILocation(line: 200, column: 20, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 200, column: 13)
!1230 = !DILocation(line: 200, column: 13, scope: !1229)
!1231 = !DILocation(line: 200, column: 13, scope: !1227)
!1232 = !DILocation(line: 200, column: 32, scope: !1229)
!1233 = !DILocation(line: 202, column: 27, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 201, column: 12)
!1235 = !DILocation(line: 203, column: 9, scope: !1234)
!1236 = !DILocation(line: 204, column: 27, scope: !1234)
!1237 = !DILocation(line: 205, column: 9, scope: !1234)
!1238 = !DILocation(line: 207, column: 1, scope: !21)
!1239 = !DISubprogram(name: "sdsrange", scope: !32, file: !32, line: 64, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!31, !31, !15, !15}
!1242 = !DISubprogram(name: "sdstrim", scope: !32, file: !32, line: 63, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!31, !31, !321}
!1245 = !DISubprogram(name: "aeStop", scope: !58, file: !58, line: 103, type: !770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1246 = distinct !DISubprogram(name: "resetClient", scope: !3, file: !3, line: 137, type: !22, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1247)
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "c", arg: 1, scope: !1246, file: !3, line: 137, type: !24)
!1249 = !DILocation(line: 0, scope: !1246)
!1250 = !DILocation(line: 138, column: 30, scope: !1246)
!1251 = !DILocation(line: 138, column: 36, scope: !1246)
!1252 = !DILocation(line: 138, column: 5, scope: !1246)
!1253 = !DILocation(line: 139, column: 30, scope: !1246)
!1254 = !DILocation(line: 139, column: 36, scope: !1246)
!1255 = !DILocation(line: 139, column: 5, scope: !1246)
!1256 = !DILocation(line: 140, column: 30, scope: !1246)
!1257 = !DILocation(line: 140, column: 36, scope: !1246)
!1258 = !DILocation(line: 140, column: 65, scope: !1246)
!1259 = !DILocation(line: 140, column: 5, scope: !1246)
!1260 = !DILocation(line: 141, column: 16, scope: !1246)
!1261 = !DILocation(line: 141, column: 5, scope: !1246)
!1262 = !DILocation(line: 142, column: 15, scope: !1246)
!1263 = !DILocation(line: 142, column: 13, scope: !1246)
!1264 = !DILocation(line: 143, column: 22, scope: !1246)
!1265 = !DILocation(line: 143, column: 46, scope: !1246)
!1266 = !DILocation(line: 143, column: 8, scope: !1246)
!1267 = !DILocation(line: 143, column: 16, scope: !1246)
!1268 = !DILocation(line: 145, column: 8, scope: !1246)
!1269 = !DILocation(line: 145, column: 14, scope: !1246)
!1270 = !DILocation(line: 146, column: 8, scope: !1246)
!1271 = !DILocation(line: 146, column: 16, scope: !1246)
!1272 = !DILocation(line: 147, column: 8, scope: !1246)
!1273 = !DILocation(line: 147, column: 20, scope: !1246)
!1274 = !DILocation(line: 148, column: 8, scope: !1246)
!1275 = !DILocation(line: 148, column: 14, scope: !1246)
!1276 = !DILocation(line: 149, column: 16, scope: !1246)
!1277 = !DILocation(line: 149, column: 8, scope: !1246)
!1278 = !DILocation(line: 149, column: 14, scope: !1246)
!1279 = !DILocation(line: 150, column: 5, scope: !1246)
!1280 = !DILocation(line: 151, column: 1, scope: !1246)
!1281 = distinct !DISubprogram(name: "randomizeClientKey", scope: !3, file: !3, line: 153, type: !22, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1282)
!1282 = !{!1283, !1284, !1285, !1289}
!1283 = !DILocalVariable(name: "c", arg: 1, scope: !1281, file: !3, line: 153, type: !24)
!1284 = !DILocalVariable(name: "p", scope: !1281, file: !3, line: 154, type: !12)
!1285 = !DILocalVariable(name: "buf", scope: !1281, file: !3, line: 155, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 32)
!1289 = !DILocalVariable(name: "r", scope: !1281, file: !3, line: 156, type: !15)
!1290 = !DILocation(line: 0, scope: !1281)
!1291 = !DILocation(line: 155, column: 5, scope: !1281)
!1292 = !DILocation(line: 155, column: 10, scope: !1281)
!1293 = !DILocation(line: 158, column: 19, scope: !1281)
!1294 = !DILocation(line: 158, column: 9, scope: !1281)
!1295 = !DILocation(line: 159, column: 10, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 159, column: 9)
!1297 = !DILocation(line: 159, column: 9, scope: !1281)
!1298 = !DILocation(line: 160, column: 7, scope: !1281)
!1299 = !DILocation(line: 161, column: 9, scope: !1281)
!1300 = !DILocation(line: 161, column: 27, scope: !1281)
!1301 = !DILocation(line: 161, column: 20, scope: !1281)
!1302 = !DILocation(line: 161, column: 18, scope: !1281)
!1303 = !DILocation(line: 162, column: 5, scope: !1281)
!1304 = !DILocation(line: 163, column: 18, scope: !1281)
!1305 = !DILocation(line: 163, column: 5, scope: !1281)
!1306 = !DILocation(line: 164, column: 1, scope: !1281)
!1307 = !DISubprogram(name: "strstr", scope: !318, file: !318, line: 330, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!12, !321, !321}
!1310 = !DISubprogram(name: "random", scope: !341, file: !341, line: 401, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!15}
!1313 = !DISubprogram(name: "sprintf", scope: !336, file: !336, line: 334, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!10, !1316, !339, null}
!1316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!1317 = !DISubprogram(name: "memcpy", scope: !318, file: !318, line: 43, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!14, !833, !1320, !328}
!1320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !988)
!1321 = !DISubprogram(name: "strlen", scope: !318, file: !318, line: 385, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!328, !321}
!1324 = !DISubprogram(name: "sdsdup", scope: !32, file: !32, line: 48, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !323)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!31, !981}
!1327 = distinct !DISubprogram(name: "showLatencyReport", scope: !3, file: !3, line: 374, type: !776, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333}
!1329 = !DILocalVariable(name: "title", arg: 1, scope: !1327, file: !3, line: 374, type: !12)
!1330 = !DILocalVariable(name: "j", scope: !1327, file: !3, line: 375, type: !10)
!1331 = !DILocalVariable(name: "seen", scope: !1327, file: !3, line: 375, type: !10)
!1332 = !DILocalVariable(name: "perc", scope: !1327, file: !3, line: 376, type: !17)
!1333 = !DILocalVariable(name: "reqpersec", scope: !1327, file: !3, line: 376, type: !17)
!1334 = !DILocation(line: 0, scope: !1327)
!1335 = !DILocation(line: 378, column: 31, scope: !1327)
!1336 = !DILocation(line: 378, column: 17, scope: !1327)
!1337 = !DILocation(line: 378, column: 59, scope: !1327)
!1338 = !DILocation(line: 378, column: 45, scope: !1327)
!1339 = !DILocation(line: 378, column: 69, scope: !1327)
!1340 = !DILocation(line: 378, column: 43, scope: !1327)
!1341 = !DILocation(line: 379, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 379, column: 9)
!1343 = !DILocation(line: 379, column: 10, scope: !1342)
!1344 = !DILocation(line: 379, column: 9, scope: !1327)
!1345 = !DILocation(line: 380, column: 9, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 379, column: 24)
!1347 = !DILocation(line: 381, column: 68, scope: !1346)
!1348 = !DILocation(line: 382, column: 27, scope: !1346)
!1349 = !DILocation(line: 382, column: 13, scope: !1346)
!1350 = !DILocation(line: 382, column: 37, scope: !1346)
!1351 = !DILocation(line: 381, column: 9, scope: !1346)
!1352 = !DILocation(line: 383, column: 50, scope: !1346)
!1353 = !DILocation(line: 383, column: 9, scope: !1346)
!1354 = !DILocation(line: 384, column: 47, scope: !1346)
!1355 = !DILocation(line: 384, column: 9, scope: !1346)
!1356 = !DILocation(line: 385, column: 45, scope: !1346)
!1357 = !DILocation(line: 385, column: 9, scope: !1346)
!1358 = !DILocation(line: 386, column: 9, scope: !1346)
!1359 = !DILocation(line: 388, column: 24, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 388, column: 17)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 387, column: 44)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 387, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 387, column: 9)
!1364 = !DILocation(line: 387, column: 9, scope: !1363)
!1365 = !DILocation(line: 388, column: 17, scope: !1360)
!1366 = !DILocation(line: 388, column: 17, scope: !1361)
!1367 = !DILocation(line: 389, column: 22, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 388, column: 36)
!1369 = !DILocation(line: 390, column: 25, scope: !1368)
!1370 = !DILocation(line: 390, column: 36, scope: !1368)
!1371 = !DILocation(line: 390, column: 49, scope: !1368)
!1372 = !DILocation(line: 390, column: 42, scope: !1368)
!1373 = !DILocation(line: 390, column: 41, scope: !1368)
!1374 = !DILocation(line: 391, column: 55, scope: !1368)
!1375 = !DILocation(line: 391, column: 17, scope: !1368)
!1376 = !DILocation(line: 392, column: 13, scope: !1368)
!1377 = !DILocation(line: 387, column: 40, scope: !1362)
!1378 = !DILocation(line: 387, column: 23, scope: !1362)
!1379 = distinct !{!1379, !1364, !1380}
!1380 = !DILocation(line: 393, column: 9, scope: !1363)
!1381 = !DILocation(line: 394, column: 48, scope: !1346)
!1382 = !DILocation(line: 394, column: 9, scope: !1346)
!1383 = !DILocation(line: 395, column: 5, scope: !1346)
!1384 = !DILocation(line: 396, column: 57, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 395, column: 12)
!1386 = !DILocation(line: 396, column: 9, scope: !1385)
!1387 = !DILocation(line: 398, column: 1, scope: !1327)
!1388 = distinct !DISubprogram(name: "freeAllClients", scope: !3, file: !3, line: 127, type: !645, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1389)
!1389 = !{!1390, !1391}
!1390 = !DILocalVariable(name: "ln", scope: !1388, file: !3, line: 128, type: !128)
!1391 = !DILocalVariable(name: "next", scope: !1388, file: !3, line: 128, type: !128)
!1392 = !DILocation(line: 128, column: 27, scope: !1388)
!1393 = !DILocation(line: 128, column: 36, scope: !1388)
!1394 = !{!1395, !182, i64 0}
!1395 = !{!"list", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !194, i64 40}
!1396 = !DILocation(line: 0, scope: !1388)
!1397 = !DILocation(line: 130, column: 5, scope: !1388)
!1398 = !DILocation(line: 131, column: 20, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 130, column: 15)
!1400 = !{!1401, !182, i64 8}
!1401 = !{!"listNode", !182, i64 0, !182, i64 8, !182, i64 16}
!1402 = !DILocation(line: 132, column: 24, scope: !1399)
!1403 = !{!1401, !182, i64 16}
!1404 = !DILocation(line: 132, column: 9, scope: !1399)
!1405 = distinct !{!1405, !1397, !1406}
!1406 = !DILocation(line: 134, column: 5, scope: !1388)
!1407 = !DILocation(line: 135, column: 1, scope: !1388)
