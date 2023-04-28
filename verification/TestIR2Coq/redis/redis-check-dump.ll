; ModuleID = 'redis-check-dump.c'
source_filename = "redis-check-dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pos = type { i8*, i64, i64 }
%struct.errors_t = type { [16 x [1024 x i8]], [16 x i64], i64 }
%struct.entry = type { i8*, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }

@positions = internal unnamed_addr global [16 x %struct.pos] zeroinitializer, align 16, !dbg !0
@level = internal unnamed_addr global i1 false, align 1, !dbg !62
@__const.processHeader.buf = private unnamed_addr constant [10 x i8] c"_________\00", align 1
@.str = private unnamed_addr constant [20 x i8] c"Cannot read header\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrong signature in header\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown RDB format version: %d\0A\00", align 1
@errors = internal global %struct.errors_t zeroinitializer, align 8, !dbg !23
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown type (0x%02x)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Could not read type\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Could not read time\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unknown integer encoding (0x%02x)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Unknown string encoding (0x%02x)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Error reading string object\00", align 1
@R_NegInf = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !43
@R_PosInf = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !41
@R_Nan = internal unnamed_addr global double 0.000000e+00, align 8, !dbg !45
@.str.11 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Error reading double value\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Error reading entry key\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Error reading %s length\00", align 1
@types = internal global [256 x [16 x i8]] zeroinitializer, align 16, !dbg !47
@.str.15 = private unnamed_addr constant [26 x i8] c"Error reading entry value\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Error reading element at index %d (length: %d)\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"Error reading element key at index %d (length: %d)\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"Error reading element value at index %d (length: %d)\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Type not implemented\00", align 1
@__const.loadEntry.e = private unnamed_addr constant %struct.entry { i8* null, i32 -1, i8 0 }, align 8
@.str.20 = private unnamed_addr constant [30 x i8] c"Error reading database number\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Database number out of range (%d)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Unexpected EOF\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Error for type %s\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Followed by invalid type\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Processed %llu valid opcodes (in %llu bytes)\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Skipped %llu bytes (resuming at 0x%08llx)\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Error trace\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Error trace (%s)\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Error trace (%s: (unknown))\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"Error trace (%s: %s)\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"0x%08lx - %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Expected EOF, got %s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"Total unprocessable opcodes: %llu\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Usage: %s <dump.rdb>\0A\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Cannot open file: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Cannot stat: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"Cannot mmap: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ZSET\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"EXPIRETIME\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"SELECTDB\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readBytes(i8* noundef %target, i64 noundef %num) local_unnamed_addr #0 !dbg !68 {
entry:
  call void @llvm.dbg.value(metadata i8* %target, metadata !73, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i64 %num, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i1 undef, metadata !75, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !77
  %0 = tail call i64 @llvm.abs.i64(i64 %num, i1 true), !dbg !78
  call void @llvm.dbg.value(metadata i64 %0, metadata !74, metadata !DIExpression()), !dbg !77
  %.b27 = load i1, i1* @level, align 1, !dbg !79
  %idxprom = zext i1 %.b27 to i64, !dbg !80
  call void @llvm.dbg.value(metadata i8* undef, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !77
  %p.sroa.4.0..sroa_idx16 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 1, !dbg !80
  %p.sroa.4.0.copyload = load i64, i64* %p.sroa.4.0..sroa_idx16, align 8, !dbg !80, !tbaa.struct !81
  call void @llvm.dbg.value(metadata i64 %p.sroa.4.0.copyload, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !77
  %p.sroa.5.0..sroa_idx18 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !80
  %p.sroa.5.0.copyload = load i64, i64* %p.sroa.5.0..sroa_idx18, align 8, !dbg !80, !tbaa.struct !86
  call void @llvm.dbg.value(metadata i64 %p.sroa.5.0.copyload, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !77
  %add = add i64 %p.sroa.5.0.copyload, %0, !dbg !87
  %cmp4 = icmp ugt i64 %add, %p.sroa.4.0.copyload, !dbg !89
  br i1 %cmp4, label %cleanup, label %if.else, !dbg !90

if.else:                                          ; preds = %entry
  %p.sroa.0.0..sroa_idx = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 0, !dbg !80
  %p.sroa.0.0.copyload = load i8*, i8** %p.sroa.0.0..sroa_idx, align 8, !dbg !80, !tbaa.struct !91
  call void @llvm.dbg.value(metadata i8* %p.sroa.0.0.copyload, metadata !76, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !77
  call void @llvm.dbg.value(metadata i64 %num, metadata !75, metadata !DIExpression(DW_OP_constu, 63, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !77
  %1 = ptrtoint i8* %p.sroa.0.0.copyload to i64, !dbg !94
  %add7 = add i64 %p.sroa.5.0.copyload, %1, !dbg !96
  %2 = inttoptr i64 %add7 to i8*, !dbg !97
  %call = tail call i8* @memcpy(i8* noundef %target, i8* noundef %2, i64 noundef %0) #10, !dbg !98
  %tobool.not = icmp sgt i64 %num, -1, !dbg !99
  br i1 %tobool.not, label %if.then8, label %cleanup, !dbg !101

if.then8:                                         ; preds = %if.else
  %.b = load i1, i1* @level, align 1, !dbg !102
  %idxprom9 = zext i1 %.b to i64, !dbg !103
  %offset11 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom9, i32 2, !dbg !104
  %3 = load i64, i64* %offset11, align 8, !dbg !105, !tbaa !106
  %add12 = add i64 %3, %0, !dbg !105
  store i64 %add12, i64* %offset11, align 8, !dbg !105, !tbaa !106
  br label %cleanup, !dbg !103

cleanup:                                          ; preds = %if.then8, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 1, %if.then8 ], !dbg !77
  ret i32 %retval.0, !dbg !108
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare !dbg !109 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processHeader() local_unnamed_addr #0 !dbg !118 {
entry:
  %buf = alloca [10 x i8], align 1
  %0 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 0, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %0) #11, !dbg !127
  call void @llvm.dbg.declare(metadata [10 x i8]* %buf, metadata !122, metadata !DIExpression()), !dbg !128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(10) %0, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @__const.processHeader.buf, i64 0, i64 0), i64 10, i1 false), !dbg !128
  %call = call i32 @readBytes(i8* noundef nonnull %0, i64 noundef 9) #12, !dbg !129
  %tobool.not = icmp eq i32 %call, 0, !dbg !129
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #10, !dbg !132
  call void @exit(i32 noundef 1) #13, !dbg !132
  unreachable, !dbg !132

if.end:                                           ; preds = %entry
  %call3 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 noundef 5) #14, !dbg !135
  %cmp.not = icmp eq i32 %call3, 0, !dbg !137
  br i1 %cmp.not, label %if.end6, label %if.then4, !dbg !138

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !139
  call void @exit(i32 noundef 1) #13, !dbg !139
  unreachable, !dbg !139

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i64 0, i64 5, !dbg !142
  %call8 = call i64 @strtol(i8* noundef nonnull %add.ptr, i8** noundef null, i32 noundef 10) #10, !dbg !143
  %conv = trunc i64 %call8 to i32, !dbg !144
  call void @llvm.dbg.value(metadata i32 %conv, metadata !126, metadata !DIExpression()), !dbg !145
  %cmp9.not = icmp eq i32 %conv, 1, !dbg !146
  br i1 %cmp9.not, label %if.end13, label %if.then11, !dbg !148

if.then11:                                        ; preds = %if.end6
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv) #10, !dbg !149
  call void @exit(i32 noundef 1) #13, !dbg !149
  unreachable, !dbg !149

if.end13:                                         ; preds = %if.end6
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %0) #11, !dbg !152
  ret i32 1, !dbg !153
}

declare !dbg !154 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare !dbg !161 dso_local void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !165 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !168 dso_local i64 @strtol(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loadType(%struct.entry* nocapture noundef writeonly %e) local_unnamed_addr #0 !dbg !174 {
entry:
  %t = alloca i8, align 1
  call void @llvm.dbg.value(metadata %struct.entry* %e, metadata !185, metadata !DIExpression()), !dbg !191
  %.b = load i1, i1* @level, align 1, !dbg !192
  %idxprom = zext i1 %.b to i64, !dbg !192
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !192
  %0 = load i64, i64* %offset1, align 8, !dbg !192, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !186, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !191
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %t) #11, !dbg !193
  call void @llvm.dbg.value(metadata i8* %t, metadata !190, metadata !DIExpression(DW_OP_deref)), !dbg !191
  %call = call i32 @readBytes(i8* noundef nonnull %t, i64 noundef 1) #12, !dbg !194
  %tobool.not = icmp eq i32 %call, 0, !dbg !194
  br i1 %tobool.not, label %if.else14, label %if.then, !dbg !196

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %t, align 1, !dbg !197, !tbaa !200
  call void @llvm.dbg.value(metadata i8 %1, metadata !190, metadata !DIExpression()), !dbg !191
  %conv2 = zext i8 %1 to i32, !dbg !197
  %2 = add i8 %1, 3, !dbg !201
  %3 = icmp ult i8 %2, 8, !dbg !201
  br i1 %3, label %if.then7, label %if.else, !dbg !201

if.then7:                                         ; preds = %if.then
  %type = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 1, !dbg !202
  store i32 %conv2, i32* %type, align 8, !dbg !204, !tbaa !205
  br label %cleanup, !dbg !208

if.else:                                          ; preds = %if.then
  %4 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !209, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %4, i64 0, !dbg !209
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %conv2) #10, !dbg !209
  br label %if.end21, !dbg !214

if.else14:                                        ; preds = %entry
  %5 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !215, !tbaa !212
  %arraydecay16 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %5, i64 0, !dbg !215
  %call17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !215
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.else
  %conv18 = and i64 %0, 4294967295, !dbg !218
  %6 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !218, !tbaa !212
  %arrayidx19 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %6, !dbg !218
  store i64 %conv18, i64* %arrayidx19, align 8, !dbg !218, !tbaa !82
  %storemerge.in = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !218, !tbaa !212
  %storemerge = add i64 %storemerge.in, 1, !dbg !218
  store i64 %storemerge, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !218, !tbaa !212
  br label %cleanup, !dbg !219

cleanup:                                          ; preds = %if.end21, %if.then7
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %if.end21 ], !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %t) #11, !dbg !220
  ret i32 %retval.0, !dbg !220
}

; Function Attrs: nounwind
declare !dbg !221 dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @peekType() local_unnamed_addr #0 !dbg !225 {
entry:
  %t = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %t) #11, !dbg !228
  call void @llvm.dbg.value(metadata i8* %t, metadata !227, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %call = call i32 @readBytes(i8* noundef nonnull %t, i64 noundef -1) #12, !dbg !230
  %tobool.not = icmp eq i32 %call, 0, !dbg !230
  %0 = load i8, i8* %t, align 1, !dbg !232
  %1 = add i8 %0, 3, !dbg !232
  %2 = icmp ult i8 %1, 8, !dbg !232
  %conv = zext i8 %0 to i32, !dbg !232
  %spec.select = select i1 %2, i32 %conv, i32 -1, !dbg !232
  %retval.0 = select i1 %tobool.not, i32 -1, i32 %spec.select, !dbg !232
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %t) #11, !dbg !233
  ret i32 %retval.0, !dbg !233
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processTime() local_unnamed_addr #0 !dbg !234 {
entry:
  %t = alloca [4 x i8], align 1
  %.b = load i1, i1* @level, align 1, !dbg !241
  %idxprom = zext i1 %.b to i64, !dbg !241
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !241
  %0 = load i64, i64* %offset1, align 8, !dbg !241, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !236, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !242
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %t, i64 0, i64 0, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11, !dbg !243
  call void @llvm.dbg.declare(metadata [4 x i8]* %t, metadata !237, metadata !DIExpression()), !dbg !244
  %call = call i32 @readBytes(i8* noundef nonnull %1, i64 noundef 4) #12, !dbg !245
  %tobool.not = icmp eq i32 %call, 0, !dbg !245
  br i1 %tobool.not, label %if.else, label %cleanup, !dbg !247

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %0, metadata !236, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !242
  %2 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !248, !tbaa !212
  %arraydecay3 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %2, i64 0, !dbg !248
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !248
  %conv5 = and i64 %0, 4294967295, !dbg !248
  %3 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !248, !tbaa !212
  %arrayidx6 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %3, !dbg !248
  store i64 %conv5, i64* %arrayidx6, align 8, !dbg !248, !tbaa !82
  %4 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !248, !tbaa !212
  %inc = add i64 %4, 1, !dbg !248
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !248, !tbaa !212
  br label %cleanup, !dbg !251

cleanup:                                          ; preds = %entry, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %entry ], !dbg !242
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11, !dbg !252
  ret i32 %retval.0, !dbg !252
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loadLength(i32* noundef writeonly %isencoded) local_unnamed_addr #0 !dbg !253 {
entry:
  %buf = alloca [2 x i8], align 1
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %isencoded, metadata !258, metadata !DIExpression()), !dbg !265
  %0 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #11, !dbg !266
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !259, metadata !DIExpression()), !dbg !267
  %1 = bitcast i32* %len to i8*, !dbg !268
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11, !dbg !268
  %tobool.not = icmp eq i32* %isencoded, null, !dbg !269
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !271

if.then:                                          ; preds = %entry
  store i32 0, i32* %isencoded, align 4, !dbg !272, !tbaa !273
  br label %if.end, !dbg !274

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @readBytes(i8* noundef nonnull %0, i64 noundef 1) #12, !dbg !275
  %tobool1.not = icmp eq i32 %call, 0, !dbg !275
  br i1 %tobool1.not, label %cleanup, label %if.end3, !dbg !277

if.end3:                                          ; preds = %if.end
  %2 = load i8, i8* %0, align 1, !dbg !278, !tbaa !200
  %conv = zext i8 %2 to i32, !dbg !278
  call void @llvm.dbg.value(metadata i32 %conv, metadata !264, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_stack_value)), !dbg !265
  %cmp = icmp ult i8 %2, 64, !dbg !279
  br i1 %cmp, label %if.then5, label %if.else, !dbg !281

if.then5:                                         ; preds = %if.end3
  %and8 = and i32 %conv, 63, !dbg !282
  br label %cleanup, !dbg !284

if.else:                                          ; preds = %if.end3
  %3 = lshr i32 %conv, 6, !dbg !285
  call void @llvm.dbg.value(metadata i32 %3, metadata !264, metadata !DIExpression()), !dbg !265
  switch i32 %3, label %if.else32 [
    i32 3, label %if.then11
    i32 1, label %if.then21
  ], !dbg !286

if.then11:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.end14, label %if.then13, !dbg !287

if.then13:                                        ; preds = %if.then11
  store i32 1, i32* %isencoded, align 4, !dbg !290, !tbaa !273
  br label %if.end14, !dbg !292

if.end14:                                         ; preds = %if.then13, %if.then11
  %4 = and i8 %2, 63, !dbg !293
  %and17 = zext i8 %4 to i32, !dbg !293
  br label %cleanup, !dbg !294

if.then21:                                        ; preds = %if.else
  %add.ptr = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !295
  %call23 = call i32 @readBytes(i8* noundef nonnull %add.ptr, i64 noundef 1) #12, !dbg !299
  %tobool24.not = icmp eq i32 %call23, 0, !dbg !299
  br i1 %tobool24.not, label %cleanup, label %if.end26, !dbg !300

if.end26:                                         ; preds = %if.then21
  %5 = load i8, i8* %0, align 1, !dbg !301, !tbaa !200
  %6 = and i8 %5, 63, !dbg !302
  %and29 = zext i8 %6 to i32, !dbg !302
  %shl = shl nuw nsw i32 %and29, 8, !dbg !303
  %7 = load i8, i8* %add.ptr, align 1, !dbg !304, !tbaa !200
  %conv31 = zext i8 %7 to i32, !dbg !304
  %or = or i32 %shl, %conv31, !dbg !305
  br label %cleanup, !dbg !306

if.else32:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i32* %len, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !265
  %call33 = call i32 @readBytes(i8* noundef nonnull %1, i64 noundef 4) #12, !dbg !307
  %tobool34.not = icmp eq i32 %call33, 0, !dbg !307
  br i1 %tobool34.not, label %cleanup, label %if.end36, !dbg !310

if.end36:                                         ; preds = %if.else32
  %8 = load i32, i32* %len, align 4, !dbg !311, !tbaa !273
  call void @llvm.dbg.value(metadata i32 %8, metadata !263, metadata !DIExpression()), !dbg !265
  %call37 = call fastcc i32 @__bswap_32(i32 noundef %8) #12, !dbg !311
  br label %cleanup, !dbg !312

cleanup:                                          ; preds = %if.else32, %if.then21, %if.end, %if.end36, %if.end26, %if.end14, %if.then5
  %retval.0 = phi i32 [ %and8, %if.then5 ], [ %and17, %if.end14 ], [ %or, %if.end26 ], [ %call37, %if.end36 ], [ -1, %if.end ], [ -1, %if.then21 ], [ -1, %if.else32 ], !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11, !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #11, !dbg !313
  ret i32 %retval.0, !dbg !313
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @__bswap_32(i32 noundef %__bsx) unnamed_addr #8 !dbg !314 {
entry:
  call void @llvm.dbg.value(metadata i32 %__bsx, metadata !319, metadata !DIExpression()), !dbg !320
  %or7 = tail call i32 @llvm.bswap.i32(i32 %__bsx), !dbg !321
  ret i32 %or7, !dbg !322
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @loadIntegerObject(i32 noundef %enctype) local_unnamed_addr #0 !dbg !323 {
entry:
  %enc = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %enctype, metadata !327, metadata !DIExpression()), !dbg !347
  %.b = load i1, i1* @level, align 1, !dbg !348
  %idxprom = zext i1 %.b to i64, !dbg !348
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !348
  %0 = load i64, i64* %offset1, align 8, !dbg !348, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !328, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !347
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %enc, i64 0, i64 0, !dbg !349
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11, !dbg !349
  call void @llvm.dbg.declare(metadata [4 x i8]* %enc, metadata !329, metadata !DIExpression()), !dbg !350
  switch i32 %enctype, label %if.else52 [
    i32 0, label %if.then
    i32 1, label %if.then8
    i32 2, label %if.then27
  ], !dbg !351

if.then:                                          ; preds = %entry
  %call = call i32 @readBytes(i8* noundef nonnull %1, i64 noundef 1) #12, !dbg !352
  %tobool.not = icmp eq i32 %call, 0, !dbg !352
  %2 = load i8, i8* %1, align 1, !dbg !354
  %conv5 = sext i8 %2 to i64, !dbg !354
  call void @llvm.dbg.value(metadata i64 undef, metadata !330, metadata !DIExpression()), !dbg !347
  br i1 %tobool.not, label %cleanup64, label %if.end60

if.then8:                                         ; preds = %entry
  %call11 = call i32 @readBytes(i8* noundef nonnull %1, i64 noundef 2) #12, !dbg !355
  %tobool12.not = icmp eq i32 %call11, 0, !dbg !355
  br i1 %tobool12.not, label %cleanup64, label %cleanup21, !dbg !357

cleanup21:                                        ; preds = %if.then8
  %3 = load i8, i8* %1, align 1, !dbg !358, !tbaa !200
  %conv16 = zext i8 %3 to i16, !dbg !358
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %enc, i64 0, i64 1, !dbg !359
  %4 = load i8, i8* %arrayidx17, align 1, !dbg !359, !tbaa !200
  %conv18 = zext i8 %4 to i16, !dbg !359
  %shl = shl nuw i16 %conv18, 8, !dbg !360
  %or = or i16 %shl, %conv16, !dbg !361
  call void @llvm.dbg.value(metadata i16 %or, metadata !337, metadata !DIExpression()), !dbg !362
  %conv20 = sext i16 %or to i64, !dbg !363
  call void @llvm.dbg.value(metadata i64 %conv20, metadata !330, metadata !DIExpression()), !dbg !347
  br label %if.end60

