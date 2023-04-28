; ModuleID = 'redis-cli.c'
source_filename = "redis-cli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@config.0 = internal unnamed_addr global i8* null, align 8, !dbg !0
@config.1 = internal unnamed_addr global i32 0, align 8, !dbg !59
@config.2 = internal unnamed_addr global i64 0, align 8, !dbg !60
@config.3 = internal unnamed_addr global i32 0, align 8, !dbg !61
@config.4 = internal unnamed_addr global i1 false, align 8, !dbg !62
@config.5 = internal unnamed_addr global i1 false, align 8, !dbg !63
@config.6 = internal unnamed_addr global i1 false, align 8, !dbg !64
@config.7 = internal unnamed_addr global i1 false, align 8, !dbg !65
@config.8 = internal unnamed_addr global i32 0, align 8, !dbg !66
@config.9 = internal unnamed_addr global i32 0, align 8, !dbg !67
@config.10 = internal unnamed_addr global i1 false, align 4, !dbg !68
@config.11 = internal unnamed_addr global i8* null, align 8, !dbg !69
@config.12 = internal unnamed_addr global i8* null, align 8, !dbg !70
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"FAKETTY\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s/.rediscli_history\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Can't resolve %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [147 x i8] c"Starting interactive mode using -i is deprecated. Interactive mode is started\0Aby default when redis-cli is executed without a command to execute.\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.14 = private unnamed_addr constant [170 x i8] c"Reading last argument from standard input using -c is deprecated.\0AWhen standard input is connected to a pipe or regular file, it is\0Aautomatically used as last argument.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"redis-cli shipped with Redis verison %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"2.0.0\00", align 1
@.str.18 = private unnamed_addr constant [114 x i8] c"usage: redis-cli [-iv] [-h host] [-p port] [-a authpw] [-r repeat_times] [-n db_num] cmd arg1 arg2 arg3 ... argN\0A\00", align 1
@.str.19 = private unnamed_addr constant [121 x i8] c"usage: echo \22argN\22 | redis-cli [-h host] [-p port] [-a authpw] [-r repeat_times] [-n db_num] cmd arg1 arg2 ... arg(N-1)\0A\00", align 1
@.str.20 = private unnamed_addr constant [81 x i8] c"\0AIf a pipe from standard input is detected this data is used as last argument.\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"example: cat /etc/passwd | redis-cli set my_passwd\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"example: redis-cli get my_passwd\0A\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"example: redis-cli -r 100 lpush mylist x\0A\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"\0ARun in interactive mode: redis-cli -i or just don't pass any command\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"subscribe\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"psubscribe\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Error setting DB num\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"$%lu\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Reading messages... (press Ctrl-c to quit)\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [351 x i8] c"\0AWelcome to redis-cli 2.0.0!\0AJust type any valid Redis command to see a pretty printed output.\0A\0AIt is possible to quote strings, like in:\0A  set \22my key\22 \22some string \\xff\\n\22\0A\0AYou can find a list of valid Redis commands at\0A  http://code.google.com/p/redis/wiki/CommandReference\0A\0ANote: redis-cli supports line editing, use up/down arrows for history.\0A\0A\00", align 1
@cliConnect.fd = internal unnamed_addr global i32 -1, align 4, !dbg !32
@.str.39 = private unnamed_addr constant [40 x i8] c"Could not connect to Redis at %s:%d: %s\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"SELECT %d\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"I/O error while reading from socket: %s\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"(error) \00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"(integer) \00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"protocol error, got '%c' as reply type byte\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"(empty list or set)\0A\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"%d. \00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"redis> \00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"Invalid argument(s)\0A\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"Reconnecting... \00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [28 x i8] c"Reading from standard input\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !76 {
entry:
  %authargv = alloca [2 x i8*], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !80, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8** %argv, metadata !81, metadata !DIExpression()), !dbg !90
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @config.0, align 8, !dbg !91, !tbaa !92
  store i32 6379, i32* @config.1, align 8, !dbg !99, !tbaa !100
  store i64 1, i64* @config.2, align 8, !dbg !101, !tbaa !102
  store i32 0, i32* @config.3, align 8, !dbg !103, !tbaa !104
  store i1 false, i1* @config.4, align 8, !dbg !105
  store i1 false, i1* @config.5, align 8, !dbg !106
  store i1 false, i1* @config.6, align 8, !dbg !107
  store i1 false, i1* @config.7, align 8, !dbg !108
  store i32 0, i32* @config.8, align 8, !dbg !109, !tbaa !110
  store i8* null, i8** @config.11, align 8, !dbg !111, !tbaa !112
  store i8* null, i8** @config.12, align 8, !dbg !113, !tbaa !114
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !115, !tbaa !116
  %call = tail call i32 @fileno(%struct._IO_FILE* noundef %0) #11, !dbg !117
  %call1 = tail call i32 @isatty(i32 noundef %call) #11, !dbg !118
  %tobool.not = icmp eq i32 %call1, 0, !dbg !118
  br i1 %tobool.not, label %lor.rhs, label %lor.end, !dbg !119

lor.rhs:                                          ; preds = %entry
  %call2 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #11, !dbg !120
  %cmp = icmp ne i8* %call2, null, !dbg !121
  %phi.cast = zext i1 %cmp to i32, !dbg !119
  br label %lor.end, !dbg !119

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  store i32 %1, i32* @config.9, align 8, !dbg !122, !tbaa !123
  store i1 true, i1* @config.10, align 4, !dbg !124
  %call3 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !125
  %cmp4.not = icmp eq i8* %call3, null, !dbg !127
  br i1 %cmp4.not, label %if.end, label %if.then, !dbg !128

if.then:                                          ; preds = %lor.end
  %call5 = tail call noalias i8* @malloc(i64 noundef 256) #11, !dbg !129
  store i8* %call5, i8** @config.12, align 8, !dbg !131, !tbaa !114
  %call6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !132
  %call7 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %call5, i64 noundef 256, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* noundef %call6) #11, !dbg !133
  %2 = load i8*, i8** @config.12, align 8, !dbg !134, !tbaa !114
  %call8 = tail call i32 @linenoiseHistoryLoad(i8* noundef %2) #11, !dbg !135
  br label %if.end, !dbg !136

if.end:                                           ; preds = %if.then, %lor.end
  %call9 = tail call fastcc i32 @parseOptions(i32 noundef %argc, i8** noundef %argv) #12, !dbg !137
  call void @llvm.dbg.value(metadata i32 %call9, metadata !82, metadata !DIExpression()), !dbg !90
  %sub = sub nsw i32 %argc, %call9, !dbg !138
  call void @llvm.dbg.value(metadata i32 %sub, metadata !80, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata !DIArgList(i8** %argv, i32 %call9), metadata !81, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !90
  %3 = load i8*, i8** @config.11, align 8, !dbg !139, !tbaa !112
  %cmp10.not = icmp eq i8* %3, null, !dbg !140
  br i1 %cmp10.not, label %if.end15, label %if.then11, !dbg !141

if.then11:                                        ; preds = %if.end
  %4 = bitcast [2 x i8*]* %authargv to i8*, !dbg !142
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #13, !dbg !142
  call void @llvm.dbg.declare(metadata [2 x i8*]* %authargv, metadata !83, metadata !DIExpression()), !dbg !143
  %5 = load i32, i32* @config.3, align 8, !dbg !144, !tbaa !104
  call void @llvm.dbg.value(metadata i32 %5, metadata !89, metadata !DIExpression()), !dbg !145
  store i32 0, i32* @config.3, align 8, !dbg !146, !tbaa !104
  %arrayidx = getelementptr inbounds [2 x i8*], [2 x i8*]* %authargv, i64 0, i64 0, !dbg !147
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %arrayidx, align 16, !dbg !148, !tbaa !116
  %arrayidx12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %authargv, i64 0, i64 1, !dbg !149
  store i8* %3, i8** %arrayidx12, align 8, !dbg !150, !tbaa !116
  %call13 = call fastcc i8** @convertToSds(i32 noundef 2, i8** noundef nonnull %arrayidx) #12, !dbg !151
  %call14 = tail call fastcc i32 @cliSendCommand(i32 noundef 2, i8** noundef %call13, i32 noundef 1) #12, !dbg !152
  store i32 %5, i32* @config.3, align 8, !dbg !153, !tbaa !104
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #13, !dbg !154
  br label %if.end15, !dbg !155

if.end15:                                         ; preds = %if.then11, %if.end
  %cmp16 = icmp eq i32 %sub, 0, !dbg !156
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !158

if.then17:                                        ; preds = %if.end15
  tail call fastcc void @repl() #12, !dbg !159
  unreachable, !dbg !159

if.end18:                                         ; preds = %if.end15
  %idx.ext = sext i32 %call9 to i64, !dbg !160
  call void @llvm.dbg.value(metadata !DIArgList(i8** %argv, i64 %idx.ext), metadata !81, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !90
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !160
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !81, metadata !DIExpression()), !dbg !90
  %call19 = tail call fastcc i8** @convertToSds(i32 noundef %sub, i8** noundef %add.ptr) #12, !dbg !161
  %call20 = tail call fastcc i32 @noninteractive(i32 noundef %sub, i8** noundef %call19) #12, !dbg !162
  ret i32 %call20, !dbg !163
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !164 dso_local i32 @isatty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !167 dso_local i32 @fileno(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !227 dso_local i8* @getenv(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !233 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !236 dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #3

declare !dbg !241 dso_local i32 @linenoiseHistoryLoad(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @parseOptions(i32 noundef %argc, i8** nocapture noundef readonly %argv) unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !247, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i8** %argv, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 1, metadata !249, metadata !DIExpression()), !dbg !257
  %cmp167 = icmp sgt i32 %argc, 1, !dbg !258
  br i1 %cmp167, label %for.body.lr.ph, label %for.end, !dbg !259

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %argc, -1
  br label %for.body, !dbg !259

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0168 = phi i32 [ 1, %for.body.lr.ph ], [ %inc101, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0168, metadata !249, metadata !DIExpression()), !dbg !257
  %cmp1 = icmp eq i32 %i.0168, %sub, !dbg !260
  call void @llvm.dbg.value(metadata i1 %cmp1, metadata !250, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !261
  %idxprom = sext i32 %i.0168 to i64, !dbg !262
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !262
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !262, !tbaa !116
  %call = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #14, !dbg !263
  %tobool = icmp ne i32 %call, 0, !dbg !263
  %or.cond = select i1 %tobool, i1 true, i1 %cmp1, !dbg !264
  br i1 %or.cond, label %if.else, label %if.then, !dbg !264

if.then:                                          ; preds = %for.body
  %call3 = tail call i8* @zmalloc(i64 noundef 32) #11, !dbg !265
  call void @llvm.dbg.value(metadata i8* %call3, metadata !254, metadata !DIExpression()), !dbg !266
  %add = add nsw i32 %i.0168, 1, !dbg !267
  %idxprom4 = sext i32 %add to i64, !dbg !269
  %arrayidx5 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom4, !dbg !269
  %1 = load i8*, i8** %arrayidx5, align 8, !dbg !269, !tbaa !116
  %call6 = tail call i32 @anetResolve(i8* noundef null, i8* noundef %1, i8* noundef %call3) #11, !dbg !270
  %cmp7 = icmp eq i32 %call6, -1, !dbg !271
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !272

if.then9:                                         ; preds = %if.then
  %arrayidx.le = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !262
  %2 = load i8*, i8** %arrayidx.le, align 8, !dbg !273, !tbaa !116
  %call12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* noundef %2) #11, !dbg !275
  tail call void @exit(i32 noundef 1) #15, !dbg !276
  unreachable, !dbg !276

if.end:                                           ; preds = %if.then
  store i8* %call3, i8** @config.0, align 8, !dbg !277, !tbaa !92
  call void @llvm.dbg.value(metadata i32 %add, metadata !249, metadata !DIExpression()), !dbg !257
  br label %for.inc, !dbg !278

if.else:                                          ; preds = %for.body
  %tobool16 = icmp eq i32 %call, 0, !dbg !279
  %or.cond103 = select i1 %tobool16, i1 %cmp1, i1 false, !dbg !281
  br i1 %or.cond103, label %if.then19, label %if.else20, !dbg !281

if.then19:                                        ; preds = %if.else
  tail call fastcc void @usage() #12, !dbg !282
  unreachable, !dbg !284

if.else20:                                        ; preds = %if.else
  %call23 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !285
  %tobool24 = icmp ne i32 %call23, 0, !dbg !285
  %or.cond104 = select i1 %tobool24, i1 true, i1 %cmp1, !dbg !287
  br i1 %or.cond104, label %if.else33, label %if.then27, !dbg !287

if.then27:                                        ; preds = %if.else20
  %add28 = add nsw i32 %i.0168, 1, !dbg !288
  %idxprom29 = sext i32 %add28 to i64, !dbg !290
  %arrayidx30 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom29, !dbg !290
  %3 = load i8*, i8** %arrayidx30, align 8, !dbg !290, !tbaa !116
  %call31 = tail call i32 @atoi(i8* noundef %3) #14, !dbg !291
  store i32 %call31, i32* @config.1, align 8, !dbg !292, !tbaa !100
  call void @llvm.dbg.value(metadata i32 %add28, metadata !249, metadata !DIExpression()), !dbg !257
  br label %for.inc, !dbg !293

if.else33:                                        ; preds = %if.else20
  %call36 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !294
  %tobool37 = icmp ne i32 %call36, 0, !dbg !294
  %or.cond105 = select i1 %tobool37, i1 true, i1 %cmp1, !dbg !296
  br i1 %or.cond105, label %if.else46, label %if.then40, !dbg !296

if.then40:                                        ; preds = %if.else33
  %add41 = add nsw i32 %i.0168, 1, !dbg !297
  %idxprom42 = sext i32 %add41 to i64, !dbg !299
  %arrayidx43 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom42, !dbg !299
  %4 = load i8*, i8** %arrayidx43, align 8, !dbg !299, !tbaa !116
  %call44 = tail call i64 @strtoll(i8* noundef %4, i8** noundef null, i32 noundef 10) #11, !dbg !300
  store i64 %call44, i64* @config.2, align 8, !dbg !301, !tbaa !102
  call void @llvm.dbg.value(metadata i32 %add41, metadata !249, metadata !DIExpression()), !dbg !257
  br label %for.inc, !dbg !302

if.else46:                                        ; preds = %if.else33
  %call49 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !303
  %tobool50 = icmp ne i32 %call49, 0, !dbg !303
  %or.cond106 = select i1 %tobool50, i1 true, i1 %cmp1, !dbg !305
  br i1 %or.cond106, label %if.else59, label %if.then53, !dbg !305

if.then53:                                        ; preds = %if.else46
  %add54 = add nsw i32 %i.0168, 1, !dbg !306
  %idxprom55 = sext i32 %add54 to i64, !dbg !308
  %arrayidx56 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom55, !dbg !308
  %5 = load i8*, i8** %arrayidx56, align 8, !dbg !308, !tbaa !116
  %call57 = tail call i32 @atoi(i8* noundef %5) #14, !dbg !309
  store i32 %call57, i32* @config.3, align 8, !dbg !310, !tbaa !104
  call void @llvm.dbg.value(metadata i32 %add54, metadata !249, metadata !DIExpression()), !dbg !257
  br label %for.inc, !dbg !311

if.else59:                                        ; preds = %if.else46
  %call62 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !312
  %tobool63 = icmp ne i32 %call62, 0, !dbg !312
  %or.cond107 = select i1 %tobool63, i1 true, i1 %cmp1, !dbg !314
  br i1 %or.cond107, label %if.else71, label %if.then66, !dbg !314

if.then66:                                        ; preds = %if.else59
  %add67 = add nsw i32 %i.0168, 1, !dbg !315
  %idxprom68 = sext i32 %add67 to i64, !dbg !317
  %arrayidx69 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom68, !dbg !317
  %6 = load i8*, i8** %arrayidx69, align 8, !dbg !317, !tbaa !116
  store i8* %6, i8** @config.11, align 8, !dbg !318, !tbaa !112
  call void @llvm.dbg.value(metadata i32 %add67, metadata !249, metadata !DIExpression()), !dbg !257
  br label %for.inc, !dbg !319

if.else71:                                        ; preds = %if.else59
  %call74 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !320
  %tobool75.not = icmp eq i32 %call74, 0, !dbg !320
  br i1 %tobool75.not, label %if.then76, label %if.else78, !dbg !322

if.then76:                                        ; preds = %if.else71
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !116
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([147 x i8], [147 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !325
  br label %for.inc, !dbg !326

if.else78:                                        ; preds = %if.else71
  %call81 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #14, !dbg !327
  %tobool82.not = icmp eq i32 %call81, 0, !dbg !327
  br i1 %tobool82.not, label %if.then83, label %if.else85, !dbg !329

if.then83:                                        ; preds = %if.else78
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !330, !tbaa !116
  %call84 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([170 x i8], [170 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !332
  br label %for.inc

if.else85:                                        ; preds = %if.else78
  %call88 = tail call i32 @strcmp(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #14, !dbg !333
  %tobool89.not = icmp eq i32 %call88, 0, !dbg !333
  br i1 %tobool89.not, label %if.then90, label %for.end, !dbg !335

if.then90:                                        ; preds = %if.else85
  %call91 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !336
  tail call void @exit(i32 noundef 0) #15, !dbg !338
  unreachable, !dbg !338

for.inc:                                          ; preds = %if.then40, %if.then66, %if.then83, %if.then76, %if.then53, %if.then27, %if.end
  %i.2.ph = phi i32 [ %add, %if.end ], [ %add28, %if.then27 ], [ %add41, %if.then40 ], [ %add54, %if.then53 ], [ %add67, %if.then66 ], [ %i.0168, %if.then76 ], [ %i.0168, %if.then83 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !249, metadata !DIExpression()), !dbg !257
  %inc101 = add nsw i32 %i.2.ph, 1, !dbg !339
  call void @llvm.dbg.value(metadata i32 %inc101, metadata !249, metadata !DIExpression()), !dbg !257
  %cmp = icmp slt i32 %inc101, %argc, !dbg !258
  br i1 %cmp, label %for.body, label %for.end, !dbg !259, !llvm.loop !340

for.end:                                          ; preds = %for.inc, %entry, %if.else85
  %i.0162 = phi i32 [ %i.0168, %if.else85 ], [ 1, %entry ], [ %inc101, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.0162, metadata !249, metadata !DIExpression()), !dbg !257
  ret i32 %i.0162, !dbg !342
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliSendCommand(i32 noundef %argc, i8** nocapture noundef readonly %argv, i32 noundef %repeat) unnamed_addr #0 !dbg !343 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !347, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i8** %argv, metadata !348, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 %repeat, metadata !349, metadata !DIExpression()), !dbg !357
  %0 = load i8*, i8** %argv, align 8, !dbg !358, !tbaa !116
  call void @llvm.dbg.value(metadata i8* %0, metadata !350, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !353, metadata !DIExpression()), !dbg !357
  %call = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #14, !dbg !359
  %tobool.not = icmp eq i32 %call, 0, !dbg !360
  %lnot.ext = zext i1 %tobool.not to i32, !dbg !360
  store i32 %lnot.ext, i32* @config.8, align 8, !dbg !361, !tbaa !110
  %call2 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !362
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !362
  br i1 %tobool3.not, label %if.then, label %if.end, !dbg !364

if.then:                                          ; preds = %entry
  tail call fastcc void @showInteractiveHelp() #12, !dbg !365
  br label %cleanup, !dbg !367

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)) #14, !dbg !368
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !368
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !370

if.then6:                                         ; preds = %if.end
  store i1 true, i1* @config.5, align 8, !dbg !371
  br label %if.end7, !dbg !372

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0)) #14, !dbg !373
  %tobool9.not = icmp eq i32 %call8, 0, !dbg !373
  br i1 %tobool9.not, label %if.then10, label %if.end11, !dbg !375

if.then10:                                        ; preds = %if.end7
  store i1 true, i1* @config.6, align 8, !dbg !376
  br label %if.end11, !dbg !377

if.end11:                                         ; preds = %if.then10, %if.end7
  %call12 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0)) #14, !dbg !378
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !378
  br i1 %tobool13.not, label %if.then16, label %lor.lhs.false, !dbg !380

lor.lhs.false:                                    ; preds = %if.end11
  %call14 = tail call i32 @strcasecmp(i8* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0)) #14, !dbg !381
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !381
  br i1 %tobool15.not, label %if.then16, label %if.end17, !dbg !382

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  store i1 true, i1* @config.7, align 8, !dbg !383
  br label %if.end17, !dbg !384

if.end17:                                         ; preds = %if.then16, %lor.lhs.false
  %call18 = tail call fastcc i32 @cliConnect(i32 noundef 0) #12, !dbg !385
  call void @llvm.dbg.value(metadata i32 %call18, metadata !351, metadata !DIExpression()), !dbg !357
  %cmp = icmp eq i32 %call18, -1, !dbg !387
  br i1 %cmp, label %cleanup, label %if.end20, !dbg !388

if.end20:                                         ; preds = %if.end17
  %call21 = tail call fastcc i32 @selectDb(i32 noundef %call18) #12, !dbg !389
  call void @llvm.dbg.value(metadata i32 %call21, metadata !353, metadata !DIExpression()), !dbg !357
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !390
  br i1 %tobool22.not, label %if.end25, label %if.then23, !dbg !392

if.then23:                                        ; preds = %if.end20
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !393, !tbaa !116
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !395
  br label %cleanup, !dbg !396

if.end25:                                         ; preds = %if.end20
  %call26 = tail call i8* (...) @sdsempty() #11, !dbg !397
  %call27 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* noundef %call26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 noundef %argc) #11, !dbg !398
  call void @llvm.dbg.value(metadata i8* %call27, metadata !354, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !352, metadata !DIExpression()), !dbg !357
  %cmp28101 = icmp sgt i32 %argc, 0, !dbg !399
  br i1 %cmp28101, label %for.body.preheader, label %while.cond.preheader, !dbg !402