if.then27:                                        ; preds = %entry
  %call30 = call i32 @readBytes(i8* noundef nonnull %1, i64 noundef 4) #12, !dbg !364
  %tobool31.not = icmp eq i32 %call30, 0, !dbg !364
  br i1 %tobool31.not, label %cleanup64, label %cleanup49, !dbg !366

cleanup49:                                        ; preds = %if.then27
  %5 = load i8, i8* %1, align 1, !dbg !367, !tbaa !200
  %conv35 = zext i8 %5 to i32, !dbg !367
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %enc, i64 0, i64 1, !dbg !368
  %6 = load i8, i8* %arrayidx36, align 1, !dbg !368, !tbaa !200
  %conv37 = zext i8 %6 to i32, !dbg !368
  %shl38 = shl nuw nsw i32 %conv37, 8, !dbg !369
  %or39 = or i32 %shl38, %conv35, !dbg !370
  %arrayidx40 = getelementptr inbounds [4 x i8], [4 x i8]* %enc, i64 0, i64 2, !dbg !371
  %7 = load i8, i8* %arrayidx40, align 1, !dbg !371, !tbaa !200
  %conv41 = zext i8 %7 to i32, !dbg !371
  %shl42 = shl nuw nsw i32 %conv41, 16, !dbg !372
  %or43 = or i32 %or39, %shl42, !dbg !373
  %arrayidx44 = getelementptr inbounds [4 x i8], [4 x i8]* %enc, i64 0, i64 3, !dbg !374
  %8 = load i8, i8* %arrayidx44, align 1, !dbg !374, !tbaa !200
  %conv45 = zext i8 %8 to i32, !dbg !374
  %shl46 = shl nuw i32 %conv45, 24, !dbg !375
  %or47 = or i32 %or43, %shl46, !dbg !376
  call void @llvm.dbg.value(metadata i32 %or47, metadata !343, metadata !DIExpression()), !dbg !377
  %conv48 = sext i32 %or47 to i64, !dbg !378
  call void @llvm.dbg.value(metadata i64 %conv48, metadata !330, metadata !DIExpression()), !dbg !347
  br label %if.end60

if.else52:                                        ; preds = %entry
  %9 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !379, !tbaa !212
  %arraydecay54 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %9, i64 0, !dbg !379
  %call55 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay54, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 noundef %enctype) #10, !dbg !379
  %conv56 = and i64 %0, 4294967295, !dbg !379
  %10 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !379, !tbaa !212
  %arrayidx57 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %10, !dbg !379
  store i64 %conv56, i64* %arrayidx57, align 8, !dbg !379, !tbaa !82
  %11 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !379, !tbaa !212
  %inc = add i64 %11, 1, !dbg !379
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !379, !tbaa !212
  br label %cleanup64, !dbg !382

if.end60:                                         ; preds = %cleanup49, %cleanup21, %if.then
  %val.3 = phi i64 [ %conv5, %if.then ], [ %conv20, %cleanup21 ], [ %conv48, %cleanup49 ], !dbg !383
  call void @llvm.dbg.value(metadata i64 %val.3, metadata !330, metadata !DIExpression()), !dbg !347
  %call61 = call noalias i8* @malloc(i64 noundef 128) #10, !dbg !384
  call void @llvm.dbg.value(metadata i8* %call61, metadata !346, metadata !DIExpression()), !dbg !347
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %call61, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 noundef %val.3) #10, !dbg !385
  br label %cleanup64

cleanup64:                                        ; preds = %if.then27, %if.then8, %if.then, %if.end60, %if.else52
  %retval.3 = phi i8* [ %call61, %if.end60 ], [ null, %if.then ], [ null, %if.else52 ], [ null, %if.then8 ], [ null, %if.then27 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11, !dbg !386
  ret i8* %retval.3, !dbg !386
}

; Function Attrs: nounwind
declare !dbg !387 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @loadLzfStringObject() local_unnamed_addr #0 !dbg !390 {
entry:
  %call = tail call i32 @loadLength(i32* noundef null) #12, !dbg !398
  call void @llvm.dbg.value(metadata i32 %call, metadata !395, metadata !DIExpression()), !dbg !400
  %cmp = icmp eq i32 %call, -1, !dbg !401
  br i1 %cmp, label %cleanup, label %if.end, !dbg !402

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @loadLength(i32* noundef null) #12, !dbg !403
  call void @llvm.dbg.value(metadata i32 %call1, metadata !394, metadata !DIExpression()), !dbg !400
  %cmp2 = icmp eq i32 %call1, -1, !dbg !405
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !406

if.end4:                                          ; preds = %if.end
  %conv = zext i32 %call to i64, !dbg !407
  %call5 = tail call noalias i8* @malloc(i64 noundef %conv) #10, !dbg !408
  call void @llvm.dbg.value(metadata i8* %call5, metadata !396, metadata !DIExpression()), !dbg !400
  %call7 = tail call i32 @readBytes(i8* noundef %call5, i64 noundef %conv) #12, !dbg !409
  %tobool.not = icmp eq i32 %call7, 0, !dbg !409
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end9, !dbg !411

if.end9:                                          ; preds = %if.end4
  %add = add nuw i32 %call1, 1, !dbg !412
  %conv10 = zext i32 %add to i64, !dbg !413
  %call11 = tail call noalias i8* @malloc(i64 noundef %conv10) #10, !dbg !414
  call void @llvm.dbg.value(metadata i8* %call11, metadata !397, metadata !DIExpression()), !dbg !400
  %call12 = tail call i32 @lzf_decompress(i8* noundef %call5, i32 noundef %call, i8* noundef %call11, i32 noundef %call1) #10, !dbg !415
  %cmp13 = icmp eq i32 %call12, 0, !dbg !417
  tail call void @free(i8* noundef %call5) #10, !dbg !400
  br i1 %cmp13, label %cleanup.sink.split, label %cleanup, !dbg !418

cleanup.sink.split:                               ; preds = %if.end9, %if.end4
  %call11.sink = phi i8* [ %call5, %if.end4 ], [ %call11, %if.end9 ]
  tail call void @free(i8* noundef %call11.sink) #10, !dbg !400
  br label %cleanup, !dbg !419

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9, %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %if.end ], [ %call11, %if.end9 ], [ null, %cleanup.sink.split ], !dbg !400
  ret i8* %retval.0, !dbg !419
}

; Function Attrs: nounwind
declare !dbg !420 dso_local void @free(i8* noundef) local_unnamed_addr #4

declare !dbg !423 dso_local i32 @lzf_decompress(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @loadStringObject() local_unnamed_addr #0 !dbg !428 {
entry:
  %isencoded = alloca i32, align 4
  %.b = load i1, i1* @level, align 1, !dbg !434
  %idxprom = zext i1 %.b to i64, !dbg !434
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !434
  %0 = load i64, i64* %offset1, align 8, !dbg !434, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !430, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !435
  %1 = bitcast i32* %isencoded to i8*, !dbg !436
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #11, !dbg !436
  call void @llvm.dbg.value(metadata i32* %isencoded, metadata !431, metadata !DIExpression(DW_OP_deref)), !dbg !435
  %call = call i32 @loadLength(i32* noundef nonnull %isencoded) #12, !dbg !437
  call void @llvm.dbg.value(metadata i32 %call, metadata !432, metadata !DIExpression()), !dbg !435
  %2 = load i32, i32* %isencoded, align 4, !dbg !438, !tbaa !273
  call void @llvm.dbg.value(metadata i32 %2, metadata !431, metadata !DIExpression()), !dbg !435
  %tobool.not = icmp eq i32 %2, 0, !dbg !438
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !440

if.then:                                          ; preds = %entry
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ], !dbg !441

sw.bb:                                            ; preds = %if.then, %if.then, %if.then
  %call2 = call i8* @loadIntegerObject(i32 noundef %call) #12, !dbg !443
  br label %cleanup21, !dbg !445

sw.bb3:                                           ; preds = %if.then
  %call4 = call i8* @loadLzfStringObject() #12, !dbg !446
  br label %cleanup21, !dbg !447

sw.default:                                       ; preds = %if.then
  %3 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !448, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %3, i64 0, !dbg !448
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call) #10, !dbg !448
  %conv7 = and i64 %0, 4294967295, !dbg !448
  %4 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !448, !tbaa !212
  %arrayidx8 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %4, !dbg !448
  store i64 %conv7, i64* %arrayidx8, align 8, !dbg !448, !tbaa !82
  %5 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !448, !tbaa !212
  %inc = add i64 %5, 1, !dbg !448
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !448, !tbaa !212
  br label %cleanup21, !dbg !450

if.end:                                           ; preds = %entry
  %cmp = icmp eq i32 %call, -1, !dbg !451
  br i1 %cmp, label %cleanup21, label %if.end11, !dbg !453

if.end11:                                         ; preds = %if.end
  %add = add nuw i32 %call, 1, !dbg !454
  %conv12 = zext i32 %add to i64, !dbg !455
  %call13 = call noalias i8* @malloc(i64 noundef %conv12) #10, !dbg !456
  call void @llvm.dbg.value(metadata i8* %call13, metadata !433, metadata !DIExpression()), !dbg !435
  %idxprom14 = zext i32 %call to i64, !dbg !457
  %arrayidx15 = getelementptr inbounds i8, i8* %call13, i64 %idxprom14, !dbg !457
  store i8 0, i8* %arrayidx15, align 1, !dbg !458, !tbaa !200
  %call17 = call i32 @readBytes(i8* noundef %call13, i64 noundef %idxprom14) #12, !dbg !459
  %tobool18.not = icmp eq i32 %call17, 0, !dbg !459
  br i1 %tobool18.not, label %if.then19, label %cleanup21, !dbg !461

if.then19:                                        ; preds = %if.end11
  call void @free(i8* noundef nonnull %call13) #10, !dbg !462
  br label %cleanup21, !dbg !464

cleanup21:                                        ; preds = %if.then19, %if.end11, %if.end, %sw.default, %sw.bb3, %sw.bb
  %retval.1 = phi i8* [ null, %sw.default ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ null, %if.end ], [ null, %if.then19 ], [ %call13, %if.end11 ], !dbg !435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #11, !dbg !465
  ret i8* %retval.1, !dbg !465
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processStringObject(i8** noundef writeonly %store) local_unnamed_addr #0 !dbg !466 {
entry:
  call void @llvm.dbg.value(metadata i8** %store, metadata !470, metadata !DIExpression()), !dbg !473
  %.b = load i1, i1* @level, align 1, !dbg !474
  %idxprom = zext i1 %.b to i64, !dbg !474
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !474
  %0 = load i64, i64* %offset1, align 8, !dbg !474, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !471, metadata !DIExpression()), !dbg !473
  %call = tail call i8* @loadStringObject() #12, !dbg !475
  call void @llvm.dbg.value(metadata i8* %call, metadata !472, metadata !DIExpression()), !dbg !473
  %cmp = icmp eq i8* %call, null, !dbg !476
  br i1 %cmp, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !479, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %1, i64 0, !dbg !479
  %call3 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !479
  %2 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !479, !tbaa !212
  %arrayidx4 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %2, !dbg !479
  store i64 %0, i64* %arrayidx4, align 8, !dbg !479, !tbaa !82
  %3 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !479, !tbaa !212
  %inc = add i64 %3, 1, !dbg !479
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !479, !tbaa !212
  tail call void @free(i8* noundef null) #10, !dbg !482
  br label %cleanup, !dbg !483

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq i8** %store, null, !dbg !484
  br i1 %cmp5.not, label %if.else, label %if.then6, !dbg !486

if.then6:                                         ; preds = %if.end
  store i8* %call, i8** %store, align 8, !dbg !487, !tbaa !92
  br label %cleanup, !dbg !489

if.else:                                          ; preds = %if.end
  tail call void @free(i8* noundef nonnull %call) #10, !dbg !490
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then6 ], !dbg !473
  ret i32 %retval.0, !dbg !492
}

; Function Attrs: noinline nounwind uwtable
define dso_local double* @loadDoubleValue() local_unnamed_addr #0 !dbg !493 {
entry:
  %buf = alloca [256 x i8], align 16
  %len = alloca i8, align 1
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #11, !dbg !503
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !498, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %len) #11, !dbg !505
  call void @llvm.dbg.value(metadata i8* %len, metadata !501, metadata !DIExpression(DW_OP_deref)), !dbg !506
  %call = call i32 @readBytes(i8* noundef nonnull %len, i64 noundef 1) #12, !dbg !507
  %tobool.not = icmp eq i32 %call, 0, !dbg !507
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !509

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 noundef 8) #10, !dbg !510
  %1 = bitcast i8* %call1 to double*, !dbg !510
  call void @llvm.dbg.value(metadata double* %1, metadata !502, metadata !DIExpression()), !dbg !506
  %2 = load i8, i8* %len, align 1, !dbg !511, !tbaa !200
  call void @llvm.dbg.value(metadata i8 %2, metadata !501, metadata !DIExpression()), !dbg !506
  switch i8 %2, label %sw.default [
    i8 -1, label %sw.bb
    i8 -2, label %sw.bb2
    i8 -3, label %sw.bb3
  ], !dbg !512

sw.bb:                                            ; preds = %if.end
  %3 = load double, double* @R_NegInf, align 8, !dbg !513, !tbaa !515
  store double %3, double* %1, align 8, !dbg !517, !tbaa !515
  br label %cleanup, !dbg !518

sw.bb2:                                           ; preds = %if.end
  %4 = load double, double* @R_PosInf, align 8, !dbg !519, !tbaa !515
  store double %4, double* %1, align 8, !dbg !520, !tbaa !515
  br label %cleanup, !dbg !521

sw.bb3:                                           ; preds = %if.end
  %5 = load double, double* @R_Nan, align 8, !dbg !522, !tbaa !515
  store double %5, double* %1, align 8, !dbg !523, !tbaa !515
  br label %cleanup, !dbg !524

sw.default:                                       ; preds = %if.end
  %conv4 = zext i8 %2 to i64, !dbg !525
  %call5 = call i32 @readBytes(i8* noundef nonnull %0, i64 noundef %conv4) #12, !dbg !527
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !527
  br i1 %tobool6.not, label %if.then7, label %if.end8, !dbg !528

if.then7:                                         ; preds = %sw.default
  call void @free(i8* noundef %call1) #10, !dbg !529
  br label %cleanup, !dbg !531

if.end8:                                          ; preds = %sw.default
  %6 = load i8, i8* %len, align 1, !dbg !532, !tbaa !200
  call void @llvm.dbg.value(metadata i8 %6, metadata !501, metadata !DIExpression()), !dbg !506
  %idxprom = zext i8 %6 to i64, !dbg !533
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 %idxprom, !dbg !533
  store i8 0, i8* %arrayidx, align 1, !dbg !534, !tbaa !200
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* noundef %call1) #10, !dbg !535
  br label %cleanup, !dbg !536

cleanup:                                          ; preds = %entry, %if.end8, %if.then7, %sw.bb3, %sw.bb2, %sw.bb
  %retval.0 = phi double* [ %1, %if.end8 ], [ null, %if.then7 ], [ %1, %sw.bb3 ], [ %1, %sw.bb2 ], [ %1, %sw.bb ], [ null, %entry ], !dbg !506
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %len) #11, !dbg !537
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #11, !dbg !537
  ret double* %retval.0, !dbg !537
}

; Function Attrs: nounwind
declare !dbg !538 dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processDoubleValue(double** noundef writeonly %store) local_unnamed_addr #0 !dbg !541 {
entry:
  call void @llvm.dbg.value(metadata double** %store, metadata !546, metadata !DIExpression()), !dbg !549
  %.b = load i1, i1* @level, align 1, !dbg !550
  %idxprom = zext i1 %.b to i64, !dbg !550
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !550
  %0 = load i64, i64* %offset1, align 8, !dbg !550, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !547, metadata !DIExpression()), !dbg !549
  %call = tail call double* @loadDoubleValue() #12, !dbg !551
  call void @llvm.dbg.value(metadata double* %call, metadata !548, metadata !DIExpression()), !dbg !549
  %cmp = icmp eq double* %call, null, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !554

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !555, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %1, i64 0, !dbg !555
  %call3 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !555
  %2 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !555, !tbaa !212
  %arrayidx4 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %2, !dbg !555
  store i64 %0, i64* %arrayidx4, align 8, !dbg !555, !tbaa !82
  %3 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !555, !tbaa !212
  %inc = add i64 %3, 1, !dbg !555
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !555, !tbaa !212
  tail call void @free(i8* noundef null) #10, !dbg !558
  br label %cleanup, !dbg !559

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq double** %store, null, !dbg !560
  br i1 %cmp5.not, label %if.else, label %if.then6, !dbg !562

if.then6:                                         ; preds = %if.end
  store double* %call, double** %store, align 8, !dbg !563, !tbaa !92
  br label %cleanup, !dbg !565

if.else:                                          ; preds = %if.end
  %4 = bitcast double* %call to i8*, !dbg !566
  tail call void @free(i8* noundef nonnull %4) #10, !dbg !568
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then6 ], !dbg !549
  ret i32 %retval.0, !dbg !569
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @loadPair(%struct.entry* nocapture noundef %e) local_unnamed_addr #0 !dbg !570 {
entry:
  %key = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.entry* %e, metadata !572, metadata !DIExpression()), !dbg !577
  %.b185 = load i1, i1* @level, align 1, !dbg !578
  %idxprom = zext i1 %.b185 to i64, !dbg !578
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !578
  %0 = load i64, i64* %offset1, align 8, !dbg !578, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %0, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %1 = bitcast i8** %key to i8*, !dbg !579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11, !dbg !579
  call void @llvm.dbg.value(metadata i8** %key, metadata !575, metadata !DIExpression(DW_OP_deref)), !dbg !577
  %call = call i32 @processStringObject(i8** noundef nonnull %key) #12, !dbg !580
  %tobool.not = icmp eq i32 %call, 0, !dbg !580
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !582

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %key, align 8, !dbg !583, !tbaa !92
  call void @llvm.dbg.value(metadata i8* %2, metadata !575, metadata !DIExpression()), !dbg !577
  %key2 = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 0, !dbg !585
  store i8* %2, i8** %key2, align 8, !dbg !586, !tbaa !587
  call void @llvm.dbg.value(metadata i32 0, metadata !576, metadata !DIExpression()), !dbg !577
  %type = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 1, !dbg !588
  %3 = load i32, i32* %type, align 8, !dbg !588, !tbaa !205
  %.off = add i32 %3, -1, !dbg !590
  %switch = icmp ult i32 %.off, 4, !dbg !590
  br i1 %switch, label %if.then19, label %if.end35, !dbg !590

if.else:                                          ; preds = %entry
  %4 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !591, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %4, i64 0, !dbg !591
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !591
  %conv5 = and i64 %0, 4294967295, !dbg !591
  %5 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !591, !tbaa !212
  %arrayidx6 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %5, !dbg !591
  store i64 %conv5, i64* %arrayidx6, align 8, !dbg !591, !tbaa !82
  %6 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !591, !tbaa !212
  %inc = add i64 %6, 1, !dbg !591
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !591, !tbaa !212
  br label %cleanup143, !dbg !594

if.then19:                                        ; preds = %if.then
  %call20 = call i32 @loadLength(i32* noundef null) #12, !dbg !595
  call void @llvm.dbg.value(metadata i32 %call20, metadata !576, metadata !DIExpression()), !dbg !577
  %cmp21 = icmp eq i32 %call20, -1, !dbg !598
  br i1 %cmp21, label %if.then23, label %if.end35thread-pre-split, !dbg !599

if.then23:                                        ; preds = %if.then19
  %7 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !600, !tbaa !212
  %arraydecay25 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %7, i64 0, !dbg !600
  %8 = load i32, i32* %type, align 8, !dbg !600, !tbaa !205
  %idxprom27 = sext i32 %8 to i64, !dbg !600
  %arraydecay29 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom27, i64 0, !dbg !600
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay25, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %arraydecay29) #10, !dbg !600
  %conv31 = and i64 %0, 4294967295, !dbg !600
  %9 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !600, !tbaa !212
  %arrayidx32 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %9, !dbg !600
  store i64 %conv31, i64* %arrayidx32, align 8, !dbg !600, !tbaa !82
  %10 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !600, !tbaa !212
  %inc33 = add i64 %10, 1, !dbg !600
  store i64 %inc33, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !600, !tbaa !212
  br label %cleanup143, !dbg !603

if.end35thread-pre-split:                         ; preds = %if.then19
  %.pr = load i32, i32* %type, align 8, !dbg !604, !tbaa !205
  br label %if.end35, !dbg !604

if.end35:                                         ; preds = %if.end35thread-pre-split, %if.then
  %11 = phi i32 [ %.pr, %if.end35thread-pre-split ], [ %3, %if.then ], !dbg !604
  %length.0 = phi i32 [ %call20, %if.end35thread-pre-split ], [ 0, %if.then ], !dbg !577
  call void @llvm.dbg.value(metadata i32 %length.0, metadata !576, metadata !DIExpression()), !dbg !577
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 2, label %sw.bb47
    i32 3, label %for.cond66.preheader
    i32 4, label %for.cond102.preheader
  ], !dbg !605

for.cond102.preheader:                            ; preds = %if.end35
  call void @llvm.dbg.value(metadata i32 0, metadata !574, metadata !DIExpression()), !dbg !577
  %cmp103199.not = icmp eq i32 %length.0, 0, !dbg !606
  br i1 %cmp103199.not, label %sw.epilog, label %for.body105, !dbg !610

for.cond66.preheader:                             ; preds = %if.end35
  call void @llvm.dbg.value(metadata i32 0, metadata !574, metadata !DIExpression()), !dbg !577
  %cmp67201.not = icmp eq i32 %length.0, 0, !dbg !611
  br i1 %cmp67201.not, label %sw.epilog, label %for.body69, !dbg !614

sw.bb:                                            ; preds = %if.end35
  %call37 = call i32 @processStringObject(i8** noundef null) #12, !dbg !615
  %tobool38.not = icmp eq i32 %call37, 0, !dbg !615
  br i1 %tobool38.not, label %if.then39, label %sw.epilog, !dbg !617

if.then39:                                        ; preds = %sw.bb
  %12 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !618, !tbaa !212
  %arraydecay41 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %12, i64 0, !dbg !618
  %call42 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay41, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !618
  %conv43 = and i64 %0, 4294967295, !dbg !618
  %13 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !618, !tbaa !212
  %arrayidx44 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %13, !dbg !618
  store i64 %conv43, i64* %arrayidx44, align 8, !dbg !618, !tbaa !82
  %14 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !618, !tbaa !212
  %inc45 = add i64 %14, 1, !dbg !618
  store i64 %inc45, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !618, !tbaa !212
  br label %cleanup143, !dbg !621

sw.bb47:                                          ; preds = %if.end35, %if.end35
  call void @llvm.dbg.value(metadata i32 0, metadata !574, metadata !DIExpression()), !dbg !577
  %cmp48203.not = icmp eq i32 %length.0, 0, !dbg !622
  br i1 %cmp48203.not, label %sw.epilog, label %for.body, !dbg !625

for.body:                                         ; preds = %sw.bb47, %for.inc
  %i.0204 = phi i32 [ %inc64, %for.inc ], [ 0, %sw.bb47 ]
  call void @llvm.dbg.value(metadata i32 %i.0204, metadata !574, metadata !DIExpression()), !dbg !577
  %.b184 = load i1, i1* @level, align 1, !dbg !626
  %idxprom50 = zext i1 %.b184 to i64, !dbg !626
  %offset52 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom50, i32 2, !dbg !626
  %15 = load i64, i64* %offset52, align 8, !dbg !626, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %15, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %call54 = call i32 @processStringObject(i8** noundef null) #12, !dbg !628
  %tobool55.not = icmp eq i32 %call54, 0, !dbg !628
  br i1 %tobool55.not, label %if.then56, label %for.inc, !dbg !630

if.then56:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %15, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %16 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !631, !tbaa !212
  %arraydecay58 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %16, i64 0, !dbg !631
  %call59 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay58, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0), i32 noundef %i.0204, i32 noundef %length.0) #10, !dbg !631
  %conv60 = and i64 %15, 4294967295, !dbg !631
  %17 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !631, !tbaa !212
  %arrayidx61 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %17, !dbg !631
  store i64 %conv60, i64* %arrayidx61, align 8, !dbg !631, !tbaa !82
  %18 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !631, !tbaa !212
  %inc62 = add i64 %18, 1, !dbg !631
  store i64 %inc62, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !631, !tbaa !212
  br label %cleanup143, !dbg !634

for.inc:                                          ; preds = %for.body
  %inc64 = add nuw i32 %i.0204, 1, !dbg !635
  call void @llvm.dbg.value(metadata i32 %inc64, metadata !574, metadata !DIExpression()), !dbg !577
  %exitcond224.not = icmp eq i32 %inc64, %length.0, !dbg !622
  br i1 %exitcond224.not, label %sw.epilog, label %for.body, !dbg !625, !llvm.loop !636

for.body69:                                       ; preds = %for.cond66.preheader, %for.inc98
  %i.1202 = phi i32 [ %inc99, %for.inc98 ], [ 0, %for.cond66.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.1202, metadata !574, metadata !DIExpression()), !dbg !577
  %.b183 = load i1, i1* @level, align 1, !dbg !638
  %idxprom70 = zext i1 %.b183 to i64, !dbg !638
  %offset72 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom70, i32 2, !dbg !638
  %19 = load i64, i64* %offset72, align 8, !dbg !638, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %19, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %call74 = call i32 @processStringObject(i8** noundef null) #12, !dbg !640
  %tobool75.not = icmp eq i32 %call74, 0, !dbg !640
  br i1 %tobool75.not, label %if.then76, label %if.end83, !dbg !642

if.then76:                                        ; preds = %for.body69
  call void @llvm.dbg.value(metadata i64 %19, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %20 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !643, !tbaa !212
  %arraydecay78 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %20, i64 0, !dbg !643
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay78, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 noundef %i.1202, i32 noundef %length.0) #10, !dbg !643
  %conv80 = and i64 %19, 4294967295, !dbg !643
  %21 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !643, !tbaa !212
  %arrayidx81 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %21, !dbg !643
  store i64 %conv80, i64* %arrayidx81, align 8, !dbg !643, !tbaa !82
  %22 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !643, !tbaa !212
  %inc82 = add i64 %22, 1, !dbg !643
  store i64 %inc82, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !643, !tbaa !212
  br label %cleanup143, !dbg !646

if.end83:                                         ; preds = %for.body69
  %.b182 = load i1, i1* @level, align 1, !dbg !647
  %idxprom84 = zext i1 %.b182 to i64, !dbg !647
  %offset86 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom84, i32 2, !dbg !647
  %23 = load i64, i64* %offset86, align 8, !dbg !647, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %23, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %call88 = call i32 @processDoubleValue(double** noundef null) #12, !dbg !648
  %tobool89.not = icmp eq i32 %call88, 0, !dbg !648
  br i1 %tobool89.not, label %if.then90, label %for.inc98, !dbg !650

if.then90:                                        ; preds = %if.end83
  call void @llvm.dbg.value(metadata i64 %23, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %24 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !651, !tbaa !212
  %arraydecay92 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %24, i64 0, !dbg !651
  %call93 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay92, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 noundef %i.1202, i32 noundef %length.0) #10, !dbg !651
  %conv94 = and i64 %23, 4294967295, !dbg !651
  %25 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !651, !tbaa !212
  %arrayidx95 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %25, !dbg !651
  store i64 %conv94, i64* %arrayidx95, align 8, !dbg !651, !tbaa !82
  %26 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !651, !tbaa !212
  %inc96 = add i64 %26, 1, !dbg !651
  store i64 %inc96, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !651, !tbaa !212
  br label %cleanup143, !dbg !654

for.inc98:                                        ; preds = %if.end83
  %inc99 = add nuw i32 %i.1202, 1, !dbg !655
  call void @llvm.dbg.value(metadata i32 %inc99, metadata !574, metadata !DIExpression()), !dbg !577
  %exitcond223.not = icmp eq i32 %inc99, %length.0, !dbg !611
  br i1 %exitcond223.not, label %sw.epilog, label %for.body69, !dbg !614, !llvm.loop !656

for.body105:                                      ; preds = %for.cond102.preheader, %for.inc134
  %i.2200 = phi i32 [ %inc135, %for.inc134 ], [ 0, %for.cond102.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.2200, metadata !574, metadata !DIExpression()), !dbg !577
  %.b181 = load i1, i1* @level, align 1, !dbg !658
  %idxprom106 = zext i1 %.b181 to i64, !dbg !658
  %offset108 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom106, i32 2, !dbg !658
  %27 = load i64, i64* %offset108, align 8, !dbg !658, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %27, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %call110 = call i32 @processStringObject(i8** noundef null) #12, !dbg !660
  %tobool111.not = icmp eq i32 %call110, 0, !dbg !660
  br i1 %tobool111.not, label %if.then112, label %if.end119, !dbg !662

if.then112:                                       ; preds = %for.body105
  call void @llvm.dbg.value(metadata i64 %27, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %28 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !663, !tbaa !212
  %arraydecay114 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %28, i64 0, !dbg !663
  %call115 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay114, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.17, i64 0, i64 0), i32 noundef %i.2200, i32 noundef %length.0) #10, !dbg !663
  %conv116 = and i64 %27, 4294967295, !dbg !663
  %29 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !663, !tbaa !212
  %arrayidx117 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %29, !dbg !663
  store i64 %conv116, i64* %arrayidx117, align 8, !dbg !663, !tbaa !82
  %30 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !663, !tbaa !212
  %inc118 = add i64 %30, 1, !dbg !663
  store i64 %inc118, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !663, !tbaa !212
  br label %cleanup143, !dbg !666

if.end119:                                        ; preds = %for.body105
  %.b = load i1, i1* @level, align 1, !dbg !667
  %idxprom120 = zext i1 %.b to i64, !dbg !667
  %offset122 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom120, i32 2, !dbg !667
  %31 = load i64, i64* %offset122, align 8, !dbg !667, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %31, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %call124 = call i32 @processStringObject(i8** noundef null) #12, !dbg !668
  %tobool125.not = icmp eq i32 %call124, 0, !dbg !668
  br i1 %tobool125.not, label %if.then126, label %for.inc134, !dbg !670

if.then126:                                       ; preds = %if.end119
  call void @llvm.dbg.value(metadata i64 %31, metadata !573, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !577
  %32 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !671, !tbaa !212
  %arraydecay128 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %32, i64 0, !dbg !671
  %call129 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay128, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 noundef %i.2200, i32 noundef %length.0) #10, !dbg !671
  %conv130 = and i64 %31, 4294967295, !dbg !671
  %33 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !671, !tbaa !212
  %arrayidx131 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %33, !dbg !671
  store i64 %conv130, i64* %arrayidx131, align 8, !dbg !671, !tbaa !82
  %34 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !671, !tbaa !212
  %inc132 = add i64 %34, 1, !dbg !671
  store i64 %inc132, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !671, !tbaa !212
  br label %cleanup143, !dbg !674

for.inc134:                                       ; preds = %if.end119
  %inc135 = add nuw i32 %i.2200, 1, !dbg !675
  call void @llvm.dbg.value(metadata i32 %inc135, metadata !574, metadata !DIExpression()), !dbg !577
  %exitcond.not = icmp eq i32 %inc135, %length.0, !dbg !606
  br i1 %exitcond.not, label %sw.epilog, label %for.body105, !dbg !610, !llvm.loop !676

sw.default:                                       ; preds = %if.end35
  %35 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !678, !tbaa !212
  %arraydecay138 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %35, i64 0, !dbg !678
  %call139 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay138, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !678
  %conv140 = and i64 %0, 4294967295, !dbg !678
  %36 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !678, !tbaa !212
  %arrayidx141 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %36, !dbg !678
  store i64 %conv140, i64* %arrayidx141, align 8, !dbg !678, !tbaa !82
  %37 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !678, !tbaa !212
  %inc142 = add i64 %37, 1, !dbg !678
  store i64 %inc142, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !678, !tbaa !212
  br label %cleanup143, !dbg !680

sw.epilog:                                        ; preds = %for.inc134, %for.inc98, %for.inc, %for.cond102.preheader, %for.cond66.preheader, %sw.bb47, %sw.bb
  %success = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 2, !dbg !681
  store i8 1, i8* %success, align 4, !dbg !682, !tbaa !683
  br label %cleanup143, !dbg !684

cleanup143:                                       ; preds = %if.then23, %if.then39, %if.then56, %if.then76, %if.then90, %if.then112, %if.then126, %sw.default, %sw.epilog, %if.else
  %retval.1 = phi i32 [ 0, %if.else ], [ 0, %if.then23 ], [ 0, %sw.default ], [ 0, %if.then126 ], [ 0, %if.then112 ], [ 1, %sw.epilog ], [ 0, %if.then90 ], [ 0, %if.then76 ], [ 0, %if.then56 ], [ 0, %if.then39 ], !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11, !dbg !685
  ret i32 %retval.1, !dbg !685
}

; Function Attrs: noinline nounwind uwtable
define dso_local { i8*, i64 } @loadEntry() local_unnamed_addr #0 !dbg !686 {
entry:
  %retval = alloca %struct.entry, align 8
  call void @llvm.dbg.declare(metadata i32* undef, metadata !692, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !694
  call void @llvm.dbg.declare(metadata %struct.entry* %retval, metadata !690, metadata !DIExpression()), !dbg !695
  %0 = bitcast %struct.entry* %retval to i8*, !dbg !695
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.entry* @__const.loadEntry.e to i8*), i64 16, i1 false), !dbg !695
  store i64 0, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !696, !tbaa !212
  %.b131 = load i1, i1* @level, align 1, !dbg !697
  %idxprom = zext i1 %.b131 to i64, !dbg !697
  %offset1 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom, i32 2, !dbg !697
  %1 = load i64, i64* %offset1, align 8, !dbg !697, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %1, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !698
  %call = call i32 @loadType(%struct.entry* noundef nonnull %retval) #12, !dbg !699
  %tobool.not = icmp eq i32 %call, 0, !dbg !699
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !701

if.end:                                           ; preds = %entry
  %.b130 = load i1, i1* @level, align 1, !dbg !702
  %idxprom3 = zext i1 %.b130 to i64, !dbg !702
  %offset5 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom3, i32 2, !dbg !702
  %2 = load i64, i64* %offset5, align 8, !dbg !702, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %2, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !698
  %type = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 1, !dbg !703
  %3 = load i32, i32* %type, align 8, !dbg !703, !tbaa !205
  switch i32 %3, label %if.end65 [
    i32 254, label %if.then9
    i32 255, label %if.then34
    i32 253, label %if.then56
  ], !dbg !705

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @loadLength(i32* noundef null) #12, !dbg !706
  call void @llvm.dbg.value(metadata i32 %call10, metadata !691, metadata !DIExpression()), !dbg !698
  %cmp11 = icmp eq i32 %call10, -1, !dbg !709
  br i1 %cmp11, label %if.then13, label %if.end19, !dbg !710

if.then13:                                        ; preds = %if.then9
  %4 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !711, !tbaa !212
  %arraydecay = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %4, i64 0, !dbg !711
  %call15 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !711
  %conv17 = and i64 %2, 4294967295, !dbg !711
  %5 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !711, !tbaa !212
  %arrayidx18 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %5, !dbg !711
  store i64 %conv17, i64* %arrayidx18, align 8, !dbg !711, !tbaa !82
  %6 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !711, !tbaa !212
  %inc = add i64 %6, 1, !dbg !711
  store i64 %inc, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !711, !tbaa !212
  br label %cleanup, !dbg !714

if.end19:                                         ; preds = %if.then9
  %cmp20 = icmp ugt i32 %call10, 63, !dbg !715
  br i1 %cmp20, label %if.then22, label %if.end87, !dbg !717

if.then22:                                        ; preds = %if.end19
  %7 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !718, !tbaa !212
  %arraydecay24 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %7, i64 0, !dbg !718
  %call25 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay24, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 noundef %call10) #10, !dbg !718
  %conv27 = and i64 %2, 4294967295, !dbg !718
  %8 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !718, !tbaa !212
  %arrayidx28 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %8, !dbg !718
  store i64 %conv27, i64* %arrayidx28, align 8, !dbg !718, !tbaa !82
  %9 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !718, !tbaa !212
  %inc29 = add i64 %9, 1, !dbg !718
  store i64 %inc29, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !718, !tbaa !212
  br label %cleanup, !dbg !721

if.then34:                                        ; preds = %if.end
  %size = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom3, i32 1, !dbg !722
  %10 = load i64, i64* %size, align 8, !dbg !722, !tbaa !726
  %cmp40 = icmp ult i64 %2, %10, !dbg !727
  br i1 %cmp40, label %if.then42, label %if.else50, !dbg !728

if.then42:                                        ; preds = %if.then34
  %11 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !729, !tbaa !212
  %arraydecay44 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %11, i64 0, !dbg !729
  %call45 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay44, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !729
  %conv47 = and i64 %1, 4294967295, !dbg !729
  %12 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !729, !tbaa !212
  %arrayidx48 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %12, !dbg !729
  store i64 %conv47, i64* %arrayidx48, align 8, !dbg !729, !tbaa !82
  %13 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !729, !tbaa !212
  %inc49 = add i64 %13, 1, !dbg !729
  store i64 %inc49, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !729, !tbaa !212
  br label %cleanup, !dbg !732

if.else50:                                        ; preds = %if.then34
  %success = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 2, !dbg !733
  store i8 1, i8* %success, align 4, !dbg !735, !tbaa !683
  br label %cleanup

if.then56:                                        ; preds = %if.end
  %call57 = tail call i32 @processTime() #12, !dbg !736
  %tobool58.not = icmp eq i32 %call57, 0, !dbg !736
  br i1 %tobool58.not, label %cleanup, label %if.end60, !dbg !741

if.end60:                                         ; preds = %if.then56
  %call61 = call i32 @loadType(%struct.entry* noundef nonnull %retval) #12, !dbg !742
  %tobool62.not = icmp eq i32 %call61, 0, !dbg !742
  br i1 %tobool62.not, label %cleanup, label %if.end60.if.end65_crit_edge, !dbg !744

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  %.b129.pre = load i1, i1* @level, align 1, !dbg !745
  %idxprom66.phi.trans.insert = zext i1 %.b129.pre to i64
  %offset68.phi.trans.insert = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom66.phi.trans.insert, i32 2
  %.pre = load i64, i64* %offset68.phi.trans.insert, align 8, !dbg !745, !tbaa !106
  br label %if.end65, !dbg !744