for.body.preheader:                               ; preds = %if.end25
  %wide.trip.count = zext i32 %argc to i64, !dbg !399
  br label %for.body, !dbg !402

while.cond.preheader:                             ; preds = %for.body, %if.end25
  %cmd.0.lcssa = phi i8* [ %call27, %if.end25 ], [ %call38, %for.body ], !dbg !357
  br label %while.cond, !dbg !403

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %cmd.0103 = phi i8* [ %call27, %for.body.preheader ], [ %call38, %for.body ]
  call void @llvm.dbg.value(metadata i8* %cmd.0103, metadata !354, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !352, metadata !DIExpression()), !dbg !357
  %arrayidx29 = getelementptr inbounds i8*, i8** %argv, i64 %indvars.iv, !dbg !404
  %2 = load i8*, i8** %arrayidx29, align 8, !dbg !404, !tbaa !116
  %call30 = tail call i64 @sdslen(i8* noundef %2) #11, !dbg !406
  %call31 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* noundef %cmd.0103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i64 noundef %call30) #11, !dbg !407
  call void @llvm.dbg.value(metadata i8* %call31, metadata !354, metadata !DIExpression()), !dbg !357
  %3 = load i8*, i8** %arrayidx29, align 8, !dbg !408, !tbaa !116
  %call36 = tail call i64 @sdslen(i8* noundef %3) #11, !dbg !409
  %call37 = tail call i8* @sdscatlen(i8* noundef %call31, i8* noundef %3, i64 noundef %call36) #11, !dbg !410
  call void @llvm.dbg.value(metadata i8* %call37, metadata !354, metadata !DIExpression()), !dbg !357
  %call38 = tail call i8* @sdscatlen(i8* noundef %call37, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i64 noundef 2) #11, !dbg !411
  call void @llvm.dbg.value(metadata i8* %call38, metadata !354, metadata !DIExpression()), !dbg !357
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !352, metadata !DIExpression()), !dbg !357
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !399
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body, !dbg !402, !llvm.loop !413

while.cond:                                       ; preds = %while.cond.preheader, %if.end63
  %repeat.addr.0 = phi i32 [ %dec, %if.end63 ], [ %repeat, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %repeat.addr.0, metadata !349, metadata !DIExpression()), !dbg !357
  %dec = add nsw i32 %repeat.addr.0, -1, !dbg !415
  call void @llvm.dbg.value(metadata i32 %dec, metadata !349, metadata !DIExpression()), !dbg !357
  %tobool39.not = icmp eq i32 %repeat.addr.0, 0, !dbg !403
  br i1 %tobool39.not, label %cleanup, label %while.body, !dbg !403

while.body:                                       ; preds = %while.cond
  %call40 = tail call i64 @sdslen(i8* noundef %cmd.0.lcssa) #11, !dbg !416
  %conv = trunc i64 %call40 to i32, !dbg !416
  %call41 = tail call i32 @anetWrite(i32 noundef %call18, i8* noundef %cmd.0.lcssa, i32 noundef %conv) #11, !dbg !418
  %.b104 = load i1, i1* @config.6, align 8, !dbg !419
  br i1 %.b104, label %while.body44, label %while.end, !dbg !420

while.body44:                                     ; preds = %while.body, %if.end48
  %call45 = tail call fastcc i32 @cliReadSingleLineReply(i32 noundef %call18, i32 noundef 0) #12, !dbg !421
  %tobool46.not = icmp eq i32 %call45, 0, !dbg !421
  br i1 %tobool46.not, label %if.end48, label %if.then47, !dbg !424

if.then47:                                        ; preds = %while.body44
  tail call void @exit(i32 noundef 1) #15, !dbg !425
  unreachable, !dbg !425

if.end48:                                         ; preds = %while.body44
  %call49 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !426
  %.b = load i1, i1* @config.6, align 8, !dbg !419
  br i1 %.b, label %while.body44, label %while.end, !dbg !420, !llvm.loop !427

while.end:                                        ; preds = %if.end48, %while.body
  %.b100 = load i1, i1* @config.7, align 8, !dbg !429
  br i1 %.b100, label %if.then51, label %if.end57, !dbg !431

if.then51:                                        ; preds = %while.end
  %call52 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !432
  br label %while.cond53, !dbg !434

while.cond53:                                     ; preds = %while.cond53, %if.then51
  %call55 = tail call fastcc i32 @cliReadReply(i32 noundef %call18) #12, !dbg !435
  %call56 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #11, !dbg !437
  br label %while.cond53, !dbg !434, !llvm.loop !438

if.end57:                                         ; preds = %while.end
  %call58 = tail call fastcc i32 @cliReadReply(i32 noundef %call18) #12, !dbg !440
  call void @llvm.dbg.value(metadata i32 %call58, metadata !353, metadata !DIExpression()), !dbg !357
  %4 = load i32, i32* @config.8, align 8, !dbg !441, !tbaa !110
  %tobool59 = icmp eq i32 %4, 0, !dbg !443
  %5 = load i32, i32* @config.9, align 8
  %tobool60 = icmp ne i32 %5, 0
  %or.cond = select i1 %tobool59, i1 %tobool60, i1 false, !dbg !444
  br i1 %or.cond, label %if.then61, label %if.end63, !dbg !444

if.then61:                                        ; preds = %if.end57
  %call62 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #11, !dbg !445
  br label %if.end63, !dbg !445

if.end63:                                         ; preds = %if.then61, %if.end57
  %tobool64.not = icmp eq i32 %call58, 0, !dbg !446
  br i1 %tobool64.not, label %while.cond, label %cleanup, !dbg !448, !llvm.loop !449

cleanup:                                          ; preds = %while.cond, %if.end63, %if.end17, %if.then23, %if.then
  %retval.0 = phi i32 [ 1, %if.then23 ], [ 0, %if.then ], [ 1, %if.end17 ], [ 0, %while.cond ], [ %call58, %if.end63 ], !dbg !357
  ret i32 %retval.0, !dbg !451
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @convertToSds(i32 noundef %count, i8** nocapture noundef readonly %args) unnamed_addr #0 !dbg !452 {
entry:
  call void @llvm.dbg.value(metadata i32 %count, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8** %args, metadata !457, metadata !DIExpression()), !dbg !460
  %conv = sext i32 %count to i64, !dbg !461
  %mul = shl nsw i64 %conv, 3, !dbg !462
  %call = tail call i8* @zmalloc(i64 noundef %mul) #11, !dbg !463
  %0 = bitcast i8* %call to i8**, !dbg !463
  call void @llvm.dbg.value(metadata i8** %0, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !458, metadata !DIExpression()), !dbg !460
  %cmp12 = icmp sgt i32 %count, 0, !dbg !464
  br i1 %cmp12, label %for.body.preheader, label %for.end, !dbg !467

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %count to i64, !dbg !464
  br label %for.body, !dbg !467

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !458, metadata !DIExpression()), !dbg !460
  %arrayidx = getelementptr inbounds i8*, i8** %args, i64 %indvars.iv, !dbg !468
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !468, !tbaa !116
  %call2 = tail call i8* @sdsnew(i8* noundef %1) #11, !dbg !469
  %arrayidx4 = getelementptr inbounds i8*, i8** %0, i64 %indvars.iv, !dbg !470
  store i8* %call2, i8** %arrayidx4, align 8, !dbg !471, !tbaa !116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !458, metadata !DIExpression()), !dbg !460
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !464
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !467, !llvm.loop !473

for.end:                                          ; preds = %for.body, %entry
  ret i8** %0, !dbg !475
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @noninteractive(i32 noundef %argc, i8** noundef %argv) unnamed_addr #0 !dbg !476 {
entry:
  %s = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !478, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i8** %argv, metadata !479, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 0, metadata !480, metadata !DIExpression()), !dbg !518
  %0 = bitcast %struct.stat* %s to i8*, !dbg !519
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #13, !dbg !519
  call void @llvm.dbg.declare(metadata %struct.stat* %s, metadata !481, metadata !DIExpression()), !dbg !520
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !521, !tbaa !116
  %call = tail call i32 @fileno(%struct._IO_FILE* noundef %1) #11, !dbg !522
  %call2 = call i32 @fstat64(i32 noundef %call, %struct.stat* noundef %s) #11, !dbg !523
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %s, i64 0, i32 3, !dbg !524
  %2 = load i32, i32* %st_mode, align 8, !dbg !524, !tbaa !526
  %3 = trunc i32 %2 to i16, !dbg !529
  %trunc = and i16 %3, -4096, !dbg !529
  switch i16 %trunc, label %if.else [
    i16 4096, label %if.then
    i16 -32768, label %if.then
  ], !dbg !529

if.then:                                          ; preds = %entry, %entry
  %4 = bitcast i8** %argv to i8*, !dbg !530
  %add = add nsw i32 %argc, 1, !dbg !532
  %conv = sext i32 %add to i64, !dbg !533
  %mul = shl nsw i64 %conv, 3, !dbg !534
  %call6 = call i8* @zrealloc(i8* noundef %4, i64 noundef %mul) #11, !dbg !535
  %5 = bitcast i8* %call6 to i8**, !dbg !535
  call void @llvm.dbg.value(metadata i8** %5, metadata !479, metadata !DIExpression()), !dbg !518
  %call7 = call fastcc i8* @readArgFromStdin() #12, !dbg !536
  %idxprom = sext i32 %argc to i64, !dbg !537
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom, !dbg !537
  store i8* %call7, i8** %arrayidx, align 8, !dbg !538, !tbaa !116
  %6 = load i64, i64* @config.2, align 8, !dbg !539, !tbaa !102
  %conv9 = trunc i64 %6 to i32, !dbg !540
  %call10 = call fastcc i32 @cliSendCommand(i32 noundef %add, i8** noundef %5, i32 noundef %conv9) #12, !dbg !541
  call void @llvm.dbg.value(metadata i32 %call10, metadata !480, metadata !DIExpression()), !dbg !518
  br label %if.end, !dbg !542

if.else:                                          ; preds = %entry
  %7 = load i64, i64* @config.2, align 8, !dbg !543, !tbaa !102
  %conv11 = trunc i64 %7 to i32, !dbg !545
  %call12 = call fastcc i32 @cliSendCommand(i32 noundef %argc, i8** noundef %argv, i32 noundef %conv11) #12, !dbg !546
  call void @llvm.dbg.value(metadata i32 %call12, metadata !480, metadata !DIExpression()), !dbg !518
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ %call10, %if.then ], [ %call12, %if.else ], !dbg !547
  call void @llvm.dbg.value(metadata i32 %retval1.0, metadata !480, metadata !DIExpression()), !dbg !518
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #13, !dbg !548
  ret i32 %retval1.0, !dbg !549
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !550 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare !dbg !554 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #4

declare !dbg !556 dso_local i32 @anetResolve(i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #4

declare !dbg !560 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare !dbg !563 dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare dso_local i32 @atoi(i8* noundef nonnull) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !566 dso_local i64 @strtoll(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !571 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @usage() unnamed_addr #8 !dbg !575 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !578, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !579
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !580, !tbaa !116
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([121 x i8], [121 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !581
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !582, !tbaa !116
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.20, i64 0, i64 0)) #11, !dbg !583
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !584, !tbaa !116
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0)) #11, !dbg !585
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !586, !tbaa !116
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0)) #11, !dbg !587
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !588, !tbaa !116
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !589
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !590, !tbaa !116
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0)) #11, !dbg !591
  tail call void @exit(i32 noundef 1) #15, !dbg !592
  unreachable, !dbg !592
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !593 dso_local i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @showInteractiveHelp() unnamed_addr #0 !dbg !595 {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([351 x i8], [351 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliConnect(i32 noundef %force) unnamed_addr #0 !dbg !34 {
entry:
  %err = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %force, metadata !38, metadata !DIExpression()), !dbg !598
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %err, i64 0, i64 0, !dbg !599
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #13, !dbg !599
  call void @llvm.dbg.declare(metadata [256 x i8]* %err, metadata !39, metadata !DIExpression()), !dbg !600
  %1 = load i32, i32* @cliConnect.fd, align 4, !dbg !601, !tbaa !603
  %cmp = icmp eq i32 %1, -1, !dbg !604
  %tobool = icmp ne i32 %force, 0
  %or.cond = or i1 %tobool, %cmp, !dbg !605
  br i1 %or.cond, label %if.then, label %cleanup, !dbg !605

if.then:                                          ; preds = %entry
  br i1 %tobool, label %if.then2, label %if.end, !dbg !606

if.then2:                                         ; preds = %if.then
  %call = tail call i32 @close(i32 noundef %1) #11, !dbg !608
  br label %if.end, !dbg !608

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load i8*, i8** @config.0, align 8, !dbg !610, !tbaa !92
  %3 = load i32, i32* @config.1, align 8, !dbg !611, !tbaa !100
  %call3 = call i32 @anetTcpConnect(i8* noundef nonnull %0, i8* noundef %2, i32 noundef %3) #11, !dbg !612
  store i32 %call3, i32* @cliConnect.fd, align 4, !dbg !613, !tbaa !603
  %cmp4 = icmp eq i32 %call3, -1, !dbg !614
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !616

if.then5:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !617, !tbaa !116
  %5 = load i8*, i8** @config.0, align 8, !dbg !619, !tbaa !92
  %6 = load i32, i32* @config.1, align 8, !dbg !620, !tbaa !100
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef %5, i32 noundef %6, i8* noundef nonnull %0) #11, !dbg !621
  br label %cleanup, !dbg !622

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @anetTcpNoDelay(i8* noundef null, i32 noundef %call3) #11, !dbg !623
  %.pre = load i32, i32* @cliConnect.fd, align 4, !dbg !624, !tbaa !603
  br label %cleanup, !dbg !625

cleanup:                                          ; preds = %if.end8, %entry, %if.then5
  %retval.0 = phi i32 [ -1, %if.then5 ], [ %1, %entry ], [ %.pre, %if.end8 ], !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #13, !dbg !626
  ret i32 %retval.0, !dbg !626
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @selectDb(i32 noundef %fd) unnamed_addr #0 !dbg !627 {
entry:
  %type = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %fd, metadata !629, metadata !DIExpression()), !dbg !633
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %type) #13, !dbg !634
  %0 = load i32, i32* @config.3, align 8, !dbg !635, !tbaa !104
  %cmp = icmp eq i32 %0, 0, !dbg !637
  br i1 %cmp, label %cleanup, label %if.end, !dbg !638

if.end:                                           ; preds = %entry
  %call = tail call i8* (...) @sdsempty() #11, !dbg !639
  call void @llvm.dbg.value(metadata i8* %call, metadata !631, metadata !DIExpression()), !dbg !633
  %1 = load i32, i32* @config.3, align 8, !dbg !640, !tbaa !104
  %call2 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* noundef %call, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 noundef %1) #11, !dbg !641
  call void @llvm.dbg.value(metadata i8* %call2, metadata !631, metadata !DIExpression()), !dbg !633
  %call3 = tail call i64 @sdslen(i8* noundef %call2) #11, !dbg !642
  %conv = trunc i64 %call3 to i32, !dbg !642
  %call4 = tail call i32 @anetWrite(i32 noundef %fd, i8* noundef %call2, i32 noundef %conv) #11, !dbg !643
  call void @llvm.dbg.value(metadata i8* %type, metadata !632, metadata !DIExpression(DW_OP_deref)), !dbg !633
  %call5 = call i32 @anetRead(i32 noundef %fd, i8* noundef nonnull %type, i32 noundef 1) #11, !dbg !644
  %2 = load i8, i8* %type, align 1, !dbg !645, !tbaa !647
  call void @llvm.dbg.value(metadata i8 %2, metadata !632, metadata !DIExpression()), !dbg !633
  %cmp10.not = icmp eq i8 %2, 43
  br i1 %cmp10.not, label %if.end13, label %cleanup, !dbg !648

if.end13:                                         ; preds = %if.end
  %call14 = call fastcc i32 @cliReadSingleLineReply(i32 noundef %fd, i32 noundef 1) #12, !dbg !649
  call void @llvm.dbg.value(metadata i32 %call14, metadata !630, metadata !DIExpression()), !dbg !633
  br label %cleanup, !dbg !633

cleanup:                                          ; preds = %if.end13, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %call14, %if.end13 ], !dbg !633
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %type) #13, !dbg !650
  ret i32 %retval.0, !dbg !650
}

declare !dbg !651 dso_local i8* @sdscatprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

declare !dbg !654 dso_local i8* @sdsempty(...) local_unnamed_addr #4

declare !dbg !657 dso_local i64 @sdslen(i8* noundef) local_unnamed_addr #4

declare !dbg !661 dso_local i8* @sdscatlen(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !664 dso_local i32 @anetWrite(i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliReadSingleLineReply(i32 noundef %fd, i32 noundef %quiet) unnamed_addr #0 !dbg !667 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !671, metadata !DIExpression()), !dbg !674
  call void @llvm.dbg.value(metadata i32 %quiet, metadata !672, metadata !DIExpression()), !dbg !674
  %call = tail call fastcc i8* @cliReadLine(i32 noundef %fd) #12, !dbg !675
  call void @llvm.dbg.value(metadata i8* %call, metadata !673, metadata !DIExpression()), !dbg !674
  %cmp = icmp eq i8* %call, null, !dbg !676
  br i1 %cmp, label %cleanup, label %if.end, !dbg !678

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %quiet, 0, !dbg !679
  br i1 %tobool.not, label %if.then1, label %if.end3, !dbg !681

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %call) #11, !dbg !682
  br label %if.end3, !dbg !682

if.end3:                                          ; preds = %if.then1, %if.end
  tail call void @sdsfree(i8* noundef nonnull %call) #11, !dbg !683
  br label %cleanup, !dbg !684

cleanup:                                          ; preds = %entry, %if.end3
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 1, %entry ], !dbg !674
  ret i32 %retval.0, !dbg !685
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliReadReply(i32 noundef %fd) unnamed_addr #0 !dbg !686 {
entry:
  %type = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %fd, metadata !688, metadata !DIExpression()), !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %type) #13, !dbg !692
  call void @llvm.dbg.value(metadata i8* %type, metadata !689, metadata !DIExpression(DW_OP_deref)), !dbg !691
  %call = call i32 @anetRead(i32 noundef %fd, i8* noundef nonnull %type, i32 noundef 1) #11, !dbg !693
  call void @llvm.dbg.value(metadata i32 %call, metadata !690, metadata !DIExpression()), !dbg !691
  %cmp = icmp slt i32 %call, 1, !dbg !695
  br i1 %cmp, label %if.then, label %if.end12, !dbg !696

if.then:                                          ; preds = %entry
  %.b40 = load i1, i1* @config.5, align 8, !dbg !697
  br i1 %.b40, label %cleanup, label %if.end, !dbg !700

if.end:                                           ; preds = %if.then
  %.b = load i1, i1* @config.4, align 8, !dbg !701
  br i1 %.b, label %land.lhs.true, label %if.else, !dbg !703

land.lhs.true:                                    ; preds = %if.end
  switch i32 %call, label %if.else [
    i32 0, label %cleanup
    i32 -1, label %land.lhs.true5
  ], !dbg !704

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32* @__errno_location() #16, !dbg !705
  %0 = load i32, i32* %call6, align 4, !dbg !705, !tbaa !603
  %cmp7 = icmp eq i32 %0, 104, !dbg !706
  br i1 %cmp7, label %cleanup, label %if.else, !dbg !707

if.else:                                          ; preds = %land.lhs.true, %land.lhs.true5, %if.end
  %call9 = tail call i32* @__errno_location() #16, !dbg !708
  %1 = load i32, i32* %call9, align 4, !dbg !708, !tbaa !603
  %call10 = call i8* @strerror(i32 noundef %1) #11, !dbg !710
  %call11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* noundef %call10) #11, !dbg !711
  call void @exit(i32 noundef 1) #15, !dbg !712
  unreachable, !dbg !712

if.end12:                                         ; preds = %entry
  %2 = load i8, i8* %type, align 1, !dbg !713, !tbaa !647
  call void @llvm.dbg.value(metadata i8 %2, metadata !689, metadata !DIExpression()), !dbg !691
  %conv = sext i8 %2 to i32, !dbg !713
  switch i32 %conv, label %sw.default [
    i32 45, label %sw.bb
    i32 43, label %sw.bb18
    i32 58, label %sw.bb20
    i32 36, label %sw.bb26
    i32 42, label %sw.bb28
  ], !dbg !714

sw.bb:                                            ; preds = %if.end12
  %3 = load i32, i32* @config.9, align 8, !dbg !715, !tbaa !123
  %tobool13.not = icmp eq i32 %3, 0, !dbg !718
  br i1 %tobool13.not, label %if.end16, label %if.then14, !dbg !719

if.then14:                                        ; preds = %sw.bb
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !720
  br label %if.end16, !dbg !720

if.end16:                                         ; preds = %if.then14, %sw.bb
  %call17 = call fastcc i32 @cliReadSingleLineReply(i32 noundef %fd, i32 noundef 0) #12, !dbg !721
  br label %cleanup, !dbg !722

sw.bb18:                                          ; preds = %if.end12
  %call19 = call fastcc i32 @cliReadSingleLineReply(i32 noundef %fd, i32 noundef 0) #12, !dbg !723
  br label %cleanup, !dbg !724

sw.bb20:                                          ; preds = %if.end12
  %4 = load i32, i32* @config.9, align 8, !dbg !725, !tbaa !123
  %tobool21.not = icmp eq i32 %4, 0, !dbg !727
  br i1 %tobool21.not, label %if.end24, label %if.then22, !dbg !728

if.then22:                                        ; preds = %sw.bb20
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !729
  br label %if.end24, !dbg !729

if.end24:                                         ; preds = %if.then22, %sw.bb20
  %call25 = call fastcc i32 @cliReadSingleLineReply(i32 noundef %fd, i32 noundef 0) #12, !dbg !730
  br label %cleanup, !dbg !731

sw.bb26:                                          ; preds = %if.end12
  %call27 = call fastcc i32 @cliReadBulkReply(i32 noundef %fd) #12, !dbg !732
  br label %cleanup, !dbg !733

sw.bb28:                                          ; preds = %if.end12
  %call29 = call fastcc i32 @cliReadMultiBulkReply(i32 noundef %fd) #12, !dbg !734
  br label %cleanup, !dbg !735

sw.default:                                       ; preds = %if.end12
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv) #11, !dbg !736
  br label %cleanup, !dbg !737

cleanup:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.then, %sw.default, %sw.bb28, %sw.bb26, %if.end24, %sw.bb18, %if.end16
  %retval.0 = phi i32 [ 1, %sw.default ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %call25, %if.end24 ], [ %call19, %sw.bb18 ], [ 1, %if.end16 ], [ 0, %if.then ], [ 104, %land.lhs.true ], [ 104, %land.lhs.true5 ], !dbg !691
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %type) #13, !dbg !738
  ret i32 %retval.0, !dbg !738
}