if.end65:                                         ; preds = %if.end60.if.end65_crit_edge, %if.end
  %14 = phi i64 [ %.pre, %if.end60.if.end65_crit_edge ], [ %2, %if.end ], !dbg !745
  call void @llvm.dbg.value(metadata i64 %14, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !698
  %call71 = call i32 @loadPair(%struct.entry* noundef nonnull %retval) #12, !dbg !746
  %tobool72.not = icmp eq i32 %call71, 0, !dbg !746
  br i1 %tobool72.not, label %if.then73, label %if.end87, !dbg !748

if.then73:                                        ; preds = %if.end65
  call void @llvm.dbg.value(metadata i64 %14, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !698
  %15 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !749, !tbaa !212
  %arraydecay75 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %15, i64 0, !dbg !749
  %16 = load i32, i32* %type, align 8, !dbg !749, !tbaa !205
  %idxprom77 = sext i32 %16 to i64, !dbg !749
  %arraydecay79 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom77, i64 0, !dbg !749
  %call80 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay75, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %arraydecay79) #10, !dbg !749
  %conv82 = and i64 %14, 4294967295, !dbg !749
  %17 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !749, !tbaa !212
  %arrayidx83 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %17, !dbg !749
  store i64 %conv82, i64* %arrayidx83, align 8, !dbg !749, !tbaa !82
  %18 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !749, !tbaa !212
  %inc84 = add i64 %18, 1, !dbg !749
  store i64 %inc84, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !749, !tbaa !212
  br label %cleanup, !dbg !752

if.end87:                                         ; preds = %if.end65, %if.end19
  %.b = load i1, i1* @level, align 1, !dbg !753
  %idxprom88 = zext i1 %.b to i64, !dbg !753
  %offset90 = getelementptr inbounds [16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 %idxprom88, i32 2, !dbg !753
  %19 = load i64, i64* %offset90, align 8, !dbg !753, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %19, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !698
  %call93 = tail call i32 @peekType() #12, !dbg !754
  %cmp94 = icmp eq i32 %call93, -1, !dbg !756
  br i1 %cmp94, label %if.then96, label %if.else116, !dbg !757

if.then96:                                        ; preds = %if.end87
  call void @llvm.dbg.value(metadata i64 %19, metadata !692, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !698
  %20 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !758, !tbaa !212
  %arraydecay98 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %20, i64 0, !dbg !758
  %call99 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay98, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !758
  %conv101 = and i64 %19, 4294967295, !dbg !758
  %21 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !758, !tbaa !212
  %arrayidx102 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %21, !dbg !758
  store i64 %conv101, i64* %arrayidx102, align 8, !dbg !758, !tbaa !82
  %22 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !758, !tbaa !212
  %inc103 = add i64 %22, 1, !dbg !758
  store i64 %inc103, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !758, !tbaa !212
  %arraydecay105 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %inc103, i64 0, !dbg !761
  %23 = load i32, i32* %type, align 8, !dbg !761, !tbaa !205
  %idxprom107 = sext i32 %23 to i64, !dbg !761
  %arraydecay109 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom107, i64 0, !dbg !761
  %call110 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %arraydecay105, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %arraydecay109) #10, !dbg !761
  %conv112 = and i64 %1, 4294967295, !dbg !761
  %24 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !761, !tbaa !212
  %arrayidx113 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %24, !dbg !761
  store i64 %conv112, i64* %arrayidx113, align 8, !dbg !761, !tbaa !82
  %25 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !761, !tbaa !212
  %inc114 = add i64 %25, 1, !dbg !761
  store i64 %inc114, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !761, !tbaa !212
  %success115 = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 2, !dbg !763
  store i8 0, i8* %success115, align 4, !dbg !764, !tbaa !683
  br label %cleanup, !dbg !765

if.else116:                                       ; preds = %if.end87
  %success117 = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 2, !dbg !766
  store i8 1, i8* %success117, align 4, !dbg !768, !tbaa !683
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %if.else116, %if.end60, %if.then56, %if.then42, %if.else50, %entry, %if.then73, %if.then22, %if.then13
  %.fca.0.gep = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 0, !dbg !769
  %.fca.0.load = load i8*, i8** %.fca.0.gep, align 8, !dbg !769
  %.fca.0.insert = insertvalue { i8*, i64 } poison, i8* %.fca.0.load, 0, !dbg !769
  %.fca.1.gep = getelementptr inbounds %struct.entry, %struct.entry* %retval, i64 0, i32 1, !dbg !769
  %26 = bitcast i32* %.fca.1.gep to i64*, !dbg !769
  %.fca.1.load = load i64, i64* %26, align 8, !dbg !769
  %.fca.1.insert = insertvalue { i8*, i64 } %.fca.0.insert, i64 %.fca.1.load, 1, !dbg !769
  ret { i8*, i64 } %.fca.1.insert, !dbg !769
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printCentered(i32 noundef %indent, i32 noundef %width, i8* noundef %body) local_unnamed_addr #0 !dbg !770 {
entry:
  %head = alloca [256 x i8], align 16
  %tail = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %indent, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %width, metadata !775, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %body, metadata !776, metadata !DIExpression()), !dbg !779
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %head, i64 0, i64 0, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #11, !dbg !780
  call void @llvm.dbg.declare(metadata [256 x i8]* %head, metadata !777, metadata !DIExpression()), !dbg !781
  %1 = getelementptr inbounds [256 x i8], [256 x i8]* %tail, i64 0, i64 0, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %1) #11, !dbg !780
  call void @llvm.dbg.declare(metadata [256 x i8]* %tail, metadata !778, metadata !DIExpression()), !dbg !782
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 256) #10, !dbg !783
  %call2 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 0, i64 noundef 256) #10, !dbg !784
  %conv = sext i32 %indent to i64, !dbg !785
  %call4 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 61, i64 noundef %conv) #10, !dbg !786
  %sub = sub i32 -2, %indent, !dbg !787
  %sub6 = add i32 %sub, %width, !dbg !788
  %conv7 = sext i32 %sub6 to i64, !dbg !789
  %call8 = call i64 @strlen(i8* noundef %body) #14, !dbg !790
  %sub9 = sub i64 %conv7, %call8, !dbg !791
  %call10 = call i8* @memset(i8* noundef nonnull %1, i32 noundef 61, i64 noundef %sub9) #10, !dbg !792
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef %body, i8* noundef nonnull %1) #10, !dbg !793
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %1) #11, !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #11, !dbg !794
  ret void, !dbg !794
}

; Function Attrs: nounwind
declare !dbg !795 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !798 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @printValid(i64 noundef %ops, i64 noundef %bytes) local_unnamed_addr #0 !dbg !801 {
entry:
  %body = alloca [80 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %ops, metadata !807, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i64 %bytes, metadata !808, metadata !DIExpression()), !dbg !813
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %body, i64 0, i64 0, !dbg !814
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #11, !dbg !814
  call void @llvm.dbg.declare(metadata [80 x i8]* %body, metadata !809, metadata !DIExpression()), !dbg !815
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i64 noundef %ops, i64 noundef %bytes) #10, !dbg !816
  call void @printCentered(i32 noundef 4, i32 noundef 80, i8* noundef nonnull %0) #12, !dbg !817
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #11, !dbg !818
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSkipped(i64 noundef %bytes, i64 noundef %offset) local_unnamed_addr #0 !dbg !819 {
entry:
  %body = alloca [80 x i8], align 16
  call void @llvm.dbg.value(metadata i64 %bytes, metadata !821, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i64 %offset, metadata !822, metadata !DIExpression()), !dbg !824
  %0 = getelementptr inbounds [80 x i8], [80 x i8]* %body, i64 0, i64 0, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %0) #11, !dbg !825
  call void @llvm.dbg.declare(metadata [80 x i8]* %body, metadata !823, metadata !DIExpression()), !dbg !826
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0), i64 noundef %bytes, i64 noundef %offset) #10, !dbg !827
  call void @printCentered(i32 noundef 4, i32 noundef 80, i8* noundef nonnull %0) #12, !dbg !828
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %0) #11, !dbg !829
  ret void, !dbg !829
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printErrorStack(%struct.entry* nocapture noundef readonly %e) local_unnamed_addr #0 !dbg !830 {
entry:
  %body = alloca [64 x i8], align 16
  %tmp = alloca [41 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.entry* %e, metadata !834, metadata !DIExpression()), !dbg !848
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %body, i64 0, i64 0, !dbg !849
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #11, !dbg !849
  call void @llvm.dbg.declare(metadata [64 x i8]* %body, metadata !836, metadata !DIExpression()), !dbg !850
  %type = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 1, !dbg !851
  %1 = load i32, i32* %type, align 8, !dbg !851, !tbaa !205
  %cmp = icmp eq i32 %1, -1, !dbg !852
  br i1 %cmp, label %if.then, label %if.else, !dbg !853

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !854
  br label %if.end48, !dbg !856

if.else:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %1, 252, !dbg !857
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !858

if.then3:                                         ; preds = %if.else
  %idxprom79 = zext i32 %1 to i64, !dbg !859
  %arraydecay6 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom79, i64 0, !dbg !859
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %arraydecay6) #10, !dbg !861
  br label %if.end48, !dbg !862

if.else8:                                         ; preds = %if.else
  %key = getelementptr inbounds %struct.entry, %struct.entry* %e, i64 0, i32 0, !dbg !863
  %2 = load i8*, i8** %key, align 8, !dbg !863, !tbaa !587
  %tobool.not = icmp eq i8* %2, null, !dbg !864
  br i1 %tobool.not, label %if.then9, label %if.else16, !dbg !865

if.then9:                                         ; preds = %if.else8
  %idxprom12 = sext i32 %1 to i64, !dbg !866
  %arraydecay14 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom12, i64 0, !dbg !866
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* noundef nonnull %arraydecay14) #10, !dbg !868
  br label %if.end48, !dbg !869

if.else16:                                        ; preds = %if.else8
  %3 = getelementptr inbounds [41 x i8], [41 x i8]* %tmp, i64 0, i64 0, !dbg !870
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %3) #11, !dbg !870
  call void @llvm.dbg.declare(metadata [41 x i8]* %tmp, metadata !840, metadata !DIExpression()), !dbg !871
  %call19 = call i8* @strncpy(i8* noundef nonnull %3, i8* noundef nonnull %2, i64 noundef 40) #10, !dbg !872
  %4 = load i8*, i8** %key, align 8, !dbg !873, !tbaa !587
  %call21 = call i64 @strlen(i8* noundef %4) #14, !dbg !875
  %cmp22 = icmp ugt i64 %call21, 40, !dbg !876
  br i1 %cmp22, label %if.then23, label %if.end, !dbg !877

if.then23:                                        ; preds = %if.else16
  %arrayidx24 = getelementptr inbounds [41 x i8], [41 x i8]* %tmp, i64 0, i64 37, !dbg !878
  %call25 = call i8* @memset(i8* noundef nonnull %arrayidx24, i32 noundef 46, i64 noundef 3) #10, !dbg !880
  br label %if.end, !dbg !881

if.end:                                           ; preds = %if.then23, %if.else16
  call void @llvm.dbg.value(metadata i32 0, metadata !835, metadata !DIExpression()), !dbg !848
  %call2780 = call i64 @strlen(i8* noundef nonnull %3) #14, !dbg !882
  %cmp2881.not = icmp eq i64 %call2780, 0, !dbg !885
  br i1 %cmp2881.not, label %for.end, label %for.body, !dbg !886

for.body:                                         ; preds = %if.end, %for.inc
  %conv83 = phi i64 [ %conv, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %conv83, metadata !835, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !848
  %arrayidx31 = getelementptr inbounds [41 x i8], [41 x i8]* %tmp, i64 0, i64 %conv83, !dbg !887
  %5 = load i8, i8* %arrayidx31, align 1, !dbg !887, !tbaa !200
  %cmp33 = icmp slt i8 %5, 33, !dbg !890
  br i1 %cmp33, label %if.then35, label %for.inc, !dbg !891

if.then35:                                        ; preds = %for.body
  store i8 63, i8* %arrayidx31, align 1, !dbg !892, !tbaa !200
  br label %for.inc, !dbg !893

for.inc:                                          ; preds = %for.body, %if.then35
  %inc = add nuw nsw i64 %conv83, 1, !dbg !894
  %conv = and i64 %inc, 4294967295, !dbg !895
  call void @llvm.dbg.value(metadata i64 %inc, metadata !835, metadata !DIExpression()), !dbg !848
  %call27 = call i64 @strlen(i8* noundef nonnull %3) #14, !dbg !882
  %cmp28 = icmp ugt i64 %call27, %conv, !dbg !885
  br i1 %cmp28, label %for.body, label %for.end, !dbg !886, !llvm.loop !896

for.end:                                          ; preds = %for.inc, %if.end
  %6 = load i32, i32* %type, align 8, !dbg !898, !tbaa !205
  %idxprom41 = sext i32 %6 to i64, !dbg !899
  %arraydecay43 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom41, i64 0, !dbg !899
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i8* noundef nonnull %arraydecay43, i8* noundef nonnull %3) #10, !dbg !900
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %3) #11, !dbg !901
  br label %if.end48

if.end48:                                         ; preds = %if.then3, %for.end, %if.then9, %if.then
  call void @printCentered(i32 noundef 4, i32 noundef 80, i8* noundef nonnull %0) #12, !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !835, metadata !DIExpression()), !dbg !848
  %7 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !903, !tbaa !212
  %cmp5284.not = icmp eq i64 %7, 0, !dbg !906
  br i1 %cmp5284.not, label %for.end63, label %for.body54, !dbg !907

for.body54:                                       ; preds = %if.end48, %for.body54
  %conv5186 = phi i64 [ %conv51, %for.body54 ], [ 0, %if.end48 ]
  call void @llvm.dbg.value(metadata i64 %conv5186, metadata !835, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !848
  %arrayidx56 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %conv5186, !dbg !908
  %8 = load i64, i64* %arrayidx56, align 8, !dbg !908, !tbaa !82
  %arraydecay59 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 %conv5186, i64 0, !dbg !910
  %call60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 noundef %8, i8* noundef nonnull %arraydecay59) #10, !dbg !911
  %inc62 = add nuw nsw i64 %conv5186, 1, !dbg !912
  %conv51 = and i64 %inc62, 4294967295, !dbg !913
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !835, metadata !DIExpression()), !dbg !848
  %9 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !903, !tbaa !212
  %cmp52 = icmp ugt i64 %9, %conv51, !dbg !906
  br i1 %cmp52, label %for.body54, label %for.end63, !dbg !907, !llvm.loop !914

for.end63:                                        ; preds = %for.body54, %if.end48
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #11, !dbg !916
  ret void, !dbg !916
}

; Function Attrs: nounwind
declare !dbg !917 dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @process() local_unnamed_addr #0 !dbg !920 {
entry:
  %entry1 = alloca %struct.entry, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !933
  %0 = bitcast %struct.entry* %entry1 to i8*, !dbg !934
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !934
  call void @llvm.dbg.declare(metadata %struct.entry* %entry1, metadata !927, metadata !DIExpression()), !dbg !935
  %call = tail call i32 @processHeader() #12, !dbg !936
  store i1 true, i1* @level, align 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 0, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !933
  %1 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !938, !tbaa !106
  %2 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !939, !tbaa !726
  %cmp79 = icmp ult i64 %1, %2, !dbg !940
  br i1 %cmp79, label %while.body.lr.ph, label %while.end26.thread, !dbg !941

while.end26.thread:                               ; preds = %entry
  tail call void @printValid(i64 noundef 0, i64 noundef 0) #12, !dbg !942
  br label %if.then28, !dbg !943

while.body.lr.ph:                                 ; preds = %entry
  %tmp.sroa.0.0..sroa_idx = getelementptr inbounds %struct.entry, %struct.entry* %entry1, i64 0, i32 0
  %tmp.sroa.4.0..sroa_idx57 = getelementptr inbounds %struct.entry, %struct.entry* %entry1, i64 0, i32 1
  %tmp.sroa.4.0..sroa_cast = bitcast i32* %tmp.sroa.4.0..sroa_idx57 to i64*
  br label %while.body, !dbg !941

while.body:                                       ; preds = %while.body.lr.ph, %if.end25
  %num_errors.082 = phi i64 [ 0, %while.body.lr.ph ], [ %num_errors.1, %if.end25 ]
  %num_valid_ops.081 = phi i64 [ 0, %while.body.lr.ph ], [ %num_valid_ops.1, %if.end25 ]
  %num_valid_bytes.080 = phi i64 [ 0, %while.body.lr.ph ], [ %num_valid_bytes.1, %if.end25 ]
  call void @llvm.dbg.value(metadata i64 %num_errors.082, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_valid_ops.081, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_valid_bytes.080, metadata !926, metadata !DIExpression()), !dbg !933
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.pos* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 1) to i8*), i8* noundef nonnull align 16 dereferenceable(24) bitcast ([16 x %struct.pos]* @positions to i8*), i64 24, i1 false), !dbg !944, !tbaa.struct !91
  %call2 = tail call { i8*, i64 } @loadEntry() #12, !dbg !945
  %3 = extractvalue { i8*, i64 } %call2, 0, !dbg !945
  %4 = extractvalue { i8*, i64 } %call2, 1, !dbg !945
  store i8* %3, i8** %tmp.sroa.0.0..sroa_idx, align 8, !dbg !945, !tbaa.struct !946
  store i64 %4, i64* %tmp.sroa.4.0..sroa_cast, align 8, !dbg !945, !tbaa.struct !947
  %5 = and i64 %4, 1095216660480, !dbg !948
  %tobool.not = icmp eq i64 %5, 0, !dbg !948
  %6 = trunc i64 %4 to i32, !dbg !949
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !949

if.then:                                          ; preds = %while.body
  tail call void @printValid(i64 noundef %num_valid_ops.081, i64 noundef %num_valid_bytes.080) #12, !dbg !950
  call void @printErrorStack(%struct.entry* noundef nonnull %entry1) #12, !dbg !951
  %inc = add i64 %num_errors.082, 1, !dbg !952
  call void @llvm.dbg.value(metadata i64 %inc, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 0, metadata !926, metadata !DIExpression()), !dbg !933
  %7 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !953, !tbaa !106
  %add = add i64 %7, 1, !dbg !954
  call void @llvm.dbg.value(metadata i64 %add, metadata !928, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %add, metadata !928, metadata !DIExpression()), !dbg !955
  %8 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !956
  %cmp675 = icmp ult i64 %add, %8, !dbg !956
  br i1 %cmp675, label %while.body7, label %while.end.thread, !dbg !957

while.end.thread:                                 ; preds = %if.then
  store i8* %3, i8** %tmp.sroa.0.0..sroa_idx, align 8, !dbg !958, !tbaa.struct !946
  br label %if.end21, !dbg !963

while.body7:                                      ; preds = %if.then, %for.end
  %offset.076 = phi i64 [ %spec.select, %for.end ], [ %add, %if.then ]
  call void @llvm.dbg.value(metadata i64 %offset.076, metadata !928, metadata !DIExpression()), !dbg !955
  store i64 %offset.076, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 1, i32 2), align 8, !dbg !964, !tbaa !106
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !955
  %call10 = tail call { i8*, i64 } @loadEntry() #12, !dbg !958
  %9 = extractvalue { i8*, i64 } %call10, 1, !dbg !958
  %10 = and i64 %9, 1095216660480, !dbg !965
  %tobool12.not = icmp eq i64 %10, 0, !dbg !965
  call void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !955
  br i1 %tobool12.not, label %for.end, label %for.cond, !dbg !967

for.cond:                                         ; preds = %while.body7
  call void @llvm.dbg.value(metadata i32 1, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 undef, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 1, metadata !932, metadata !DIExpression()), !dbg !955
  %call10.1 = tail call { i8*, i64 } @loadEntry() #12, !dbg !958
  %11 = extractvalue { i8*, i64 } %call10.1, 1, !dbg !958
  %12 = and i64 %11, 1095216660480, !dbg !965
  %tobool12.not.1 = icmp eq i64 %12, 0, !dbg !965
  call void @llvm.dbg.value(metadata i32 1, metadata !932, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !955
  br i1 %tobool12.not.1, label %for.end, label %for.cond.1, !dbg !967

for.cond.1:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 2, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 undef, metadata !932, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i32 2, metadata !932, metadata !DIExpression()), !dbg !955
  %call10.2 = tail call { i8*, i64 } @loadEntry() #12, !dbg !958
  %13 = extractvalue { i8*, i64 } %call10.2, 1, !dbg !958
  %14 = and i64 %13, 1095216660480, !dbg !965
  %tobool12.not.2 = icmp eq i64 %14, 0, !dbg !965
  call void @llvm.dbg.value(metadata i32 2, metadata !932, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !955
  br i1 %tobool12.not.2, label %for.end, label %for.end.thread, !dbg !967

for.end.thread:                                   ; preds = %for.cond.1
  %15 = extractvalue { i8*, i64 } %call10.2, 1, !dbg !958
  store i64 %15, i64* %tmp.sroa.4.0..sroa_cast, align 8, !dbg !958
  %16 = extractvalue { i8*, i64 } %call10.2, 1, !dbg !958
  %17 = trunc i64 %16 to i32, !dbg !967
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !928, metadata !DIExpression()), !dbg !955
  %18 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !956
  %cmp696 = icmp ult i64 %offset.076, %18, !dbg !956
  %19 = extractvalue { i8*, i64 } %call10.2, 0, !dbg !958
  store i8* %19, i8** %tmp.sroa.0.0..sroa_idx, align 8, !dbg !958, !tbaa.struct !946
  br i1 %cmp696, label %if.then20, label %if.end21, !dbg !963

for.end:                                          ; preds = %while.body7, %for.cond, %for.cond.1
  %20 = phi i64 [ %9, %while.body7 ], [ %11, %for.cond ], [ %13, %for.cond.1 ]
  %call10.lcssa = phi { i8*, i64 } [ %call10, %while.body7 ], [ %call10.1, %for.cond ], [ %call10.2, %for.cond.1 ], !dbg !958
  %spec.select = add nuw i64 %offset.076, 1, !dbg !968
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !928, metadata !DIExpression()), !dbg !955
  %21 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !956
  %cmp6 = icmp ult i64 %spec.select, %21, !dbg !956
  br i1 %cmp6, label %while.body7, label %while.end, !dbg !957, !llvm.loop !969

while.end:                                        ; preds = %for.end
  %22 = trunc i64 %20 to i32, !dbg !967
  store i64 %20, i64* %tmp.sroa.4.0..sroa_cast, align 8, !dbg !958
  %23 = extractvalue { i8*, i64 } %call10.lcssa, 0, !dbg !958
  store i8* %23, i8** %tmp.sroa.0.0..sroa_idx, align 8, !dbg !958, !tbaa.struct !946
  br label %if.end21, !dbg !963

if.then20:                                        ; preds = %for.end.thread
  %24 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !971, !tbaa !106
  %sub = sub i64 %offset.076, %24, !dbg !974
  tail call void @printSkipped(i64 noundef %sub, i64 noundef %offset.076) #12, !dbg !975
  br label %if.end21, !dbg !976

if.end21:                                         ; preds = %while.end, %for.end.thread, %while.end.thread, %if.then20
  %offset.0.lcssa103 = phi i64 [ %add, %while.end.thread ], [ %offset.076, %if.then20 ], [ %spec.select, %while.end ], [ %offset.076, %for.end.thread ]
  %25 = phi i32 [ %6, %while.end.thread ], [ %17, %if.then20 ], [ %22, %while.end ], [ %17, %for.end.thread ]
  store i64 %offset.0.lcssa103, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !977, !tbaa !106
  br label %if.end25, !dbg !978

if.else:                                          ; preds = %while.body
  %inc22 = add i64 %num_valid_ops.081, 1, !dbg !979
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !925, metadata !DIExpression()), !dbg !933
  %26 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 1, i32 2), align 8, !dbg !981, !tbaa !106
  %27 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !982, !tbaa !106
  %sub23 = add i64 %26, %num_valid_bytes.080, !dbg !983
  %add24 = sub i64 %sub23, %27, !dbg !984
  call void @llvm.dbg.value(metadata i64 %add24, metadata !926, metadata !DIExpression()), !dbg !933
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([16 x %struct.pos]* @positions to i8*), i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.pos* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 1) to i8*), i64 24, i1 false), !dbg !985, !tbaa.struct !91
  %.pre = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !938, !tbaa !106
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end21
  %28 = phi i32 [ %6, %if.else ], [ %25, %if.end21 ]
  %29 = phi i64 [ %.pre, %if.else ], [ %offset.0.lcssa103, %if.end21 ], !dbg !938
  %num_valid_bytes.1 = phi i64 [ %add24, %if.else ], [ 0, %if.end21 ], !dbg !986
  %num_valid_ops.1 = phi i64 [ %inc22, %if.else ], [ 0, %if.end21 ], !dbg !986
  %num_errors.1 = phi i64 [ %num_errors.082, %if.else ], [ %inc, %if.end21 ], !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_errors.1, metadata !924, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_valid_ops.1, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_valid_bytes.1, metadata !926, metadata !DIExpression()), !dbg !933
  %30 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !939, !tbaa !726
  %cmp = icmp ult i64 %29, %30, !dbg !940
  br i1 %cmp, label %while.body, label %while.end26, !dbg !941, !llvm.loop !987

while.end26:                                      ; preds = %if.end25
  tail call void @printValid(i64 noundef %num_valid_ops.1, i64 noundef %num_valid_bytes.1) #12, !dbg !942
  %cmp27.not = icmp eq i32 %28, 255, !dbg !989
  br i1 %cmp27.not, label %if.end37, label %if.then28, !dbg !943

if.then28:                                        ; preds = %while.end26.thread, %while.end26
  %num_errors.0.lcssa109 = phi i64 [ 0, %while.end26.thread ], [ %num_errors.1, %while.end26 ]
  %31 = phi i32 [ undef, %while.end26.thread ], [ %28, %while.end26 ]
  %type = getelementptr inbounds %struct.entry, %struct.entry* %entry1, i64 0, i32 1, !dbg !991
  store i64 0, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !992, !tbaa !212
  %idxprom = sext i32 %31 to i64, !dbg !994
  %arraydecay31 = getelementptr inbounds [256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 %idxprom, i64 0, !dbg !994
  %call32 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 0, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* noundef nonnull %arraydecay31) #10, !dbg !994
  %32 = load i64, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !994, !tbaa !106
  %33 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !994, !tbaa !212
  %arrayidx33 = getelementptr inbounds %struct.errors_t, %struct.errors_t* @errors, i64 0, i32 1, i64 %33, !dbg !994
  store i64 %32, i64* %arrayidx33, align 8, !dbg !994, !tbaa !82
  %34 = load i64, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !994, !tbaa !212
  %inc34 = add i64 %34, 1, !dbg !994
  store i64 %inc34, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !994, !tbaa !212
  store i32 -1, i32* %type, align 8, !dbg !996, !tbaa !205
  call void @printErrorStack(%struct.entry* noundef nonnull %entry1) #12, !dbg !997
  %inc36 = add i64 %num_errors.0.lcssa109, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %inc36, metadata !924, metadata !DIExpression()), !dbg !933
  br label %if.end37, !dbg !999

if.end37:                                         ; preds = %if.then28, %while.end26
  %num_errors.2 = phi i64 [ %inc36, %if.then28 ], [ %num_errors.1, %while.end26 ], !dbg !933
  call void @llvm.dbg.value(metadata i64 %num_errors.2, metadata !924, metadata !DIExpression()), !dbg !933
  %tobool38.not = icmp eq i64 %num_errors.2, 0, !dbg !1000
  br i1 %tobool38.not, label %if.end42, label %if.then39, !dbg !1002

if.then39:                                        ; preds = %if.end37
  %call40 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1003
  %call41 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.35, i64 0, i64 0), i64 noundef %num_errors.2) #10, !dbg !1005
  br label %if.end42, !dbg !1006

if.end42:                                         ; preds = %if.then39, %if.end37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !1007
  ret void, !dbg !1007
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readonly %argv) local_unnamed_addr #0 !dbg !1008 {
entry:
  %stat = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1012, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1013, metadata !DIExpression()), !dbg !1056
  %cmp = icmp slt i32 %argc, 2, !dbg !1057
  br i1 %cmp, label %if.then, label %if.end, !dbg !1059

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !dbg !1060, !tbaa !92
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i8* noundef %0) #10, !dbg !1062
  tail call void @exit(i32 noundef 0) #13, !dbg !1063
  unreachable, !dbg !1063

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.stat* %stat to i8*, !dbg !1064
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #11, !dbg !1064
  call void @llvm.dbg.declare(metadata %struct.stat* %stat, metadata !1019, metadata !DIExpression()), !dbg !1065
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !1066
  %2 = load i8*, i8** %arrayidx1, align 8, !dbg !1066, !tbaa !92
  %call2 = tail call i32 (i8*, i32, ...) @open(i8* noundef %2, i32 noundef 0) #10, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1014, metadata !DIExpression()), !dbg !1056
  %cmp3 = icmp slt i32 %call2, 1, !dbg !1068
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !1070

if.then4:                                         ; preds = %if.end
  %3 = load i8*, i8** %arrayidx1, align 8, !dbg !1071, !tbaa !92
  %call6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i8* noundef %3) #10, !dbg !1071
  tail call void @exit(i32 noundef 1) #13, !dbg !1071
  unreachable, !dbg !1071

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @fstat(i32 noundef %call2, %struct.stat* noundef %stat) #10, !dbg !1074
  %cmp9 = icmp eq i32 %call8, -1, !dbg !1076
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1077

if.then10:                                        ; preds = %if.end7
  %4 = load i8*, i8** %arrayidx1, align 8, !dbg !1078, !tbaa !92
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef %4) #10, !dbg !1078
  call void @exit(i32 noundef 1) #13, !dbg !1078
  unreachable, !dbg !1078

if.else:                                          ; preds = %if.end7
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %stat, i64 0, i32 8, !dbg !1081
  %5 = load i64, i64* %st_size, align 8, !dbg !1081, !tbaa !1083
  call void @llvm.dbg.value(metadata i64 %5, metadata !1015, metadata !DIExpression()), !dbg !1056
  %call14 = call i8* @mmap(i8* noundef null, i64 noundef %5, i32 noundef 1, i32 noundef 1, i32 noundef %call2, i64 noundef 0) #10, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %call14, metadata !1055, metadata !DIExpression()), !dbg !1056
  %cmp15 = icmp eq i8* %call14, inttoptr (i64 -1 to i8*), !dbg !1086
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !1088

if.then16:                                        ; preds = %if.else
  %6 = load i8*, i8** %arrayidx1, align 8, !dbg !1089, !tbaa !92
  %call18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i8* noundef %6) #10, !dbg !1089
  call void @exit(i32 noundef 1) #13, !dbg !1089
  unreachable, !dbg !1089

if.end19:                                         ; preds = %if.else
  store i8* %call14, i8** getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 0), align 16, !dbg !1092, !tbaa !1093
  store i64 %5, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 1), align 8, !dbg !1094, !tbaa !726
  store i64 0, i64* getelementptr inbounds ([16 x %struct.pos], [16 x %struct.pos]* @positions, i64 0, i64 0, i32 2), align 16, !dbg !1095, !tbaa !106
  store i64 0, i64* getelementptr inbounds (%struct.errors_t, %struct.errors_t* @errors, i64 0, i32 2), align 8, !dbg !1096, !tbaa !212
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0)) #10, !dbg !1097
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 1, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !1098
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 2, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #10, !dbg !1099
  %call23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 3, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !1100
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 4, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0)) #10, !dbg !1101
  %call25 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 253, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !1102
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 254, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #10, !dbg !1103
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([256 x [16 x i8]], [256 x [16 x i8]]* @types, i64 0, i64 255, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0)) #10, !dbg !1104
  store double 0x7FF0000000000000, double* @R_PosInf, align 8, !dbg !1105, !tbaa !515
  store double 0xFFF0000000000000, double* @R_NegInf, align 8, !dbg !1106, !tbaa !515
  store double 0x7FF8000000000000, double* @R_Nan, align 8, !dbg !1107, !tbaa !515
  call void @process() #12, !dbg !1108
  %call30 = call i32 @munmap(i8* noundef %call14, i64 noundef %5) #10, !dbg !1109
  %call31 = call i32 @close(i32 noundef %call2) #10, !dbg !1110
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #11, !dbg !1111
  ret i32 0, !dbg !1112
}

declare !dbg !1113 dso_local i32 @open(i8* noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef nonnull) local_unnamed_addr #0