declare !dbg !739 dso_local i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !740 dso_local i32 @anetTcpConnect(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !743 dso_local i32 @anetTcpNoDelay(i8* noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !746 dso_local i32 @anetRead(i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @cliReadLine(i32 noundef %fd) unnamed_addr #0 !dbg !747 {
entry:
  %c = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %fd, metadata !751, metadata !DIExpression()), !dbg !758
  %call = tail call i8* (...) @sdsempty() #11, !dbg !759
  call void @llvm.dbg.value(metadata i8* %call, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #13, !dbg !760
  call void @llvm.dbg.value(metadata i8* %c, metadata !753, metadata !DIExpression(DW_OP_deref)), !dbg !761
  %call124 = call i64 @read(i32 noundef %fd, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !762
  call void @llvm.dbg.value(metadata i64 %call124, metadata !755, metadata !DIExpression()), !dbg !761
  %cmp25 = icmp slt i64 %call124, 1, !dbg !763
  br i1 %cmp25, label %cleanup.thread, label %if.else, !dbg !765

cleanup.thread:                                   ; preds = %cleanup, %entry
  %line.0.lcssa = phi i8* [ %call, %entry ], [ %call7, %cleanup ], !dbg !766
  call void @sdsfree(i8* noundef %line.0.lcssa) #11, !dbg !767
  call void @llvm.dbg.value(metadata i8* undef, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #13, !dbg !769
  br label %cleanup11

if.else:                                          ; preds = %entry, %cleanup
  %line.026 = phi i8* [ %call7, %cleanup ], [ %call, %entry ]
  call void @llvm.dbg.value(metadata i8* %line.026, metadata !752, metadata !DIExpression()), !dbg !758
  %0 = load i8, i8* %c, align 1
  call void @llvm.dbg.value(metadata i8 %0, metadata !753, metadata !DIExpression()), !dbg !761
  %cmp3 = icmp eq i8 %0, 10
  br i1 %cmp3, label %while.end, label %cleanup, !dbg !770

cleanup:                                          ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %c, metadata !753, metadata !DIExpression(DW_OP_deref)), !dbg !761
  %call7 = call i8* @sdscatlen(i8* noundef %line.026, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !772
  call void @llvm.dbg.value(metadata i8* %call7, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #13, !dbg !769
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %c) #13, !dbg !760
  %call1 = call i64 @read(i32 noundef %fd, i8* noundef nonnull %c, i64 noundef 1) #11, !dbg !762
  call void @llvm.dbg.value(metadata i64 %call1, metadata !755, metadata !DIExpression()), !dbg !761
  %cmp = icmp slt i64 %call1, 1, !dbg !763
  br i1 %cmp, label %cleanup.thread, label %if.else, !dbg !765

while.end:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* undef, metadata !752, metadata !DIExpression()), !dbg !758
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %c) #13, !dbg !769
  %call10 = call i8* @sdstrim(i8* noundef %line.026, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #11, !dbg !774
  br label %cleanup11, !dbg !775

cleanup11:                                        ; preds = %cleanup.thread, %while.end
  %retval.2 = phi i8* [ %call10, %while.end ], [ null, %cleanup.thread ], !dbg !758
  ret i8* %retval.2, !dbg !776
}

declare !dbg !777 dso_local void @sdsfree(i8* noundef) local_unnamed_addr #4

declare !dbg !780 dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !783 dso_local i8* @sdstrim(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !786 dso_local i8* @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliReadBulkReply(i32 noundef %fd) unnamed_addr #0 !dbg !789 {
entry:
  %crlf = alloca [2 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %fd, metadata !791, metadata !DIExpression()), !dbg !797
  %call = tail call fastcc i8* @cliReadLine(i32 noundef %fd) #12, !dbg !798
  call void @llvm.dbg.value(metadata i8* %call, metadata !792, metadata !DIExpression()), !dbg !797
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %crlf, i64 0, i64 0, !dbg !799
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #13, !dbg !799
  call void @llvm.dbg.declare(metadata [2 x i8]* %crlf, metadata !794, metadata !DIExpression()), !dbg !800
  %cmp = icmp eq i8* %call, null, !dbg !801
  br i1 %cmp, label %cleanup, label %if.end, !dbg !803

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @atoi(i8* noundef %call) #14, !dbg !804
  call void @llvm.dbg.value(metadata i32 %call1, metadata !796, metadata !DIExpression()), !dbg !797
  %cmp2 = icmp eq i32 %call1, -1, !dbg !805
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !807

if.then3:                                         ; preds = %if.end
  tail call void @sdsfree(i8* noundef nonnull %call) #11, !dbg !808
  %call4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !810
  br label %cleanup, !dbg !811

if.end5:                                          ; preds = %if.end
  %conv = sext i32 %call1 to i64, !dbg !812
  %call6 = tail call i8* @zmalloc(i64 noundef %conv) #11, !dbg !813
  call void @llvm.dbg.value(metadata i8* %call6, metadata !793, metadata !DIExpression()), !dbg !797
  %call7 = tail call i32 @anetRead(i32 noundef %fd, i8* noundef %call6, i32 noundef %call1) #11, !dbg !814
  %call8 = call i32 @anetRead(i32 noundef %fd, i8* noundef nonnull %0, i32 noundef 2) #11, !dbg !815
  %1 = load i32, i32* @config.8, align 8, !dbg !816, !tbaa !110
  %tobool = icmp eq i32 %1, 0, !dbg !818
  %2 = load i32, i32* @config.9, align 8
  %tobool9 = icmp ne i32 %2, 0
  %or.cond = select i1 %tobool, i1 %tobool9, i1 false, !dbg !819
  br i1 %or.cond, label %if.else, label %if.then10, !dbg !819

if.then10:                                        ; preds = %if.end5
  %tobool11.not = icmp eq i32 %call1, 0, !dbg !820
  br i1 %tobool11.not, label %if.end18, label %land.lhs.true, !dbg !823

land.lhs.true:                                    ; preds = %if.then10
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !824, !tbaa !116
  %call13 = call i64 @fwrite(i8* noundef %call6, i64 noundef %conv, i64 noundef 1, %struct._IO_FILE* noundef %3) #11, !dbg !825
  %cmp14 = icmp eq i64 %call13, 0, !dbg !826
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !827

if.then16:                                        ; preds = %land.lhs.true
  call void @zfree(i8* noundef %call6) #11, !dbg !828
  br label %cleanup, !dbg !830

if.else:                                          ; preds = %if.end5
  call fastcc void @printStringRepr(i8* noundef %call6, i32 noundef %call1) #12, !dbg !831
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %land.lhs.true, %if.else
  call void @zfree(i8* noundef %call6) #11, !dbg !833
  br label %cleanup, !dbg !834

cleanup:                                          ; preds = %entry, %if.end18, %if.then16, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end18 ], [ 1, %if.then16 ], [ 1, %entry ], !dbg !797
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #13, !dbg !835
  ret i32 %retval.0, !dbg !835
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @cliReadMultiBulkReply(i32 noundef %fd) unnamed_addr #0 !dbg !836 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !838, metadata !DIExpression()), !dbg !843
  %call = tail call fastcc i8* @cliReadLine(i32 noundef %fd) #12, !dbg !844
  call void @llvm.dbg.value(metadata i8* %call, metadata !839, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 1, metadata !841, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 0, metadata !842, metadata !DIExpression()), !dbg !843
  %cmp = icmp eq i8* %call, null, !dbg !845
  br i1 %cmp, label %cleanup, label %if.end, !dbg !847

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @atoi(i8* noundef %call) #14, !dbg !848
  call void @llvm.dbg.value(metadata i32 %call2, metadata !840, metadata !DIExpression()), !dbg !843
  switch i32 %call2, label %while.body [
    i32 -1, label %if.then4
    i32 0, label %cleanup.sink.split
  ], !dbg !849

if.then4:                                         ; preds = %if.end
  tail call void @sdsfree(i8* noundef nonnull %call) #11, !dbg !850
  br label %cleanup.sink.split, !dbg !853

while.body:                                       ; preds = %if.end, %if.end22
  %dec41.in = phi i32 [ %dec41, %if.end22 ], [ %call2, %if.end ]
  %retval1.040 = phi i32 [ %spec.select, %if.end22 ], [ 0, %if.end ]
  %c.039 = phi i32 [ %inc, %if.end22 ], [ 1, %if.end ]
  %dec41 = add nsw i32 %dec41.in, -1, !dbg !854
  call void @llvm.dbg.value(metadata i32 %retval1.040, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %c.039, metadata !841, metadata !DIExpression()), !dbg !843
  %0 = load i32, i32* @config.9, align 8, !dbg !855, !tbaa !123
  %tobool11.not = icmp eq i32 %0, 0, !dbg !858
  br i1 %tobool11.not, label %if.end14, label %if.then12, !dbg !859

if.then12:                                        ; preds = %while.body
  %call13 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i32 noundef %c.039) #11, !dbg !860
  br label %if.end14, !dbg !860

if.end14:                                         ; preds = %if.then12, %while.body
  %call15 = tail call fastcc i32 @cliReadReply(i32 noundef %fd) #12, !dbg !861
  %tobool16.not = icmp eq i32 %call15, 0, !dbg !861
  %spec.select = select i1 %tobool16.not, i32 %retval1.040, i32 1, !dbg !863
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !842, metadata !DIExpression()), !dbg !843
  %tobool19.not = icmp eq i32 %dec41, 0, !dbg !864
  br i1 %tobool19.not, label %cleanup, label %if.end22, !dbg !866

if.end22:                                         ; preds = %if.end14
  %.b = load i1, i1* @config.10, align 4, !dbg !867
  %conv = select i1 %.b, i32 10, i32 0, !dbg !868
  %call21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv) #11, !dbg !869
  %inc = add nuw nsw i32 %c.039, 1, !dbg !870
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %inc, metadata !841, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 %dec41, metadata !840, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !843
  br label %while.body, !dbg !871

cleanup.sink.split:                               ; preds = %if.end, %if.then4
  %.sink = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), %if.then4 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), %if.end ]
  %call9 = tail call i32 (i8*, ...) @printf(i8* noundef %.sink) #11, !dbg !843
  br label %cleanup, !dbg !872

cleanup:                                          ; preds = %if.end14, %cleanup.sink.split, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %cleanup.sink.split ], [ %spec.select, %if.end14 ], !dbg !843
  ret i32 %retval.0, !dbg !872
}

declare !dbg !873 dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #4

declare !dbg !879 dso_local void @zfree(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @printStringRepr(i8* nocapture noundef readonly %s, i32 noundef %len) unnamed_addr #0 !dbg !882 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !886, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 %len, metadata !887, metadata !DIExpression()), !dbg !888
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !889
  call void @llvm.dbg.value(metadata i32 %len, metadata !887, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8* %s, metadata !886, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 %len, metadata !887, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !888
  %tobool.not28 = icmp eq i32 %len, 0, !dbg !890
  br i1 %tobool.not28, label %while.end, label %while.body, !dbg !890

while.body:                                       ; preds = %entry, %sw.epilog
  %dec30.in = phi i32 [ %dec30, %sw.epilog ], [ %len, %entry ]
  %s.addr.029 = phi i8* [ %incdec.ptr, %sw.epilog ], [ %s, %entry ]
  %dec30 = add nsw i32 %dec30.in, -1, !dbg !891
  call void @llvm.dbg.value(metadata i8* %s.addr.029, metadata !886, metadata !DIExpression()), !dbg !888
  %0 = load i8, i8* %s.addr.029, align 1, !dbg !892, !tbaa !647
  %conv = sext i8 %0 to i32, !dbg !892
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 34, label %sw.bb
    i32 10, label %sw.bb3
    i32 13, label %sw.bb5
    i32 9, label %sw.bb7
    i32 7, label %sw.bb9
    i32 8, label %sw.bb11
  ], !dbg !894

sw.bb:                                            ; preds = %while.body, %while.body
  %call2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 noundef %conv) #11, !dbg !895
  br label %sw.epilog, !dbg !897

sw.bb3:                                           ; preds = %while.body
  %call4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !898
  br label %sw.epilog, !dbg !899

sw.bb5:                                           ; preds = %while.body
  %call6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0)) #11, !dbg !900
  br label %sw.epilog, !dbg !901

sw.bb7:                                           ; preds = %while.body
  %call8 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #11, !dbg !902
  br label %sw.epilog, !dbg !903

sw.bb9:                                           ; preds = %while.body
  %call10 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !904
  br label %sw.epilog, !dbg !905

sw.bb11:                                          ; preds = %while.body
  %call12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #11, !dbg !906
  br label %sw.epilog, !dbg !907

sw.default:                                       ; preds = %while.body
  %call13 = tail call i16** @__ctype_b_loc() #16, !dbg !908
  %1 = load i16*, i16** %call13, align 8, !dbg !908, !tbaa !116
  %idxprom = sext i8 %0 to i64, !dbg !908
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom, !dbg !908
  %2 = load i16, i16* %arrayidx, align 2, !dbg !908, !tbaa !910
  %3 = and i16 %2, 16384, !dbg !908
  %tobool16.not = icmp eq i16 %3, 0, !dbg !908
  br i1 %tobool16.not, label %if.else, label %if.then, !dbg !912

if.then:                                          ; preds = %sw.default
  %call18 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv) #11, !dbg !913
  br label %sw.epilog, !dbg !913

if.else:                                          ; preds = %sw.default
  %conv19 = zext i8 %0 to i32, !dbg !914
  %call20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv19) #11, !dbg !915
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.else, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.029, i64 1, !dbg !916
  call void @llvm.dbg.value(metadata i32 %dec30, metadata !887, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !886, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i32 %dec30, metadata !887, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !888
  %tobool.not = icmp eq i32 %dec30, 0, !dbg !890
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !890, !llvm.loop !917

while.end:                                        ; preds = %sw.epilog, %entry
  %call21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #11, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() local_unnamed_addr #9

declare !dbg !921 dso_local i8* @sdsnew(i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal fastcc void @repl() unnamed_addr #8 !dbg !924 {
entry:
  %argc = alloca i32, align 4
  %0 = bitcast i32* %argc to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13, !dbg !940
  store i1 true, i1* @config.4, align 8, !dbg !941
  %call64 = call i8* @linenoise(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #11, !dbg !942
  call void @llvm.dbg.value(metadata i8* %call64, metadata !928, metadata !DIExpression()), !dbg !943
  %cmp.not65 = icmp eq i8* %call64, null, !dbg !944
  br i1 %cmp.not65, label %while.end, label %while.body, !dbg !945

while.body:                                       ; preds = %entry, %while.cond.backedge
  %call66 = phi i8* [ %call, %while.cond.backedge ], [ %call64, %entry ]
  %1 = load i8, i8* %call66, align 1, !dbg !946, !tbaa !647
  %cmp1.not = icmp eq i8 %1, 0, !dbg !947
  br i1 %cmp1.not, label %if.end48, label %if.then, !dbg !948

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata i32* %argc, metadata !926, metadata !DIExpression(DW_OP_deref)), !dbg !943
  %call3 = call i8** @sdssplitargs(i8* noundef nonnull %call66, i32* noundef nonnull %argc) #11, !dbg !949
  call void @llvm.dbg.value(metadata i8** %call3, metadata !929, metadata !DIExpression()), !dbg !943
  %call4 = call i32 @linenoiseHistoryAdd(i8* noundef nonnull %call66) #11, !dbg !950
  %2 = load i8*, i8** @config.12, align 8, !dbg !951, !tbaa !114
  %tobool.not = icmp eq i8* %2, null, !dbg !953
  br i1 %tobool.not, label %if.end, label %if.then5, !dbg !954

if.then5:                                         ; preds = %if.then
  %call6 = call i32 @linenoiseHistorySave(i8* noundef nonnull %2) #11, !dbg !955
  br label %if.end, !dbg !955

if.end:                                           ; preds = %if.then5, %if.then
  %cmp7 = icmp eq i8** %call3, null, !dbg !956
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !957

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0)) #11, !dbg !958
  br label %while.cond.backedge, !dbg !960

while.cond.backedge:                              ; preds = %if.then9, %if.end48
  %call = call i8* @linenoise(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #11, !dbg !942
  call void @llvm.dbg.value(metadata i8* %call, metadata !928, metadata !DIExpression()), !dbg !943
  %cmp.not = icmp eq i8* %call, null, !dbg !944
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !945, !llvm.loop !961

if.else:                                          ; preds = %if.end
  %3 = load i32, i32* %argc, align 4, !dbg !963, !tbaa !603
  call void @llvm.dbg.value(metadata i32 %3, metadata !926, metadata !DIExpression()), !dbg !943
  %cmp11 = icmp sgt i32 %3, 0, !dbg !964
  br i1 %cmp11, label %if.then13, label %for.end, !dbg !965

if.then13:                                        ; preds = %if.else
  %4 = load i8*, i8** %call3, align 8, !dbg !966, !tbaa !116
  %call15 = call i32 @strcasecmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0)) #14, !dbg !967
  %cmp16 = icmp eq i32 %call15, 0, !dbg !968
  br i1 %cmp16, label %if.then22, label %lor.lhs.false, !dbg !969

lor.lhs.false:                                    ; preds = %if.then13
  %call19 = call i32 @strcasecmp(i8* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0)) #14, !dbg !970
  %cmp20 = icmp eq i32 %call19, 0, !dbg !971
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !972

if.then22:                                        ; preds = %lor.lhs.false, %if.then13
  call void @exit(i32 noundef 0) #15, !dbg !973
  unreachable, !dbg !973

if.else23:                                        ; preds = %lor.lhs.false
  %call24 = call fastcc i32 @cliSendCommand(i32 noundef %3, i8** noundef nonnull %call3, i32 noundef 1) #12, !dbg !975
  call void @llvm.dbg.value(metadata i32 %call24, metadata !931, metadata !DIExpression()), !dbg !977
  %cmp28 = icmp eq i32 %call24, 104
  br i1 %cmp28, label %if.then30, label %if.end44, !dbg !978

if.then30:                                        ; preds = %if.else23
  %call31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i64 0, i64 0)) #11, !dbg !979
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !983, !tbaa !116
  %call32 = call i32 @fflush(%struct._IO_FILE* noundef %5) #11, !dbg !984
  %call33 = call fastcc i32 @cliConnect(i32 noundef 1) #12, !dbg !985
  %cmp34 = icmp eq i32 %call33, -1, !dbg !987
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !988

if.then36:                                        ; preds = %if.then30
  call void @exit(i32 noundef 1) #15, !dbg !989
  unreachable, !dbg !989

if.end37:                                         ; preds = %if.then30
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i64 0, i64 0)) #11, !dbg !990
  %6 = load i32, i32* %argc, align 4, !dbg !991, !tbaa !603
  call void @llvm.dbg.value(metadata i32 %6, metadata !926, metadata !DIExpression()), !dbg !943
  %call39 = call fastcc i32 @cliSendCommand(i32 noundef %6, i8** noundef nonnull %call3, i32 noundef 1) #12, !dbg !992
  br label %if.end44, !dbg !993

if.end44:                                         ; preds = %if.else23, %if.end37
  %.pr = load i32, i32* %argc, align 4, !dbg !994, !tbaa !603
  call void @llvm.dbg.value(metadata i32 0, metadata !927, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 %.pr, metadata !926, metadata !DIExpression()), !dbg !943
  %cmp4562 = icmp sgt i32 %.pr, 0, !dbg !997
  br i1 %cmp4562, label %for.body, label %for.end, !dbg !998

for.body:                                         ; preds = %if.end44, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end44 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !927, metadata !DIExpression()), !dbg !943
  %arrayidx47 = getelementptr inbounds i8*, i8** %call3, i64 %indvars.iv, !dbg !999
  %7 = load i8*, i8** %arrayidx47, align 8, !dbg !999, !tbaa !116
  call void @sdsfree(i8* noundef %7) #11, !dbg !1000
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !927, metadata !DIExpression()), !dbg !943
  %8 = load i32, i32* %argc, align 4, !dbg !994, !tbaa !603
  call void @llvm.dbg.value(metadata i32 %8, metadata !926, metadata !DIExpression()), !dbg !943
  %9 = sext i32 %8 to i64, !dbg !997
  %cmp45 = icmp slt i64 %indvars.iv.next, %9, !dbg !997
  br i1 %cmp45, label %for.body, label %for.end, !dbg !998, !llvm.loop !1002

for.end:                                          ; preds = %for.body, %if.else, %if.end44
  %10 = bitcast i8** %call3 to i8*, !dbg !1004
  call void @zfree(i8* noundef nonnull %10) #11, !dbg !1005
  br label %if.end48, !dbg !1006

if.end48:                                         ; preds = %for.end, %while.body
  call void @free(i8* noundef nonnull %call66) #11, !dbg !1007
  br label %while.cond.backedge, !dbg !945

while.end:                                        ; preds = %while.cond.backedge, %entry
  call void @exit(i32 noundef 0) #15, !dbg !1008
  unreachable, !dbg !1008
}

declare !dbg !1009 dso_local i8* @linenoise(i8* noundef) local_unnamed_addr #4

declare !dbg !1010 dso_local i8** @sdssplitargs(i8* noundef, i32* noundef) local_unnamed_addr #4

declare !dbg !1014 dso_local i32 @linenoiseHistoryAdd(i8* noundef) local_unnamed_addr #4

declare !dbg !1017 dso_local i32 @linenoiseHistorySave(i8* noundef) local_unnamed_addr #4

declare !dbg !1018 dso_local i32 @fflush(%struct._IO_FILE* noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1019 dso_local void @free(i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fstat64(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

declare !dbg !1020 dso_local i8* @zrealloc(i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @readArgFromStdin() unnamed_addr #0 !dbg !1023 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !1032
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %0) #13, !dbg !1032
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !1025, metadata !DIExpression()), !dbg !1033
  %call = tail call i8* (...) @sdsempty() #11, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %call, metadata !1029, metadata !DIExpression()), !dbg !1035
  br label %while.cond, !dbg !1036

while.cond:                                       ; preds = %cleanup, %entry
  %arg.0 = phi i8* [ %call, %entry ], [ %call10, %cleanup ], !dbg !1037
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !1029, metadata !DIExpression()), !dbg !1035
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1038, !tbaa !116
  %call1 = call i32 @fileno(%struct._IO_FILE* noundef %1) #11, !dbg !1039
  %call2 = call i64 @read(i32 noundef %call1, i8* noundef nonnull %0, i64 noundef 1024) #11, !dbg !1040
  %conv = trunc i64 %call2 to i32, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1030, metadata !DIExpression()), !dbg !1041
  switch i32 %conv, label %cleanup [
    i32 0, label %while.end
    i32 -1, label %if.then6
  ], !dbg !1042

if.then6:                                         ; preds = %while.cond
  call void @perror(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i64 0, i64 0)) #11, !dbg !1043
  call void @exit(i32 noundef 1) #15, !dbg !1047
  unreachable, !dbg !1047

cleanup:                                          ; preds = %while.cond
  %sext = shl i64 %call2, 32, !dbg !1048
  %conv9 = ashr exact i64 %sext, 32, !dbg !1048
  %call10 = call i8* @sdscatlen(i8* noundef %arg.0, i8* noundef nonnull %0, i64 noundef %conv9) #11, !dbg !1049
  call void @llvm.dbg.value(metadata i8* %call10, metadata !1029, metadata !DIExpression()), !dbg !1035
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata i8* %call10, metadata !1029, metadata !DIExpression()), !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %0) #13, !dbg !1050
  ret i8* %arg.0, !dbg !1051
}