; Function Attrs: nounwind
declare !dbg !1116 dso_local i8* @mmap(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1120 dso_local i32 @munmap(i8* noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1123 dso_local i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #14 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "positions", scope: !2, file: !3, line: 73, type: !55, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-check-dump.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "4049f8d6b44092a5f0276a1251b2f6b0")
!4 = !{!5, !6, !9, !10, !11, !16, !19, !21}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !12, line: 24, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !14, line: 37, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!15 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !12, line: 25, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !14, line: 39, baseType: !18)
!18 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !14, line: 41, baseType: !9)
!21 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!0, !23, !38, !41, !43, !45, !47, !52}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "errors", scope: !2, file: !3, line: 83, type: !25, isLocal: true, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "errors_t", file: !3, line: 82, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 78, size: 132160, elements: !27)
!27 = !{!28, !34, !37}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !26, file: !3, line: 79, baseType: !29, size: 131072)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 131072, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!32, !33}
!32 = !DISubrange(count: 16)
!33 = !DISubrange(count: 1024)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !26, file: !3, line: 80, baseType: !35, size: 1024, offset: 131072)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !36)
!36 = !{!32}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !26, file: !3, line: 81, baseType: !6, size: 64, offset: 132096)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "R_Zero", scope: !2, file: !3, line: 101, type: !40, isLocal: true, isDefinition: true)
!40 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "R_PosInf", scope: !2, file: !3, line: 101, type: !40, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "R_NegInf", scope: !2, file: !3, line: 101, type: !40, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "R_Nan", scope: !2, file: !3, line: 101, type: !40, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "types", scope: !2, file: !3, line: 104, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32768, elements: !50)
!50 = !{!51, !32}
!51 = !DISubrange(count: 256)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "level", scope: !2, file: !3, line: 72, type: !54, isLocal: true, isDefinition: true)
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 3072, elements: !36)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "pos", file: !3, line: 70, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 66, size: 192, elements: !58)
!58 = !{!59, !60, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !57, file: !3, line: 67, baseType: !5, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !57, file: !3, line: 68, baseType: !6, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !57, file: !3, line: 69, baseType: !6, size: 64, offset: 128)
!62 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{!"clang version 14.0.0"}
!68 = distinct !DISubprogram(name: "readBytes", scope: !3, file: !3, line: 107, type: !69, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{!9, !5, !71}
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !{!73, !74, !75, !76}
!73 = !DILocalVariable(name: "target", arg: 1, scope: !68, file: !3, line: 107, type: !5)
!74 = !DILocalVariable(name: "num", arg: 2, scope: !68, file: !3, line: 107, type: !71)
!75 = !DILocalVariable(name: "peek", scope: !68, file: !3, line: 108, type: !30)
!76 = !DILocalVariable(name: "p", scope: !68, file: !3, line: 111, type: !56)
!77 = !DILocation(line: 0, scope: !68)
!78 = !DILocation(line: 109, column: 11, scope: !68)
!79 = !DILocation(line: 111, column: 23, scope: !68)
!80 = !DILocation(line: 111, column: 13, scope: !68)
!81 = !{i64 0, i64 8, !82, i64 8, i64 8, !82}
!82 = !{!83, !83, i64 0}
!83 = !{!"long", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !{i64 0, i64 8, !82}
!87 = !DILocation(line: 112, column: 18, scope: !88)
!88 = distinct !DILexicalBlock(scope: !68, file: !3, line: 112, column: 9)
!89 = !DILocation(line: 112, column: 24, scope: !88)
!90 = !DILocation(line: 112, column: 9, scope: !68)
!91 = !{i64 0, i64 8, !92, i64 8, i64 8, !82, i64 16, i64 8, !82}
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !84, i64 0}
!94 = !DILocation(line: 115, column: 32, scope: !95)
!95 = distinct !DILexicalBlock(scope: !88, file: !3, line: 114, column: 12)
!96 = !DILocation(line: 115, column: 47, scope: !95)
!97 = !DILocation(line: 115, column: 24, scope: !95)
!98 = !DILocation(line: 115, column: 9, scope: !95)
!99 = !DILocation(line: 116, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !3, line: 116, column: 13)
!101 = !DILocation(line: 116, column: 13, scope: !95)
!102 = !DILocation(line: 116, column: 30, scope: !100)
!103 = !DILocation(line: 116, column: 20, scope: !100)
!104 = !DILocation(line: 116, column: 37, scope: !100)
!105 = !DILocation(line: 116, column: 44, scope: !100)
!106 = !{!107, !83, i64 16}
!107 = !{!"", !93, i64 0, !83, i64 8, !83, i64 16}
!108 = !DILocation(line: 119, column: 1, scope: !68)
!109 = !DISubprogram(name: "memcpy", scope: !110, file: !110, line: 43, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!110 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!111 = !DISubroutineType(types: !112)
!112 = !{!5, !113, !114, !6}
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!117 = !{}
!118 = distinct !DISubprogram(name: "processHeader", scope: !3, file: !3, line: 121, type: !119, scopeLine: 121, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!9}
!121 = !{!122, !126}
!122 = !DILocalVariable(name: "buf", scope: !118, file: !3, line: 122, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 80, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DILocalVariable(name: "dump_version", scope: !118, file: !3, line: 123, type: !9)
!127 = !DILocation(line: 122, column: 5, scope: !118)
!128 = !DILocation(line: 122, column: 10, scope: !118)
!129 = !DILocation(line: 125, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !118, file: !3, line: 125, column: 9)
!131 = !DILocation(line: 125, column: 9, scope: !118)
!132 = !DILocation(line: 126, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 126, column: 9)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 125, column: 29)
!135 = !DILocation(line: 130, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !118, file: !3, line: 130, column: 9)
!137 = !DILocation(line: 130, column: 31, scope: !136)
!138 = !DILocation(line: 130, column: 9, scope: !118)
!139 = !DILocation(line: 131, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 131, column: 9)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 130, column: 37)
!142 = !DILocation(line: 134, column: 36, scope: !118)
!143 = !DILocation(line: 134, column: 25, scope: !118)
!144 = !DILocation(line: 134, column: 20, scope: !118)
!145 = !DILocation(line: 0, scope: !118)
!146 = !DILocation(line: 135, column: 22, scope: !147)
!147 = distinct !DILexicalBlock(scope: !118, file: !3, line: 135, column: 9)
!148 = !DILocation(line: 135, column: 9, scope: !118)
!149 = !DILocation(line: 136, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 136, column: 9)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 135, column: 28)
!152 = !DILocation(line: 139, column: 1, scope: !118)
!153 = !DILocation(line: 138, column: 5, scope: !118)
!154 = !DISubprogram(name: "printf", scope: !155, file: !155, line: 332, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!155 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!156 = !DISubroutineType(types: !157)
!157 = !{!9, !158, null}
!158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!161 = !DISubprogram(name: "exit", scope: !162, file: !162, line: 617, type: !163, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !117)
!162 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!163 = !DISubroutineType(types: !164)
!164 = !{null, !9}
!165 = !DISubprogram(name: "memcmp", scope: !110, file: !110, line: 64, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!166 = !DISubroutineType(types: !167)
!167 = !{!9, !115, !115, !6}
!168 = !DISubprogram(name: "strtol", scope: !162, file: !162, line: 176, type: !169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!169 = !DISubroutineType(types: !170)
!170 = !{!71, !158, !171, !9}
!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!174 = distinct !DISubprogram(name: "loadType", scope: !3, file: !3, line: 141, type: !175, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!175 = !DISubroutineType(types: !176)
!176 = !{!9, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "entry", file: !3, line: 96, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 92, size: 128, elements: !180)
!180 = !{!181, !182, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !179, file: !3, line: 93, baseType: !173, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !179, file: !3, line: 94, baseType: !9, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !179, file: !3, line: 95, baseType: !30, size: 8, offset: 96)
!184 = !{!185, !186, !190}
!185 = !DILocalVariable(name: "e", arg: 1, scope: !174, file: !3, line: 141, type: !177)
!186 = !DILocalVariable(name: "offset", scope: !174, file: !3, line: 142, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !188, line: 26, baseType: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 42, baseType: !10)
!190 = !DILocalVariable(name: "t", scope: !174, file: !3, line: 145, type: !54)
!191 = !DILocation(line: 0, scope: !174)
!192 = !DILocation(line: 142, column: 23, scope: !174)
!193 = !DILocation(line: 145, column: 5, scope: !174)
!194 = !DILocation(line: 146, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !174, file: !3, line: 146, column: 9)
!196 = !DILocation(line: 146, column: 9, scope: !174)
!197 = !DILocation(line: 147, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 147, column: 13)
!199 = distinct !DILexicalBlock(scope: !195, file: !3, line: 146, column: 27)
!200 = !{!84, !84, i64 0}
!201 = !DILocation(line: 147, column: 20, scope: !198)
!202 = !DILocation(line: 148, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !3, line: 147, column: 33)
!204 = !DILocation(line: 148, column: 21, scope: !203)
!205 = !{!206, !207, i64 8}
!206 = !{!"", !93, i64 0, !207, i64 8, !84, i64 12}
!207 = !{!"int", !84, i64 0}
!208 = !DILocation(line: 149, column: 13, scope: !203)
!209 = !DILocation(line: 151, column: 13, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 151, column: 13)
!211 = distinct !DILexicalBlock(scope: !198, file: !3, line: 150, column: 16)
!212 = !{!213, !83, i64 16512}
!213 = !{!"", !84, i64 0, !84, i64 16384, !83, i64 16512}
!214 = !DILocation(line: 153, column: 5, scope: !199)
!215 = !DILocation(line: 154, column: 9, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 154, column: 9)
!217 = distinct !DILexicalBlock(scope: !195, file: !3, line: 153, column: 12)
!218 = !DILocation(line: 0, scope: !195)
!219 = !DILocation(line: 158, column: 5, scope: !174)
!220 = !DILocation(line: 159, column: 1, scope: !174)
!221 = !DISubprogram(name: "sprintf", scope: !155, file: !155, line: 334, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!222 = !DISubroutineType(types: !223)
!223 = !{!9, !224, !158, null}
!224 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!225 = distinct !DISubprogram(name: "peekType", scope: !3, file: !3, line: 161, type: !119, scopeLine: 161, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!226 = !{!227}
!227 = !DILocalVariable(name: "t", scope: !225, file: !3, line: 162, type: !54)
!228 = !DILocation(line: 162, column: 5, scope: !225)
!229 = !DILocation(line: 0, scope: !225)
!230 = !DILocation(line: 163, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !225, file: !3, line: 163, column: 9)
!232 = !DILocation(line: 163, column: 27, scope: !231)
!233 = !DILocation(line: 165, column: 1, scope: !225)
!234 = distinct !DISubprogram(name: "processTime", scope: !3, file: !3, line: 168, type: !119, scopeLine: 168, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!235 = !{!236, !237}
!236 = !DILocalVariable(name: "offset", scope: !234, file: !3, line: 169, type: !187)
!237 = !DILocalVariable(name: "t", scope: !234, file: !3, line: 170, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DILocation(line: 169, column: 23, scope: !234)
!242 = !DILocation(line: 0, scope: !234)
!243 = !DILocation(line: 170, column: 5, scope: !234)
!244 = !DILocation(line: 170, column: 19, scope: !234)
!245 = !DILocation(line: 171, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !3, line: 171, column: 9)
!247 = !DILocation(line: 171, column: 9, scope: !234)
!248 = !DILocation(line: 174, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 174, column: 9)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 173, column: 12)
!251 = !DILocation(line: 178, column: 5, scope: !234)
!252 = !DILocation(line: 179, column: 1, scope: !234)
!253 = distinct !DISubprogram(name: "loadLength", scope: !3, file: !3, line: 181, type: !254, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!254 = !DISubroutineType(types: !255)
!255 = !{!187, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!257 = !{!258, !259, !263, !264}
!258 = !DILocalVariable(name: "isencoded", arg: 1, scope: !253, file: !3, line: 181, type: !256)
!259 = !DILocalVariable(name: "buf", scope: !253, file: !3, line: 182, type: !260)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 16, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 2)
!263 = !DILocalVariable(name: "len", scope: !253, file: !3, line: 183, type: !187)
!264 = !DILocalVariable(name: "type", scope: !253, file: !3, line: 184, type: !9)
!265 = !DILocation(line: 0, scope: !253)
!266 = !DILocation(line: 182, column: 5, scope: !253)
!267 = !DILocation(line: 182, column: 19, scope: !253)
!268 = !DILocation(line: 183, column: 5, scope: !253)
!269 = !DILocation(line: 186, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !253, file: !3, line: 186, column: 9)
!271 = !DILocation(line: 186, column: 9, scope: !253)
!272 = !DILocation(line: 186, column: 31, scope: !270)
!273 = !{!207, !207, i64 0}
!274 = !DILocation(line: 186, column: 20, scope: !270)
!275 = !DILocation(line: 187, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !253, file: !3, line: 187, column: 9)
!277 = !DILocation(line: 187, column: 9, scope: !253)
!278 = !DILocation(line: 188, column: 13, scope: !253)
!279 = !DILocation(line: 189, column: 14, scope: !280)
!280 = distinct !DILexicalBlock(scope: !253, file: !3, line: 189, column: 9)
!281 = !DILocation(line: 189, column: 9, scope: !253)
!282 = !DILocation(line: 191, column: 23, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 189, column: 36)
!284 = !DILocation(line: 191, column: 9, scope: !283)
!285 = !DILocation(line: 188, column: 28, scope: !253)
!286 = !DILocation(line: 192, column: 16, scope: !280)
!287 = !DILocation(line: 194, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 192, column: 42)
!289 = distinct !DILexicalBlock(scope: !280, file: !3, line: 192, column: 16)
!290 = !DILocation(line: 194, column: 35, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 194, column: 13)
!292 = !DILocation(line: 194, column: 24, scope: !291)
!293 = !DILocation(line: 195, column: 23, scope: !288)
!294 = !DILocation(line: 195, column: 9, scope: !288)
!295 = !DILocation(line: 198, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 198, column: 13)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 196, column: 44)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 196, column: 16)
!299 = !DILocation(line: 198, column: 14, scope: !296)
!300 = !DILocation(line: 198, column: 13, scope: !297)
!301 = !DILocation(line: 199, column: 18, scope: !297)
!302 = !DILocation(line: 199, column: 25, scope: !297)
!303 = !DILocation(line: 199, column: 33, scope: !297)
!304 = !DILocation(line: 199, column: 41, scope: !297)
!305 = !DILocation(line: 199, column: 39, scope: !297)
!306 = !DILocation(line: 199, column: 9, scope: !297)
!307 = !DILocation(line: 202, column: 14, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 202, column: 13)
!309 = distinct !DILexicalBlock(scope: !298, file: !3, line: 200, column: 12)
!310 = !DILocation(line: 202, column: 13, scope: !309)
!311 = !DILocation(line: 203, column: 30, scope: !309)
!312 = !DILocation(line: 203, column: 9, scope: !309)
!313 = !DILocation(line: 205, column: 1, scope: !253)
!314 = distinct !DISubprogram(name: "__bswap_32", scope: !315, file: !315, line: 49, type: !316, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "", checksumkind: CSK_MD5, checksum: "552c402ec2d372531713984b317e0c35")
!316 = !DISubroutineType(types: !317)
!317 = !{!189, !189}
!318 = !{!319}
!319 = !DILocalVariable(name: "__bsx", arg: 1, scope: !314, file: !315, line: 49, type: !189)
!320 = !DILocation(line: 0, scope: !314)
!321 = !DILocation(line: 54, column: 10, scope: !314)
!322 = !DILocation(line: 54, column: 3, scope: !314)
!323 = distinct !DISubprogram(name: "loadIntegerObject", scope: !3, file: !3, line: 207, type: !324, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!173, !9}
!326 = !{!327, !328, !329, !330, !332, !337, !343, !346}
!327 = !DILocalVariable(name: "enctype", arg: 1, scope: !323, file: !3, line: 207, type: !9)
!328 = !DILocalVariable(name: "offset", scope: !323, file: !3, line: 208, type: !187)
!329 = !DILocalVariable(name: "enc", scope: !323, file: !3, line: 209, type: !238)
!330 = !DILocalVariable(name: "val", scope: !323, file: !3, line: 210, type: !331)
!331 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!332 = !DILocalVariable(name: "v", scope: !333, file: !3, line: 213, type: !335)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 212, column: 40)
!334 = distinct !DILexicalBlock(scope: !323, file: !3, line: 212, column: 9)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !188, line: 24, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 38, baseType: !54)
!337 = !DILocalVariable(name: "v", scope: !338, file: !3, line: 218, type: !340)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 217, column: 48)
!339 = distinct !DILexicalBlock(scope: !334, file: !3, line: 217, column: 16)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !188, line: 25, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 40, baseType: !342)
!342 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!343 = !DILocalVariable(name: "v", scope: !344, file: !3, line: 223, type: !187)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 222, column: 48)
!345 = distinct !DILexicalBlock(scope: !339, file: !3, line: 222, column: 16)
!346 = !DILocalVariable(name: "buf", scope: !323, file: !3, line: 233, type: !173)
!347 = !DILocation(line: 0, scope: !323)
!348 = !DILocation(line: 208, column: 23, scope: !323)
!349 = !DILocation(line: 209, column: 5, scope: !323)
!350 = !DILocation(line: 209, column: 19, scope: !323)
!351 = !DILocation(line: 212, column: 9, scope: !323)
!352 = !DILocation(line: 214, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !333, file: !3, line: 214, column: 13)
!354 = !DILocation(line: 214, column: 13, scope: !333)
!355 = !DILocation(line: 219, column: 14, scope: !356)
!356 = distinct !DILexicalBlock(scope: !338, file: !3, line: 219, column: 13)
!357 = !DILocation(line: 219, column: 13, scope: !338)
!358 = !DILocation(line: 220, column: 13, scope: !338)
!359 = !DILocation(line: 220, column: 21, scope: !338)
!360 = !DILocation(line: 220, column: 27, scope: !338)
!361 = !DILocation(line: 220, column: 19, scope: !338)
!362 = !DILocation(line: 0, scope: !338)
!363 = !DILocation(line: 221, column: 15, scope: !338)
!364 = !DILocation(line: 224, column: 14, scope: !365)
!365 = distinct !DILexicalBlock(scope: !344, file: !3, line: 224, column: 13)
!366 = !DILocation(line: 224, column: 13, scope: !344)
!367 = !DILocation(line: 225, column: 13, scope: !344)
!368 = !DILocation(line: 225, column: 21, scope: !344)
!369 = !DILocation(line: 225, column: 27, scope: !344)
!370 = !DILocation(line: 225, column: 19, scope: !344)
!371 = !DILocation(line: 225, column: 33, scope: !344)
!372 = !DILocation(line: 225, column: 39, scope: !344)
!373 = !DILocation(line: 225, column: 31, scope: !344)
!374 = !DILocation(line: 225, column: 46, scope: !344)
!375 = !DILocation(line: 225, column: 52, scope: !344)
!376 = !DILocation(line: 225, column: 44, scope: !344)
!377 = !DILocation(line: 0, scope: !344)
!378 = !DILocation(line: 226, column: 15, scope: !344)
!379 = !DILocation(line: 228, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 228, column: 9)
!381 = distinct !DILexicalBlock(scope: !345, file: !3, line: 227, column: 12)
!382 = !DILocation(line: 229, column: 9, scope: !381)
!383 = !DILocation(line: 0, scope: !334)
!384 = !DILocation(line: 234, column: 11, scope: !323)
!385 = !DILocation(line: 235, column: 5, scope: !323)
!386 = !DILocation(line: 237, column: 1, scope: !323)
!387 = !DISubprogram(name: "malloc", scope: !162, file: !162, line: 539, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!388 = !DISubroutineType(types: !389)
!389 = !{!5, !6}
!390 = distinct !DISubprogram(name: "loadLzfStringObject", scope: !3, file: !3, line: 239, type: !391, scopeLine: 239, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!173}
!393 = !{!394, !395, !396, !397}
!394 = !DILocalVariable(name: "slen", scope: !390, file: !3, line: 240, type: !10)
!395 = !DILocalVariable(name: "clen", scope: !390, file: !3, line: 240, type: !10)
!396 = !DILocalVariable(name: "c", scope: !390, file: !3, line: 241, type: !173)
!397 = !DILocalVariable(name: "s", scope: !390, file: !3, line: 241, type: !173)
!398 = !DILocation(line: 243, column: 17, scope: !399)
!399 = distinct !DILexicalBlock(scope: !390, file: !3, line: 243, column: 9)
!400 = !DILocation(line: 0, scope: !390)
!401 = !DILocation(line: 243, column: 35, scope: !399)
!402 = !DILocation(line: 243, column: 9, scope: !390)
!403 = !DILocation(line: 244, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !390, file: !3, line: 244, column: 9)
!405 = !DILocation(line: 244, column: 35, scope: !404)
!406 = !DILocation(line: 244, column: 9, scope: !390)
!407 = !DILocation(line: 246, column: 16, scope: !390)
!408 = !DILocation(line: 246, column: 9, scope: !390)
!409 = !DILocation(line: 247, column: 10, scope: !410)
!410 = distinct !DILexicalBlock(scope: !390, file: !3, line: 247, column: 9)
!411 = !DILocation(line: 247, column: 9, scope: !390)
!412 = !DILocation(line: 252, column: 20, scope: !390)
!413 = !DILocation(line: 252, column: 16, scope: !390)
!414 = !DILocation(line: 252, column: 9, scope: !390)
!415 = !DILocation(line: 253, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !390, file: !3, line: 253, column: 9)
!417 = !DILocation(line: 253, column: 39, scope: !416)
!418 = !DILocation(line: 253, column: 9, scope: !390)
!419 = !DILocation(line: 260, column: 1, scope: !390)
!420 = !DISubprogram(name: "free", scope: !162, file: !162, line: 565, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !5}
!423 = !DISubprogram(name: "lzf_decompress", scope: !424, file: !424, line: 96, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!424 = !DIFile(filename: "./lzf.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "de5d5515a292d52007c7ca62ff7a90e0")
!425 = !DISubroutineType(types: !426)
!426 = !{!10, !427, !10, !5, !10}
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!428 = distinct !DISubprogram(name: "loadStringObject", scope: !3, file: !3, line: 263, type: !391, scopeLine: 263, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!429 = !{!430, !431, !432, !433}
!430 = !DILocalVariable(name: "offset", scope: !428, file: !3, line: 264, type: !187)
!431 = !DILocalVariable(name: "isencoded", scope: !428, file: !3, line: 265, type: !9)
!432 = !DILocalVariable(name: "len", scope: !428, file: !3, line: 266, type: !187)
!433 = !DILocalVariable(name: "buf", scope: !428, file: !3, line: 286, type: !173)
!434 = !DILocation(line: 264, column: 23, scope: !428)
!435 = !DILocation(line: 0, scope: !428)
!436 = !DILocation(line: 265, column: 5, scope: !428)
!437 = !DILocation(line: 268, column: 11, scope: !428)
!438 = !DILocation(line: 269, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !428, file: !3, line: 269, column: 9)
!440 = !DILocation(line: 269, column: 9, scope: !428)
!441 = !DILocation(line: 270, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 269, column: 20)
!443 = !DILocation(line: 274, column: 20, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !3, line: 270, column: 21)
!445 = !DILocation(line: 274, column: 13, scope: !444)
!446 = !DILocation(line: 276, column: 20, scope: !444)
!447 = !DILocation(line: 276, column: 13, scope: !444)
!448 = !DILocation(line: 279, column: 13, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 279, column: 13)
!450 = !DILocation(line: 280, column: 13, scope: !444)
!451 = !DILocation(line: 284, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !428, file: !3, line: 284, column: 9)
!453 = !DILocation(line: 284, column: 9, scope: !428)
!454 = !DILocation(line: 286, column: 43, scope: !428)
!455 = !DILocation(line: 286, column: 39, scope: !428)
!456 = !DILocation(line: 286, column: 17, scope: !428)
!457 = !DILocation(line: 287, column: 5, scope: !428)
!458 = !DILocation(line: 287, column: 14, scope: !428)
!459 = !DILocation(line: 288, column: 10, scope: !460)
!460 = distinct !DILexicalBlock(scope: !428, file: !3, line: 288, column: 9)
!461 = !DILocation(line: 288, column: 9, scope: !428)
!462 = !DILocation(line: 289, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 288, column: 31)
!464 = !DILocation(line: 290, column: 9, scope: !463)
!465 = !DILocation(line: 293, column: 1, scope: !428)
!466 = distinct !DISubprogram(name: "processStringObject", scope: !3, file: !3, line: 295, type: !467, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!9, !172}
!469 = !{!470, !471, !472}
!470 = !DILocalVariable(name: "store", arg: 1, scope: !466, file: !3, line: 295, type: !172)
!471 = !DILocalVariable(name: "offset", scope: !466, file: !3, line: 296, type: !8)
!472 = !DILocalVariable(name: "key", scope: !466, file: !3, line: 297, type: !173)
!473 = !DILocation(line: 0, scope: !466)
!474 = !DILocation(line: 296, column: 28, scope: !466)
!475 = !DILocation(line: 297, column: 17, scope: !466)
!476 = !DILocation(line: 298, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !466, file: !3, line: 298, column: 9)
!478 = !DILocation(line: 298, column: 9, scope: !466)
!479 = !DILocation(line: 299, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 299, column: 9)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 298, column: 22)
!482 = !DILocation(line: 300, column: 9, scope: !481)
!483 = !DILocation(line: 301, column: 9, scope: !481)
!484 = !DILocation(line: 304, column: 15, scope: !485)
!485 = distinct !DILexicalBlock(scope: !466, file: !3, line: 304, column: 9)
!486 = !DILocation(line: 304, column: 9, scope: !466)
!487 = !DILocation(line: 305, column: 16, scope: !488)
!488 = distinct !DILexicalBlock(scope: !485, file: !3, line: 304, column: 24)
!489 = !DILocation(line: 306, column: 5, scope: !488)
!490 = !DILocation(line: 307, column: 9, scope: !491)
!491 = distinct !DILexicalBlock(scope: !485, file: !3, line: 306, column: 12)
!492 = !DILocation(line: 310, column: 1, scope: !466)
!493 = distinct !DISubprogram(name: "loadDoubleValue", scope: !3, file: !3, line: 312, type: !494, scopeLine: 312, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!494 = !DISubroutineType(types: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!497 = !{!498, !501, !502}
!498 = !DILocalVariable(name: "buf", scope: !493, file: !3, line: 313, type: !499)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !500)
!500 = !{!51}
!501 = !DILocalVariable(name: "len", scope: !493, file: !3, line: 314, type: !54)
!502 = !DILocalVariable(name: "val", scope: !493, file: !3, line: 315, type: !496)
!503 = !DILocation(line: 313, column: 5, scope: !493)
!504 = !DILocation(line: 313, column: 10, scope: !493)
!505 = !DILocation(line: 314, column: 5, scope: !493)
!506 = !DILocation(line: 0, scope: !493)
!507 = !DILocation(line: 317, column: 10, scope: !508)
!508 = distinct !DILexicalBlock(scope: !493, file: !3, line: 317, column: 9)
!509 = !DILocation(line: 317, column: 9, scope: !493)
!510 = !DILocation(line: 319, column: 11, scope: !493)
!511 = !DILocation(line: 320, column: 12, scope: !493)
!512 = !DILocation(line: 320, column: 5, scope: !493)
!513 = !DILocation(line: 321, column: 22, scope: !514)
!514 = distinct !DILexicalBlock(scope: !493, file: !3, line: 320, column: 17)
!515 = !{!516, !516, i64 0}
!516 = !{!"double", !84, i64 0}
!517 = !DILocation(line: 321, column: 20, scope: !514)
!518 = !DILocation(line: 321, column: 33, scope: !514)
!519 = !DILocation(line: 322, column: 22, scope: !514)
!520 = !DILocation(line: 322, column: 20, scope: !514)
!521 = !DILocation(line: 322, column: 33, scope: !514)
!522 = !DILocation(line: 323, column: 22, scope: !514)
!523 = !DILocation(line: 323, column: 20, scope: !514)
!524 = !DILocation(line: 323, column: 33, scope: !514)
!525 = !DILocation(line: 325, column: 29, scope: !526)
!526 = distinct !DILexicalBlock(scope: !514, file: !3, line: 325, column: 13)
!527 = !DILocation(line: 325, column: 14, scope: !526)
!528 = !DILocation(line: 325, column: 13, scope: !514)
!529 = !DILocation(line: 326, column: 13, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !3, line: 325, column: 35)
!531 = !DILocation(line: 327, column: 13, scope: !530)
!532 = !DILocation(line: 329, column: 13, scope: !514)
!533 = !DILocation(line: 329, column: 9, scope: !514)
!534 = !DILocation(line: 329, column: 18, scope: !514)
!535 = !DILocation(line: 330, column: 9, scope: !514)
!536 = !DILocation(line: 331, column: 9, scope: !514)
!537 = !DILocation(line: 333, column: 1, scope: !493)
!538 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !155, file: !155, line: 412, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!539 = !DISubroutineType(types: !540)
!540 = !{!9, !158, !158, null}
!541 = distinct !DISubprogram(name: "processDoubleValue", scope: !3, file: !3, line: 335, type: !542, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!542 = !DISubroutineType(types: !543)
!543 = !{!9, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!545 = !{!546, !547, !548}
!546 = !DILocalVariable(name: "store", arg: 1, scope: !541, file: !3, line: 335, type: !544)
!547 = !DILocalVariable(name: "offset", scope: !541, file: !3, line: 336, type: !8)
!548 = !DILocalVariable(name: "val", scope: !541, file: !3, line: 337, type: !496)
!549 = !DILocation(line: 0, scope: !541)
!550 = !DILocation(line: 336, column: 28, scope: !541)
!551 = !DILocation(line: 337, column: 19, scope: !541)
!552 = !DILocation(line: 338, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !541, file: !3, line: 338, column: 9)
!554 = !DILocation(line: 338, column: 9, scope: !541)
!555 = !DILocation(line: 339, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 339, column: 9)
!557 = distinct !DILexicalBlock(scope: !553, file: !3, line: 338, column: 22)
!558 = !DILocation(line: 340, column: 9, scope: !557)
!559 = !DILocation(line: 341, column: 9, scope: !557)
!560 = !DILocation(line: 344, column: 15, scope: !561)
!561 = distinct !DILexicalBlock(scope: !541, file: !3, line: 344, column: 9)
!562 = !DILocation(line: 344, column: 9, scope: !541)
!563 = !DILocation(line: 345, column: 16, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 344, column: 24)
!565 = !DILocation(line: 346, column: 5, scope: !564)
!566 = !DILocation(line: 347, column: 14, scope: !567)
!567 = distinct !DILexicalBlock(scope: !561, file: !3, line: 346, column: 12)
!568 = !DILocation(line: 347, column: 9, scope: !567)
!569 = !DILocation(line: 350, column: 1, scope: !541)
!570 = distinct !DISubprogram(name: "loadPair", scope: !3, file: !3, line: 352, type: !175, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !576}
!572 = !DILocalVariable(name: "e", arg: 1, scope: !570, file: !3, line: 352, type: !177)
!573 = !DILocalVariable(name: "offset", scope: !570, file: !3, line: 353, type: !187)
!574 = !DILocalVariable(name: "i", scope: !570, file: !3, line: 354, type: !187)
!575 = !DILocalVariable(name: "key", scope: !570, file: !3, line: 357, type: !173)
!576 = !DILocalVariable(name: "length", scope: !570, file: !3, line: 365, type: !187)
!577 = !DILocation(line: 0, scope: !570)
!578 = !DILocation(line: 353, column: 23, scope: !570)
!579 = !DILocation(line: 357, column: 5, scope: !570)
!580 = !DILocation(line: 358, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !570, file: !3, line: 358, column: 9)
!582 = !DILocation(line: 358, column: 9, scope: !570)
!583 = !DILocation(line: 359, column: 18, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 358, column: 36)
!585 = !DILocation(line: 359, column: 12, scope: !584)
!586 = !DILocation(line: 359, column: 16, scope: !584)
!587 = !{!206, !93, i64 0}
!588 = !DILocation(line: 366, column: 12, scope: !589)
!589 = distinct !DILexicalBlock(scope: !570, file: !3, line: 366, column: 9)
!590 = !DILocation(line: 366, column: 31, scope: !589)
!591 = !DILocation(line: 361, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 361, column: 9)
!593 = distinct !DILexicalBlock(scope: !581, file: !3, line: 360, column: 12)
!594 = !DILocation(line: 362, column: 9, scope: !593)
!595 = !DILocation(line: 370, column: 23, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 370, column: 13)
!597 = distinct !DILexicalBlock(scope: !589, file: !3, line: 369, column: 32)
!598 = !DILocation(line: 370, column: 41, scope: !596)
!599 = !DILocation(line: 370, column: 13, scope: !597)
!600 = !DILocation(line: 371, column: 13, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 371, column: 13)
!602 = distinct !DILexicalBlock(scope: !596, file: !3, line: 370, column: 62)
!603 = !DILocation(line: 372, column: 13, scope: !602)
!604 = !DILocation(line: 376, column: 15, scope: !570)
!605 = !DILocation(line: 376, column: 5, scope: !570)
!606 = !DILocation(line: 408, column: 23, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 408, column: 9)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 408, column: 9)
!609 = distinct !DILexicalBlock(scope: !570, file: !3, line: 376, column: 21)
!610 = !DILocation(line: 408, column: 9, scope: !608)
!611 = !DILocation(line: 394, column: 23, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 394, column: 9)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 394, column: 9)
!614 = !DILocation(line: 394, column: 9, scope: !613)
!615 = !DILocation(line: 378, column: 14, scope: !616)
!616 = distinct !DILexicalBlock(scope: !609, file: !3, line: 378, column: 13)
!617 = !DILocation(line: 378, column: 13, scope: !609)
!618 = !DILocation(line: 379, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 379, column: 13)
!620 = distinct !DILexicalBlock(scope: !616, file: !3, line: 378, column: 41)
!621 = !DILocation(line: 380, column: 13, scope: !620)
!622 = !DILocation(line: 385, column: 23, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 385, column: 9)
!624 = distinct !DILexicalBlock(scope: !609, file: !3, line: 385, column: 9)
!625 = !DILocation(line: 385, column: 9, scope: !624)
!626 = !DILocation(line: 386, column: 22, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !3, line: 385, column: 38)
!628 = !DILocation(line: 387, column: 18, scope: !629)
!629 = distinct !DILexicalBlock(scope: !627, file: !3, line: 387, column: 17)
!630 = !DILocation(line: 387, column: 17, scope: !627)
!631 = !DILocation(line: 388, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 388, column: 17)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 387, column: 45)
!634 = !DILocation(line: 389, column: 17, scope: !633)
!635 = !DILocation(line: 385, column: 34, scope: !623)
!636 = distinct !{!636, !625, !637}
!637 = !DILocation(line: 391, column: 9, scope: !624)
!638 = !DILocation(line: 395, column: 22, scope: !639)
!639 = distinct !DILexicalBlock(scope: !612, file: !3, line: 394, column: 38)
!640 = !DILocation(line: 396, column: 18, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !3, line: 396, column: 17)
!642 = !DILocation(line: 396, column: 17, scope: !639)
!643 = !DILocation(line: 397, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 397, column: 17)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 396, column: 45)
!646 = !DILocation(line: 398, column: 17, scope: !645)
!647 = !DILocation(line: 400, column: 22, scope: !639)
!648 = !DILocation(line: 401, column: 18, scope: !649)
!649 = distinct !DILexicalBlock(scope: !639, file: !3, line: 401, column: 17)
!650 = !DILocation(line: 401, column: 17, scope: !639)
!651 = !DILocation(line: 402, column: 17, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 402, column: 17)
!653 = distinct !DILexicalBlock(scope: !649, file: !3, line: 401, column: 44)
!654 = !DILocation(line: 403, column: 17, scope: !653)
!655 = !DILocation(line: 394, column: 34, scope: !612)
!656 = distinct !{!656, !614, !657}
!657 = !DILocation(line: 405, column: 9, scope: !613)
!658 = !DILocation(line: 409, column: 22, scope: !659)
!659 = distinct !DILexicalBlock(scope: !607, file: !3, line: 408, column: 38)
!660 = !DILocation(line: 410, column: 18, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !3, line: 410, column: 17)
!662 = !DILocation(line: 410, column: 17, scope: !659)
!663 = !DILocation(line: 411, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 411, column: 17)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 410, column: 45)
!666 = !DILocation(line: 412, column: 17, scope: !665)
!667 = !DILocation(line: 414, column: 22, scope: !659)
!668 = !DILocation(line: 415, column: 18, scope: !669)
!669 = distinct !DILexicalBlock(scope: !659, file: !3, line: 415, column: 17)
!670 = !DILocation(line: 415, column: 17, scope: !659)
!671 = !DILocation(line: 416, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 416, column: 17)
!673 = distinct !DILexicalBlock(scope: !669, file: !3, line: 415, column: 45)
!674 = !DILocation(line: 417, column: 17, scope: !673)
!675 = !DILocation(line: 408, column: 34, scope: !607)
!676 = distinct !{!676, !610, !677}
!677 = !DILocation(line: 419, column: 9, scope: !608)
!678 = !DILocation(line: 422, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !609, file: !3, line: 422, column: 9)
!680 = !DILocation(line: 423, column: 9, scope: !609)
!681 = !DILocation(line: 426, column: 8, scope: !570)
!682 = !DILocation(line: 426, column: 16, scope: !570)
!683 = !{!206, !84, i64 12}
!684 = !DILocation(line: 427, column: 5, scope: !570)
!685 = !DILocation(line: 428, column: 1, scope: !570)
!686 = distinct !DISubprogram(name: "loadEntry", scope: !3, file: !3, line: 430, type: !687, scopeLine: 430, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!178}
!689 = !{!690, !691, !692}
!690 = !DILocalVariable(name: "e", scope: !686, file: !3, line: 431, type: !178)
!691 = !DILocalVariable(name: "length", scope: !686, file: !3, line: 432, type: !187)
!692 = !DILocalVariable(name: "offset", scope: !686, file: !3, line: 432, type: !693)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !239)
!694 = !DILocation(line: 432, column: 22, scope: !686)
!695 = !DILocation(line: 431, column: 11, scope: !686)
!696 = !DILocation(line: 435, column: 18, scope: !686)
!697 = !DILocation(line: 437, column: 17, scope: !686)
!698 = !DILocation(line: 0, scope: !686)
!699 = !DILocation(line: 438, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !686, file: !3, line: 438, column: 9)
!701 = !DILocation(line: 438, column: 9, scope: !686)
!702 = !DILocation(line: 442, column: 17, scope: !686)
!703 = !DILocation(line: 443, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !686, file: !3, line: 443, column: 9)
!705 = !DILocation(line: 443, column: 9, scope: !686)
!706 = !DILocation(line: 444, column: 23, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 444, column: 13)
!708 = distinct !DILexicalBlock(scope: !704, file: !3, line: 443, column: 35)
!709 = !DILocation(line: 444, column: 41, scope: !707)
!710 = !DILocation(line: 444, column: 13, scope: !708)
!711 = !DILocation(line: 445, column: 13, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 445, column: 13)
!713 = distinct !DILexicalBlock(scope: !707, file: !3, line: 444, column: 62)
!714 = !DILocation(line: 446, column: 13, scope: !713)
!715 = !DILocation(line: 448, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !708, file: !3, line: 448, column: 13)
!717 = !DILocation(line: 448, column: 13, scope: !708)
!718 = !DILocation(line: 449, column: 13, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 449, column: 13)
!720 = distinct !DILexicalBlock(scope: !716, file: !3, line: 448, column: 26)
!721 = !DILocation(line: 450, column: 13, scope: !720)
!722 = !DILocation(line: 453, column: 56, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 453, column: 13)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 452, column: 37)
!725 = distinct !DILexicalBlock(scope: !704, file: !3, line: 452, column: 16)
!726 = !{!107, !83, i64 8}
!727 = !DILocation(line: 453, column: 37, scope: !723)
!728 = !DILocation(line: 453, column: 13, scope: !724)
!729 = !DILocation(line: 454, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 454, column: 13)
!731 = distinct !DILexicalBlock(scope: !723, file: !3, line: 453, column: 62)
!732 = !DILocation(line: 455, column: 9, scope: !731)
!733 = !DILocation(line: 456, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !3, line: 455, column: 16)
!735 = !DILocation(line: 456, column: 23, scope: !734)
!736 = !DILocation(line: 462, column: 18, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 462, column: 17)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 461, column: 41)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 461, column: 13)
!740 = distinct !DILexicalBlock(scope: !725, file: !3, line: 459, column: 12)
!741 = !DILocation(line: 462, column: 17, scope: !738)
!742 = !DILocation(line: 463, column: 18, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 463, column: 17)
!744 = !DILocation(line: 463, column: 17, scope: !738)
!745 = !DILocation(line: 466, column: 21, scope: !740)
!746 = !DILocation(line: 467, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !740, file: !3, line: 467, column: 13)
!748 = !DILocation(line: 467, column: 13, scope: !740)
!749 = !DILocation(line: 468, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 468, column: 13)
!751 = distinct !DILexicalBlock(scope: !747, file: !3, line: 467, column: 28)
!752 = !DILocation(line: 469, column: 13, scope: !751)
!753 = !DILocation(line: 475, column: 17, scope: !686)
!754 = !DILocation(line: 476, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !686, file: !3, line: 476, column: 9)
!756 = !DILocation(line: 476, column: 20, scope: !755)
!757 = !DILocation(line: 476, column: 9, scope: !686)
!758 = !DILocation(line: 477, column: 9, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 477, column: 9)
!760 = distinct !DILexicalBlock(scope: !755, file: !3, line: 476, column: 27)
!761 = !DILocation(line: 478, column: 9, scope: !762)
!762 = distinct !DILexicalBlock(scope: !760, file: !3, line: 478, column: 9)
!763 = !DILocation(line: 479, column: 11, scope: !760)
!764 = !DILocation(line: 479, column: 19, scope: !760)
!765 = !DILocation(line: 480, column: 5, scope: !760)
!766 = !DILocation(line: 481, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !755, file: !3, line: 480, column: 12)
!768 = !DILocation(line: 481, column: 19, scope: !767)
!769 = !DILocation(line: 485, column: 1, scope: !686)
!770 = distinct !DISubprogram(name: "printCentered", scope: !3, file: !3, line: 487, type: !771, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !9, !9, !173}
!773 = !{!774, !775, !776, !777, !778}
!774 = !DILocalVariable(name: "indent", arg: 1, scope: !770, file: !3, line: 487, type: !9)
!775 = !DILocalVariable(name: "width", arg: 2, scope: !770, file: !3, line: 487, type: !9)
!776 = !DILocalVariable(name: "body", arg: 3, scope: !770, file: !3, line: 487, type: !173)
!777 = !DILocalVariable(name: "head", scope: !770, file: !3, line: 488, type: !499)
!778 = !DILocalVariable(name: "tail", scope: !770, file: !3, line: 488, type: !499)
!779 = !DILocation(line: 0, scope: !770)
!780 = !DILocation(line: 488, column: 5, scope: !770)
!781 = !DILocation(line: 488, column: 10, scope: !770)
!782 = !DILocation(line: 488, column: 21, scope: !770)
!783 = !DILocation(line: 489, column: 5, scope: !770)
!784 = !DILocation(line: 490, column: 5, scope: !770)
!785 = !DILocation(line: 492, column: 23, scope: !770)
!786 = !DILocation(line: 492, column: 5, scope: !770)
!787 = !DILocation(line: 493, column: 29, scope: !770)
!788 = !DILocation(line: 493, column: 33, scope: !770)
!789 = !DILocation(line: 493, column: 23, scope: !770)
!790 = !DILocation(line: 493, column: 44, scope: !770)
!791 = !DILocation(line: 493, column: 42, scope: !770)
!792 = !DILocation(line: 493, column: 5, scope: !770)
!793 = !DILocation(line: 494, column: 5, scope: !770)
!794 = !DILocation(line: 495, column: 1, scope: !770)
!795 = !DISubprogram(name: "memset", scope: !110, file: !110, line: 61, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!796 = !DISubroutineType(types: !797)
!797 = !{!5, !5, !9, !6}
!798 = !DISubprogram(name: "strlen", scope: !110, file: !110, line: 385, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!799 = !DISubroutineType(types: !800)
!800 = !{!6, !159}
!801 = distinct !DISubprogram(name: "printValid", scope: !3, file: !3, line: 497, type: !802, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !806)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !804, !804}
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !188, line: 27, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 45, baseType: !8)
!806 = !{!807, !808, !809}
!807 = !DILocalVariable(name: "ops", arg: 1, scope: !801, file: !3, line: 497, type: !804)
!808 = !DILocalVariable(name: "bytes", arg: 2, scope: !801, file: !3, line: 497, type: !804)
!809 = !DILocalVariable(name: "body", scope: !801, file: !3, line: 498, type: !810)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 80)
!813 = !DILocation(line: 0, scope: !801)
!814 = !DILocation(line: 498, column: 5, scope: !801)
!815 = !DILocation(line: 498, column: 10, scope: !801)
!816 = !DILocation(line: 499, column: 5, scope: !801)
!817 = !DILocation(line: 501, column: 5, scope: !801)
!818 = !DILocation(line: 502, column: 1, scope: !801)
!819 = distinct !DISubprogram(name: "printSkipped", scope: !3, file: !3, line: 504, type: !802, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!820 = !{!821, !822, !823}
!821 = !DILocalVariable(name: "bytes", arg: 1, scope: !819, file: !3, line: 504, type: !804)
!822 = !DILocalVariable(name: "offset", arg: 2, scope: !819, file: !3, line: 504, type: !804)
!823 = !DILocalVariable(name: "body", scope: !819, file: !3, line: 505, type: !810)
!824 = !DILocation(line: 0, scope: !819)
!825 = !DILocation(line: 505, column: 5, scope: !819)
!826 = !DILocation(line: 505, column: 10, scope: !819)
!827 = !DILocation(line: 506, column: 5, scope: !819)
!828 = !DILocation(line: 508, column: 5, scope: !819)
!829 = !DILocation(line: 509, column: 1, scope: !819)
!830 = distinct !DISubprogram(name: "printErrorStack", scope: !3, file: !3, line: 511, type: !831, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !177}
!833 = !{!834, !835, !836, !840}
!834 = !DILocalVariable(name: "e", arg: 1, scope: !830, file: !3, line: 511, type: !177)
!835 = !DILocalVariable(name: "i", scope: !830, file: !3, line: 512, type: !10)
!836 = !DILocalVariable(name: "body", scope: !830, file: !3, line: 513, type: !837)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 512, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 64)
!840 = !DILocalVariable(name: "tmp", scope: !841, file: !3, line: 522, type: !845)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 521, column: 12)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 519, column: 16)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 517, column: 16)
!844 = distinct !DILexicalBlock(scope: !830, file: !3, line: 515, column: 9)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 328, elements: !846)
!846 = !{!847}
!847 = !DISubrange(count: 41)
!848 = !DILocation(line: 0, scope: !830)
!849 = !DILocation(line: 513, column: 5, scope: !830)
!850 = !DILocation(line: 513, column: 10, scope: !830)
!851 = !DILocation(line: 515, column: 12, scope: !844)
!852 = !DILocation(line: 515, column: 17, scope: !844)
!853 = !DILocation(line: 515, column: 9, scope: !830)
!854 = !DILocation(line: 516, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !844, file: !3, line: 515, column: 24)
!856 = !DILocation(line: 517, column: 5, scope: !855)
!857 = !DILocation(line: 517, column: 24, scope: !843)
!858 = !DILocation(line: 517, column: 16, scope: !844)
!859 = !DILocation(line: 518, column: 43, scope: !860)
!860 = distinct !DILexicalBlock(scope: !843, file: !3, line: 517, column: 32)
!861 = !DILocation(line: 518, column: 9, scope: !860)
!862 = !DILocation(line: 519, column: 5, scope: !860)
!863 = !DILocation(line: 519, column: 20, scope: !842)
!864 = !DILocation(line: 519, column: 17, scope: !842)
!865 = !DILocation(line: 519, column: 16, scope: !843)
!866 = !DILocation(line: 520, column: 54, scope: !867)
!867 = distinct !DILexicalBlock(scope: !842, file: !3, line: 519, column: 25)
!868 = !DILocation(line: 520, column: 9, scope: !867)
!869 = !DILocation(line: 521, column: 5, scope: !867)
!870 = !DILocation(line: 522, column: 9, scope: !841)
!871 = !DILocation(line: 522, column: 14, scope: !841)
!872 = !DILocation(line: 523, column: 9, scope: !841)
!873 = !DILocation(line: 526, column: 23, scope: !874)
!874 = distinct !DILexicalBlock(scope: !841, file: !3, line: 526, column: 13)
!875 = !DILocation(line: 526, column: 13, scope: !874)
!876 = !DILocation(line: 526, column: 28, scope: !874)
!877 = !DILocation(line: 526, column: 13, scope: !841)
!878 = !DILocation(line: 527, column: 21, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 526, column: 34)
!880 = !DILocation(line: 527, column: 13, scope: !879)
!881 = !DILocation(line: 528, column: 9, scope: !879)
!882 = !DILocation(line: 531, column: 25, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 531, column: 9)
!884 = distinct !DILexicalBlock(scope: !841, file: !3, line: 531, column: 9)
!885 = !DILocation(line: 531, column: 23, scope: !883)
!886 = !DILocation(line: 531, column: 9, scope: !884)
!887 = !DILocation(line: 532, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 532, column: 17)
!889 = distinct !DILexicalBlock(scope: !883, file: !3, line: 531, column: 43)
!890 = !DILocation(line: 532, column: 24, scope: !888)
!891 = !DILocation(line: 532, column: 17, scope: !889)
!892 = !DILocation(line: 532, column: 38, scope: !888)
!893 = !DILocation(line: 532, column: 31, scope: !888)
!894 = !DILocation(line: 531, column: 39, scope: !883)
!895 = !DILocation(line: 531, column: 21, scope: !883)
!896 = distinct !{!896, !886, !897}
!897 = !DILocation(line: 533, column: 9, scope: !884)
!898 = !DILocation(line: 534, column: 56, scope: !841)
!899 = !DILocation(line: 534, column: 47, scope: !841)
!900 = !DILocation(line: 534, column: 9, scope: !841)
!901 = !DILocation(line: 535, column: 5, scope: !842)
!902 = !DILocation(line: 537, column: 5, scope: !830)
!903 = !DILocation(line: 540, column: 28, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 540, column: 5)
!905 = distinct !DILexicalBlock(scope: !830, file: !3, line: 540, column: 5)
!906 = !DILocation(line: 540, column: 19, scope: !904)
!907 = !DILocation(line: 540, column: 5, scope: !905)
!908 = !DILocation(line: 541, column: 34, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 540, column: 40)
!910 = !DILocation(line: 541, column: 52, scope: !909)
!911 = !DILocation(line: 541, column: 9, scope: !909)
!912 = !DILocation(line: 540, column: 36, scope: !904)
!913 = !DILocation(line: 540, column: 17, scope: !904)
!914 = distinct !{!914, !907, !915}
!915 = !DILocation(line: 542, column: 5, scope: !905)
!916 = !DILocation(line: 543, column: 1, scope: !830)
!917 = !DISubprogram(name: "strncpy", scope: !110, file: !110, line: 125, type: !918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!918 = !DISubroutineType(types: !919)
!919 = !{!173, !224, !158, !6}
!920 = distinct !DISubprogram(name: "process", scope: !3, file: !3, line: 545, type: !921, scopeLine: 545, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null}
!923 = !{!924, !925, !926, !927, !928, !932}
!924 = !DILocalVariable(name: "num_errors", scope: !920, file: !3, line: 546, type: !804)
!925 = !DILocalVariable(name: "num_valid_ops", scope: !920, file: !3, line: 546, type: !804)
!926 = !DILocalVariable(name: "num_valid_bytes", scope: !920, file: !3, line: 546, type: !804)
!927 = !DILocalVariable(name: "entry", scope: !920, file: !3, line: 547, type: !178)
!928 = !DILocalVariable(name: "offset", scope: !929, file: !3, line: 563, type: !804)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 555, column: 29)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 555, column: 13)
!931 = distinct !DILexicalBlock(scope: !920, file: !3, line: 551, column: 52)
!932 = !DILocalVariable(name: "i", scope: !929, file: !3, line: 564, type: !9)
!933 = !DILocation(line: 0, scope: !920)
!934 = !DILocation(line: 547, column: 5, scope: !920)
!935 = !DILocation(line: 547, column: 11, scope: !920)
!936 = !DILocation(line: 548, column: 5, scope: !920)
!937 = !DILocation(line: 550, column: 11, scope: !920)
!938 = !DILocation(line: 551, column: 24, scope: !920)
!939 = !DILocation(line: 551, column: 46, scope: !920)
!940 = !DILocation(line: 551, column: 31, scope: !920)
!941 = !DILocation(line: 551, column: 5, scope: !920)
!942 = !DILocation(line: 597, column: 5, scope: !920)
!943 = !DILocation(line: 600, column: 9, scope: !920)
!944 = !DILocation(line: 552, column: 24, scope: !931)
!945 = !DILocation(line: 554, column: 17, scope: !931)
!946 = !{i64 0, i64 8, !92, i64 8, i64 4, !273, i64 12, i64 1, !200}
!947 = !{i64 0, i64 4, !273, i64 4, i64 1, !200}
!948 = !DILocation(line: 555, column: 14, scope: !930)
!949 = !DILocation(line: 555, column: 13, scope: !931)
!950 = !DILocation(line: 556, column: 13, scope: !929)
!951 = !DILocation(line: 557, column: 13, scope: !929)
!952 = !DILocation(line: 558, column: 23, scope: !929)
!953 = !DILocation(line: 563, column: 44, scope: !929)
!954 = !DILocation(line: 563, column: 51, scope: !929)
!955 = !DILocation(line: 0, scope: !929)
!956 = !DILocation(line: 566, column: 35, scope: !929)
!957 = !DILocation(line: 566, column: 13, scope: !929)
!958 = !DILocation(line: 571, column: 29, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 570, column: 41)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 570, column: 17)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 570, column: 17)
!962 = distinct !DILexicalBlock(scope: !929, file: !3, line: 566, column: 66)
!963 = !DILocation(line: 581, column: 17, scope: !929)
!964 = !DILocation(line: 567, column: 37, scope: !962)
!965 = !DILocation(line: 572, column: 26, scope: !966)
!966 = distinct !DILexicalBlock(scope: !959, file: !3, line: 572, column: 25)
!967 = !DILocation(line: 572, column: 25, scope: !959)
!968 = !DILocation(line: 575, column: 21, scope: !962)
!969 = distinct !{!969, !957, !970}
!970 = !DILocation(line: 578, column: 13, scope: !929)
!971 = !DILocation(line: 582, column: 52, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 581, column: 45)
!973 = distinct !DILexicalBlock(scope: !929, file: !3, line: 581, column: 17)
!974 = !DILocation(line: 582, column: 37, scope: !972)
!975 = !DILocation(line: 582, column: 17, scope: !972)
!976 = !DILocation(line: 583, column: 13, scope: !972)
!977 = !DILocation(line: 585, column: 33, scope: !929)
!978 = !DILocation(line: 586, column: 9, scope: !929)
!979 = !DILocation(line: 587, column: 26, scope: !980)
!980 = distinct !DILexicalBlock(scope: !930, file: !3, line: 586, column: 16)
!981 = !DILocation(line: 588, column: 45, scope: !980)
!982 = !DILocation(line: 588, column: 67, scope: !980)
!983 = !DILocation(line: 588, column: 52, scope: !980)
!984 = !DILocation(line: 588, column: 29, scope: !980)
!985 = !DILocation(line: 591, column: 28, scope: !980)
!986 = !DILocation(line: 0, scope: !930)
!987 = distinct !{!987, !941, !988}
!988 = !DILocation(line: 593, column: 5, scope: !920)
!989 = !DILocation(line: 600, column: 20, scope: !990)
!990 = distinct !DILexicalBlock(scope: !920, file: !3, line: 600, column: 9)
!991 = !DILocation(line: 600, column: 15, scope: !990)
!992 = !DILocation(line: 602, column: 22, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 600, column: 34)
!994 = !DILocation(line: 603, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !3, line: 603, column: 9)
!996 = !DILocation(line: 606, column: 20, scope: !993)
!997 = !DILocation(line: 607, column: 9, scope: !993)
!998 = !DILocation(line: 609, column: 19, scope: !993)
!999 = !DILocation(line: 610, column: 5, scope: !993)
!1000 = !DILocation(line: 613, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !920, file: !3, line: 613, column: 9)
!1002 = !DILocation(line: 613, column: 9, scope: !920)
!1003 = !DILocation(line: 614, column: 9, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 613, column: 21)
!1005 = !DILocation(line: 615, column: 9, scope: !1004)
!1006 = !DILocation(line: 617, column: 5, scope: !1004)
!1007 = !DILocation(line: 618, column: 1, scope: !920)
!1008 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 620, type: !1009, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1011)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!9, !9, !172}
!1011 = !{!1012, !1013, !1014, !1015, !1019, !1055}
!1012 = !DILocalVariable(name: "argc", arg: 1, scope: !1008, file: !3, line: 620, type: !9)
!1013 = !DILocalVariable(name: "argv", arg: 2, scope: !1008, file: !3, line: 620, type: !172)
!1014 = !DILocalVariable(name: "fd", scope: !1008, file: !3, line: 627, type: !9)
!1015 = !DILocalVariable(name: "size", scope: !1008, file: !3, line: 628, type: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1017, line: 56, baseType: !1018)
!1017 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 152, baseType: !71)
!1019 = !DILocalVariable(name: "stat", scope: !1008, file: !3, line: 629, type: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1021, line: 46, size: 1152, elements: !1022)
!1021 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!1022 = !{!1023, !1025, !1027, !1029, !1031, !1033, !1035, !1036, !1037, !1038, !1040, !1042, !1044, !1046, !1047, !1048, !1049, !1050}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1020, file: !1021, line: 48, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !14, line: 145, baseType: !8)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1020, file: !1021, line: 53, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !14, line: 148, baseType: !8)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1020, file: !1021, line: 61, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !14, line: 151, baseType: !8)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1020, file: !1021, line: 62, baseType: !1030, size: 32, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !14, line: 150, baseType: !10)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1020, file: !1021, line: 64, baseType: !1032, size: 32, offset: 224)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !14, line: 146, baseType: !10)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1020, file: !1021, line: 65, baseType: !1034, size: 32, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !14, line: 147, baseType: !10)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1020, file: !1021, line: 67, baseType: !9, size: 32, offset: 288)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1020, file: !1021, line: 69, baseType: !1024, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1020, file: !1021, line: 74, baseType: !1018, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1020, file: !1021, line: 78, baseType: !1039, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !14, line: 174, baseType: !71)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1020, file: !1021, line: 80, baseType: !1041, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !14, line: 179, baseType: !71)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime", scope: !1020, file: !1021, line: 98, baseType: !1043, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !14, line: 160, baseType: !71)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimensec", scope: !1020, file: !1021, line: 99, baseType: !1045, size: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_ulong_t", file: !14, line: 198, baseType: !8)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime", scope: !1020, file: !1021, line: 100, baseType: !1043, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimensec", scope: !1020, file: !1021, line: 101, baseType: !1045, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime", scope: !1020, file: !1021, line: 102, baseType: !1043, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimensec", scope: !1020, file: !1021, line: 103, baseType: !1045, size: 64, offset: 896)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1020, file: !1021, line: 106, baseType: !1051, size: 192, offset: 960)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 192, elements: !1053)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !14, line: 196, baseType: !71)
!1053 = !{!1054}
!1054 = !DISubrange(count: 3)
!1055 = !DILocalVariable(name: "data", scope: !1008, file: !3, line: 630, type: !5)
!1056 = !DILocation(line: 0, scope: !1008)
!1057 = !DILocation(line: 622, column: 14, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 622, column: 9)
!1059 = !DILocation(line: 622, column: 9, scope: !1008)
!1060 = !DILocation(line: 623, column: 42, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 622, column: 20)
!1062 = !DILocation(line: 623, column: 9, scope: !1061)
!1063 = !DILocation(line: 624, column: 9, scope: !1061)
!1064 = !DILocation(line: 629, column: 5, scope: !1008)
!1065 = !DILocation(line: 629, column: 17, scope: !1008)
!1066 = !DILocation(line: 632, column: 15, scope: !1008)
!1067 = !DILocation(line: 632, column: 10, scope: !1008)
!1068 = !DILocation(line: 633, column: 12, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 633, column: 9)
!1070 = !DILocation(line: 633, column: 9, scope: !1008)
!1071 = !DILocation(line: 634, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 634, column: 9)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 633, column: 17)
!1074 = !DILocation(line: 636, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 636, column: 9)
!1076 = !DILocation(line: 636, column: 26, scope: !1075)
!1077 = !DILocation(line: 636, column: 9, scope: !1008)
!1078 = !DILocation(line: 637, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 637, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 636, column: 33)
!1081 = !DILocation(line: 639, column: 21, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 638, column: 12)
!1083 = !{!1084, !83, i64 48}
!1084 = !{!"stat", !83, i64 0, !83, i64 8, !83, i64 16, !207, i64 24, !207, i64 28, !207, i64 32, !207, i64 36, !83, i64 40, !83, i64 48, !83, i64 56, !83, i64 64, !83, i64 72, !83, i64 80, !83, i64 88, !83, i64 96, !83, i64 104, !83, i64 112, !84, i64 120}
!1085 = !DILocation(line: 646, column: 12, scope: !1008)
!1086 = !DILocation(line: 647, column: 14, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 647, column: 9)
!1088 = !DILocation(line: 647, column: 9, scope: !1008)
!1089 = !DILocation(line: 648, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 648, column: 9)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 647, column: 29)
!1092 = !DILocation(line: 652, column: 23, scope: !1008)
!1093 = !{!107, !93, i64 0}
!1094 = !DILocation(line: 653, column: 23, scope: !1008)
!1095 = !DILocation(line: 654, column: 25, scope: !1008)
!1096 = !DILocation(line: 655, column: 18, scope: !1008)
!1097 = !DILocation(line: 658, column: 5, scope: !1008)
!1098 = !DILocation(line: 659, column: 5, scope: !1008)
!1099 = !DILocation(line: 660, column: 5, scope: !1008)
!1100 = !DILocation(line: 661, column: 5, scope: !1008)
!1101 = !DILocation(line: 662, column: 5, scope: !1008)
!1102 = !DILocation(line: 665, column: 5, scope: !1008)
!1103 = !DILocation(line: 666, column: 5, scope: !1008)
!1104 = !DILocation(line: 667, column: 5, scope: !1008)
!1105 = !DILocation(line: 671, column: 14, scope: !1008)
!1106 = !DILocation(line: 672, column: 14, scope: !1008)
!1107 = !DILocation(line: 673, column: 11, scope: !1008)
!1108 = !DILocation(line: 675, column: 5, scope: !1008)
!1109 = !DILocation(line: 677, column: 5, scope: !1008)
!1110 = !DILocation(line: 678, column: 5, scope: !1008)
!1111 = !DILocation(line: 680, column: 1, scope: !1008)
!1112 = !DILocation(line: 679, column: 5, scope: !1008)
!1113 = !DISubprogram(name: "open", scope: !1017, file: !1017, line: 168, type: !1114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!9, !159, !9, null}
!1116 = !DISubprogram(name: "mmap", scope: !1117, file: !1117, line: 57, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!1117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/mman.h", directory: "", checksumkind: CSK_MD5, checksum: "2f0ac90c7588adcea5a1a12d771e1e34")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!5, !5, !6, !9, !9, !9, !1018}
!1120 = !DISubprogram(name: "munmap", scope: !1117, file: !1117, line: 76, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!9, !5, !6}
!1123 = !DISubprogram(name: "close", scope: !1124, file: !1124, line: 353, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !117)
!1124 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!9, !9}