declare !dbg !1052 dso_local void @perror(i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #15 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!1 = distinct !DIGlobalVariable(name: "config", scope: !2, file: !3, line: 67, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-cli.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "97a733d92f7d2e850c13ccff46a9f77c")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !{!22, !23, !24, !27, !28, !29}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!31, !32}
!31 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "fd", scope: !34, file: !3, line: 76, type: !23, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "cliConnect", scope: !3, file: !3, line: 74, type: !35, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!23, !23}
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "force", arg: 1, scope: !34, file: !3, line: 74, type: !23)
!39 = !DILocalVariable(name: "err", scope: !34, file: !3, line: 75, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 256)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config", file: !3, line: 53, size: 576, elements: !44)
!44 = !{!45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hostip", scope: !43, file: !3, line: 54, baseType: !25, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hostport", scope: !43, file: !3, line: 55, baseType: !23, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "repeat", scope: !43, file: !3, line: 56, baseType: !48, size: 64, offset: 128)
!48 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "dbnum", scope: !43, file: !3, line: 57, baseType: !23, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "interactive", scope: !43, file: !3, line: 58, baseType: !23, size: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !43, file: !3, line: 59, baseType: !23, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_mode", scope: !43, file: !3, line: 60, baseType: !23, size: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_mode", scope: !43, file: !3, line: 61, baseType: !23, size: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "raw_output", scope: !43, file: !3, line: 62, baseType: !23, size: 32, offset: 352)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !43, file: !3, line: 63, baseType: !23, size: 32, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "mb_sep", scope: !43, file: !3, line: 64, baseType: !26, size: 8, offset: 416)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "auth", scope: !43, file: !3, line: 65, baseType: !25, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "historyfile", scope: !43, file: !3, line: 66, baseType: !25, size: 64, offset: 512)
!59 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 32))
!60 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!61 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 192, 32))
!62 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 224, 32))
!63 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 32))
!64 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 288, 32))
!65 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 32))
!66 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 352, 32))
!67 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 384, 32))
!68 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 10, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 416, 8))
!69 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 448, 64))
!70 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_LLVM_fragment, 512, 64))
!71 = !{i32 7, !"Dwarf Version", i32 5}
!72 = !{i32 2, !"Debug Info Version", i32 3}
!73 = !{i32 1, !"wchar_size", i32 4}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{!"clang version 14.0.0"}
!76 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 471, type: !77, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!77 = !DISubroutineType(types: !78)
!78 = !{!23, !23, !24}
!79 = !{!80, !81, !82, !83, !89}
!80 = !DILocalVariable(name: "argc", arg: 1, scope: !76, file: !3, line: 471, type: !23)
!81 = !DILocalVariable(name: "argv", arg: 2, scope: !76, file: !3, line: 471, type: !24)
!82 = !DILocalVariable(name: "firstarg", scope: !76, file: !3, line: 472, type: !23)
!83 = !DILocalVariable(name: "authargv", scope: !84, file: !3, line: 499, type: !86)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 498, column: 30)
!85 = distinct !DILexicalBlock(scope: !76, file: !3, line: 498, column: 9)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 2)
!89 = !DILocalVariable(name: "dbnum", scope: !84, file: !3, line: 500, type: !23)
!90 = !DILocation(line: 0, scope: !76)
!91 = !DILocation(line: 474, column: 19, scope: !76)
!92 = !{!93, !94, i64 0}
!93 = !{!"config", !94, i64 0, !97, i64 8, !98, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !97, i64 44, !97, i64 48, !95, i64 52, !94, i64 56, !94, i64 64}
!94 = !{!"any pointer", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!"int", !95, i64 0}
!98 = !{!"long", !95, i64 0}
!99 = !DILocation(line: 475, column: 21, scope: !76)
!100 = !{!93, !97, i64 8}
!101 = !DILocation(line: 476, column: 19, scope: !76)
!102 = !{!93, !98, i64 16}
!103 = !DILocation(line: 477, column: 18, scope: !76)
!104 = !{!93, !97, i64 24}
!105 = !DILocation(line: 478, column: 24, scope: !76)
!106 = !DILocation(line: 479, column: 21, scope: !76)
!107 = !DILocation(line: 480, column: 25, scope: !76)
!108 = !DILocation(line: 481, column: 24, scope: !76)
!109 = !DILocation(line: 482, column: 23, scope: !76)
!110 = !{!93, !97, i64 44}
!111 = !DILocation(line: 483, column: 17, scope: !76)
!112 = !{!93, !94, i64 56}
!113 = !DILocation(line: 484, column: 24, scope: !76)
!114 = !{!93, !94, i64 64}
!115 = !DILocation(line: 485, column: 32, scope: !76)
!116 = !{!94, !94, i64 0}
!117 = !DILocation(line: 485, column: 25, scope: !76)
!118 = !DILocation(line: 485, column: 18, scope: !76)
!119 = !DILocation(line: 485, column: 41, scope: !76)
!120 = !DILocation(line: 485, column: 45, scope: !76)
!121 = !DILocation(line: 485, column: 63, scope: !76)
!122 = !DILocation(line: 485, column: 16, scope: !76)
!123 = !{!93, !97, i64 48}
!124 = !DILocation(line: 486, column: 19, scope: !76)
!125 = !DILocation(line: 488, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !76, file: !3, line: 488, column: 9)
!127 = !DILocation(line: 488, column: 24, scope: !126)
!128 = !DILocation(line: 488, column: 9, scope: !76)
!129 = !DILocation(line: 489, column: 30, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 488, column: 33)
!131 = !DILocation(line: 489, column: 28, scope: !130)
!132 = !DILocation(line: 490, column: 64, scope: !130)
!133 = !DILocation(line: 490, column: 9, scope: !130)
!134 = !DILocation(line: 491, column: 37, scope: !130)
!135 = !DILocation(line: 491, column: 9, scope: !130)
!136 = !DILocation(line: 492, column: 5, scope: !130)
!137 = !DILocation(line: 494, column: 16, scope: !76)
!138 = !DILocation(line: 495, column: 10, scope: !76)
!139 = !DILocation(line: 498, column: 16, scope: !85)
!140 = !DILocation(line: 498, column: 21, scope: !85)
!141 = !DILocation(line: 498, column: 9, scope: !76)
!142 = !DILocation(line: 499, column: 9, scope: !84)
!143 = !DILocation(line: 499, column: 15, scope: !84)
!144 = !DILocation(line: 500, column: 28, scope: !84)
!145 = !DILocation(line: 0, scope: !84)
!146 = !DILocation(line: 505, column: 22, scope: !84)
!147 = !DILocation(line: 506, column: 9, scope: !84)
!148 = !DILocation(line: 506, column: 21, scope: !84)
!149 = !DILocation(line: 507, column: 9, scope: !84)
!150 = !DILocation(line: 507, column: 21, scope: !84)
!151 = !DILocation(line: 508, column: 27, scope: !84)
!152 = !DILocation(line: 508, column: 9, scope: !84)
!153 = !DILocation(line: 509, column: 22, scope: !84)
!154 = !DILocation(line: 510, column: 5, scope: !85)
!155 = !DILocation(line: 510, column: 5, scope: !84)
!156 = !DILocation(line: 513, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !76, file: !3, line: 513, column: 9)
!158 = !DILocation(line: 513, column: 9, scope: !76)
!159 = !DILocation(line: 513, column: 20, scope: !157)
!160 = !DILocation(line: 496, column: 10, scope: !76)
!161 = !DILocation(line: 515, column: 32, scope: !76)
!162 = !DILocation(line: 515, column: 12, scope: !76)
!163 = !DILocation(line: 515, column: 5, scope: !76)
!164 = !DISubprogram(name: "isatty", scope: !165, file: !165, line: 779, type: !35, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!165 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!166 = !{}
!167 = !DISubprogram(name: "fileno", scope: !168, file: !168, line: 786, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!168 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!169 = !DISubroutineType(types: !170)
!170 = !{!23, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !173, line: 7, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !175, line: 49, size: 1728, elements: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !192, !194, !195, !196, !199, !200, !202, !206, !209, !211, !214, !217, !218, !219, !222, !223}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !174, file: !175, line: 51, baseType: !23, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !174, file: !175, line: 54, baseType: !25, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !174, file: !175, line: 55, baseType: !25, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !174, file: !175, line: 56, baseType: !25, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !174, file: !175, line: 57, baseType: !25, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !174, file: !175, line: 58, baseType: !25, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !174, file: !175, line: 59, baseType: !25, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !174, file: !175, line: 60, baseType: !25, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !174, file: !175, line: 61, baseType: !25, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !174, file: !175, line: 64, baseType: !25, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !174, file: !175, line: 65, baseType: !25, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !174, file: !175, line: 66, baseType: !25, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !174, file: !175, line: 68, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !175, line: 36, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !174, file: !175, line: 70, baseType: !193, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !174, file: !175, line: 72, baseType: !23, size: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !174, file: !175, line: 73, baseType: !23, size: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !174, file: !175, line: 74, baseType: !197, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !198, line: 152, baseType: !48)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !174, file: !175, line: 77, baseType: !28, size: 16, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !174, file: !175, line: 78, baseType: !201, size: 8, offset: 1040)
!201 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !174, file: !175, line: 79, baseType: !203, size: 8, offset: 1048)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 1)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !174, file: !175, line: 81, baseType: !207, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !175, line: 43, baseType: null)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !174, file: !175, line: 89, baseType: !210, size: 64, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !198, line: 153, baseType: !48)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !174, file: !175, line: 91, baseType: !212, size: 64, offset: 1216)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !175, line: 37, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !174, file: !175, line: 92, baseType: !215, size: 64, offset: 1280)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !175, line: 38, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !174, file: !175, line: 93, baseType: !193, size: 64, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !174, file: !175, line: 94, baseType: !22, size: 64, offset: 1408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !174, file: !175, line: 95, baseType: !220, size: 64, offset: 1472)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 46, baseType: !27)
!221 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !174, file: !175, line: 96, baseType: !23, size: 32, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !174, file: !175, line: 98, baseType: !224, size: 160, offset: 1568)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 20)
!227 = !DISubprogram(name: "getenv", scope: !228, file: !228, line: 634, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!228 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!229 = !DISubroutineType(types: !230)
!230 = !{!25, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!233 = !DISubprogram(name: "malloc", scope: !228, file: !228, line: 539, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!234 = !DISubroutineType(types: !235)
!235 = !{!22, !220}
!236 = !DISubprogram(name: "snprintf", scope: !168, file: !168, line: 354, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!237 = !DISubroutineType(types: !238)
!238 = !{!23, !239, !220, !240, null}
!239 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!241 = !DISubprogram(name: "linenoiseHistoryLoad", scope: !242, file: !242, line: 41, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!242 = !DIFile(filename: "./linenoise.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "046b023ae64d60c3d0c44850b1754ba3")
!243 = !DISubroutineType(types: !244)
!244 = !{!23, !25}
!245 = distinct !DISubprogram(name: "parseOptions", scope: !3, file: !3, line: 323, type: !77, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!246 = !{!247, !248, !249, !250, !254}
!247 = !DILocalVariable(name: "argc", arg: 1, scope: !245, file: !3, line: 323, type: !23)
!248 = !DILocalVariable(name: "argv", arg: 2, scope: !245, file: !3, line: 323, type: !24)
!249 = !DILocalVariable(name: "i", scope: !245, file: !3, line: 324, type: !23)
!250 = !DILocalVariable(name: "lastarg", scope: !251, file: !3, line: 327, type: !23)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 326, column: 32)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 326, column: 5)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 326, column: 5)
!254 = !DILocalVariable(name: "ip", scope: !255, file: !3, line: 330, type: !25)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 329, column: 48)
!256 = distinct !DILexicalBlock(scope: !251, file: !3, line: 329, column: 13)
!257 = !DILocation(line: 0, scope: !245)
!258 = !DILocation(line: 326, column: 19, scope: !252)
!259 = !DILocation(line: 326, column: 5, scope: !253)
!260 = !DILocation(line: 327, column: 24, scope: !251)
!261 = !DILocation(line: 0, scope: !251)
!262 = !DILocation(line: 329, column: 21, scope: !256)
!263 = !DILocation(line: 329, column: 14, scope: !256)
!264 = !DILocation(line: 329, column: 35, scope: !256)
!265 = !DILocation(line: 330, column: 24, scope: !255)
!266 = !DILocation(line: 0, scope: !255)
!267 = !DILocation(line: 331, column: 40, scope: !268)
!268 = distinct !DILexicalBlock(scope: !255, file: !3, line: 331, column: 17)
!269 = !DILocation(line: 331, column: 34, scope: !268)
!270 = !DILocation(line: 331, column: 17, scope: !268)
!271 = !DILocation(line: 331, column: 48, scope: !268)
!272 = !DILocation(line: 331, column: 17, scope: !255)
!273 = !DILocation(line: 332, column: 46, scope: !274)
!274 = distinct !DILexicalBlock(scope: !268, file: !3, line: 331, column: 61)
!275 = !DILocation(line: 332, column: 17, scope: !274)
!276 = !DILocation(line: 333, column: 17, scope: !274)
!277 = !DILocation(line: 335, column: 27, scope: !255)
!278 = !DILocation(line: 337, column: 9, scope: !255)
!279 = !DILocation(line: 337, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !256, file: !3, line: 337, column: 20)
!281 = !DILocation(line: 337, column: 42, scope: !280)
!282 = !DILocation(line: 338, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 337, column: 54)
!284 = !DILocation(line: 339, column: 9, scope: !283)
!285 = !DILocation(line: 339, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !280, file: !3, line: 339, column: 20)
!287 = !DILocation(line: 339, column: 42, scope: !286)
!288 = !DILocation(line: 340, column: 42, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !3, line: 339, column: 55)
!290 = !DILocation(line: 340, column: 36, scope: !289)
!291 = !DILocation(line: 340, column: 31, scope: !289)
!292 = !DILocation(line: 340, column: 29, scope: !289)
!293 = !DILocation(line: 342, column: 9, scope: !289)
!294 = !DILocation(line: 342, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !286, file: !3, line: 342, column: 20)
!296 = !DILocation(line: 342, column: 42, scope: !295)
!297 = !DILocation(line: 343, column: 43, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !3, line: 342, column: 55)
!299 = !DILocation(line: 343, column: 37, scope: !298)
!300 = !DILocation(line: 343, column: 29, scope: !298)
!301 = !DILocation(line: 343, column: 27, scope: !298)
!302 = !DILocation(line: 345, column: 9, scope: !298)
!303 = !DILocation(line: 345, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !3, line: 345, column: 20)
!305 = !DILocation(line: 345, column: 42, scope: !304)
!306 = !DILocation(line: 346, column: 39, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 345, column: 55)
!308 = !DILocation(line: 346, column: 33, scope: !307)
!309 = !DILocation(line: 346, column: 28, scope: !307)
!310 = !DILocation(line: 346, column: 26, scope: !307)
!311 = !DILocation(line: 348, column: 9, scope: !307)
!312 = !DILocation(line: 348, column: 21, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !3, line: 348, column: 20)
!314 = !DILocation(line: 348, column: 42, scope: !313)
!315 = !DILocation(line: 349, column: 33, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 348, column: 55)
!317 = !DILocation(line: 349, column: 27, scope: !316)
!318 = !DILocation(line: 349, column: 25, scope: !316)
!319 = !DILocation(line: 351, column: 9, scope: !316)
!320 = !DILocation(line: 351, column: 21, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 351, column: 20)
!322 = !DILocation(line: 351, column: 20, scope: !313)
!323 = !DILocation(line: 352, column: 21, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 351, column: 43)
!325 = !DILocation(line: 352, column: 13, scope: !324)
!326 = !DILocation(line: 356, column: 9, scope: !324)
!327 = !DILocation(line: 356, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !3, line: 356, column: 20)
!329 = !DILocation(line: 356, column: 20, scope: !321)
!330 = !DILocation(line: 357, column: 21, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 356, column: 43)
!332 = !DILocation(line: 357, column: 13, scope: !331)
!333 = !DILocation(line: 362, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 362, column: 20)
!335 = !DILocation(line: 362, column: 20, scope: !328)
!336 = !DILocation(line: 363, column: 13, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !3, line: 362, column: 43)
!338 = !DILocation(line: 364, column: 13, scope: !337)
!339 = !DILocation(line: 326, column: 28, scope: !252)
!340 = distinct !{!340, !259, !341}
!341 = !DILocation(line: 368, column: 5, scope: !253)
!342 = !DILocation(line: 369, column: 5, scope: !245)
!343 = distinct !DISubprogram(name: "cliSendCommand", scope: !3, file: !3, line: 269, type: !344, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!23, !23, !24, !23}
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354}
!347 = !DILocalVariable(name: "argc", arg: 1, scope: !343, file: !3, line: 269, type: !23)
!348 = !DILocalVariable(name: "argv", arg: 2, scope: !343, file: !3, line: 269, type: !24)
!349 = !DILocalVariable(name: "repeat", arg: 3, scope: !343, file: !3, line: 269, type: !23)
!350 = !DILocalVariable(name: "command", scope: !343, file: !3, line: 270, type: !25)
!351 = !DILocalVariable(name: "fd", scope: !343, file: !3, line: 271, type: !23)
!352 = !DILocalVariable(name: "j", scope: !343, file: !3, line: 271, type: !23)
!353 = !DILocalVariable(name: "retval", scope: !343, file: !3, line: 271, type: !23)
!354 = !DILocalVariable(name: "cmd", scope: !343, file: !3, line: 272, type: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !356, line: 36, baseType: !25)
!356 = !DIFile(filename: "./sds.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "be5f4c5599eae55b8730033246030f20")
!357 = !DILocation(line: 0, scope: !343)
!358 = !DILocation(line: 270, column: 21, scope: !343)
!359 = !DILocation(line: 274, column: 26, scope: !343)
!360 = !DILocation(line: 274, column: 25, scope: !343)
!361 = !DILocation(line: 274, column: 23, scope: !343)
!362 = !DILocation(line: 275, column: 10, scope: !363)
!363 = distinct !DILexicalBlock(scope: !343, file: !3, line: 275, column: 9)
!364 = !DILocation(line: 275, column: 9, scope: !343)
!365 = !DILocation(line: 276, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 275, column: 38)
!367 = !DILocation(line: 277, column: 9, scope: !366)
!368 = !DILocation(line: 279, column: 10, scope: !369)
!369 = distinct !DILexicalBlock(scope: !343, file: !3, line: 279, column: 9)
!370 = !DILocation(line: 279, column: 9, scope: !343)
!371 = !DILocation(line: 279, column: 58, scope: !369)
!372 = !DILocation(line: 279, column: 42, scope: !369)
!373 = !DILocation(line: 280, column: 10, scope: !374)
!374 = distinct !DILexicalBlock(scope: !343, file: !3, line: 280, column: 9)
!375 = !DILocation(line: 280, column: 9, scope: !343)
!376 = !DILocation(line: 280, column: 61, scope: !374)
!377 = !DILocation(line: 280, column: 41, scope: !374)
!378 = !DILocation(line: 281, column: 10, scope: !379)
!379 = distinct !DILexicalBlock(scope: !343, file: !3, line: 281, column: 9)
!380 = !DILocation(line: 281, column: 42, scope: !379)
!381 = !DILocation(line: 282, column: 10, scope: !379)
!382 = !DILocation(line: 281, column: 9, scope: !343)
!383 = !DILocation(line: 282, column: 63, scope: !379)
!384 = !DILocation(line: 282, column: 44, scope: !379)
!385 = !DILocation(line: 283, column: 15, scope: !386)
!386 = distinct !DILexicalBlock(scope: !343, file: !3, line: 283, column: 9)
!387 = !DILocation(line: 283, column: 30, scope: !386)
!388 = !DILocation(line: 283, column: 9, scope: !343)
!389 = !DILocation(line: 286, column: 14, scope: !343)
!390 = !DILocation(line: 287, column: 9, scope: !391)
!391 = distinct !DILexicalBlock(scope: !343, file: !3, line: 287, column: 9)
!392 = !DILocation(line: 287, column: 9, scope: !343)
!393 = !DILocation(line: 288, column: 17, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 287, column: 17)
!395 = !DILocation(line: 288, column: 9, scope: !394)
!396 = !DILocation(line: 289, column: 9, scope: !394)
!397 = !DILocation(line: 293, column: 24, scope: !343)
!398 = !DILocation(line: 293, column: 11, scope: !343)
!399 = !DILocation(line: 294, column: 19, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 294, column: 5)
!401 = distinct !DILexicalBlock(scope: !343, file: !3, line: 294, column: 5)
!402 = !DILocation(line: 294, column: 5, scope: !401)
!403 = !DILocation(line: 301, column: 5, scope: !343)
!404 = !DILocation(line: 296, column: 35, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !3, line: 294, column: 32)
!406 = !DILocation(line: 296, column: 28, scope: !405)
!407 = !DILocation(line: 295, column: 15, scope: !405)
!408 = !DILocation(line: 297, column: 29, scope: !405)
!409 = !DILocation(line: 297, column: 37, scope: !405)
!410 = !DILocation(line: 297, column: 15, scope: !405)
!411 = !DILocation(line: 298, column: 15, scope: !405)
!412 = !DILocation(line: 294, column: 28, scope: !400)
!413 = distinct !{!413, !402, !414}
!414 = !DILocation(line: 299, column: 5, scope: !401)
!415 = !DILocation(line: 301, column: 17, scope: !343)
!416 = !DILocation(line: 302, column: 26, scope: !417)
!417 = distinct !DILexicalBlock(scope: !343, file: !3, line: 301, column: 21)
!418 = !DILocation(line: 302, column: 9, scope: !417)
!419 = !DILocation(line: 303, column: 23, scope: !417)
!420 = !DILocation(line: 303, column: 9, scope: !417)
!421 = !DILocation(line: 304, column: 17, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 304, column: 17)
!423 = distinct !DILexicalBlock(scope: !417, file: !3, line: 303, column: 37)
!424 = !DILocation(line: 304, column: 17, scope: !423)
!425 = !DILocation(line: 304, column: 47, scope: !422)
!426 = !DILocation(line: 305, column: 13, scope: !423)
!427 = distinct !{!427, !420, !428}
!428 = !DILocation(line: 306, column: 9, scope: !417)
!429 = !DILocation(line: 308, column: 20, scope: !430)
!430 = distinct !DILexicalBlock(scope: !417, file: !3, line: 308, column: 13)
!431 = !DILocation(line: 308, column: 13, scope: !417)
!432 = !DILocation(line: 309, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !430, file: !3, line: 308, column: 33)
!434 = !DILocation(line: 310, column: 13, scope: !433)
!435 = !DILocation(line: 311, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 310, column: 23)
!437 = !DILocation(line: 312, column: 17, scope: !436)
!438 = distinct !{!438, !434, !439}
!439 = !DILocation(line: 313, column: 13, scope: !433)
!440 = !DILocation(line: 316, column: 18, scope: !417)
!441 = !DILocation(line: 317, column: 21, scope: !442)
!442 = distinct !DILexicalBlock(scope: !417, file: !3, line: 317, column: 13)
!443 = !DILocation(line: 317, column: 14, scope: !442)
!444 = !DILocation(line: 317, column: 32, scope: !442)
!445 = !DILocation(line: 317, column: 47, scope: !442)
!446 = !DILocation(line: 318, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !417, file: !3, line: 318, column: 13)
!448 = !DILocation(line: 318, column: 13, scope: !417)
!449 = distinct !{!449, !403, !450}
!450 = !DILocation(line: 319, column: 5, scope: !343)
!451 = !DILocation(line: 321, column: 1, scope: !343)
!452 = distinct !DISubprogram(name: "convertToSds", scope: !3, file: !3, line: 401, type: !453, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!24, !23, !24}
!455 = !{!456, !457, !458, !459}
!456 = !DILocalVariable(name: "count", arg: 1, scope: !452, file: !3, line: 401, type: !23)
!457 = !DILocalVariable(name: "args", arg: 2, scope: !452, file: !3, line: 401, type: !24)
!458 = !DILocalVariable(name: "j", scope: !452, file: !3, line: 402, type: !23)
!459 = !DILocalVariable(name: "sds", scope: !452, file: !3, line: 403, type: !24)
!460 = !DILocation(line: 0, scope: !452)
!461 = !DILocation(line: 403, column: 38, scope: !452)
!462 = !DILocation(line: 403, column: 37, scope: !452)
!463 = !DILocation(line: 403, column: 16, scope: !452)
!464 = !DILocation(line: 405, column: 16, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 405, column: 3)
!466 = distinct !DILexicalBlock(scope: !452, file: !3, line: 405, column: 3)
!467 = !DILocation(line: 405, column: 3, scope: !466)
!468 = !DILocation(line: 406, column: 21, scope: !465)
!469 = !DILocation(line: 406, column: 14, scope: !465)
!470 = !DILocation(line: 406, column: 5, scope: !465)
!471 = !DILocation(line: 406, column: 12, scope: !465)
!472 = !DILocation(line: 405, column: 26, scope: !465)
!473 = distinct !{!473, !467, !474}
!474 = !DILocation(line: 406, column: 28, scope: !466)
!475 = !DILocation(line: 408, column: 3, scope: !452)
!476 = distinct !DISubprogram(name: "noninteractive", scope: !3, file: !3, line: 456, type: !77, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!477 = !{!478, !479, !480, !481}
!478 = !DILocalVariable(name: "argc", arg: 1, scope: !476, file: !3, line: 456, type: !23)
!479 = !DILocalVariable(name: "argv", arg: 2, scope: !476, file: !3, line: 456, type: !24)
!480 = !DILocalVariable(name: "retval", scope: !476, file: !3, line: 457, type: !23)
!481 = !DILocalVariable(name: "s", scope: !476, file: !3, line: 458, type: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !483, line: 46, size: 1152, elements: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!484 = !{!485, !487, !489, !491, !493, !495, !497, !498, !499, !500, !502, !504, !512, !513, !514}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !482, file: !483, line: 48, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !198, line: 145, baseType: !27)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !482, file: !483, line: 53, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !198, line: 148, baseType: !27)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !482, file: !483, line: 61, baseType: !490, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !198, line: 151, baseType: !27)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !482, file: !483, line: 62, baseType: !492, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !198, line: 150, baseType: !7)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !482, file: !483, line: 64, baseType: !494, size: 32, offset: 224)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !198, line: 146, baseType: !7)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !482, file: !483, line: 65, baseType: !496, size: 32, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !198, line: 147, baseType: !7)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !482, file: !483, line: 67, baseType: !23, size: 32, offset: 288)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !482, file: !483, line: 69, baseType: !486, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !482, file: !483, line: 74, baseType: !197, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !482, file: !483, line: 78, baseType: !501, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !198, line: 174, baseType: !48)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !482, file: !483, line: 80, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !198, line: 179, baseType: !48)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !482, file: !483, line: 91, baseType: !505, size: 128, offset: 576)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !506, line: 10, size: 128, elements: !507)
!506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!507 = !{!508, !510}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !505, file: !506, line: 12, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !198, line: 160, baseType: !48)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !505, file: !506, line: 16, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !198, line: 196, baseType: !48)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !482, file: !483, line: 92, baseType: !505, size: 128, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !482, file: !483, line: 93, baseType: !505, size: 128, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !482, file: !483, line: 106, baseType: !515, size: 192, offset: 960)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 192, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 3)
!518 = !DILocation(line: 0, scope: !476)
!519 = !DILocation(line: 458, column: 5, scope: !476)
!520 = !DILocation(line: 458, column: 17, scope: !476)
!521 = !DILocation(line: 459, column: 18, scope: !476)
!522 = !DILocation(line: 459, column: 11, scope: !476)
!523 = !DILocation(line: 459, column: 5, scope: !476)
!524 = !DILocation(line: 460, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !476, file: !3, line: 460, column: 9)
!526 = !{!527, !97, i64 24}
!527 = !{!"stat", !98, i64 0, !98, i64 8, !98, i64 16, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !98, i64 40, !98, i64 48, !98, i64 56, !98, i64 64, !528, i64 72, !528, i64 88, !528, i64 104, !95, i64 120}
!528 = !{!"timespec", !98, i64 0, !98, i64 8}
!529 = !DILocation(line: 460, column: 29, scope: !525)
!530 = !DILocation(line: 461, column: 25, scope: !531)
!531 = distinct !DILexicalBlock(scope: !525, file: !3, line: 460, column: 52)
!532 = !DILocation(line: 461, column: 36, scope: !531)
!533 = !DILocation(line: 461, column: 31, scope: !531)
!534 = !DILocation(line: 461, column: 39, scope: !531)
!535 = !DILocation(line: 461, column: 16, scope: !531)
!536 = !DILocation(line: 462, column: 22, scope: !531)
!537 = !DILocation(line: 462, column: 9, scope: !531)
!538 = !DILocation(line: 462, column: 20, scope: !531)
!539 = !DILocation(line: 463, column: 54, scope: !531)
!540 = !DILocation(line: 463, column: 47, scope: !531)
!541 = !DILocation(line: 463, column: 18, scope: !531)
!542 = !DILocation(line: 464, column: 5, scope: !531)
!543 = !DILocation(line: 466, column: 52, scope: !544)
!544 = distinct !DILexicalBlock(scope: !525, file: !3, line: 464, column: 12)
!545 = !DILocation(line: 466, column: 45, scope: !544)
!546 = !DILocation(line: 466, column: 18, scope: !544)
!547 = !DILocation(line: 0, scope: !525)
!548 = !DILocation(line: 469, column: 1, scope: !476)
!549 = !DILocation(line: 468, column: 5, scope: !476)
!550 = !DISubprogram(name: "strcmp", scope: !551, file: !551, line: 137, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!551 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!552 = !DISubroutineType(types: !553)
!553 = !{!23, !231, !231}
!554 = !DISubprogram(name: "zmalloc", scope: !555, file: !555, line: 34, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!555 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!556 = !DISubprogram(name: "anetResolve", scope: !557, file: !557, line: 41, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!557 = !DIFile(filename: "./anet.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "81285b86a9ecba6646b6ba287bca42c3")
!558 = !DISubroutineType(types: !559)
!559 = !{!23, !25, !25, !25}
!560 = !DISubprogram(name: "printf", scope: !168, file: !168, line: 332, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!561 = !DISubroutineType(types: !562)
!562 = !{!23, !240, null}
!563 = !DISubprogram(name: "exit", scope: !228, file: !228, line: 617, type: !564, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !166)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !23}
!566 = !DISubprogram(name: "strtoll", scope: !228, file: !228, line: 200, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !240, !570, !23}
!569 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!571 = !DISubprogram(name: "fprintf", scope: !168, file: !168, line: 326, type: !572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!572 = !DISubroutineType(types: !573)
!573 = !{!23, !574, !240, null}
!574 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!575 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 389, type: !576, scopeLine: 389, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!576 = !DISubroutineType(types: !577)
!577 = !{null}
!578 = !DILocation(line: 390, column: 13, scope: !575)
!579 = !DILocation(line: 390, column: 5, scope: !575)
!580 = !DILocation(line: 391, column: 13, scope: !575)
!581 = !DILocation(line: 391, column: 5, scope: !575)
!582 = !DILocation(line: 392, column: 13, scope: !575)
!583 = !DILocation(line: 392, column: 5, scope: !575)
!584 = !DILocation(line: 393, column: 13, scope: !575)
!585 = !DILocation(line: 393, column: 5, scope: !575)
!586 = !DILocation(line: 394, column: 13, scope: !575)
!587 = !DILocation(line: 394, column: 5, scope: !575)
!588 = !DILocation(line: 395, column: 13, scope: !575)
!589 = !DILocation(line: 395, column: 5, scope: !575)
!590 = !DILocation(line: 396, column: 13, scope: !575)
!591 = !DILocation(line: 396, column: 5, scope: !575)
!592 = !DILocation(line: 397, column: 5, scope: !575)
!593 = !DISubprogram(name: "strcasecmp", scope: !594, file: !594, line: 116, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!594 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "bd81fc6b401eca7e7fe9248ee68afe69")
!595 = distinct !DISubprogram(name: "showInteractiveHelp", scope: !3, file: !3, line: 253, type: !576, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!596 = !DILocation(line: 254, column: 5, scope: !595)
!597 = !DILocation(line: 267, column: 1, scope: !595)
!598 = !DILocation(line: 0, scope: !34)
!599 = !DILocation(line: 75, column: 5, scope: !34)
!600 = !DILocation(line: 75, column: 10, scope: !34)
!601 = !DILocation(line: 78, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !34, file: !3, line: 78, column: 9)
!603 = !{!97, !97, i64 0}
!604 = !DILocation(line: 78, column: 12, scope: !602)
!605 = !DILocation(line: 78, column: 24, scope: !602)
!606 = !DILocation(line: 79, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !602, file: !3, line: 78, column: 34)
!608 = !DILocation(line: 79, column: 20, scope: !609)
!609 = distinct !DILexicalBlock(scope: !607, file: !3, line: 79, column: 13)
!610 = !DILocation(line: 80, column: 40, scope: !607)
!611 = !DILocation(line: 80, column: 54, scope: !607)
!612 = !DILocation(line: 80, column: 14, scope: !607)
!613 = !DILocation(line: 80, column: 12, scope: !607)
!614 = !DILocation(line: 81, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 81, column: 13)
!616 = !DILocation(line: 81, column: 13, scope: !607)
!617 = !DILocation(line: 82, column: 21, scope: !618)
!618 = distinct !DILexicalBlock(scope: !615, file: !3, line: 81, column: 29)
!619 = !DILocation(line: 82, column: 79, scope: !618)
!620 = !DILocation(line: 82, column: 94, scope: !618)
!621 = !DILocation(line: 82, column: 13, scope: !618)
!622 = !DILocation(line: 83, column: 13, scope: !618)
!623 = !DILocation(line: 85, column: 9, scope: !607)
!624 = !DILocation(line: 87, column: 12, scope: !34)
!625 = !DILocation(line: 86, column: 5, scope: !607)
!626 = !DILocation(line: 88, column: 1, scope: !34)
!627 = distinct !DISubprogram(name: "selectDb", scope: !3, file: !3, line: 233, type: !35, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!628 = !{!629, !630, !631, !632}
!629 = !DILocalVariable(name: "fd", arg: 1, scope: !627, file: !3, line: 233, type: !23)
!630 = !DILocalVariable(name: "retval", scope: !627, file: !3, line: 234, type: !23)
!631 = !DILocalVariable(name: "cmd", scope: !627, file: !3, line: 235, type: !355)
!632 = !DILocalVariable(name: "type", scope: !627, file: !3, line: 236, type: !26)
!633 = !DILocation(line: 0, scope: !627)
!634 = !DILocation(line: 236, column: 5, scope: !627)
!635 = !DILocation(line: 238, column: 16, scope: !636)
!636 = distinct !DILexicalBlock(scope: !627, file: !3, line: 238, column: 9)
!637 = !DILocation(line: 238, column: 22, scope: !636)
!638 = !DILocation(line: 238, column: 9, scope: !627)
!639 = !DILocation(line: 241, column: 11, scope: !627)
!640 = !DILocation(line: 242, column: 51, scope: !627)
!641 = !DILocation(line: 242, column: 11, scope: !627)
!642 = !DILocation(line: 243, column: 22, scope: !627)
!643 = !DILocation(line: 243, column: 5, scope: !627)
!644 = !DILocation(line: 244, column: 5, scope: !627)
!645 = !DILocation(line: 245, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !627, file: !3, line: 245, column: 9)
!647 = !{!95, !95, i64 0}
!648 = !DILocation(line: 245, column: 19, scope: !646)
!649 = !DILocation(line: 246, column: 14, scope: !627)
!650 = !DILocation(line: 251, column: 1, scope: !627)
!651 = !DISubprogram(name: "sdscatprintf", scope: !356, file: !356, line: 57, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!652 = !DISubroutineType(types: !653)
!653 = !{!355, !355, !231, null}
!654 = !DISubprogram(name: "sdsempty", scope: !356, file: !356, line: 46, type: !655, spFlags: DISPFlagOptimized, retainedNodes: !166)
!655 = !DISubroutineType(types: !656)
!656 = !{!355}
!657 = !DISubprogram(name: "sdslen", scope: !356, file: !356, line: 47, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!658 = !DISubroutineType(types: !659)
!659 = !{!220, !660}
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!661 = !DISubprogram(name: "sdscatlen", scope: !356, file: !356, line: 51, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!662 = !DISubroutineType(types: !663)
!663 = !{!355, !355, !22, !220}
!664 = !DISubprogram(name: "anetWrite", scope: !557, file: !557, line: 44, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!665 = !DISubroutineType(types: !666)
!666 = !{!23, !23, !25, !23}
!667 = distinct !DISubprogram(name: "cliReadSingleLineReply", scope: !3, file: !3, line: 110, type: !668, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!23, !23, !23}
!670 = !{!671, !672, !673}
!671 = !DILocalVariable(name: "fd", arg: 1, scope: !667, file: !3, line: 110, type: !23)
!672 = !DILocalVariable(name: "quiet", arg: 2, scope: !667, file: !3, line: 110, type: !23)
!673 = !DILocalVariable(name: "reply", scope: !667, file: !3, line: 111, type: !355)
!674 = !DILocation(line: 0, scope: !667)
!675 = !DILocation(line: 111, column: 17, scope: !667)
!676 = !DILocation(line: 113, column: 15, scope: !677)
!677 = distinct !DILexicalBlock(scope: !667, file: !3, line: 113, column: 9)
!678 = !DILocation(line: 113, column: 9, scope: !667)
!679 = !DILocation(line: 114, column: 10, scope: !680)
!680 = distinct !DILexicalBlock(scope: !667, file: !3, line: 114, column: 9)
!681 = !DILocation(line: 114, column: 9, scope: !667)
!682 = !DILocation(line: 115, column: 9, scope: !680)
!683 = !DILocation(line: 116, column: 5, scope: !667)
!684 = !DILocation(line: 117, column: 5, scope: !667)
!685 = !DILocation(line: 118, column: 1, scope: !667)
!686 = distinct !DISubprogram(name: "cliReadReply", scope: !3, file: !3, line: 198, type: !35, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!687 = !{!688, !689, !690}
!688 = !DILocalVariable(name: "fd", arg: 1, scope: !686, file: !3, line: 198, type: !23)
!689 = !DILocalVariable(name: "type", scope: !686, file: !3, line: 199, type: !26)
!690 = !DILocalVariable(name: "nread", scope: !686, file: !3, line: 200, type: !23)
!691 = !DILocation(line: 0, scope: !686)
!692 = !DILocation(line: 199, column: 5, scope: !686)
!693 = !DILocation(line: 202, column: 18, scope: !694)
!694 = distinct !DILexicalBlock(scope: !686, file: !3, line: 202, column: 9)
!695 = !DILocation(line: 202, column: 40, scope: !694)
!696 = !DILocation(line: 202, column: 9, scope: !686)
!697 = !DILocation(line: 203, column: 20, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 203, column: 13)
!699 = distinct !DILexicalBlock(scope: !694, file: !3, line: 202, column: 46)
!700 = !DILocation(line: 203, column: 13, scope: !699)
!701 = !DILocation(line: 204, column: 20, scope: !702)
!702 = distinct !DILexicalBlock(scope: !699, file: !3, line: 204, column: 13)
!703 = !DILocation(line: 204, column: 32, scope: !702)
!704 = !DILocation(line: 205, column: 25, scope: !702)
!705 = !DILocation(line: 205, column: 44, scope: !702)
!706 = !DILocation(line: 205, column: 50, scope: !702)
!707 = !DILocation(line: 204, column: 13, scope: !699)
!708 = !DILocation(line: 209, column: 71, scope: !709)
!709 = distinct !DILexicalBlock(scope: !702, file: !3, line: 208, column: 16)
!710 = !DILocation(line: 209, column: 62, scope: !709)
!711 = !DILocation(line: 209, column: 13, scope: !709)
!712 = !DILocation(line: 210, column: 13, scope: !709)
!713 = !DILocation(line: 213, column: 12, scope: !686)
!714 = !DILocation(line: 213, column: 5, scope: !686)
!715 = !DILocation(line: 215, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 215, column: 13)
!717 = distinct !DILexicalBlock(scope: !686, file: !3, line: 213, column: 18)
!718 = !DILocation(line: 215, column: 13, scope: !716)
!719 = !DILocation(line: 215, column: 13, scope: !717)
!720 = !DILocation(line: 215, column: 25, scope: !716)
!721 = !DILocation(line: 216, column: 9, scope: !717)
!722 = !DILocation(line: 217, column: 9, scope: !717)
!723 = !DILocation(line: 219, column: 16, scope: !717)
!724 = !DILocation(line: 219, column: 9, scope: !717)
!725 = !DILocation(line: 221, column: 20, scope: !726)
!726 = distinct !DILexicalBlock(scope: !717, file: !3, line: 221, column: 13)
!727 = !DILocation(line: 221, column: 13, scope: !726)
!728 = !DILocation(line: 221, column: 13, scope: !717)
!729 = !DILocation(line: 221, column: 25, scope: !726)
!730 = !DILocation(line: 222, column: 16, scope: !717)
!731 = !DILocation(line: 222, column: 9, scope: !717)
!732 = !DILocation(line: 224, column: 16, scope: !717)
!733 = !DILocation(line: 224, column: 9, scope: !717)
!734 = !DILocation(line: 226, column: 16, scope: !717)
!735 = !DILocation(line: 226, column: 9, scope: !717)
!736 = !DILocation(line: 228, column: 9, scope: !717)
!737 = !DILocation(line: 229, column: 9, scope: !717)
!738 = !DILocation(line: 231, column: 1, scope: !686)
!739 = !DISubprogram(name: "close", scope: !165, file: !165, line: 353, type: !35, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!740 = !DISubprogram(name: "anetTcpConnect", scope: !557, file: !557, line: 38, type: !741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!741 = !DISubroutineType(types: !742)
!742 = !{!23, !25, !25, !23}
!743 = !DISubprogram(name: "anetTcpNoDelay", scope: !557, file: !557, line: 46, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!744 = !DISubroutineType(types: !745)
!745 = !{!23, !25, !23}
!746 = !DISubprogram(name: "anetRead", scope: !557, file: !557, line: 40, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!747 = distinct !DISubprogram(name: "cliReadLine", scope: !3, file: !3, line: 90, type: !748, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!355, !23}
!750 = !{!751, !752, !753, !755}
!751 = !DILocalVariable(name: "fd", arg: 1, scope: !747, file: !3, line: 90, type: !23)
!752 = !DILocalVariable(name: "line", scope: !747, file: !3, line: 91, type: !355)
!753 = !DILocalVariable(name: "c", scope: !754, file: !3, line: 94, type: !26)
!754 = distinct !DILexicalBlock(scope: !747, file: !3, line: 93, column: 14)
!755 = !DILocalVariable(name: "ret", scope: !754, file: !3, line: 95, type: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 77, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !198, line: 193, baseType: !48)
!758 = !DILocation(line: 0, scope: !747)
!759 = !DILocation(line: 91, column: 16, scope: !747)
!760 = !DILocation(line: 94, column: 9, scope: !754)
!761 = !DILocation(line: 0, scope: !754)
!762 = !DILocation(line: 97, column: 15, scope: !754)
!763 = !DILocation(line: 98, column: 17, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !3, line: 98, column: 13)
!765 = !DILocation(line: 98, column: 13, scope: !754)
!766 = !DILocation(line: 91, column: 9, scope: !747)
!767 = !DILocation(line: 99, column: 13, scope: !768)
!768 = distinct !DILexicalBlock(scope: !764, file: !3, line: 98, column: 23)
!769 = !DILocation(line: 106, column: 5, scope: !747)
!770 = !DILocation(line: 101, column: 31, scope: !771)
!771 = distinct !DILexicalBlock(scope: !764, file: !3, line: 101, column: 20)
!772 = !DILocation(line: 104, column: 20, scope: !773)
!773 = distinct !DILexicalBlock(scope: !771, file: !3, line: 103, column: 16)
!774 = !DILocation(line: 107, column: 12, scope: !747)
!775 = !DILocation(line: 107, column: 5, scope: !747)
!776 = !DILocation(line: 108, column: 1, scope: !747)
!777 = !DISubprogram(name: "sdsfree", scope: !356, file: !356, line: 49, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !355}
!780 = !DISubprogram(name: "read", scope: !165, file: !165, line: 360, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!781 = !DISubroutineType(types: !782)
!782 = !{!756, !23, !22, !220}
!783 = !DISubprogram(name: "sdstrim", scope: !356, file: !356, line: 63, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!784 = !DISubroutineType(types: !785)
!785 = !{!355, !355, !231}
!786 = !DISubprogram(name: "strerror", scope: !551, file: !551, line: 397, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!787 = !DISubroutineType(types: !788)
!788 = !{!25, !23}
!789 = distinct !DISubprogram(name: "cliReadBulkReply", scope: !3, file: !3, line: 145, type: !35, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791, !792, !793, !794, !796}
!791 = !DILocalVariable(name: "fd", arg: 1, scope: !789, file: !3, line: 145, type: !23)
!792 = !DILocalVariable(name: "replylen", scope: !789, file: !3, line: 146, type: !355)
!793 = !DILocalVariable(name: "reply", scope: !789, file: !3, line: 147, type: !25)
!794 = !DILocalVariable(name: "crlf", scope: !789, file: !3, line: 147, type: !795)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 16, elements: !87)
!796 = !DILocalVariable(name: "bulklen", scope: !789, file: !3, line: 148, type: !23)
!797 = !DILocation(line: 0, scope: !789)
!798 = !DILocation(line: 146, column: 20, scope: !789)
!799 = !DILocation(line: 147, column: 5, scope: !789)
!800 = !DILocation(line: 147, column: 18, scope: !789)
!801 = !DILocation(line: 150, column: 18, scope: !802)
!802 = distinct !DILexicalBlock(scope: !789, file: !3, line: 150, column: 9)
!803 = !DILocation(line: 150, column: 9, scope: !789)
!804 = !DILocation(line: 151, column: 15, scope: !789)
!805 = !DILocation(line: 152, column: 17, scope: !806)
!806 = distinct !DILexicalBlock(scope: !789, file: !3, line: 152, column: 9)
!807 = !DILocation(line: 152, column: 9, scope: !789)
!808 = !DILocation(line: 153, column: 9, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !3, line: 152, column: 24)
!810 = !DILocation(line: 154, column: 9, scope: !809)
!811 = !DILocation(line: 155, column: 9, scope: !809)
!812 = !DILocation(line: 157, column: 21, scope: !789)
!813 = !DILocation(line: 157, column: 13, scope: !789)
!814 = !DILocation(line: 158, column: 5, scope: !789)
!815 = !DILocation(line: 159, column: 5, scope: !789)
!816 = !DILocation(line: 160, column: 16, scope: !817)
!817 = distinct !DILexicalBlock(scope: !789, file: !3, line: 160, column: 9)
!818 = !DILocation(line: 160, column: 9, scope: !817)
!819 = !DILocation(line: 160, column: 27, scope: !817)
!820 = !DILocation(line: 161, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 161, column: 13)
!822 = distinct !DILexicalBlock(scope: !817, file: !3, line: 160, column: 43)
!823 = !DILocation(line: 161, column: 21, scope: !821)
!824 = !DILocation(line: 161, column: 47, scope: !821)
!825 = !DILocation(line: 161, column: 24, scope: !821)
!826 = !DILocation(line: 161, column: 55, scope: !821)
!827 = !DILocation(line: 161, column: 13, scope: !822)
!828 = !DILocation(line: 162, column: 13, scope: !829)
!829 = distinct !DILexicalBlock(scope: !821, file: !3, line: 161, column: 61)
!830 = !DILocation(line: 163, column: 13, scope: !829)
!831 = !DILocation(line: 168, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !817, file: !3, line: 165, column: 12)
!833 = !DILocation(line: 170, column: 5, scope: !789)
!834 = !DILocation(line: 171, column: 5, scope: !789)
!835 = !DILocation(line: 172, column: 1, scope: !789)
!836 = distinct !DISubprogram(name: "cliReadMultiBulkReply", scope: !3, file: !3, line: 174, type: !35, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!837 = !{!838, !839, !840, !841, !842}
!838 = !DILocalVariable(name: "fd", arg: 1, scope: !836, file: !3, line: 174, type: !23)
!839 = !DILocalVariable(name: "replylen", scope: !836, file: !3, line: 175, type: !355)
!840 = !DILocalVariable(name: "elements", scope: !836, file: !3, line: 176, type: !23)
!841 = !DILocalVariable(name: "c", scope: !836, file: !3, line: 176, type: !23)
!842 = !DILocalVariable(name: "retval", scope: !836, file: !3, line: 177, type: !23)
!843 = !DILocation(line: 0, scope: !836)
!844 = !DILocation(line: 175, column: 20, scope: !836)
!845 = !DILocation(line: 179, column: 18, scope: !846)
!846 = distinct !DILexicalBlock(scope: !836, file: !3, line: 179, column: 9)
!847 = !DILocation(line: 179, column: 9, scope: !836)
!848 = !DILocation(line: 180, column: 16, scope: !836)
!849 = !DILocation(line: 181, column: 9, scope: !836)
!850 = !DILocation(line: 182, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 181, column: 25)
!852 = distinct !DILexicalBlock(scope: !836, file: !3, line: 181, column: 9)
!853 = !DILocation(line: 184, column: 9, scope: !851)
!854 = !DILocation(line: 189, column: 19, scope: !836)
!855 = !DILocation(line: 190, column: 20, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 190, column: 13)
!857 = distinct !DILexicalBlock(scope: !836, file: !3, line: 189, column: 23)
!858 = !DILocation(line: 190, column: 13, scope: !856)
!859 = !DILocation(line: 190, column: 13, scope: !857)
!860 = !DILocation(line: 190, column: 25, scope: !856)
!861 = !DILocation(line: 191, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !3, line: 191, column: 13)
!863 = !DILocation(line: 191, column: 13, scope: !857)
!864 = !DILocation(line: 192, column: 13, scope: !865)
!865 = distinct !DILexicalBlock(scope: !857, file: !3, line: 192, column: 13)
!866 = !DILocation(line: 192, column: 13, scope: !857)
!867 = !DILocation(line: 192, column: 42, scope: !865)
!868 = !DILocation(line: 192, column: 35, scope: !865)
!869 = !DILocation(line: 192, column: 23, scope: !865)
!870 = !DILocation(line: 193, column: 10, scope: !857)
!871 = !DILocation(line: 189, column: 5, scope: !836)
!872 = !DILocation(line: 196, column: 1, scope: !836)
!873 = !DISubprogram(name: "fwrite", scope: !168, file: !168, line: 652, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!874 = !DISubroutineType(types: !875)
!875 = !{!220, !876, !220, !220, !574}
!876 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!879 = !DISubprogram(name: "zfree", scope: !555, file: !555, line: 36, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !22}
!882 = distinct !DISubprogram(name: "printStringRepr", scope: !3, file: !3, line: 120, type: !883, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !25, !23}
!885 = !{!886, !887}
!886 = !DILocalVariable(name: "s", arg: 1, scope: !882, file: !3, line: 120, type: !25)
!887 = !DILocalVariable(name: "len", arg: 2, scope: !882, file: !3, line: 120, type: !23)
!888 = !DILocation(line: 0, scope: !882)
!889 = !DILocation(line: 121, column: 5, scope: !882)
!890 = !DILocation(line: 122, column: 5, scope: !882)
!891 = !DILocation(line: 122, column: 14, scope: !882)
!892 = !DILocation(line: 123, column: 16, scope: !893)
!893 = distinct !DILexicalBlock(scope: !882, file: !3, line: 122, column: 18)
!894 = !DILocation(line: 123, column: 9, scope: !893)
!895 = !DILocation(line: 126, column: 13, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !3, line: 123, column: 20)
!897 = !DILocation(line: 127, column: 13, scope: !896)
!898 = !DILocation(line: 128, column: 20, scope: !896)
!899 = !DILocation(line: 128, column: 35, scope: !896)
!900 = !DILocation(line: 129, column: 20, scope: !896)
!901 = !DILocation(line: 129, column: 35, scope: !896)
!902 = !DILocation(line: 130, column: 20, scope: !896)
!903 = !DILocation(line: 130, column: 35, scope: !896)
!904 = !DILocation(line: 131, column: 20, scope: !896)
!905 = !DILocation(line: 131, column: 35, scope: !896)
!906 = !DILocation(line: 132, column: 20, scope: !896)
!907 = !DILocation(line: 132, column: 35, scope: !896)
!908 = !DILocation(line: 134, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !896, file: !3, line: 134, column: 17)
!910 = !{!911, !911, i64 0}
!911 = !{!"short", !95, i64 0}
!912 = !DILocation(line: 134, column: 17, scope: !896)
!913 = !DILocation(line: 135, column: 17, scope: !909)
!914 = !DILocation(line: 137, column: 34, scope: !909)
!915 = !DILocation(line: 137, column: 17, scope: !909)
!916 = !DILocation(line: 140, column: 10, scope: !893)
!917 = distinct !{!917, !890, !918}
!918 = !DILocation(line: 141, column: 5, scope: !882)
!919 = !DILocation(line: 142, column: 5, scope: !882)
!920 = !DILocation(line: 143, column: 1, scope: !882)
!921 = !DISubprogram(name: "sdsnew", scope: !356, file: !356, line: 45, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!922 = !DISubroutineType(types: !923)
!923 = !{!355, !231}
!924 = distinct !DISubprogram(name: "repl", scope: !3, file: !3, line: 412, type: !576, scopeLine: 412, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!925 = !{!926, !927, !928, !929, !931}
!926 = !DILocalVariable(name: "argc", scope: !924, file: !3, line: 413, type: !23)
!927 = !DILocalVariable(name: "j", scope: !924, file: !3, line: 413, type: !23)
!928 = !DILocalVariable(name: "line", scope: !924, file: !3, line: 414, type: !25)
!929 = !DILocalVariable(name: "argv", scope: !924, file: !3, line: 415, type: !930)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!931 = !DILocalVariable(name: "err", scope: !932, file: !3, line: 432, type: !23)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 431, column: 24)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 427, column: 21)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 426, column: 34)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 426, column: 24)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 423, column: 17)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 419, column: 30)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 419, column: 13)
!939 = distinct !DILexicalBlock(scope: !924, file: !3, line: 418, column: 50)
!940 = !DILocation(line: 413, column: 5, scope: !924)
!941 = !DILocation(line: 417, column: 24, scope: !924)
!942 = !DILocation(line: 418, column: 19, scope: !924)
!943 = !DILocation(line: 0, scope: !924)
!944 = !DILocation(line: 418, column: 41, scope: !924)
!945 = !DILocation(line: 418, column: 5, scope: !924)
!946 = !DILocation(line: 419, column: 13, scope: !938)
!947 = !DILocation(line: 419, column: 21, scope: !938)
!948 = !DILocation(line: 419, column: 13, scope: !939)
!949 = !DILocation(line: 420, column: 20, scope: !937)
!950 = !DILocation(line: 421, column: 13, scope: !937)
!951 = !DILocation(line: 422, column: 24, scope: !952)
!952 = distinct !DILexicalBlock(scope: !937, file: !3, line: 422, column: 17)
!953 = !DILocation(line: 422, column: 17, scope: !952)
!954 = !DILocation(line: 422, column: 17, scope: !937)
!955 = !DILocation(line: 422, column: 37, scope: !952)
!956 = !DILocation(line: 423, column: 22, scope: !936)
!957 = !DILocation(line: 423, column: 17, scope: !937)
!958 = !DILocation(line: 424, column: 17, scope: !959)
!959 = distinct !DILexicalBlock(scope: !936, file: !3, line: 423, column: 31)
!960 = !DILocation(line: 425, column: 17, scope: !959)
!961 = distinct !{!961, !945, !962}
!962 = !DILocation(line: 452, column: 5, scope: !924)
!963 = !DILocation(line: 426, column: 24, scope: !935)
!964 = !DILocation(line: 426, column: 29, scope: !935)
!965 = !DILocation(line: 426, column: 24, scope: !936)
!966 = !DILocation(line: 427, column: 32, scope: !933)
!967 = !DILocation(line: 427, column: 21, scope: !933)
!968 = !DILocation(line: 427, column: 48, scope: !933)
!969 = !DILocation(line: 427, column: 53, scope: !933)
!970 = !DILocation(line: 428, column: 21, scope: !933)
!971 = !DILocation(line: 428, column: 48, scope: !933)
!972 = !DILocation(line: 427, column: 21, scope: !934)
!973 = !DILocation(line: 430, column: 21, scope: !974)
!974 = distinct !DILexicalBlock(scope: !933, file: !3, line: 429, column: 17)
!975 = !DILocation(line: 434, column: 32, scope: !976)
!976 = distinct !DILexicalBlock(scope: !932, file: !3, line: 434, column: 25)
!977 = !DILocation(line: 0, scope: !932)
!978 = !DILocation(line: 434, column: 25, scope: !932)
!979 = !DILocation(line: 436, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 435, column: 48)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 435, column: 29)
!982 = distinct !DILexicalBlock(scope: !976, file: !3, line: 434, column: 69)
!983 = !DILocation(line: 437, column: 36, scope: !980)
!984 = !DILocation(line: 437, column: 29, scope: !980)
!985 = !DILocation(line: 438, column: 33, scope: !986)
!986 = distinct !DILexicalBlock(scope: !980, file: !3, line: 438, column: 33)
!987 = !DILocation(line: 438, column: 47, scope: !986)
!988 = !DILocation(line: 438, column: 33, scope: !980)
!989 = !DILocation(line: 438, column: 54, scope: !986)
!990 = !DILocation(line: 439, column: 29, scope: !980)
!991 = !DILocation(line: 440, column: 44, scope: !980)
!992 = !DILocation(line: 440, column: 29, scope: !980)
!993 = !DILocation(line: 441, column: 25, scope: !980)
!994 = !DILocation(line: 446, column: 29, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 446, column: 13)
!996 = distinct !DILexicalBlock(scope: !937, file: !3, line: 446, column: 13)
!997 = !DILocation(line: 446, column: 27, scope: !995)
!998 = !DILocation(line: 446, column: 13, scope: !996)
!999 = !DILocation(line: 447, column: 25, scope: !995)
!1000 = !DILocation(line: 447, column: 17, scope: !995)
!1001 = !DILocation(line: 446, column: 36, scope: !995)
!1002 = distinct !{!1002, !998, !1003}
!1003 = !DILocation(line: 447, column: 32, scope: !996)
!1004 = !DILocation(line: 448, column: 19, scope: !937)
!1005 = !DILocation(line: 448, column: 13, scope: !937)
!1006 = !DILocation(line: 449, column: 9, scope: !937)
!1007 = !DILocation(line: 451, column: 9, scope: !939)
!1008 = !DILocation(line: 453, column: 5, scope: !924)
!1009 = !DISubprogram(name: "linenoise", scope: !242, file: !242, line: 37, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1010 = !DISubprogram(name: "sdssplitargs", scope: !356, file: !356, line: 72, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!930, !25, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!1014 = !DISubprogram(name: "linenoiseHistoryAdd", scope: !242, file: !242, line: 38, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!23, !231}
!1017 = !DISubprogram(name: "linenoiseHistorySave", scope: !242, file: !242, line: 40, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1018 = !DISubprogram(name: "fflush", scope: !168, file: !168, line: 218, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1019 = !DISubprogram(name: "free", scope: !228, file: !228, line: 565, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1020 = !DISubprogram(name: "zrealloc", scope: !555, file: !555, line: 35, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!22, !22, !220}
!1023 = distinct !DISubprogram(name: "readArgFromStdin", scope: !3, file: !3, line: 372, type: !655, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1024)
!1024 = !{!1025, !1029, !1030}
!1025 = !DILocalVariable(name: "buf", scope: !1023, file: !3, line: 373, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 1024)
!1029 = !DILocalVariable(name: "arg", scope: !1023, file: !3, line: 374, type: !355)
!1030 = !DILocalVariable(name: "nread", scope: !1031, file: !3, line: 377, type: !23)
!1031 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 376, column: 14)
!1032 = !DILocation(line: 373, column: 5, scope: !1023)
!1033 = !DILocation(line: 373, column: 10, scope: !1023)
!1034 = !DILocation(line: 374, column: 15, scope: !1023)
!1035 = !DILocation(line: 0, scope: !1023)
!1036 = !DILocation(line: 376, column: 5, scope: !1023)
!1037 = !DILocation(line: 374, column: 9, scope: !1023)
!1038 = !DILocation(line: 377, column: 33, scope: !1031)
!1039 = !DILocation(line: 377, column: 26, scope: !1031)
!1040 = !DILocation(line: 377, column: 21, scope: !1031)
!1041 = !DILocation(line: 0, scope: !1031)
!1042 = !DILocation(line: 379, column: 13, scope: !1031)
!1043 = !DILocation(line: 381, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 380, column: 31)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 380, column: 18)
!1046 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 379, column: 13)
!1047 = !DILocation(line: 382, column: 13, scope: !1044)
!1048 = !DILocation(line: 384, column: 33, scope: !1031)
!1049 = !DILocation(line: 384, column: 15, scope: !1031)
!1050 = !DILocation(line: 387, column: 1, scope: !1023)
!1051 = !DILocation(line: 386, column: 5, scope: !1023)
!1052 = !DISubprogram(name: "perror", scope: !168, file: !168, line: 775, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !166)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !231}
