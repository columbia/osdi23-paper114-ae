; ModuleID = 'dict.c'
source_filename = "dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictType = type { i32 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i32, i32 }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, i8*, %struct.dictEntry* }
%struct.timeval = type { i64, i64 }
%struct.dictIterator = type { %struct.dict*, i32, i32, %struct.dictEntry*, %struct.dictEntry* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@dict_can_resize = internal unnamed_addr global i1 false, align 4, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"-- Rehashing into ht[1]:\0A\00", align 1
@dictTypeHeapStringCopyKey = dso_local local_unnamed_addr global %struct.dictType { i32 (i8*)* @_dictStringCopyHTHashFunction, i8* (i8*, i8*)* @_dictStringCopyHTKeyDup, i8* (i8*, i8*)* null, i32 (i8*, i8*, i8*)* @_dictStringCopyHTKeyCompare, void (i8*, i8*)* @_dictStringCopyHTKeyDestructor, void (i8*, i8*)* null }, align 8, !dbg !10
@dictTypeHeapStrings = dso_local local_unnamed_addr global %struct.dictType { i32 (i8*)* @_dictStringCopyHTHashFunction, i8* (i8*, i8*)* null, i8* (i8*, i8*)* null, i32 (i8*, i8*, i8*)* @_dictStringCopyHTKeyCompare, void (i8*, i8*)* @_dictStringCopyHTKeyDestructor, void (i8*, i8*)* null }, align 8, !dbg !37
@dictTypeHeapStringCopyKeyValue = dso_local local_unnamed_addr global %struct.dictType { i32 (i8*)* @_dictStringCopyHTHashFunction, i8* (i8*, i8*)* @_dictStringCopyHTKeyDup, i8* (i8*, i8*)* @_dictStringKeyValCopyHTValDup, i32 (i8*, i8*, i8*)* @_dictStringCopyHTKeyCompare, void (i8*, i8*)* @_dictStringCopyHTKeyDestructor, void (i8*, i8*)* @_dictStringKeyValCopyHTValDestructor }, align 8, !dbg !39
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"\0ADICT LIBRARY PANIC: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"No stats available for empty dictionaries\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Hash table stats:\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" table size: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c" number of elements: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" different slots: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c" max chain length: %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c" avg chain length (counted): %.02f\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c" avg chain length (computed): %.02f\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" Chain length distribution:\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"   %s%ld: %ld (%.02f%%)\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dictIntHashFunction(i32 noundef %key) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 %key, metadata !51, metadata !DIExpression()), !dbg !52
  %shl = shl i32 %key, 15, !dbg !53
  %neg = xor i32 %shl, -1, !dbg !54
  %add = add i32 %neg, %key, !dbg !55
  call void @llvm.dbg.value(metadata i32 %add, metadata !51, metadata !DIExpression()), !dbg !52
  %shr = lshr i32 %add, 10, !dbg !56
  %xor = xor i32 %shr, %add, !dbg !57
  call void @llvm.dbg.value(metadata i32 %xor, metadata !51, metadata !DIExpression()), !dbg !52
  %add2 = mul i32 %xor, 9, !dbg !58
  call void @llvm.dbg.value(metadata i32 %add2, metadata !51, metadata !DIExpression()), !dbg !52
  %shr3 = lshr i32 %add2, 6, !dbg !59
  %xor4 = xor i32 %shr3, %add2, !dbg !60
  call void @llvm.dbg.value(metadata i32 %xor4, metadata !51, metadata !DIExpression()), !dbg !52
  %shl5 = shl i32 %xor4, 11, !dbg !61
  %neg6 = xor i32 %shl5, -1, !dbg !62
  %add7 = add i32 %xor4, %neg6, !dbg !63
  call void @llvm.dbg.value(metadata i32 %add7, metadata !51, metadata !DIExpression()), !dbg !52
  %shr8 = lshr i32 %add7, 16, !dbg !64
  %xor9 = xor i32 %shr8, %add7, !dbg !65
  call void @llvm.dbg.value(metadata i32 %xor9, metadata !51, metadata !DIExpression()), !dbg !52
  ret i32 %xor9, !dbg !66
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @dictIdentityHashFunction(i32 noundef returned %key) local_unnamed_addr #0 !dbg !67 {
entry:
  call void @llvm.dbg.value(metadata i32 %key, metadata !69, metadata !DIExpression()), !dbg !70
  ret i32 %key, !dbg !71
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @dictGenHashFunction(i8* nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #2 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 %len, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 5381, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 %len, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %tobool.not5 = icmp eq i32 %len, 0, !dbg !83
  br i1 %tobool.not5, label %while.end, label %while.body.preheader, !dbg !83

while.body.preheader:                             ; preds = %entry
  %0 = add i32 %len, -1, !dbg !83
  %xtraiter = and i32 %len, 3, !dbg !83
  %1 = icmp ult i32 %0, 3, !dbg !83
  br i1 %1, label %while.end.loopexit.unr-lcssa, label %while.body.preheader.new, !dbg !83

while.body.preheader.new:                         ; preds = %while.body.preheader
  %unroll_iter = and i32 %len, -4, !dbg !83
  br label %while.body, !dbg !83

while.body:                                       ; preds = %while.body, %while.body.preheader.new
  %hash.08 = phi i32 [ 5381, %while.body.preheader.new ], [ %add1.3, %while.body ]
  %buf.addr.06 = phi i8* [ %buf, %while.body.preheader.new ], [ %incdec.ptr.3, %while.body ]
  %niter = phi i32 [ 0, %while.body.preheader.new ], [ %niter.next.3, %while.body ]
  call void @llvm.dbg.value(metadata i32 %hash.08, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i8* %buf.addr.06, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %add = mul i32 %hash.08, 33, !dbg !84
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.06, i64 1, !dbg !85
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !79, metadata !DIExpression()), !dbg !82
  %2 = load i8, i8* %buf.addr.06, align 1, !dbg !86, !tbaa !87
  %conv = zext i8 %2 to i32, !dbg !90
  %add1 = add i32 %add, %conv, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i32 %add1, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %add.1 = mul i32 %add1, 33, !dbg !84
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %buf.addr.06, i64 2, !dbg !85
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !79, metadata !DIExpression()), !dbg !82
  %3 = load i8, i8* %incdec.ptr, align 1, !dbg !86, !tbaa !87
  %conv.1 = zext i8 %3 to i32, !dbg !90
  %add1.1 = add i32 %add.1, %conv.1, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1.1, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i32 %add1.1, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.1, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %add.2 = mul i32 %add1.1, 33, !dbg !84
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %buf.addr.06, i64 3, !dbg !85
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !79, metadata !DIExpression()), !dbg !82
  %4 = load i8, i8* %incdec.ptr.1, align 1, !dbg !86, !tbaa !87
  %conv.2 = zext i8 %4 to i32, !dbg !90
  %add1.2 = add i32 %add.2, %conv.2, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1.2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i32 %add1.2, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.2, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %add.3 = mul i32 %add1.2, 33, !dbg !84
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %buf.addr.06, i64 4, !dbg !85
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.3, metadata !79, metadata !DIExpression()), !dbg !82
  %5 = load i8, i8* %incdec.ptr.2, align 1, !dbg !86, !tbaa !87
  %conv.3 = zext i8 %5 to i32, !dbg !90
  %add1.3 = add i32 %add.3, %conv.3, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1.3, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %niter.next.3 = add i32 %niter, 4, !dbg !83
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter, !dbg !83
  br i1 %niter.ncmp.3, label %while.end.loopexit.unr-lcssa, label %while.body, !dbg !83, !llvm.loop !92

while.end.loopexit.unr-lcssa:                     ; preds = %while.body, %while.body.preheader
  %add1.lcssa.ph = phi i32 [ undef, %while.body.preheader ], [ %add1.3, %while.body ]
  %hash.08.unr = phi i32 [ 5381, %while.body.preheader ], [ %add1.3, %while.body ]
  %buf.addr.06.unr = phi i8* [ %buf, %while.body.preheader ], [ %incdec.ptr.3, %while.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !83
  br i1 %lcmp.mod.not, label %while.end, label %while.body.epil, !dbg !83

while.body.epil:                                  ; preds = %while.end.loopexit.unr-lcssa, %while.body.epil
  %hash.08.epil = phi i32 [ %add1.epil, %while.body.epil ], [ %hash.08.unr, %while.end.loopexit.unr-lcssa ]
  %buf.addr.06.epil = phi i8* [ %incdec.ptr.epil, %while.body.epil ], [ %buf.addr.06.unr, %while.end.loopexit.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %while.body.epil ], [ 0, %while.end.loopexit.unr-lcssa ]
  call void @llvm.dbg.value(metadata i32 %hash.08.epil, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i8* %buf.addr.06.epil, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %add.epil = mul i32 %hash.08.epil, 33, !dbg !84
  %incdec.ptr.epil = getelementptr inbounds i8, i8* %buf.addr.06.epil, i64 1, !dbg !85
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.epil, metadata !79, metadata !DIExpression()), !dbg !82
  %6 = load i8, i8* %buf.addr.06.epil, align 1, !dbg !86, !tbaa !87
  %conv.epil = zext i8 %6 to i32, !dbg !90
  %add1.epil = add i32 %add.epil, %conv.epil, !dbg !91
  call void @llvm.dbg.value(metadata i32 %add1.epil, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 poison, metadata !80, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !82
  %epil.iter.next = add i32 %epil.iter, 1, !dbg !83
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter, !dbg !83
  br i1 %epil.iter.cmp.not, label %while.end, label %while.body.epil, !dbg !83, !llvm.loop !94

while.end:                                        ; preds = %while.end.loopexit.unr-lcssa, %while.body.epil, %entry
  %hash.0.lcssa = phi i32 [ 5381, %entry ], [ %add1.lcssa.ph, %while.end.loopexit.unr-lcssa ], [ %add1.epil, %while.body.epil ], !dbg !82
  ret i32 %hash.0.lcssa, !dbg !96
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dict* @dictCreate(%struct.dictType* noundef %type, i8* noundef %privDataPtr) local_unnamed_addr #4 !dbg !97 {
entry:
  call void @llvm.dbg.value(metadata %struct.dictType* %type, metadata !131, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8* %privDataPtr, metadata !132, metadata !DIExpression()), !dbg !134
  %call = tail call fastcc i8* @_dictAlloc(i64 noundef 88) #16, !dbg !135
  %0 = bitcast i8* %call to %struct.dict*, !dbg !135
  call void @llvm.dbg.value(metadata %struct.dict* %0, metadata !133, metadata !DIExpression()), !dbg !134
  tail call fastcc void @_dictInit(%struct.dict* noundef %0, %struct.dictType* noundef %type, i8* noundef %privDataPtr) #16, !dbg !136
  ret %struct.dict* %0, !dbg !137
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @_dictAlloc(i64 noundef %size) unnamed_addr #4 !dbg !138 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !144, metadata !DIExpression()), !dbg !146
  %call = tail call i8* @zmalloc(i64 noundef %size) #17, !dbg !147
  call void @llvm.dbg.value(metadata i8* %call, metadata !145, metadata !DIExpression()), !dbg !146
  %cmp = icmp eq i8* %call, null, !dbg !148
  br i1 %cmp, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %entry
  tail call void (i8*, ...) @_dictPanic(i8* undef) #16, !dbg !151
  br label %if.end, !dbg !151

if.end:                                           ; preds = %if.then, %entry
  ret i8* %call, !dbg !152
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @_dictInit(%struct.dict* nocapture noundef writeonly %d, %struct.dictType* noundef %type, i8* noundef %privDataPtr) unnamed_addr #5 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !157, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata %struct.dictType* %type, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata i8* %privDataPtr, metadata !159, metadata !DIExpression()), !dbg !160
  %arrayidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, !dbg !161
  tail call fastcc void @_dictReset(%struct.dictht* noundef nonnull %arrayidx) #16, !dbg !162
  %arrayidx2 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !163
  tail call fastcc void @_dictReset(%struct.dictht* noundef nonnull %arrayidx2) #16, !dbg !164
  %type3 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !165
  store %struct.dictType* %type, %struct.dictType** %type3, align 8, !dbg !166, !tbaa !167
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1, !dbg !171
  store i8* %privDataPtr, i8** %privdata, align 8, !dbg !172, !tbaa !173
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !174
  store i32 -1, i32* %rehashidx, align 8, !dbg !175, !tbaa !176
  %iterators = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 4, !dbg !177
  store i32 0, i32* %iterators, align 4, !dbg !178, !tbaa !179
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictResize(%struct.dict* nocapture noundef %d) local_unnamed_addr #4 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !185, metadata !DIExpression()), !dbg !187
  %.b = load i1, i1* @dict_can_resize, align 4, !dbg !188
  br i1 %.b, label %cleanup, label %lor.lhs.false, !dbg !190

lor.lhs.false:                                    ; preds = %entry
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !191
  %0 = load i32, i32* %rehashidx, align 8, !dbg !191, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !191
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !192

if.end:                                           ; preds = %lor.lhs.false
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 3, !dbg !193
  %1 = load i64, i64* %used, align 8, !dbg !193, !tbaa !194
  %conv = trunc i64 %1 to i32, !dbg !197
  call void @llvm.dbg.value(metadata i32 %conv, metadata !186, metadata !DIExpression()), !dbg !187
  %2 = icmp sgt i32 %conv, 4, !dbg !198
  %.op = and i64 %1, 4294967295, !dbg !199
  %conv5 = select i1 %2, i64 %.op, i64 4, !dbg !199
  call void @llvm.dbg.value(metadata i64 undef, metadata !186, metadata !DIExpression()), !dbg !187
  %call = tail call i32 @dictExpand(%struct.dict* noundef nonnull %d, i64 noundef %conv5) #16, !dbg !200
  br label %cleanup, !dbg !201

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 1, %lor.lhs.false ], [ 1, %entry ], !dbg !187
  ret i32 %retval.0, !dbg !202
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictExpand(%struct.dict* nocapture noundef %d, i64 noundef %size) local_unnamed_addr #4 !dbg !203 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !207, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i64 %size, metadata !208, metadata !DIExpression()), !dbg !211
  %call = tail call fastcc i64 @_dictNextPower(i64 noundef %size) #16, !dbg !212
  call void @llvm.dbg.value(metadata i64 %call, metadata !210, metadata !DIExpression()), !dbg !211
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !213
  %0 = load i32, i32* %rehashidx, align 8, !dbg !213, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !213
  br i1 %cmp.not, label %lor.lhs.false, label %cleanup, !dbg !215

lor.lhs.false:                                    ; preds = %entry
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 3, !dbg !216
  %1 = load i64, i64* %used, align 8, !dbg !216, !tbaa !194
  %cmp1 = icmp ugt i64 %1, %size, !dbg !217
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !218

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i64 %call, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !211
  %sub = add i64 %call, -1, !dbg !219
  call void @llvm.dbg.value(metadata i64 %sub, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !211
  %mul = shl i64 %call, 3, !dbg !220
  %call3 = tail call fastcc i8* @_dictAlloc(i64 noundef %mul) #16, !dbg !221
  call void @llvm.dbg.value(metadata i8* %call3, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !211
  call void @llvm.dbg.value(metadata i64 0, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !211
  %call7 = tail call i8* @memset(i8* noundef %call3, i32 noundef 0, i64 noundef %mul) #17, !dbg !222
  %table10 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 0, !dbg !223
  %2 = load %struct.dictEntry**, %struct.dictEntry*** %table10, align 8, !dbg !223, !tbaa !225
  %cmp11 = icmp eq %struct.dictEntry** %2, null, !dbg !226
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !227

if.then12:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %call3, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !211
  %3 = bitcast %struct.dictEntry*** %table10 to i8**, !dbg !228
  store i8* %call3, i8** %3, align 8, !dbg !228, !tbaa.struct !230
  %n.sroa.6.0..sroa_idx27 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 1, !dbg !228
  store i64 %call, i64* %n.sroa.6.0..sroa_idx27, align 8, !dbg !228, !tbaa.struct !233
  %n.sroa.7.0..sroa_idx31 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 2, !dbg !228
  store i64 %sub, i64* %n.sroa.7.0..sroa_idx31, align 8, !dbg !228, !tbaa.struct !234
  store i64 0, i64* %used, align 8, !dbg !228, !tbaa.struct !235
  br label %cleanup, !dbg !236

if.end15:                                         ; preds = %if.end
  %n.sroa.0.0..sroa_idx24 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 0, !dbg !237
  %4 = bitcast %struct.dictEntry*** %n.sroa.0.0..sroa_idx24 to i8**, !dbg !237
  store i8* %call3, i8** %4, align 8, !dbg !237, !tbaa.struct !230
  %n.sroa.6.0..sroa_idx28 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 1, !dbg !237
  store i64 %call, i64* %n.sroa.6.0..sroa_idx28, align 8, !dbg !237, !tbaa.struct !233
  %n.sroa.7.0..sroa_idx32 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 2, !dbg !237
  store i64 %sub, i64* %n.sroa.7.0..sroa_idx32, align 8, !dbg !237, !tbaa.struct !234
  %n.sroa.8.0..sroa_idx36 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 3, !dbg !237
  store i64 0, i64* %n.sroa.8.0..sroa_idx36, align 8, !dbg !237, !tbaa.struct !235
  store i32 0, i32* %rehashidx, align 8, !dbg !238, !tbaa !176
  br label %cleanup, !dbg !239

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end15, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.end15 ], [ 1, %lor.lhs.false ], [ 1, %entry ], !dbg !211
  ret i32 %retval.0, !dbg !240
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define internal fastcc i64 @_dictNextPower(i64 noundef %size) unnamed_addr #6 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64 4, metadata !246, metadata !DIExpression()), !dbg !247
  %cmp = icmp ugt i64 %size, 9223372036854775806, !dbg !248
  br i1 %cmp, label %cleanup, label %while.cond, !dbg !250

while.cond:                                       ; preds = %entry, %while.cond
  %i.0 = phi i64 [ %mul, %while.cond ], [ 4, %entry ], !dbg !247
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !246, metadata !DIExpression()), !dbg !247
  %cmp1.not = icmp ult i64 %i.0, %size, !dbg !251
  %mul = shl i64 %i.0, 1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %mul, metadata !246, metadata !DIExpression()), !dbg !247
  br i1 %cmp1.not, label %while.cond, label %cleanup, !dbg !255, !llvm.loop !256

cleanup:                                          ; preds = %while.cond, %entry
  %retval.0 = phi i64 [ 9223372036854775807, %entry ], [ %i.0, %while.cond ], !dbg !247
  ret i64 %retval.0, !dbg !259
}

; Function Attrs: nounwind
declare !dbg !260 dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictRehash(%struct.dict* nocapture noundef %d, i32 noundef %n) local_unnamed_addr #4 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !269, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %n, metadata !270, metadata !DIExpression()), !dbg !276
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !277
  %0 = load i32, i32* %rehashidx, align 8, !dbg !277, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !277
  br i1 %cmp.not, label %return, label %while.cond.preheader, !dbg !279

while.cond.preheader:                             ; preds = %entry
  %ht = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 3
  %table16 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %ht, i64 0, i64 0, i32 0
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0
  %sizemask = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 2
  %table36 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 0
  %used51 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 3
  call void @llvm.dbg.value(metadata i32 %n, metadata !270, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %n, metadata !270, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !276
  %tobool.not109 = icmp eq i32 %n, 0, !dbg !280
  br i1 %tobool.not109, label %return, label %while.body, !dbg !280

while.body:                                       ; preds = %while.cond.preheader, %cleanup
  %dec111.in = phi i32 [ %dec111, %cleanup ], [ %n, %while.cond.preheader ]
  %rehashidx.promoted110 = phi i32 [ %inc61, %cleanup ], [ %0, %while.cond.preheader ]
  %dec111 = add nsw i32 %dec111.in, -1, !dbg !281
  %1 = load i64, i64* %used, align 8, !dbg !282, !tbaa !194
  %cmp1 = icmp eq i64 %1, 0, !dbg !284
  br i1 %cmp1, label %cleanup.thread, label %while.cond13.preheader, !dbg !285

while.cond13.preheader:                           ; preds = %while.body
  %2 = load %struct.dictEntry**, %struct.dictEntry*** %table16, align 8, !tbaa !225
  %idxprom95 = sext i32 %rehashidx.promoted110 to i64, !dbg !286
  %arrayidx1896 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %2, i64 %idxprom95, !dbg !286
  %3 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx1896, align 8, !dbg !286, !tbaa !231
  %cmp1997 = icmp eq %struct.dictEntry* %3, null, !dbg !287
  br i1 %cmp1997, label %while.body20, label %while.body30.preheader, !dbg !288

cleanup.thread:                                   ; preds = %while.body
  %4 = bitcast [2 x %struct.dictht]* %ht to i8**, !dbg !289
  %5 = load i8*, i8** %4, align 8, !dbg !289, !tbaa !225
  tail call fastcc void @_dictFree(i8* noundef %5) #16, !dbg !291
  %arrayidx8 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !292
  %6 = bitcast [2 x %struct.dictht]* %ht to i8*, !dbg !292
  %7 = bitcast %struct.dictht* %arrayidx8 to i8*, !dbg !292
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %6, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !292, !tbaa.struct !230
  tail call fastcc void @_dictReset(%struct.dictht* noundef nonnull %arrayidx8) #16, !dbg !293
  store i32 -1, i32* %rehashidx, align 8, !dbg !294, !tbaa !176
  br label %return

while.cond13.while.cond28.preheader_crit_edge:    ; preds = %while.body20
  %8 = trunc i64 %indvars.iv.next to i32, !dbg !295
  store i32 %8, i32* %rehashidx, align 8, !dbg !295, !tbaa !176
  br label %while.body30.preheader, !dbg !288

while.body30.preheader:                           ; preds = %while.cond13.preheader, %while.cond13.while.cond28.preheader_crit_edge
  %de.0101.ph = phi %struct.dictEntry* [ %3, %while.cond13.preheader ], [ %9, %while.cond13.while.cond28.preheader_crit_edge ]
  br label %while.body30, !dbg !296

while.body20:                                     ; preds = %while.cond13.preheader, %while.body20
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body20 ], [ %idxprom95, %while.cond13.preheader ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !295
  %arrayidx18 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %2, i64 %indvars.iv.next, !dbg !286
  %9 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx18, align 8, !dbg !286, !tbaa !231
  %cmp19 = icmp eq %struct.dictEntry* %9, null, !dbg !287
  br i1 %cmp19, label %while.body20, label %while.cond13.while.cond28.preheader_crit_edge, !dbg !288, !llvm.loop !297

while.body30:                                     ; preds = %while.body30.preheader, %while.body30
  %de.0101 = phi %struct.dictEntry* [ %10, %while.body30 ], [ %de.0101.ph, %while.body30.preheader ]
  call void @llvm.dbg.value(metadata %struct.dictEntry* %de.0101, metadata !271, metadata !DIExpression()), !dbg !294
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %de.0101, i64 0, i32 2, !dbg !298
  %10 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !298, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %10, metadata !273, metadata !DIExpression()), !dbg !294
  %11 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !301, !tbaa !167
  %hashFunction = getelementptr inbounds %struct.dictType, %struct.dictType* %11, i64 0, i32 0, !dbg !301
  %12 = load i32 (i8*)*, i32 (i8*)** %hashFunction, align 8, !dbg !301, !tbaa !302
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %de.0101, i64 0, i32 0, !dbg !301
  %13 = load i8*, i8** %key, align 8, !dbg !301, !tbaa !304
  %call = tail call i32 %12(i8* noundef %13) #17, !dbg !301
  %14 = load i64, i64* %sizemask, align 8, !dbg !305, !tbaa !306
  %15 = trunc i64 %14 to i32, !dbg !301
  %conv33 = and i32 %call, %15, !dbg !301
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !274, metadata !DIExpression()), !dbg !307
  %16 = load %struct.dictEntry**, %struct.dictEntry*** %table36, align 8, !dbg !308, !tbaa !225
  %idxprom37 = zext i32 %conv33 to i64, !dbg !309
  %arrayidx38 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %16, i64 %idxprom37, !dbg !309
  %17 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx38, align 8, !dbg !309, !tbaa !231
  store %struct.dictEntry* %17, %struct.dictEntry** %next, align 8, !dbg !310, !tbaa !299
  store %struct.dictEntry* %de.0101, %struct.dictEntry** %arrayidx38, align 8, !dbg !311, !tbaa !231
  %18 = load i64, i64* %used, align 8, !dbg !312, !tbaa !194
  %dec48 = add i64 %18, -1, !dbg !312
  store i64 %dec48, i64* %used, align 8, !dbg !312, !tbaa !194
  %19 = load i64, i64* %used51, align 8, !dbg !313, !tbaa !194
  %inc52 = add i64 %19, 1, !dbg !313
  store i64 %inc52, i64* %used51, align 8, !dbg !313, !tbaa !194
  call void @llvm.dbg.value(metadata %struct.dictEntry* %10, metadata !271, metadata !DIExpression()), !dbg !294
  %tobool29.not = icmp eq %struct.dictEntry* %10, null, !dbg !296
  br i1 %tobool29.not, label %cleanup, label %while.body30, !dbg !296, !llvm.loop !314

cleanup:                                          ; preds = %while.body30
  %.pre = load %struct.dictEntry**, %struct.dictEntry*** %table16, align 8, !dbg !316, !tbaa !225
  %.pre105 = load i32, i32* %rehashidx, align 8, !dbg !317, !tbaa !176
  %idxprom58 = sext i32 %.pre105 to i64, !dbg !318
  %arrayidx59 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %.pre, i64 %idxprom58, !dbg !318
  store %struct.dictEntry* null, %struct.dictEntry** %arrayidx59, align 8, !dbg !319, !tbaa !231
  %inc61 = add nsw i32 %.pre105, 1, !dbg !320
  store i32 %inc61, i32* %rehashidx, align 8, !dbg !294, !tbaa !176
  call void @llvm.dbg.value(metadata i32 %dec111, metadata !270, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata i32 %dec111, metadata !270, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !276
  %tobool.not = icmp eq i32 %dec111, 0, !dbg !280
  br i1 %tobool.not, label %return, label %while.body, !dbg !280

return:                                           ; preds = %cleanup, %while.cond.preheader, %cleanup.thread, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %cleanup.thread ], [ 1, %while.cond.preheader ], [ 1, %cleanup ], !dbg !276
  ret i32 %retval.2, !dbg !321
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_dictFree(i8* noundef %ptr) unnamed_addr #4 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !326, metadata !DIExpression()), !dbg !327
  tail call void @zfree(i8* noundef %ptr) #17, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @_dictReset(%struct.dictht* nocapture noundef writeonly %ht) unnamed_addr #5 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata %struct.dictht* %ht, metadata !335, metadata !DIExpression()), !dbg !336
  %table = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 0, !dbg !337
  store %struct.dictEntry** null, %struct.dictEntry*** %table, align 8, !dbg !338, !tbaa !225
  %size = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 1, !dbg !339
  %0 = bitcast i64* %size to <2 x i64>*, !dbg !340
  store <2 x i64> zeroinitializer, <2 x i64>* %0, align 8, !dbg !340, !tbaa !232
  %used = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 3, !dbg !341
  store i64 0, i64* %used, align 8, !dbg !342, !tbaa !194
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timeInMilliseconds() local_unnamed_addr #4 !dbg !344 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !358
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #18, !dbg !358
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !348, metadata !DIExpression()), !dbg !359
  %call = call i32 @gettimeofday(%struct.timeval* noundef nonnull %tv, i8* noundef null) #17, !dbg !360
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !361
  %1 = load i64, i64* %tv_sec, align 8, !dbg !361, !tbaa !362
  %mul = mul nsw i64 %1, 1000, !dbg !364
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !365
  %2 = load i64, i64* %tv_usec, align 8, !dbg !365, !tbaa !366
  %div = sdiv i64 %2, 1000, !dbg !367
  %add = add nsw i64 %div, %mul, !dbg !368
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #18, !dbg !369
  ret i64 %add, !dbg !370
}

; Function Attrs: nounwind
declare !dbg !371 dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictRehashMilliseconds(%struct.dict* nocapture noundef %d, i32 noundef %ms) local_unnamed_addr #4 !dbg !378 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 %ms, metadata !381, metadata !DIExpression()), !dbg !384
  %call = tail call i64 @timeInMilliseconds() #16, !dbg !385
  call void @llvm.dbg.value(metadata i64 %call, metadata !382, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !384
  %conv = sext i32 %ms to i64
  br label %while.cond, !dbg !386

while.cond:                                       ; preds = %while.body, %entry
  %rehashes.0 = phi i32 [ 0, %entry ], [ %add, %while.body ], !dbg !384
  call void @llvm.dbg.value(metadata i32 %rehashes.0, metadata !383, metadata !DIExpression()), !dbg !384
  %call1 = tail call i32 @dictRehash(%struct.dict* noundef %d, i32 noundef 100) #16, !dbg !387
  %tobool.not = icmp eq i32 %call1, 0, !dbg !386
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !386

while.body:                                       ; preds = %while.cond
  %add = add nuw nsw i32 %rehashes.0, 100, !dbg !388
  call void @llvm.dbg.value(metadata i32 %add, metadata !383, metadata !DIExpression()), !dbg !384
  %call2 = tail call i64 @timeInMilliseconds() #16, !dbg !390
  %sub = sub nsw i64 %call2, %call, !dbg !392
  %cmp = icmp sgt i64 %sub, %conv, !dbg !393
  br i1 %cmp, label %while.end, label %while.cond, !dbg !394, !llvm.loop !395

while.end:                                        ; preds = %while.body, %while.cond
  %rehashes.1 = phi i32 [ %add, %while.body ], [ %rehashes.0, %while.cond ], !dbg !384
  call void @llvm.dbg.value(metadata i32 %rehashes.1, metadata !383, metadata !DIExpression()), !dbg !384
  ret i32 %rehashes.1, !dbg !397
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictAdd(%struct.dict* nocapture noundef %d, i8* noundef %key, i8* noundef %val) local_unnamed_addr #4 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !402, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %key, metadata !403, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i8* %val, metadata !404, metadata !DIExpression()), !dbg !408
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !409
  %0 = load i32, i32* %rehashidx, align 8, !dbg !409, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !409
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !411

if.then:                                          ; preds = %entry
  tail call fastcc void @_dictRehashStep(%struct.dict* noundef nonnull %d) #16, !dbg !412
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %entry
  %call = tail call fastcc i32 @_dictKeyIndex(%struct.dict* noundef nonnull %d, i8* noundef %key) #16, !dbg !413
  call void @llvm.dbg.value(metadata i32 %call, metadata !405, metadata !DIExpression()), !dbg !408
  %cmp2 = icmp eq i32 %call, -1, !dbg !415
  br i1 %cmp2, label %cleanup, label %if.end4, !dbg !416

if.end4:                                          ; preds = %if.end
  %1 = load i32, i32* %rehashidx, align 8, !dbg !417, !tbaa !176
  %cmp6.not = icmp eq i32 %1, -1, !dbg !417
  %arrayidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !417
  %arrayidx9 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, !dbg !417
  %cond = select i1 %cmp6.not, %struct.dictht* %arrayidx9, %struct.dictht* %arrayidx, !dbg !417
  call void @llvm.dbg.value(metadata %struct.dictht* %cond, metadata !407, metadata !DIExpression()), !dbg !408
  %call10 = tail call fastcc i8* @_dictAlloc(i64 noundef 24) #16, !dbg !418
  call void @llvm.dbg.value(metadata i8* %call10, metadata !406, metadata !DIExpression()), !dbg !408
  %table = getelementptr inbounds %struct.dictht, %struct.dictht* %cond, i64 0, i32 0, !dbg !419
  %2 = load %struct.dictEntry**, %struct.dictEntry*** %table, align 8, !dbg !419, !tbaa !225
  %idxprom = sext i32 %call to i64, !dbg !420
  %arrayidx11 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %2, i64 %idxprom, !dbg !420
  %3 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx11, align 8, !dbg !420, !tbaa !231
  %next = getelementptr inbounds i8, i8* %call10, i64 16, !dbg !421
  %4 = bitcast i8* %next to %struct.dictEntry**, !dbg !421
  store %struct.dictEntry* %3, %struct.dictEntry** %4, align 8, !dbg !422, !tbaa !299
  %5 = bitcast %struct.dictEntry** %arrayidx11 to i8**, !dbg !423
  store i8* %call10, i8** %5, align 8, !dbg !423, !tbaa !231
  %used = getelementptr inbounds %struct.dictht, %struct.dictht* %cond, i64 0, i32 3, !dbg !424
  %6 = load i64, i64* %used, align 8, !dbg !425, !tbaa !194
  %inc = add i64 %6, 1, !dbg !425
  store i64 %inc, i64* %used, align 8, !dbg !425, !tbaa !194
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !426
  %7 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !426, !tbaa !167
  %keyDup = getelementptr inbounds %struct.dictType, %struct.dictType* %7, i64 0, i32 1, !dbg !426
  %8 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %keyDup, align 8, !dbg !426, !tbaa !429
  %tobool.not = icmp eq i8* (i8*, i8*)* %8, null, !dbg !426
  br i1 %tobool.not, label %if.else, label %if.then15, !dbg !430

if.then15:                                        ; preds = %if.end4
  call void @llvm.dbg.value(metadata i8* %call10, metadata !406, metadata !DIExpression()), !dbg !408
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1, !dbg !426
  %9 = load i8*, i8** %privdata, align 8, !dbg !426, !tbaa !173
  %call18 = tail call i8* %8(i8* noundef %9, i8* noundef %key) #17, !dbg !426
  %key19 = bitcast i8* %call10 to i8**, !dbg !426
  store i8* %call18, i8** %key19, align 8, !dbg !426, !tbaa !304
  %.pre = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !431, !tbaa !167
  br label %do.body22, !dbg !426

if.else:                                          ; preds = %if.end4
  %key20 = bitcast i8* %call10 to i8**, !dbg !426
  store i8* %key, i8** %key20, align 8, !dbg !426, !tbaa !304
  br label %do.body22

do.body22:                                        ; preds = %if.then15, %if.else
  %10 = phi %struct.dictType* [ %.pre, %if.then15 ], [ %7, %if.else ], !dbg !431
  %valDup = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 2, !dbg !431
  %11 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %valDup, align 8, !dbg !431, !tbaa !434
  %tobool24.not = icmp eq i8* (i8*, i8*)* %11, null, !dbg !431
  br i1 %tobool24.not, label %cleanup.sink.split, label %if.then25, !dbg !435

if.then25:                                        ; preds = %do.body22
  %privdata28 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1, !dbg !431
  %12 = load i8*, i8** %privdata28, align 8, !dbg !431, !tbaa !173
  %call29 = tail call i8* %11(i8* noundef %12, i8* noundef %val) #17, !dbg !431
  br label %cleanup.sink.split, !dbg !431

cleanup.sink.split:                               ; preds = %do.body22, %if.then25
  %call29.sink = phi i8* [ %call29, %if.then25 ], [ %val, %do.body22 ]
  %val30 = getelementptr inbounds i8, i8* %call10, i64 8, !dbg !431
  %13 = bitcast i8* %val30 to i8**, !dbg !431
  store i8* %call29.sink, i8** %13, align 8, !dbg !431, !tbaa !436
  br label %cleanup, !dbg !437

cleanup:                                          ; preds = %cleanup.sink.split, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %cleanup.sink.split ], !dbg !408
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_dictRehashStep(%struct.dict* nocapture noundef %d) unnamed_addr #4 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !442, metadata !DIExpression()), !dbg !443
  %iterators = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 4, !dbg !444
  %0 = load i32, i32* %iterators, align 4, !dbg !444, !tbaa !179
  %cmp = icmp eq i32 %0, 0, !dbg !446
  br i1 %cmp, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %entry
  %call = tail call i32 @dictRehash(%struct.dict* noundef nonnull %d, i32 noundef 1) #16, !dbg !448
  br label %if.end, !dbg !448

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @_dictKeyIndex(%struct.dict* nocapture noundef %d, i8* noundef %key) unnamed_addr #4 !dbg !450 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !454, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i8* %key, metadata !455, metadata !DIExpression()), !dbg !460
  %call = tail call fastcc i32 @_dictExpandIfNeeded(%struct.dict* noundef %d) #16, !dbg !461
  %cmp = icmp eq i32 %call, 1, !dbg !463
  br i1 %cmp, label %cleanup, label %if.end, !dbg !464

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !465
  %0 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !465, !tbaa !167
  %hashFunction = getelementptr inbounds %struct.dictType, %struct.dictType* %0, i64 0, i32 0, !dbg !465
  %1 = load i32 (i8*)*, i32 (i8*)** %hashFunction, align 8, !dbg !465, !tbaa !302
  %call1 = tail call i32 %1(i8* noundef %key) #17, !dbg !465
  call void @llvm.dbg.value(metadata i32 %call1, metadata !456, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 0, metadata !458, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 undef, metadata !457, metadata !DIExpression()), !dbg !460
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !458, metadata !DIExpression()), !dbg !460
  %sizemask = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 2, !dbg !466
  %2 = load i64, i64* %sizemask, align 8, !dbg !466, !tbaa !306
  %3 = trunc i64 %2 to i32, !dbg !470
  %conv3 = and i32 %call1, %3, !dbg !470
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !457, metadata !DIExpression()), !dbg !460
  %table7 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 0, !dbg !471
  %4 = load %struct.dictEntry**, %struct.dictEntry*** %table7, align 8, !dbg !471, !tbaa !225
  %idxprom8 = zext i32 %conv3 to i64, !dbg !472
  %arrayidx9 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %4, i64 %idxprom8, !dbg !472
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !459, metadata !DIExpression()), !dbg !460
  %he.050 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx9, align 8, !dbg !473, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.050, metadata !459, metadata !DIExpression()), !dbg !460
  %tobool.not51 = icmp eq %struct.dictEntry* %he.050, null, !dbg !474
  br i1 %tobool.not51, label %while.end, label %while.body, !dbg !474

for.cond:                                         ; preds = %while.end
  call void @llvm.dbg.value(metadata i64 1, metadata !458, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !457, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.value(metadata i64 1, metadata !458, metadata !DIExpression()), !dbg !460
  %sizemask.1 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 2, !dbg !466
  %5 = load i64, i64* %sizemask.1, align 8, !dbg !466, !tbaa !306
  %6 = trunc i64 %5 to i32, !dbg !470
  %conv3.1 = and i32 %call1, %6, !dbg !470
  call void @llvm.dbg.value(metadata i32 %conv3.1, metadata !457, metadata !DIExpression()), !dbg !460
  %table7.1 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 0, !dbg !471
  %7 = load %struct.dictEntry**, %struct.dictEntry*** %table7.1, align 8, !dbg !471, !tbaa !225
  %idxprom8.1 = zext i32 %conv3.1 to i64, !dbg !472
  %arrayidx9.1 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %7, i64 %idxprom8.1, !dbg !472
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !459, metadata !DIExpression()), !dbg !460
  %he.050.1 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx9.1, align 8, !dbg !473, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.050.1, metadata !459, metadata !DIExpression()), !dbg !460
  %tobool.not51.1 = icmp eq %struct.dictEntry* %he.050.1, null, !dbg !474
  br i1 %tobool.not51.1, label %cleanup, label %while.body.1, !dbg !474

while.body.1:                                     ; preds = %for.cond, %if.end21.1
  %he.052.1 = phi %struct.dictEntry* [ %he.0.1, %if.end21.1 ], [ %he.050.1, %for.cond ]
  %8 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !475, !tbaa !167
  %keyCompare.1 = getelementptr inbounds %struct.dictType, %struct.dictType* %8, i64 0, i32 3, !dbg !475
  %9 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %keyCompare.1, align 8, !dbg !475, !tbaa !478
  %tobool11.not.1 = icmp eq i32 (i8*, i8*, i8*)* %9, null, !dbg !475
  br i1 %tobool11.not.1, label %cond.false.1, label %cond.true.1, !dbg !479

cond.true.1:                                      ; preds = %while.body.1
  %10 = load i8*, i8** %privdata, align 8, !dbg !475, !tbaa !173
  %key14.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052.1, i64 0, i32 0, !dbg !475
  %11 = load i8*, i8** %key14.1, align 8, !dbg !475, !tbaa !304
  %call15.1 = tail call i32 %9(i8* noundef %10, i8* noundef %key, i8* noundef %11) #17, !dbg !475
  %tobool16.not.1 = icmp eq i32 %call15.1, 0, !dbg !475
  br i1 %tobool16.not.1, label %if.end21.1, label %cleanup, !dbg !475

cond.false.1:                                     ; preds = %while.body.1
  %key17.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052.1, i64 0, i32 0, !dbg !475
  %12 = load i8*, i8** %key17.1, align 8, !dbg !475, !tbaa !304
  %cmp18.1 = icmp eq i8* %12, %key, !dbg !475
  br i1 %cmp18.1, label %cleanup, label %if.end21.1, !dbg !479

if.end21.1:                                       ; preds = %cond.false.1, %cond.true.1
  %next.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052.1, i64 0, i32 2, !dbg !480
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !459, metadata !DIExpression()), !dbg !460
  %he.0.1 = load %struct.dictEntry*, %struct.dictEntry** %next.1, align 8, !dbg !473, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0.1, metadata !459, metadata !DIExpression()), !dbg !460
  %tobool.not.1 = icmp eq %struct.dictEntry* %he.0.1, null, !dbg !474
  br i1 %tobool.not.1, label %cleanup, label %while.body.1, !dbg !474, !llvm.loop !481

while.body:                                       ; preds = %if.end, %if.end21
  %he.052 = phi %struct.dictEntry* [ %he.0, %if.end21 ], [ %he.050, %if.end ]
  %13 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !475, !tbaa !167
  %keyCompare = getelementptr inbounds %struct.dictType, %struct.dictType* %13, i64 0, i32 3, !dbg !475
  %14 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %keyCompare, align 8, !dbg !475, !tbaa !478
  %tobool11.not = icmp eq i32 (i8*, i8*, i8*)* %14, null, !dbg !475
  br i1 %tobool11.not, label %cond.false, label %cond.true, !dbg !479

cond.true:                                        ; preds = %while.body
  %15 = load i8*, i8** %privdata, align 8, !dbg !475, !tbaa !173
  %key14 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052, i64 0, i32 0, !dbg !475
  %16 = load i8*, i8** %key14, align 8, !dbg !475, !tbaa !304
  %call15 = tail call i32 %14(i8* noundef %15, i8* noundef %key, i8* noundef %16) #17, !dbg !475
  %tobool16.not = icmp eq i32 %call15, 0, !dbg !475
  br i1 %tobool16.not, label %if.end21, label %cleanup, !dbg !475

cond.false:                                       ; preds = %while.body
  %key17 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052, i64 0, i32 0, !dbg !475
  %17 = load i8*, i8** %key17, align 8, !dbg !475, !tbaa !304
  %cmp18 = icmp eq i8* %17, %key, !dbg !475
  br i1 %cmp18, label %cleanup, label %if.end21, !dbg !479

if.end21:                                         ; preds = %cond.false, %cond.true
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.052, i64 0, i32 2, !dbg !480
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !459, metadata !DIExpression()), !dbg !460
  %he.0 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !473, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !459, metadata !DIExpression()), !dbg !460
  %tobool.not = icmp eq %struct.dictEntry* %he.0, null, !dbg !474
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !474, !llvm.loop !481

while.end:                                        ; preds = %if.end21, %if.end
  %18 = load i32, i32* %rehashidx, align 8, !dbg !483, !tbaa !176
  %cmp22.not = icmp eq i32 %18, -1, !dbg !483
  call void @llvm.dbg.value(metadata i64 1, metadata !458, metadata !DIExpression()), !dbg !460
  br i1 %cmp22.not, label %cleanup, label %for.cond, !dbg !485

cleanup:                                          ; preds = %cond.true, %cond.false, %cond.true.1, %cond.false.1, %if.end21.1, %for.cond, %while.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %conv3, %while.end ], [ %conv3.1, %for.cond ], [ %conv3.1, %if.end21.1 ], [ -1, %cond.false.1 ], [ -1, %cond.true.1 ], [ -1, %cond.false ], [ -1, %cond.true ], !dbg !460
  ret i32 %retval.0, !dbg !486
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictReplace(%struct.dict* nocapture noundef %d, i8* noundef %key, i8* noundef %val) local_unnamed_addr #4 !dbg !487 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !489, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8* %key, metadata !490, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8* %val, metadata !491, metadata !DIExpression()), !dbg !494
  %call = tail call i32 @dictAdd(%struct.dict* noundef %d, i8* noundef %key, i8* noundef %val) #16, !dbg !495
  %cmp = icmp eq i32 %call, 0, !dbg !497
  br i1 %cmp, label %cleanup, label %if.end, !dbg !498

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.dictEntry* @dictFind(%struct.dict* noundef %d, i8* noundef %key) #16, !dbg !499
  call void @llvm.dbg.value(metadata %struct.dictEntry* %call2, metadata !492, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i8* undef, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !494
  %auxentry.sroa.3.0..sroa_idx20 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %call2, i64 0, i32 1, !dbg !500
  %auxentry.sroa.3.0.copyload = load i8*, i8** %auxentry.sroa.3.0..sroa_idx20, align 8, !dbg !500, !tbaa.struct !501
  call void @llvm.dbg.value(metadata i8* %auxentry.sroa.3.0.copyload, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !494
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !493, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !494
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !502
  %0 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !502, !tbaa !167
  %valDup = getelementptr inbounds %struct.dictType, %struct.dictType* %0, i64 0, i32 2, !dbg !502
  %1 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %valDup, align 8, !dbg !502, !tbaa !434
  %tobool.not = icmp eq i8* (i8*, i8*)* %1, null, !dbg !502
  br i1 %tobool.not, label %do.end, label %if.then3, !dbg !505

if.then3:                                         ; preds = %if.end
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1, !dbg !502
  %2 = load i8*, i8** %privdata, align 8, !dbg !502, !tbaa !173
  %call6 = tail call i8* %1(i8* noundef %2, i8* noundef %val) #17, !dbg !502
  %.pre = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !506, !tbaa !167
  br label %do.end, !dbg !502

do.end:                                           ; preds = %if.end, %if.then3
  %3 = phi %struct.dictType* [ %.pre, %if.then3 ], [ %0, %if.end ], !dbg !506
  %storemerge = phi i8* [ %call6, %if.then3 ], [ %val, %if.end ], !dbg !502
  store i8* %storemerge, i8** %auxentry.sroa.3.0..sroa_idx20, align 8, !dbg !502, !tbaa !436
  %valDestructor = getelementptr inbounds %struct.dictType, %struct.dictType* %3, i64 0, i32 5, !dbg !506
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %valDestructor, align 8, !dbg !506, !tbaa !508
  %tobool11.not = icmp eq void (i8*, i8*)* %4, null, !dbg !506
  br i1 %tobool11.not, label %cleanup, label %if.then12, !dbg !509

if.then12:                                        ; preds = %do.end
  %privdata15 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1, !dbg !506
  %5 = load i8*, i8** %privdata15, align 8, !dbg !506, !tbaa !173
  tail call void %4(i8* noundef %5, i8* noundef %auxentry.sroa.3.0.copyload) #17, !dbg !506
  br label %cleanup, !dbg !506

cleanup:                                          ; preds = %do.end, %if.then12, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 0, %if.then12 ], [ 0, %do.end ], !dbg !494
  ret i32 %retval.0, !dbg !510
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dictEntry* @dictFind(%struct.dict* nocapture noundef %d, i8* noundef %key) local_unnamed_addr #4 !dbg !511 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !515, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i8* %key, metadata !516, metadata !DIExpression()), !dbg !521
  %size = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 1, !dbg !522
  %0 = load i64, i64* %size, align 8, !dbg !522, !tbaa !524
  %cmp = icmp eq i64 %0, 0, !dbg !525
  br i1 %cmp, label %cleanup, label %if.end, !dbg !526

if.end:                                           ; preds = %entry
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !527
  %1 = load i32, i32* %rehashidx, align 8, !dbg !527, !tbaa !176
  %cmp1.not = icmp eq i32 %1, -1, !dbg !527
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !529

if.then2:                                         ; preds = %if.end
  tail call fastcc void @_dictRehashStep(%struct.dict* noundef nonnull %d) #16, !dbg !530
  br label %if.end3, !dbg !530

if.end3:                                          ; preds = %if.then2, %if.end
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !531
  %2 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !531, !tbaa !167
  %hashFunction = getelementptr inbounds %struct.dictType, %struct.dictType* %2, i64 0, i32 0, !dbg !531
  %3 = load i32 (i8*)*, i32 (i8*)** %hashFunction, align 8, !dbg !531, !tbaa !302
  %call = tail call i32 %3(i8* noundef %key) #17, !dbg !531
  call void @llvm.dbg.value(metadata i32 %call, metadata !518, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()), !dbg !521
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !520, metadata !DIExpression()), !dbg !521
  %sizemask = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 2, !dbg !532
  %4 = load i64, i64* %sizemask, align 8, !dbg !532, !tbaa !306
  %5 = trunc i64 %4 to i32, !dbg !536
  %conv7 = and i32 %call, %5, !dbg !536
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !519, metadata !DIExpression()), !dbg !521
  %table11 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 0, !dbg !537
  %6 = load %struct.dictEntry**, %struct.dictEntry*** %table11, align 8, !dbg !537, !tbaa !225
  %idxprom12 = zext i32 %conv7 to i64, !dbg !538
  %arrayidx13 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %6, i64 %idxprom12, !dbg !538
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !517, metadata !DIExpression()), !dbg !521
  %he.058 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx13, align 8, !dbg !539, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.058, metadata !517, metadata !DIExpression()), !dbg !521
  %tobool.not59 = icmp eq %struct.dictEntry* %he.058, null, !dbg !540
  br i1 %tobool.not59, label %while.end, label %while.body, !dbg !540

for.cond:                                         ; preds = %while.end
  call void @llvm.dbg.value(metadata i64 1, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata i64 1, metadata !520, metadata !DIExpression()), !dbg !521
  %sizemask.1 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 2, !dbg !532
  %7 = load i64, i64* %sizemask.1, align 8, !dbg !532, !tbaa !306
  %8 = trunc i64 %7 to i32, !dbg !536
  %conv7.1 = and i32 %call, %8, !dbg !536
  call void @llvm.dbg.value(metadata i32 %conv7.1, metadata !519, metadata !DIExpression()), !dbg !521
  %table11.1 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 0, !dbg !537
  %9 = load %struct.dictEntry**, %struct.dictEntry*** %table11.1, align 8, !dbg !537, !tbaa !225
  %idxprom12.1 = zext i32 %conv7.1 to i64, !dbg !538
  %arrayidx13.1 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %9, i64 %idxprom12.1, !dbg !538
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !517, metadata !DIExpression()), !dbg !521
  %he.058.1 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx13.1, align 8, !dbg !539, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.058.1, metadata !517, metadata !DIExpression()), !dbg !521
  %tobool.not59.1 = icmp eq %struct.dictEntry* %he.058.1, null, !dbg !540
  br i1 %tobool.not59.1, label %cleanup, label %while.body.1, !dbg !540

while.body.1:                                     ; preds = %for.cond, %if.end25.1
  %he.060.1 = phi %struct.dictEntry* [ %he.0.1, %if.end25.1 ], [ %he.058.1, %for.cond ]
  %10 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !541, !tbaa !167
  %keyCompare.1 = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 3, !dbg !541
  %11 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %keyCompare.1, align 8, !dbg !541, !tbaa !478
  %tobool15.not.1 = icmp eq i32 (i8*, i8*, i8*)* %11, null, !dbg !541
  br i1 %tobool15.not.1, label %cond.false.1, label %cond.true.1, !dbg !544

cond.true.1:                                      ; preds = %while.body.1
  %12 = load i8*, i8** %privdata, align 8, !dbg !541, !tbaa !173
  %key18.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060.1, i64 0, i32 0, !dbg !541
  %13 = load i8*, i8** %key18.1, align 8, !dbg !541, !tbaa !304
  %call19.1 = tail call i32 %11(i8* noundef %12, i8* noundef %key, i8* noundef %13) #17, !dbg !541
  %tobool20.not.1 = icmp eq i32 %call19.1, 0, !dbg !541
  br i1 %tobool20.not.1, label %if.end25.1, label %cleanup, !dbg !541

cond.false.1:                                     ; preds = %while.body.1
  %key21.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060.1, i64 0, i32 0, !dbg !541
  %14 = load i8*, i8** %key21.1, align 8, !dbg !541, !tbaa !304
  %cmp22.1 = icmp eq i8* %14, %key, !dbg !541
  br i1 %cmp22.1, label %cleanup, label %if.end25.1, !dbg !544

if.end25.1:                                       ; preds = %cond.false.1, %cond.true.1
  %next.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060.1, i64 0, i32 2, !dbg !545
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !517, metadata !DIExpression()), !dbg !521
  %he.0.1 = load %struct.dictEntry*, %struct.dictEntry** %next.1, align 8, !dbg !539, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0.1, metadata !517, metadata !DIExpression()), !dbg !521
  %tobool.not.1 = icmp eq %struct.dictEntry* %he.0.1, null, !dbg !540
  br i1 %tobool.not.1, label %cleanup, label %while.body.1, !dbg !540, !llvm.loop !546

while.body:                                       ; preds = %if.end3, %if.end25
  %he.060 = phi %struct.dictEntry* [ %he.0, %if.end25 ], [ %he.058, %if.end3 ]
  %15 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !541, !tbaa !167
  %keyCompare = getelementptr inbounds %struct.dictType, %struct.dictType* %15, i64 0, i32 3, !dbg !541
  %16 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %keyCompare, align 8, !dbg !541, !tbaa !478
  %tobool15.not = icmp eq i32 (i8*, i8*, i8*)* %16, null, !dbg !541
  br i1 %tobool15.not, label %cond.false, label %cond.true, !dbg !544

cond.true:                                        ; preds = %while.body
  %17 = load i8*, i8** %privdata, align 8, !dbg !541, !tbaa !173
  %key18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060, i64 0, i32 0, !dbg !541
  %18 = load i8*, i8** %key18, align 8, !dbg !541, !tbaa !304
  %call19 = tail call i32 %16(i8* noundef %17, i8* noundef %key, i8* noundef %18) #17, !dbg !541
  %tobool20.not = icmp eq i32 %call19, 0, !dbg !541
  br i1 %tobool20.not, label %if.end25, label %cleanup, !dbg !541

cond.false:                                       ; preds = %while.body
  %key21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060, i64 0, i32 0, !dbg !541
  %19 = load i8*, i8** %key21, align 8, !dbg !541, !tbaa !304
  %cmp22 = icmp eq i8* %19, %key, !dbg !541
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !544

if.end25:                                         ; preds = %cond.false, %cond.true
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.060, i64 0, i32 2, !dbg !545
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !517, metadata !DIExpression()), !dbg !521
  %he.0 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !539, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !517, metadata !DIExpression()), !dbg !521
  %tobool.not = icmp eq %struct.dictEntry* %he.0, null, !dbg !540
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !540, !llvm.loop !546

while.end:                                        ; preds = %if.end25, %if.end3
  %20 = load i32, i32* %rehashidx, align 8, !dbg !548, !tbaa !176
  %cmp27.not = icmp eq i32 %20, -1, !dbg !548
  call void @llvm.dbg.value(metadata i64 1, metadata !520, metadata !DIExpression()), !dbg !521
  br i1 %cmp27.not, label %cleanup, label %for.cond, !dbg !550

cleanup:                                          ; preds = %cond.true, %cond.false, %cond.true.1, %cond.false.1, %if.end25.1, %for.cond, %while.end, %entry
  %retval.0 = phi %struct.dictEntry* [ null, %entry ], [ null, %while.end ], [ null, %for.cond ], [ null, %if.end25.1 ], [ %he.060.1, %cond.false.1 ], [ %he.060.1, %cond.true.1 ], [ %he.060, %cond.false ], [ %he.060, %cond.true ], !dbg !521
  ret %struct.dictEntry* %retval.0, !dbg !551
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictDelete(%struct.dict* nocapture noundef %ht, i8* noundef %key) local_unnamed_addr #4 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %ht, metadata !554, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i8* %key, metadata !555, metadata !DIExpression()), !dbg !556
  %call = tail call fastcc i32 @dictGenericDelete(%struct.dict* noundef %ht, i8* noundef %key, i32 noundef 0) #16, !dbg !557
  ret i32 %call, !dbg !558
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @dictGenericDelete(%struct.dict* nocapture noundef %d, i8* noundef %key, i32 noundef %nofree) unnamed_addr #4 !dbg !559 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !563, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i8* %key, metadata !564, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i32 %nofree, metadata !565, metadata !DIExpression()), !dbg !571
  %size = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 1, !dbg !572
  %0 = load i64, i64* %size, align 8, !dbg !572, !tbaa !524
  %cmp = icmp eq i64 %0, 0, !dbg !574
  br i1 %cmp, label %cleanup, label %if.end, !dbg !575

if.end:                                           ; preds = %entry
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !576
  %1 = load i32, i32* %rehashidx, align 8, !dbg !576, !tbaa !176
  %cmp1.not = icmp eq i32 %1, -1, !dbg !576
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !578

if.then2:                                         ; preds = %if.end
  tail call fastcc void @_dictRehashStep(%struct.dict* noundef nonnull %d) #16, !dbg !579
  br label %if.end3, !dbg !579

if.end3:                                          ; preds = %if.then2, %if.end
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0, !dbg !580
  %2 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !580, !tbaa !167
  %hashFunction = getelementptr inbounds %struct.dictType, %struct.dictType* %2, i64 0, i32 0, !dbg !580
  %3 = load i32 (i8*)*, i32 (i8*)** %hashFunction, align 8, !dbg !580, !tbaa !302
  %call = tail call i32 %3(i8* noundef %key) #17, !dbg !580
  call void @llvm.dbg.value(metadata i32 %call, metadata !566, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata i32 0, metadata !570, metadata !DIExpression()), !dbg !571
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1
  br label %for.body, !dbg !581

for.body:                                         ; preds = %while.end, %if.end3
  %cmp4 = phi i1 [ false, %while.end ], [ true, %if.end3 ]
  %indvars.iv = phi i64 [ 1, %while.end ], [ 0, %if.end3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !570, metadata !DIExpression()), !dbg !571
  %sizemask = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 %indvars.iv, i32 2, !dbg !583
  %4 = load i64, i64* %sizemask, align 8, !dbg !583, !tbaa !306
  %5 = trunc i64 %4 to i32, !dbg !586
  %conv7 = and i32 %call, %5, !dbg !586
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !567, metadata !DIExpression()), !dbg !571
  %table11 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 %indvars.iv, i32 0, !dbg !587
  %6 = load %struct.dictEntry**, %struct.dictEntry*** %table11, align 8, !dbg !587, !tbaa !225
  %idxprom12 = zext i32 %conv7 to i64, !dbg !588
  %arrayidx13 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %6, i64 %idxprom12, !dbg !588
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !568, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata %struct.dictEntry* null, metadata !569, metadata !DIExpression()), !dbg !571
  %he.0114 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx13, align 8, !dbg !589, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0114, metadata !568, metadata !DIExpression()), !dbg !571
  %tobool.not115 = icmp eq %struct.dictEntry* %he.0114, null, !dbg !590
  br i1 %tobool.not115, label %while.end, label %while.body, !dbg !590

while.body:                                       ; preds = %for.body, %if.end57
  %he.0117 = phi %struct.dictEntry* [ %he.0, %if.end57 ], [ %he.0114, %for.body ]
  %prevHe.0116 = phi %struct.dictEntry* [ %he.0117, %if.end57 ], [ null, %for.body ]
  call void @llvm.dbg.value(metadata %struct.dictEntry* %prevHe.0116, metadata !569, metadata !DIExpression()), !dbg !571
  %7 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !591, !tbaa !167
  %keyCompare = getelementptr inbounds %struct.dictType, %struct.dictType* %7, i64 0, i32 3, !dbg !591
  %8 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %keyCompare, align 8, !dbg !591, !tbaa !478
  %tobool15.not = icmp eq i32 (i8*, i8*, i8*)* %8, null, !dbg !591
  br i1 %tobool15.not, label %cond.false, label %cond.true, !dbg !594

cond.true:                                        ; preds = %while.body
  %9 = load i8*, i8** %privdata, align 8, !dbg !591, !tbaa !173
  %key18 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 0, !dbg !591
  %10 = load i8*, i8** %key18, align 8, !dbg !591, !tbaa !304
  %call19 = tail call i32 %8(i8* noundef %9, i8* noundef %key, i8* noundef %10) #17, !dbg !591
  %tobool20.not = icmp eq i32 %call19, 0, !dbg !591
  br i1 %tobool20.not, label %if.end57, label %if.then24, !dbg !591

cond.false:                                       ; preds = %while.body
  %key21 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 0, !dbg !591
  %11 = load i8*, i8** %key21, align 8, !dbg !591, !tbaa !304
  %cmp22 = icmp eq i8* %11, %key, !dbg !591
  br i1 %cmp22, label %if.then24, label %if.end57, !dbg !594

if.then24:                                        ; preds = %cond.false, %cond.true
  %tobool25.not = icmp eq %struct.dictEntry* %prevHe.0116, null, !dbg !595
  %next28 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 2, !dbg !598
  %12 = load %struct.dictEntry*, %struct.dictEntry** %next28, align 8, !dbg !598, !tbaa !299
  br i1 %tobool25.not, label %if.else, label %if.then26, !dbg !599

if.then26:                                        ; preds = %if.then24
  %next27 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %prevHe.0116, i64 0, i32 2, !dbg !600
  br label %if.end35, !dbg !601

if.else:                                          ; preds = %if.then24
  %idxprom12.le = zext i32 %conv7 to i64, !dbg !588
  %13 = load %struct.dictEntry**, %struct.dictEntry*** %table11, align 8, !dbg !602, !tbaa !225
  %arrayidx34 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %13, i64 %idxprom12.le, !dbg !603
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then26
  %arrayidx34.sink = phi %struct.dictEntry** [ %arrayidx34, %if.else ], [ %next27, %if.then26 ]
  store %struct.dictEntry* %12, %struct.dictEntry** %arrayidx34.sink, align 8, !dbg !598, !tbaa !231
  %tobool36.not = icmp eq i32 %nofree, 0, !dbg !604
  br i1 %tobool36.not, label %if.then37, label %if.end53, !dbg !606

if.then37:                                        ; preds = %if.end35
  %14 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !607, !tbaa !167
  %keyDestructor = getelementptr inbounds %struct.dictType, %struct.dictType* %14, i64 0, i32 4, !dbg !607
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %keyDestructor, align 8, !dbg !607, !tbaa !610
  %tobool39.not = icmp eq void (i8*, i8*)* %15, null, !dbg !607
  br i1 %tobool39.not, label %if.end45, label %if.then40, !dbg !611

if.then40:                                        ; preds = %if.then37
  %16 = load i8*, i8** %privdata, align 8, !dbg !607, !tbaa !173
  %key44 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 0, !dbg !607
  %17 = load i8*, i8** %key44, align 8, !dbg !607, !tbaa !304
  tail call void %15(i8* noundef %16, i8* noundef %17) #17, !dbg !607
  %.pre = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !612, !tbaa !167
  br label %if.end45, !dbg !607

if.end45:                                         ; preds = %if.then40, %if.then37
  %18 = phi %struct.dictType* [ %.pre, %if.then40 ], [ %14, %if.then37 ], !dbg !612
  %valDestructor = getelementptr inbounds %struct.dictType, %struct.dictType* %18, i64 0, i32 5, !dbg !612
  %19 = load void (i8*, i8*)*, void (i8*, i8*)** %valDestructor, align 8, !dbg !612, !tbaa !508
  %tobool47.not = icmp eq void (i8*, i8*)* %19, null, !dbg !612
  br i1 %tobool47.not, label %if.end53, label %if.then48, !dbg !614

if.then48:                                        ; preds = %if.end45
  %20 = load i8*, i8** %privdata, align 8, !dbg !612, !tbaa !173
  %val = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 1, !dbg !612
  %21 = load i8*, i8** %val, align 8, !dbg !612, !tbaa !436
  tail call void %19(i8* noundef %20, i8* noundef %21) #17, !dbg !612
  br label %if.end53, !dbg !612

if.end53:                                         ; preds = %if.end45, %if.then48, %if.end35
  %22 = bitcast %struct.dictEntry* %he.0117 to i8*, !dbg !615
  tail call fastcc void @_dictFree(i8* noundef nonnull %22) #16, !dbg !616
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 %indvars.iv, i32 3, !dbg !617
  %23 = load i64, i64* %used, align 8, !dbg !618, !tbaa !194
  %dec = add i64 %23, -1, !dbg !618
  store i64 %dec, i64* %used, align 8, !dbg !618, !tbaa !194
  br label %cleanup, !dbg !619

if.end57:                                         ; preds = %cond.false, %cond.true
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0117, metadata !569, metadata !DIExpression()), !dbg !571
  %next58 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0117, i64 0, i32 2, !dbg !620
  call void @llvm.dbg.value(metadata %struct.dictEntry* undef, metadata !568, metadata !DIExpression()), !dbg !571
  %he.0 = load %struct.dictEntry*, %struct.dictEntry** %next58, align 8, !dbg !589, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !568, metadata !DIExpression()), !dbg !571
  %tobool.not = icmp eq %struct.dictEntry* %he.0, null, !dbg !590
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !590, !llvm.loop !621

while.end:                                        ; preds = %if.end57, %for.body
  %24 = load i32, i32* %rehashidx, align 8, !dbg !623, !tbaa !176
  %cmp60.not = icmp ne i32 %24, -1, !dbg !623
  %or.cond = and i1 %cmp60.not, %cmp4, !dbg !625
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !570, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !571
  br i1 %or.cond, label %for.body, label %cleanup, !dbg !625, !llvm.loop !626

cleanup:                                          ; preds = %while.end, %entry, %if.end53
  %retval.0 = phi i32 [ 0, %if.end53 ], [ 1, %entry ], [ 1, %while.end ], !dbg !571
  ret i32 %retval.0, !dbg !628
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dictDeleteNoFree(%struct.dict* nocapture noundef %ht, i8* noundef %key) local_unnamed_addr #4 !dbg !629 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %ht, metadata !631, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i8* %key, metadata !632, metadata !DIExpression()), !dbg !633
  %call = tail call fastcc i32 @dictGenericDelete(%struct.dict* noundef %ht, i8* noundef %key, i32 noundef 1) #16, !dbg !634
  ret i32 %call, !dbg !635
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_dictClear(%struct.dict* nocapture noundef readonly %d, %struct.dictht* nocapture noundef %ht) local_unnamed_addr #4 !dbg !636 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !640, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata %struct.dictht* %ht, metadata !641, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.value(metadata i64 0, metadata !642, metadata !DIExpression()), !dbg !648
  %used = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 3, !dbg !649
  %size = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !642, metadata !DIExpression()), !dbg !648
  %0 = load i64, i64* %size, align 8, !dbg !650, !tbaa !524
  %cmp44.not = icmp eq i64 %0, 0, !dbg !651
  br i1 %cmp44.not, label %for.end, label %land.rhs.lr.ph, !dbg !652

land.rhs.lr.ph:                                   ; preds = %entry
  %table = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 0
  %type = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 0
  %privdata = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 1
  %.pre = load i64, i64* %used, align 8, !dbg !649, !tbaa !194
  br label %land.rhs, !dbg !652

land.rhs:                                         ; preds = %land.rhs.lr.ph, %cleanup
  %1 = phi i64 [ %0, %land.rhs.lr.ph ], [ %16, %cleanup ]
  %2 = phi i64 [ %.pre, %land.rhs.lr.ph ], [ %17, %cleanup ], !dbg !649
  %i.045 = phi i64 [ 0, %land.rhs.lr.ph ], [ %inc, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %i.045, metadata !642, metadata !DIExpression()), !dbg !648
  %cmp1.not = icmp eq i64 %2, 0, !dbg !653
  br i1 %cmp1.not, label %for.end, label %for.body, !dbg !654

for.body:                                         ; preds = %land.rhs
  %3 = load %struct.dictEntry**, %struct.dictEntry*** %table, align 8, !dbg !655, !tbaa !225
  %arrayidx = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %3, i64 %i.045, !dbg !657
  %4 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx, align 8, !dbg !657, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %4, metadata !643, metadata !DIExpression()), !dbg !658
  %cmp2 = icmp eq %struct.dictEntry* %4, null, !dbg !659
  br i1 %cmp2, label %cleanup, label %while.body, !dbg !660

while.body:                                       ; preds = %for.body, %if.end14
  %he.041 = phi %struct.dictEntry* [ %5, %if.end14 ], [ %4, %for.body ]
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.041, metadata !643, metadata !DIExpression()), !dbg !658
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.041, i64 0, i32 2, !dbg !661
  %5 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !661, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %5, metadata !647, metadata !DIExpression()), !dbg !658
  %6 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !663, !tbaa !167
  %keyDestructor = getelementptr inbounds %struct.dictType, %struct.dictType* %6, i64 0, i32 4, !dbg !663
  %7 = load void (i8*, i8*)*, void (i8*, i8*)** %keyDestructor, align 8, !dbg !663, !tbaa !610
  %tobool3.not = icmp eq void (i8*, i8*)* %7, null, !dbg !663
  br i1 %tobool3.not, label %if.end7, label %if.then4, !dbg !665

if.then4:                                         ; preds = %while.body
  %8 = load i8*, i8** %privdata, align 8, !dbg !663, !tbaa !173
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.041, i64 0, i32 0, !dbg !663
  %9 = load i8*, i8** %key, align 8, !dbg !663, !tbaa !304
  tail call void %7(i8* noundef %8, i8* noundef %9) #17, !dbg !663
  %.pre46 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !666, !tbaa !167
  br label %if.end7, !dbg !663

if.end7:                                          ; preds = %if.then4, %while.body
  %10 = phi %struct.dictType* [ %.pre46, %if.then4 ], [ %6, %while.body ], !dbg !666
  %valDestructor = getelementptr inbounds %struct.dictType, %struct.dictType* %10, i64 0, i32 5, !dbg !666
  %11 = load void (i8*, i8*)*, void (i8*, i8*)** %valDestructor, align 8, !dbg !666, !tbaa !508
  %tobool9.not = icmp eq void (i8*, i8*)* %11, null, !dbg !666
  br i1 %tobool9.not, label %if.end14, label %if.then10, !dbg !668

if.then10:                                        ; preds = %if.end7
  %12 = load i8*, i8** %privdata, align 8, !dbg !666, !tbaa !173
  %val = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.041, i64 0, i32 1, !dbg !666
  %13 = load i8*, i8** %val, align 8, !dbg !666, !tbaa !436
  tail call void %11(i8* noundef %12, i8* noundef %13) #17, !dbg !666
  br label %if.end14, !dbg !666

if.end14:                                         ; preds = %if.then10, %if.end7
  %14 = bitcast %struct.dictEntry* %he.041 to i8*, !dbg !669
  tail call fastcc void @_dictFree(i8* noundef nonnull %14) #16, !dbg !670
  %15 = load i64, i64* %used, align 8, !dbg !671, !tbaa !194
  %dec = add i64 %15, -1, !dbg !671
  store i64 %dec, i64* %used, align 8, !dbg !671, !tbaa !194
  call void @llvm.dbg.value(metadata %struct.dictEntry* %5, metadata !643, metadata !DIExpression()), !dbg !658
  %tobool.not = icmp eq %struct.dictEntry* %5, null, !dbg !672
  br i1 %tobool.not, label %cleanup.loopexit, label %while.body, !dbg !672, !llvm.loop !673

cleanup.loopexit:                                 ; preds = %if.end14
  %.pre47 = load i64, i64* %size, align 8, !dbg !650, !tbaa !524
  br label %cleanup, !dbg !675

cleanup:                                          ; preds = %cleanup.loopexit, %for.body
  %16 = phi i64 [ %.pre47, %cleanup.loopexit ], [ %1, %for.body ], !dbg !650
  %17 = phi i64 [ %dec, %cleanup.loopexit ], [ %2, %for.body ]
  %inc = add nuw i64 %i.045, 1, !dbg !675
  call void @llvm.dbg.value(metadata i64 %inc, metadata !642, metadata !DIExpression()), !dbg !648
  %cmp = icmp ult i64 %inc, %16, !dbg !651
  br i1 %cmp, label %land.rhs, label %for.end, !dbg !652, !llvm.loop !676

for.end:                                          ; preds = %land.rhs, %cleanup, %entry
  %18 = bitcast %struct.dictht* %ht to i8**, !dbg !678
  %19 = load i8*, i8** %18, align 8, !dbg !678, !tbaa !225
  tail call fastcc void @_dictFree(i8* noundef %19) #16, !dbg !679
  tail call fastcc void @_dictReset(%struct.dictht* noundef nonnull %ht) #16, !dbg !680
  ret i32 0, !dbg !681
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dictRelease(%struct.dict* noundef %d) local_unnamed_addr #4 !dbg !682 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !684, metadata !DIExpression()), !dbg !685
  %arrayidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, !dbg !686
  %call = tail call i32 @_dictClear(%struct.dict* noundef %d, %struct.dictht* noundef nonnull %arrayidx) #16, !dbg !687
  %arrayidx2 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !688
  %call3 = tail call i32 @_dictClear(%struct.dict* noundef %d, %struct.dictht* noundef nonnull %arrayidx2) #16, !dbg !689
  %0 = bitcast %struct.dict* %d to i8*, !dbg !690
  tail call fastcc void @_dictFree(i8* noundef %0) #16, !dbg !691
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @dictFetchValue(%struct.dict* nocapture noundef %d, i8* noundef %key) local_unnamed_addr #4 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i8* %key, metadata !698, metadata !DIExpression()), !dbg !700
  %call = tail call %struct.dictEntry* @dictFind(%struct.dict* noundef %d, i8* noundef %key) #16, !dbg !701
  call void @llvm.dbg.value(metadata %struct.dictEntry* %call, metadata !699, metadata !DIExpression()), !dbg !700
  %tobool.not = icmp eq %struct.dictEntry* %call, null, !dbg !702
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !702

cond.true:                                        ; preds = %entry
  %val = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %call, i64 0, i32 1, !dbg !703
  %0 = load i8*, i8** %val, align 8, !dbg !703, !tbaa !436
  br label %cond.end, !dbg !702

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %0, %cond.true ], [ null, %entry ], !dbg !702
  ret i8* %cond, !dbg !704
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dictIterator* @dictGetIterator(%struct.dict* noundef %d) local_unnamed_addr #4 !dbg !705 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !718, metadata !DIExpression()), !dbg !720
  %call = tail call fastcc i8* @_dictAlloc(i64 noundef 32) #16, !dbg !721
  %0 = bitcast i8* %call to %struct.dictIterator*, !dbg !721
  call void @llvm.dbg.value(metadata %struct.dictIterator* %0, metadata !719, metadata !DIExpression()), !dbg !720
  %d1 = bitcast i8* %call to %struct.dict**, !dbg !722
  store %struct.dict* %d, %struct.dict** %d1, align 8, !dbg !723, !tbaa !724
  %table = getelementptr inbounds i8, i8* %call, i64 8, !dbg !726
  %1 = bitcast i8* %table to i32*, !dbg !726
  store i32 0, i32* %1, align 8, !dbg !727, !tbaa !728
  %index = getelementptr inbounds i8, i8* %call, i64 12, !dbg !729
  %2 = bitcast i8* %index to i32*, !dbg !729
  store i32 -1, i32* %2, align 4, !dbg !730, !tbaa !731
  %entry2 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !732
  %3 = bitcast i8* %entry2 to <2 x %struct.dictEntry*>*, !dbg !733
  store <2 x %struct.dictEntry*> zeroinitializer, <2 x %struct.dictEntry*>* %3, align 8, !dbg !733, !tbaa !231
  ret %struct.dictIterator* %0, !dbg !734
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local %struct.dictEntry* @dictNext(%struct.dictIterator* nocapture noundef %iter) local_unnamed_addr #9 !dbg !735 {
entry:
  call void @llvm.dbg.value(metadata %struct.dictIterator* %iter, metadata !739, metadata !DIExpression()), !dbg !744
  %entry1 = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 3
  %nextEntry = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 4
  %d = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 0
  %table = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 1
  %index = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 2
  %.pre = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !745, !tbaa !746
  %phi.cmp = icmp eq %struct.dictEntry* %.pre, null, !dbg !747
  br i1 %phi.cmp, label %if.then, label %if.end37, !dbg !748

if.then:                                          ; preds = %if.end37, %entry
  %0 = load %struct.dict*, %struct.dict** %d, align 8, !dbg !749, !tbaa !724
  %1 = load i32, i32* %table, align 8, !dbg !750, !tbaa !728
  %idxprom = sext i32 %1 to i64, !dbg !751
  call void @llvm.dbg.value(metadata !DIArgList(%struct.dict* %0, i64 %idxprom), metadata !740, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !752
  %2 = load i32, i32* %index, align 4, !dbg !753, !tbaa !731
  %cmp3 = icmp eq i32 %2, -1, !dbg !755
  %cmp5 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp3, i1 %cmp5, i1 false, !dbg !756
  br i1 %or.cond, label %if.then6, label %if.end, !dbg !756

if.then6:                                         ; preds = %if.then
  %iterators = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 4, !dbg !757
  %3 = load i32, i32* %iterators, align 4, !dbg !758, !tbaa !179
  %inc = add nsw i32 %3, 1, !dbg !758
  store i32 %inc, i32* %iterators, align 4, !dbg !758, !tbaa !179
  br label %if.end, !dbg !759

if.end:                                           ; preds = %if.then6, %if.then
  %inc9 = add nsw i32 %2, 1, !dbg !760
  store i32 %inc9, i32* %index, align 4, !dbg !760, !tbaa !731
  %size = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %idxprom, i32 1, !dbg !761
  %4 = load i64, i64* %size, align 8, !dbg !761, !tbaa !524
  %conv = trunc i64 %4 to i32, !dbg !763
  %cmp11.not = icmp slt i32 %inc9, %conv, !dbg !764
  br i1 %cmp11.not, label %cleanup, label %if.then13, !dbg !765

if.then13:                                        ; preds = %if.end
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 3, !dbg !766
  %5 = load i32, i32* %rehashidx, align 8, !dbg !766, !tbaa !176
  %cmp15.not = icmp eq i32 %5, -1, !dbg !766
  %cmp5.not = xor i1 %cmp5, true, !dbg !769
  %brmerge = select i1 %cmp15.not, i1 true, i1 %cmp5.not, !dbg !769
  br i1 %brmerge, label %return, label %if.then21, !dbg !769

if.then21:                                        ; preds = %if.then13
  store i32 1, i32* %table, align 8, !dbg !770, !tbaa !728
  store i32 0, i32* %index, align 4, !dbg !772, !tbaa !731
  call void @llvm.dbg.value(metadata %struct.dict* %0, metadata !740, metadata !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !752
  br label %cleanup, !dbg !773

cleanup:                                          ; preds = %if.end, %if.then21
  %6 = phi i32 [ 0, %if.then21 ], [ %inc9, %if.end ], !dbg !774
  %7 = phi i64 [ 1, %if.then21 ], [ %idxprom, %if.end ], !dbg !752
  call void @llvm.dbg.value(metadata %struct.dictht* undef, metadata !740, metadata !DIExpression()), !dbg !752
  %table30 = getelementptr inbounds %struct.dict, %struct.dict* %0, i64 0, i32 2, i64 %7, i32 0, !dbg !775
  %8 = load %struct.dictEntry**, %struct.dictEntry*** %table30, align 8, !dbg !775, !tbaa !225
  %idxprom32 = sext i32 %6 to i64, !dbg !776
  %arrayidx33 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %8, i64 %idxprom32, !dbg !776
  br label %if.end37

if.end37:                                         ; preds = %entry, %cleanup
  %storemerge.in = phi %struct.dictEntry** [ %arrayidx33, %cleanup ], [ %nextEntry, %entry ]
  %storemerge = load %struct.dictEntry*, %struct.dictEntry** %storemerge.in, align 8, !dbg !777, !tbaa !231
  store %struct.dictEntry* %storemerge, %struct.dictEntry** %entry1, align 8, !dbg !777, !tbaa !746
  %tobool.not = icmp eq %struct.dictEntry* %storemerge, null, !dbg !778
  br i1 %tobool.not, label %if.then, label %if.then39, !dbg !780, !llvm.loop !781

if.then39:                                        ; preds = %if.end37
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %storemerge, i64 0, i32 2, !dbg !783
  %9 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !783, !tbaa !299
  store %struct.dictEntry* %9, %struct.dictEntry** %nextEntry, align 8, !dbg !785, !tbaa !786
  br label %return, !dbg !787

return:                                           ; preds = %if.then13, %if.then39
  %retval.0 = phi %struct.dictEntry* [ %storemerge, %if.then39 ], [ null, %if.then13 ], !dbg !744
  ret %struct.dictEntry* %retval.0, !dbg !788
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dictReleaseIterator(%struct.dictIterator* noundef %iter) local_unnamed_addr #4 !dbg !789 {
entry:
  call void @llvm.dbg.value(metadata %struct.dictIterator* %iter, metadata !793, metadata !DIExpression()), !dbg !794
  %index = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 2, !dbg !795
  %0 = load i32, i32* %index, align 4, !dbg !795, !tbaa !731
  %cmp = icmp eq i32 %0, -1, !dbg !797
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !798

land.lhs.true:                                    ; preds = %entry
  %table = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 1, !dbg !799
  %1 = load i32, i32* %table, align 8, !dbg !799, !tbaa !728
  %cmp1 = icmp eq i32 %1, 0, !dbg !800
  br i1 %cmp1, label %if.end, label %if.then, !dbg !801

if.then:                                          ; preds = %land.lhs.true, %entry
  %d = getelementptr inbounds %struct.dictIterator, %struct.dictIterator* %iter, i64 0, i32 0, !dbg !802
  %2 = load %struct.dict*, %struct.dict** %d, align 8, !dbg !802, !tbaa !724
  %iterators = getelementptr inbounds %struct.dict, %struct.dict* %2, i64 0, i32 4, !dbg !803
  %3 = load i32, i32* %iterators, align 4, !dbg !804, !tbaa !179
  %dec = add nsw i32 %3, -1, !dbg !804
  store i32 %dec, i32* %iterators, align 4, !dbg !804, !tbaa !179
  br label %if.end, !dbg !805

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = bitcast %struct.dictIterator* %iter to i8*, !dbg !806
  tail call fastcc void @_dictFree(i8* noundef %4) #16, !dbg !807
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict* nocapture noundef %d) local_unnamed_addr #4 !dbg !809 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !813, metadata !DIExpression()), !dbg !819
  %ht = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, !dbg !820
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 3, !dbg !820
  %0 = load i64, i64* %used, align 8, !dbg !820, !tbaa !194
  %used3 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 3, !dbg !820
  %1 = load i64, i64* %used3, align 8, !dbg !820, !tbaa !194
  %add = sub i64 0, %1, !dbg !822
  %cmp = icmp eq i64 %0, %add, !dbg !822
  br i1 %cmp, label %cleanup, label %if.end, !dbg !823

if.end:                                           ; preds = %entry
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !824
  %2 = load i32, i32* %rehashidx, align 8, !dbg !824, !tbaa !176
  %cmp4.not = icmp eq i32 %2, -1, !dbg !824
  br i1 %cmp4.not, label %do.body35.preheader, label %if.then5, !dbg !826

do.body35.preheader:                              ; preds = %if.then5, %if.end
  %sizemask = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 2
  %table42 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %ht, i64 0, i64 0, i32 0
  br label %do.body35, !dbg !827

if.then5:                                         ; preds = %if.end
  tail call fastcc void @_dictRehashStep(%struct.dict* noundef nonnull %d) #16, !dbg !830
  %.pr = load i32, i32* %rehashidx, align 8, !dbg !831, !tbaa !176
  %phi.cmp = icmp eq i32 %.pr, -1, !dbg !830
  br i1 %phi.cmp, label %do.body35.preheader, label %do.body.preheader, !dbg !832

do.body.preheader:                                ; preds = %if.then5
  %size = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 1
  %size14 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 1
  %table = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, i32 0
  %table31 = getelementptr inbounds [2 x %struct.dictht], [2 x %struct.dictht]* %ht, i64 0, i64 0, i32 0
  br label %do.body, !dbg !833

do.body:                                          ; preds = %do.body.preheader, %cond.end
  %call = tail call i64 @random() #17, !dbg !835
  %3 = load i64, i64* %size, align 8, !dbg !837, !tbaa !524
  %4 = load i64, i64* %size14, align 8, !dbg !838, !tbaa !524
  %add15 = add i64 %4, %3, !dbg !839
  %rem = urem i64 %call, %add15, !dbg !840
  %conv16 = and i64 %rem, 4294967295, !dbg !841
  call void @llvm.dbg.value(metadata i64 %rem, metadata !816, metadata !DIExpression()), !dbg !819
  %cmp20.not = icmp ult i64 %conv16, %3, !dbg !842
  br i1 %cmp20.not, label %cond.false, label %cond.true, !dbg !843

cond.true:                                        ; preds = %do.body
  %5 = load %struct.dictEntry**, %struct.dictEntry*** %table, align 8, !dbg !844, !tbaa !225
  %sub = sub i64 %conv16, %3, !dbg !845
  %arrayidx28 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %5, i64 %sub, !dbg !846
  br label %cond.end, !dbg !843

cond.false:                                       ; preds = %do.body
  %6 = load %struct.dictEntry**, %struct.dictEntry*** %table31, align 8, !dbg !847, !tbaa !225
  %arrayidx32 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %6, i64 %conv16, !dbg !848
  br label %cond.end, !dbg !843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi %struct.dictEntry** [ %arrayidx28, %cond.true ], [ %arrayidx32, %cond.false ]
  %cond = load %struct.dictEntry*, %struct.dictEntry** %cond.in, align 8, !dbg !843, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %cond, metadata !814, metadata !DIExpression()), !dbg !819
  %cmp33 = icmp eq %struct.dictEntry* %cond, null, !dbg !849
  br i1 %cmp33, label %do.body, label %while.body.preheader, !dbg !850, !llvm.loop !851

do.body35:                                        ; preds = %do.body35.preheader, %do.body35
  %call36 = tail call i64 @random() #17, !dbg !853
  %7 = load i64, i64* %sizemask, align 8, !dbg !855, !tbaa !306
  call void @llvm.dbg.value(metadata i64 undef, metadata !816, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !819
  %8 = load %struct.dictEntry**, %struct.dictEntry*** %table42, align 8, !dbg !856, !tbaa !225
  %and = and i64 %call36, 4294967295, !dbg !857
  %idxprom43 = and i64 %and, %7, !dbg !858
  %arrayidx44 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %8, i64 %idxprom43, !dbg !858
  %9 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx44, align 8, !dbg !858, !tbaa !231
  call void @llvm.dbg.value(metadata %struct.dictEntry* %9, metadata !814, metadata !DIExpression()), !dbg !819
  %cmp46 = icmp eq %struct.dictEntry* %9, null, !dbg !859
  br i1 %cmp46, label %do.body35, label %while.body.preheader, !dbg !860, !llvm.loop !861

while.body.preheader:                             ; preds = %cond.end, %do.body35
  %he.0 = phi %struct.dictEntry* [ %9, %do.body35 ], [ %cond, %cond.end ], !dbg !863
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !815, metadata !DIExpression()), !dbg !819
  br label %while.body, !dbg !864

while.body:                                       ; preds = %while.body.preheader, %while.body
  %listlen.094 = phi i32 [ %inc, %while.body ], [ 0, %while.body.preheader ]
  %he.193 = phi %struct.dictEntry* [ %10, %while.body ], [ %he.0, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %listlen.094, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.193, metadata !814, metadata !DIExpression()), !dbg !819
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.193, i64 0, i32 2, !dbg !865
  %10 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !865, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %10, metadata !814, metadata !DIExpression()), !dbg !819
  %inc = add nuw nsw i32 %listlen.094, 1, !dbg !867
  call void @llvm.dbg.value(metadata i32 %inc, metadata !817, metadata !DIExpression()), !dbg !819
  %tobool.not = icmp eq %struct.dictEntry* %10, null, !dbg !864
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !864, !llvm.loop !868

while.end:                                        ; preds = %while.body
  %phi.cast = zext i32 %inc to i64, !dbg !870
  %call50 = tail call i64 @random() #17, !dbg !870
  %rem52 = srem i64 %call50, %phi.cast, !dbg !871
  %conv53 = trunc i64 %rem52 to i32, !dbg !870
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %conv53, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %tobool55.not95 = icmp eq i32 %conv53, 0, !dbg !872
  br i1 %tobool55.not95, label %cleanup, label %while.body56.preheader, !dbg !872

while.body56.preheader:                           ; preds = %while.end
  %11 = add i32 %conv53, -1, !dbg !872
  %xtraiter = and i32 %conv53, 7, !dbg !872
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !872
  br i1 %lcmp.mod.not, label %while.body56.prol.loopexit, label %while.body56.prol, !dbg !872

while.body56.prol:                                ; preds = %while.body56.preheader, %while.body56.prol
  %listele.097.prol = phi i32 [ %dec.prol, %while.body56.prol ], [ %conv53, %while.body56.preheader ]
  %he.296.prol = phi %struct.dictEntry* [ %12, %while.body56.prol ], [ %he.0, %while.body56.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %while.body56.prol ], [ 0, %while.body56.preheader ]
  call void @llvm.dbg.value(metadata i32 %listele.097.prol, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.296.prol, metadata !814, metadata !DIExpression()), !dbg !819
  %dec.prol = add nsw i32 %listele.097.prol, -1, !dbg !873
  call void @llvm.dbg.value(metadata i32 %dec.prol, metadata !818, metadata !DIExpression()), !dbg !819
  %next57.prol = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.296.prol, i64 0, i32 2, !dbg !874
  %12 = load %struct.dictEntry*, %struct.dictEntry** %next57.prol, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %12, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %dec.prol, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %prol.iter.next = add i32 %prol.iter, 1, !dbg !872
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter, !dbg !872
  br i1 %prol.iter.cmp.not, label %while.body56.prol.loopexit, label %while.body56.prol, !dbg !872, !llvm.loop !875

while.body56.prol.loopexit:                       ; preds = %while.body56.prol, %while.body56.preheader
  %.lcssa.unr = phi %struct.dictEntry* [ undef, %while.body56.preheader ], [ %12, %while.body56.prol ]
  %listele.097.unr = phi i32 [ %conv53, %while.body56.preheader ], [ %dec.prol, %while.body56.prol ]
  %he.296.unr = phi %struct.dictEntry* [ %he.0, %while.body56.preheader ], [ %12, %while.body56.prol ]
  %13 = icmp ult i32 %11, 7, !dbg !872
  br i1 %13, label %cleanup, label %while.body56, !dbg !872

while.body56:                                     ; preds = %while.body56.prol.loopexit, %while.body56
  %listele.097 = phi i32 [ %dec.7, %while.body56 ], [ %listele.097.unr, %while.body56.prol.loopexit ]
  %he.296 = phi %struct.dictEntry* [ %21, %while.body56 ], [ %he.296.unr, %while.body56.prol.loopexit ]
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.296, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.296, i64 0, i32 2, !dbg !874
  %14 = load %struct.dictEntry*, %struct.dictEntry** %next57, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %14, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %14, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i64 0, i32 2, !dbg !874
  %15 = load %struct.dictEntry*, %struct.dictEntry** %next57.1, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %15, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %15, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.2 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %15, i64 0, i32 2, !dbg !874
  %16 = load %struct.dictEntry*, %struct.dictEntry** %next57.2, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %16, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %16, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.3 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i64 0, i32 2, !dbg !874
  %17 = load %struct.dictEntry*, %struct.dictEntry** %next57.3, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %17, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %17, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.4 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %17, i64 0, i32 2, !dbg !874
  %18 = load %struct.dictEntry*, %struct.dictEntry** %next57.4, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %18, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %18, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.5 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %18, i64 0, i32 2, !dbg !874
  %19 = load %struct.dictEntry*, %struct.dictEntry** %next57.5, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %19, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %19, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %next57.6 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %19, i64 0, i32 2, !dbg !874
  %20 = load %struct.dictEntry*, %struct.dictEntry** %next57.6, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %20, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata i32 %listele.097, metadata !818, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  call void @llvm.dbg.value(metadata %struct.dictEntry* %20, metadata !814, metadata !DIExpression()), !dbg !819
  %dec.7 = add nsw i32 %listele.097, -8, !dbg !873
  call void @llvm.dbg.value(metadata i32 %dec.7, metadata !818, metadata !DIExpression()), !dbg !819
  %next57.7 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %20, i64 0, i32 2, !dbg !874
  %21 = load %struct.dictEntry*, %struct.dictEntry** %next57.7, align 8, !dbg !874, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %21, metadata !814, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 %dec.7, metadata !818, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %tobool55.not.7 = icmp eq i32 %dec.7, 0, !dbg !872
  br i1 %tobool55.not.7, label %cleanup, label %while.body56, !dbg !872, !llvm.loop !876

cleanup:                                          ; preds = %while.body56.prol.loopexit, %while.body56, %while.end, %entry
  %retval.0 = phi %struct.dictEntry* [ null, %entry ], [ %he.0, %while.end ], [ %.lcssa.unr, %while.body56.prol.loopexit ], [ %21, %while.body56 ], !dbg !819
  ret %struct.dictEntry* %retval.0, !dbg !877
}

; Function Attrs: nounwind
declare !dbg !878 dso_local i64 @random() local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @dictEmpty(%struct.dict* nocapture noundef %d) local_unnamed_addr #4 !dbg !882 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !884, metadata !DIExpression()), !dbg !885
  %arrayidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, !dbg !886
  %call = tail call i32 @_dictClear(%struct.dict* noundef %d, %struct.dictht* noundef nonnull %arrayidx) #16, !dbg !887
  %arrayidx2 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !888
  %call3 = tail call i32 @_dictClear(%struct.dict* noundef %d, %struct.dictht* noundef nonnull %arrayidx2) #16, !dbg !889
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !890
  store i32 -1, i32* %rehashidx, align 8, !dbg !891, !tbaa !176
  %iterators = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 4, !dbg !892
  store i32 0, i32* %iterators, align 4, !dbg !893, !tbaa !179
  ret void, !dbg !894
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dictPrintStats(%struct.dict* nocapture noundef readonly %d) local_unnamed_addr #4 !dbg !895 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !897, metadata !DIExpression()), !dbg !898
  %arrayidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, !dbg !899
  tail call fastcc void @_dictPrintStatsHt(%struct.dictht* noundef nonnull %arrayidx) #16, !dbg !900
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !901
  %0 = load i32, i32* %rehashidx, align 8, !dbg !901, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !901
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !903

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #17, !dbg !904
  %arrayidx2 = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 1, !dbg !906
  tail call fastcc void @_dictPrintStatsHt(%struct.dictht* noundef nonnull %arrayidx2) #16, !dbg !907
  br label %if.end, !dbg !908

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_dictPrintStatsHt(%struct.dictht* nocapture noundef readonly %ht) unnamed_addr #4 !dbg !910 {
entry:
  %clvector = alloca [50 x i64], align 16
  call void @llvm.dbg.value(metadata %struct.dictht* %ht, metadata !912, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !914, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !926
  %0 = bitcast [50 x i64]* %clvector to i8*, !dbg !927
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %0) #18, !dbg !927
  call void @llvm.dbg.declare(metadata [50 x i64]* %clvector, metadata !918, metadata !DIExpression()), !dbg !928
  %used = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 3, !dbg !929
  %1 = load i64, i64* %used, align 8, !dbg !929, !tbaa !194
  %cmp = icmp eq i64 %1, 0, !dbg !931
  br i1 %cmp, label %if.then, label %vector.body, !dbg !932

vector.body:                                      ; preds = %entry
  %2 = bitcast [50 x i64]* %clvector to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %2, align 16, !dbg !933, !tbaa !232
  %3 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 2, !dbg !936
  %4 = bitcast i64* %3 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %4, align 16, !dbg !933, !tbaa !232
  %5 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 4, !dbg !936
  %6 = bitcast i64* %5 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 16, !dbg !933, !tbaa !232
  %7 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 6, !dbg !936
  %8 = bitcast i64* %7 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 16, !dbg !933, !tbaa !232
  %9 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 8, !dbg !936
  %10 = bitcast i64* %9 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %10, align 16, !dbg !933, !tbaa !232
  %11 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 10, !dbg !936
  %12 = bitcast i64* %11 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %12, align 16, !dbg !933, !tbaa !232
  %13 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 12, !dbg !936
  %14 = bitcast i64* %13 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 16, !dbg !933, !tbaa !232
  %15 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 14, !dbg !936
  %16 = bitcast i64* %15 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 16, !dbg !933, !tbaa !232
  %17 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 16, !dbg !936
  %18 = bitcast i64* %17 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %18, align 16, !dbg !933, !tbaa !232
  %19 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 18, !dbg !936
  %20 = bitcast i64* %19 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %20, align 16, !dbg !933, !tbaa !232
  %21 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 20, !dbg !936
  %22 = bitcast i64* %21 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %22, align 16, !dbg !933, !tbaa !232
  %23 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 22, !dbg !936
  %24 = bitcast i64* %23 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %24, align 16, !dbg !933, !tbaa !232
  %25 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 24, !dbg !936
  %26 = bitcast i64* %25 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %26, align 16, !dbg !933, !tbaa !232
  %27 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 26, !dbg !936
  %28 = bitcast i64* %27 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 16, !dbg !933, !tbaa !232
  %29 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 28, !dbg !936
  %30 = bitcast i64* %29 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %30, align 16, !dbg !933, !tbaa !232
  %31 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 30, !dbg !936
  %32 = bitcast i64* %31 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %32, align 16, !dbg !933, !tbaa !232
  %33 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 32, !dbg !936
  %34 = bitcast i64* %33 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %34, align 16, !dbg !933, !tbaa !232
  %35 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 34, !dbg !936
  %36 = bitcast i64* %35 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %36, align 16, !dbg !933, !tbaa !232
  %37 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 36, !dbg !936
  %38 = bitcast i64* %37 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %38, align 16, !dbg !933, !tbaa !232
  %39 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 38, !dbg !936
  %40 = bitcast i64* %39 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %40, align 16, !dbg !933, !tbaa !232
  %41 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 40, !dbg !936
  %42 = bitcast i64* %41 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %42, align 16, !dbg !933, !tbaa !232
  %43 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 42, !dbg !936
  %44 = bitcast i64* %43 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %44, align 16, !dbg !933, !tbaa !232
  %45 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 44, !dbg !936
  %46 = bitcast i64* %45 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %46, align 16, !dbg !933, !tbaa !232
  %47 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 46, !dbg !936
  %48 = bitcast i64* %47 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %48, align 16, !dbg !933, !tbaa !232
  %49 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 48, !dbg !936
  %50 = bitcast i64* %49 to <2 x i64>*, !dbg !933
  store <2 x i64> zeroinitializer, <2 x i64>* %50, align 16, !dbg !933, !tbaa !232
  %size = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 1
  %51 = load i64, i64* %size, align 8, !tbaa !524
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !914, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 0, metadata !913, metadata !DIExpression()), !dbg !926
  %cmp3114.not = icmp eq i64 %51, 0, !dbg !937
  br i1 %cmp3114.not, label %for.end23, label %for.body4.lr.ph, !dbg !938

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #17, !dbg !939
  br label %cleanup64, !dbg !941

for.body4.lr.ph:                                  ; preds = %vector.body
  %table = getelementptr inbounds %struct.dictht, %struct.dictht* %ht, i64 0, i32 0
  %52 = load %struct.dictEntry**, %struct.dictEntry*** %table, align 8, !tbaa !225
  %arrayidx8 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 0
  br label %for.body4, !dbg !938

for.body4:                                        ; preds = %for.body4.lr.ph, %cleanup
  %totchainlen.0118 = phi i64 [ 0, %for.body4.lr.ph ], [ %totchainlen.1, %cleanup ]
  %maxchainlen.0117 = phi i64 [ 0, %for.body4.lr.ph ], [ %maxchainlen.2, %cleanup ]
  %slots.0116 = phi i64 [ 0, %for.body4.lr.ph ], [ %slots.1, %cleanup ]
  %i.1115 = phi i64 [ 0, %for.body4.lr.ph ], [ %inc22, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %totchainlen.0118, metadata !917, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %maxchainlen.0117, metadata !916, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %slots.0116, metadata !914, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %i.1115, metadata !913, metadata !DIExpression()), !dbg !926
  %arrayidx5 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %52, i64 %i.1115, !dbg !942
  %53 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx5, align 8, !dbg !942, !tbaa !231
  %cmp6 = icmp eq %struct.dictEntry* %53, null, !dbg !944
  br i1 %cmp6, label %if.then7, label %while.body, !dbg !945

if.then7:                                         ; preds = %for.body4
  %54 = load i64, i64* %arrayidx8, align 16, !dbg !946, !tbaa !232
  %inc9 = add i64 %54, 1, !dbg !946
  store i64 %inc9, i64* %arrayidx8, align 16, !dbg !946, !tbaa !232
  br label %cleanup, !dbg !948

while.body:                                       ; preds = %for.body4, %while.body
  %he.0113 = phi %struct.dictEntry* [ %55, %while.body ], [ %53, %for.body4 ]
  %chainlen.0112 = phi i64 [ %inc14, %while.body ], [ 0, %for.body4 ]
  call void @llvm.dbg.value(metadata %struct.dictEntry* %he.0113, metadata !922, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %chainlen.0112, metadata !915, metadata !DIExpression()), !dbg !926
  %inc14 = add i64 %chainlen.0112, 1, !dbg !950
  call void @llvm.dbg.value(metadata i64 %inc14, metadata !915, metadata !DIExpression()), !dbg !926
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %he.0113, i64 0, i32 2, !dbg !952
  %55 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !952, !tbaa !299
  call void @llvm.dbg.value(metadata %struct.dictEntry* %55, metadata !922, metadata !DIExpression()), !dbg !949
  %tobool.not = icmp eq %struct.dictEntry* %55, null, !dbg !953
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body, !dbg !953, !llvm.loop !954

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %inc11 = add i64 %slots.0116, 1, !dbg !956
  %56 = icmp ult i64 %inc14, 49, !dbg !957
  %cond = select i1 %56, i64 %inc14, i64 49, !dbg !957
  %arrayidx16 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 %cond, !dbg !958
  %57 = load i64, i64* %arrayidx16, align 8, !dbg !959, !tbaa !232
  %inc17 = add i64 %57, 1, !dbg !959
  store i64 %inc17, i64* %arrayidx16, align 8, !dbg !959, !tbaa !232
  %cmp18 = icmp ugt i64 %inc14, %maxchainlen.0117, !dbg !960
  %spec.select = select i1 %cmp18, i64 %inc14, i64 %maxchainlen.0117, !dbg !962
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !916, metadata !DIExpression()), !dbg !926
  %add = add i64 %inc14, %totchainlen.0118, !dbg !963
  call void @llvm.dbg.value(metadata i64 %add, metadata !917, metadata !DIExpression()), !dbg !926
  br label %cleanup, !dbg !964

cleanup:                                          ; preds = %while.cond.while.end_crit_edge, %if.then7
  %slots.1 = phi i64 [ %slots.0116, %if.then7 ], [ %inc11, %while.cond.while.end_crit_edge ], !dbg !926
  %maxchainlen.2 = phi i64 [ %maxchainlen.0117, %if.then7 ], [ %spec.select, %while.cond.while.end_crit_edge ], !dbg !926
  %totchainlen.1 = phi i64 [ %totchainlen.0118, %if.then7 ], [ %add, %while.cond.while.end_crit_edge ], !dbg !926
  call void @llvm.dbg.value(metadata i64 %totchainlen.1, metadata !917, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %maxchainlen.2, metadata !916, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %slots.1, metadata !914, metadata !DIExpression()), !dbg !926
  %inc22 = add nuw i64 %i.1115, 1, !dbg !965
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !913, metadata !DIExpression()), !dbg !926
  %exitcond123.not = icmp eq i64 %inc22, %51, !dbg !937
  br i1 %exitcond123.not, label %for.end23, label %for.body4, !dbg !938, !llvm.loop !966

for.end23:                                        ; preds = %cleanup, %vector.body
  %slots.0.lcssa = phi i64 [ 0, %vector.body ], [ %slots.1, %cleanup ], !dbg !968
  %maxchainlen.0.lcssa = phi i64 [ 0, %vector.body ], [ %maxchainlen.2, %cleanup ], !dbg !969
  %totchainlen.0.lcssa = phi i64 [ 0, %vector.body ], [ %totchainlen.1, %cleanup ], !dbg !970
  %call24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #17, !dbg !971
  %58 = load i64, i64* %size, align 8, !dbg !972, !tbaa !524
  %call26 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 noundef %58) #17, !dbg !973
  %59 = load i64, i64* %used, align 8, !dbg !974, !tbaa !194
  %call28 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 noundef %59) #17, !dbg !975
  %call29 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 noundef %slots.0.lcssa) #17, !dbg !976
  %call30 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 noundef %maxchainlen.0.lcssa) #17, !dbg !977
  %conv = uitofp i64 %totchainlen.0.lcssa to float, !dbg !978
  %conv31 = uitofp i64 %slots.0.lcssa to float, !dbg !979
  %div = fdiv float %conv, %conv31, !dbg !980
  %conv32 = fpext float %div to double, !dbg !978
  %call33 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), double noundef %conv32) #17, !dbg !981
  %60 = load i64, i64* %used, align 8, !dbg !982, !tbaa !194
  %conv35 = uitofp i64 %60 to float, !dbg !983
  %div37 = fdiv float %conv35, %conv31, !dbg !984
  %conv38 = fpext float %div37 to double, !dbg !983
  %call39 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), double noundef %conv38) #17, !dbg !985
  %call40 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0)) #17, !dbg !986
  call void @llvm.dbg.value(metadata i64 0, metadata !913, metadata !DIExpression()), !dbg !926
  br label %for.body44, !dbg !987

for.body44:                                       ; preds = %for.end23, %for.inc61
  %i.2122 = phi i64 [ 0, %for.end23 ], [ %inc62, %for.inc61 ]
  call void @llvm.dbg.value(metadata i64 %i.2122, metadata !913, metadata !DIExpression()), !dbg !926
  %arrayidx45 = getelementptr inbounds [50 x i64], [50 x i64]* %clvector, i64 0, i64 %i.2122, !dbg !989
  %61 = load i64, i64* %arrayidx45, align 8, !dbg !989, !tbaa !232
  %cmp46 = icmp eq i64 %61, 0, !dbg !993
  br i1 %cmp46, label %for.inc61, label %if.end49, !dbg !994

if.end49:                                         ; preds = %for.body44
  %conv55 = uitofp i64 %61 to float, !dbg !995
  %62 = load i64, i64* %size, align 8, !dbg !996, !tbaa !524
  %conv57 = uitofp i64 %62 to float, !dbg !997
  %div58 = fdiv float %conv55, %conv57, !dbg !998
  %mul = fmul float %div58, 1.000000e+02, !dbg !999
  %conv59 = fpext float %mul to double, !dbg !1000
  %call60 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i64 noundef %i.2122, i64 noundef %61, double noundef %conv59) #17, !dbg !1001
  br label %for.inc61, !dbg !1002

for.inc61:                                        ; preds = %for.body44, %if.end49
  %inc62 = add nuw nsw i64 %i.2122, 1, !dbg !1003
  call void @llvm.dbg.value(metadata i64 %inc62, metadata !913, metadata !DIExpression()), !dbg !926
  %exitcond124.not = icmp eq i64 %inc62, 49, !dbg !1004
  br i1 %exitcond124.not, label %cleanup64, label %for.body44, !dbg !987, !llvm.loop !1005

cleanup64:                                        ; preds = %for.inc61, %if.then
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %0) #18, !dbg !1007
  ret void, !dbg !1007
}

declare !dbg !1008 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @dictEnableResize() local_unnamed_addr #5 !dbg !1016 {
entry:
  store i1 false, i1* @dict_can_resize, align 4, !dbg !1019
  ret void, !dbg !1020
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @dictDisableResize() local_unnamed_addr #5 !dbg !1021 {
entry:
  store i1 true, i1* @dict_can_resize, align 4, !dbg !1022
  ret void, !dbg !1023
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal i32 @_dictStringCopyHTHashFunction(i8* noundef %key) #11 !dbg !1024 {
entry:
  call void @llvm.dbg.value(metadata i8* %key, metadata !1026, metadata !DIExpression()), !dbg !1027
  %call = tail call i64 @strlen(i8* noundef %key) #19, !dbg !1028
  %conv = trunc i64 %call to i32, !dbg !1028
  %call1 = tail call i32 @dictGenHashFunction(i8* noundef %key, i32 noundef %conv) #16, !dbg !1029
  ret i32 %call1, !dbg !1030
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_dictStringCopyHTKeyDup(i8* nocapture noundef readnone %privdata, i8* noundef %key) #4 !dbg !1031 {
entry:
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1033, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %key, metadata !1034, metadata !DIExpression()), !dbg !1038
  %call = tail call i64 @strlen(i8* noundef %key) #19, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %call, metadata !1035, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1038
  %add = shl i64 %call, 32, !dbg !1040
  %sext = add i64 %add, 4294967296, !dbg !1040
  %conv1 = ashr exact i64 %sext, 32, !dbg !1040
  %call2 = tail call fastcc i8* @_dictAlloc(i64 noundef %conv1) #16, !dbg !1041
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1036, metadata !DIExpression()), !dbg !1038
  %conv3 = ashr exact i64 %add, 32, !dbg !1042
  %call4 = tail call i8* @memcpy(i8* noundef %call2, i8* noundef %key, i64 noundef %conv3) #17, !dbg !1043
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %conv3, !dbg !1044
  store i8 0, i8* %arrayidx, align 1, !dbg !1045, !tbaa !87
  ret i8* %call2, !dbg !1046
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @_dictStringCopyHTKeyCompare(i8* nocapture noundef readnone %privdata, i8* noundef readonly %key1, i8* noundef readonly %key2) #12 !dbg !1047 {
entry:
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1049, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %key1, metadata !1050, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8* %key2, metadata !1051, metadata !DIExpression()), !dbg !1052
  %call = tail call i32 @strcmp(i8* noundef %key1, i8* noundef %key2) #19, !dbg !1053
  %cmp = icmp eq i32 %call, 0, !dbg !1054
  %conv = zext i1 %cmp to i32, !dbg !1054
  ret i32 %conv, !dbg !1055
}

; Function Attrs: noinline nounwind uwtable
define internal void @_dictStringCopyHTKeyDestructor(i8* nocapture noundef readnone %privdata, i8* noundef %key) #4 !dbg !1056 {
entry:
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1058, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i8* %key, metadata !1059, metadata !DIExpression()), !dbg !1060
  tail call fastcc void @_dictFree(i8* noundef %key) #16, !dbg !1061
  ret void, !dbg !1062
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @_dictStringKeyValCopyHTValDup(i8* nocapture noundef readnone %privdata, i8* noundef %val) #4 !dbg !1063 {
entry:
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1065, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i8* %val, metadata !1066, metadata !DIExpression()), !dbg !1069
  %call = tail call i64 @strlen(i8* noundef %val) #19, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %call, metadata !1067, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1069
  %add = shl i64 %call, 32, !dbg !1071
  %sext = add i64 %add, 4294967296, !dbg !1071
  %conv1 = ashr exact i64 %sext, 32, !dbg !1071
  %call2 = tail call fastcc i8* @_dictAlloc(i64 noundef %conv1) #16, !dbg !1072
  call void @llvm.dbg.value(metadata i8* %call2, metadata !1068, metadata !DIExpression()), !dbg !1069
  %conv3 = ashr exact i64 %add, 32, !dbg !1073
  %call4 = tail call i8* @memcpy(i8* noundef %call2, i8* noundef %val, i64 noundef %conv3) #17, !dbg !1074
  %arrayidx = getelementptr inbounds i8, i8* %call2, i64 %conv3, !dbg !1075
  store i8 0, i8* %arrayidx, align 1, !dbg !1076, !tbaa !87
  ret i8* %call2, !dbg !1077
}

; Function Attrs: noinline nounwind uwtable
define internal void @_dictStringKeyValCopyHTValDestructor(i8* nocapture noundef readnone %privdata, i8* noundef %val) #4 !dbg !1078 {
entry:
  call void @llvm.dbg.value(metadata i8* %privdata, metadata !1080, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %val, metadata !1081, metadata !DIExpression()), !dbg !1082
  tail call fastcc void @_dictFree(i8* noundef %val) #16, !dbg !1083
  ret void, !dbg !1084
}

declare !dbg !1085 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define internal void @_dictPanic(i8* nocapture readnone %fmt, ...) unnamed_addr #4 !dbg !1087 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), metadata !1091, metadata !DIExpression()), !dbg !1107
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1108
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #18, !dbg !1108
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1092, metadata !DIExpression()), !dbg !1109
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !1110
  call void @llvm.va_start(i8* nonnull %0), !dbg !1110
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1111, !tbaa !231
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #17, !dbg !1112
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1113, !tbaa !231
  %call3 = call i32 @vfprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.__va_list_tag* noundef nonnull %arraydecay) #17, !dbg !1114
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1115, !tbaa !231
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #17, !dbg !1116
  call void @llvm.va_end(i8* nonnull %0), !dbg !1117
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #18, !dbg !1118
  ret void, !dbg !1118
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

declare !dbg !1119 dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #10

declare !dbg !1175 dso_local i32 @vfprintf(%struct._IO_FILE* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

declare !dbg !1179 dso_local void @zfree(i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @_dictExpandIfNeeded(%struct.dict* nocapture noundef %d) unnamed_addr #4 !dbg !1180 {
entry:
  call void @llvm.dbg.value(metadata %struct.dict* %d, metadata !1182, metadata !DIExpression()), !dbg !1183
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 3, !dbg !1184
  %0 = load i32, i32* %rehashidx, align 8, !dbg !1184, !tbaa !176
  %cmp.not = icmp eq i32 %0, -1, !dbg !1184
  br i1 %cmp.not, label %if.end, label %return, !dbg !1186

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 1, !dbg !1187
  %1 = load i64, i64* %size, align 8, !dbg !1187, !tbaa !524
  %cmp1 = icmp eq i64 %1, 0, !dbg !1189
  br i1 %cmp1, label %return.sink.split, label %if.end3, !dbg !1190

if.end3:                                          ; preds = %if.end
  %used = getelementptr inbounds %struct.dict, %struct.dict* %d, i64 0, i32 2, i64 0, i32 3, !dbg !1191
  %2 = load i64, i64* %used, align 8, !dbg !1191, !tbaa !194
  %cmp9 = icmp uge i64 %2, %1, !dbg !1193
  %.b = load i1, i1* @dict_can_resize, align 4
  %not..b = xor i1 %.b, true
  %or.cond = select i1 %cmp9, i1 %not..b, i1 false, !dbg !1194
  br i1 %or.cond, label %cond.end, label %return, !dbg !1194

cond.end:                                         ; preds = %if.end3
  %mul = shl i64 %2, 1, !dbg !1195
  br label %return.sink.split, !dbg !1196

return.sink.split:                                ; preds = %if.end, %cond.end
  %mul.sink = phi i64 [ %mul, %cond.end ], [ 4, %if.end ]
  %call24 = tail call i32 @dictExpand(%struct.dict* noundef nonnull %d, i64 noundef %mul.sink) #16, !dbg !1183
  br label %return, !dbg !1197

return:                                           ; preds = %return.sink.split, %if.end3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end3 ], [ %call24, %return.sink.split ], !dbg !1183
  ret i32 %retval.0, !dbg !1197
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1198 dso_local i64 @strlen(i8* noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !1201 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !1205 dso_local i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #14

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nobuiltin "no-builtins" }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { nounwind }
attributes #19 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "dict_can_resize", scope: !2, file: !3, line: 53, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "dict.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "a9462f15ea7ad395ec19e4efdf27fdd4")
!4 = !{!5, !6, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!9 = !{!10, !37, !39, !41}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "dictTypeHeapStringCopyKey", scope: !2, file: !3, line: 698, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "./dict.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "b8b7e1319e2afa32704af21432f9ee20")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !13, line: 51, size: 384, elements: !15)
!15 = !{!16, !23, !27, !28, !32, !36}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !14, file: !13, line: 52, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !14, file: !13, line: 53, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!5, !5, !21}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !14, file: !13, line: 54, baseType: !24, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !14, file: !13, line: 55, baseType: !29, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!7, !5, !21, !21}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !14, file: !13, line: 56, baseType: !33, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !5, !5}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !14, file: !13, line: 57, baseType: !33, size: 64, offset: 320)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "dictTypeHeapStrings", scope: !2, file: !3, line: 709, type: !12, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "dictTypeHeapStringCopyKeyValue", scope: !2, file: !3, line: 720, type: !12, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{!"clang version 14.0.0"}
!47 = distinct !DISubprogram(name: "dictIntHashFunction", scope: !3, file: !3, line: 92, type: !48, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{!20, !20}
!50 = !{!51}
!51 = !DILocalVariable(name: "key", arg: 1, scope: !47, file: !3, line: 92, type: !20)
!52 = !DILocation(line: 0, scope: !47)
!53 = !DILocation(line: 94, column: 18, scope: !47)
!54 = !DILocation(line: 94, column: 12, scope: !47)
!55 = !DILocation(line: 94, column: 9, scope: !47)
!56 = !DILocation(line: 95, column: 18, scope: !47)
!57 = !DILocation(line: 95, column: 9, scope: !47)
!58 = !DILocation(line: 96, column: 9, scope: !47)
!59 = !DILocation(line: 97, column: 18, scope: !47)
!60 = !DILocation(line: 97, column: 9, scope: !47)
!61 = !DILocation(line: 98, column: 18, scope: !47)
!62 = !DILocation(line: 98, column: 12, scope: !47)
!63 = !DILocation(line: 98, column: 9, scope: !47)
!64 = !DILocation(line: 99, column: 18, scope: !47)
!65 = !DILocation(line: 99, column: 9, scope: !47)
!66 = !DILocation(line: 100, column: 5, scope: !47)
!67 = distinct !DISubprogram(name: "dictIdentityHashFunction", scope: !3, file: !3, line: 104, type: !48, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!68 = !{!69}
!69 = !DILocalVariable(name: "key", arg: 1, scope: !67, file: !3, line: 104, type: !20)
!70 = !DILocation(line: 0, scope: !67)
!71 = !DILocation(line: 106, column: 5, scope: !67)
!72 = distinct !DISubprogram(name: "dictGenHashFunction", scope: !3, file: !3, line: 111, type: !73, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!73 = !DISubroutineType(types: !74)
!74 = !{!20, !75, !7}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79, !80, !81}
!79 = !DILocalVariable(name: "buf", arg: 1, scope: !72, file: !3, line: 111, type: !75)
!80 = !DILocalVariable(name: "len", arg: 2, scope: !72, file: !3, line: 111, type: !7)
!81 = !DILocalVariable(name: "hash", scope: !72, file: !3, line: 112, type: !20)
!82 = !DILocation(line: 0, scope: !72)
!83 = !DILocation(line: 114, column: 5, scope: !72)
!84 = !DILocation(line: 115, column: 29, scope: !72)
!85 = !DILocation(line: 115, column: 44, scope: !72)
!86 = !DILocation(line: 115, column: 40, scope: !72)
!87 = !{!88, !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 115, column: 39, scope: !72)
!91 = !DILocation(line: 115, column: 37, scope: !72)
!92 = distinct !{!92, !83, !93}
!93 = !DILocation(line: 115, column: 46, scope: !72)
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 116, column: 5, scope: !72)
!97 = distinct !DISubprogram(name: "dictCreate", scope: !3, file: !3, line: 132, type: !98, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !105, !5}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !13, line: 75, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !13, line: 69, size: 704, elements: !103)
!103 = !{!104, !106, !107, !128, !129}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !13, line: 70, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !102, file: !13, line: 71, baseType: !5, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !102, file: !13, line: 72, baseType: !108, size: 512, offset: 128)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 512, elements: !126)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !13, line: 67, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !13, line: 62, size: 256, elements: !111)
!111 = !{!112, !122, !124, !125}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !110, file: !13, line: 63, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !13, line: 49, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !13, line: 45, size: 192, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !116, file: !13, line: 46, baseType: !5, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !13, line: 47, baseType: !5, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !13, line: 48, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !13, line: 64, baseType: !123, size: 64, offset: 64)
!123 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !110, file: !13, line: 65, baseType: !123, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !110, file: !13, line: 66, baseType: !123, size: 64, offset: 192)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !102, file: !13, line: 73, baseType: !7, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !102, file: !13, line: 74, baseType: !7, size: 32, offset: 672)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "type", arg: 1, scope: !97, file: !3, line: 132, type: !105)
!132 = !DILocalVariable(name: "privDataPtr", arg: 2, scope: !97, file: !3, line: 133, type: !5)
!133 = !DILocalVariable(name: "d", scope: !97, file: !3, line: 135, type: !100)
!134 = !DILocation(line: 0, scope: !97)
!135 = !DILocation(line: 135, column: 15, scope: !97)
!136 = !DILocation(line: 137, column: 5, scope: !97)
!137 = !DILocation(line: 138, column: 5, scope: !97)
!138 = distinct !DISubprogram(name: "_dictAlloc", scope: !3, file: !3, line: 70, type: !139, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!139 = !DISubroutineType(types: !140)
!140 = !{!5, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !123)
!142 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "size", arg: 1, scope: !138, file: !3, line: 70, type: !141)
!145 = !DILocalVariable(name: "p", scope: !138, file: !3, line: 72, type: !5)
!146 = !DILocation(line: 0, scope: !138)
!147 = !DILocation(line: 72, column: 15, scope: !138)
!148 = !DILocation(line: 73, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !3, line: 73, column: 9)
!150 = !DILocation(line: 73, column: 9, scope: !138)
!151 = !DILocation(line: 74, column: 9, scope: !149)
!152 = !DILocation(line: 75, column: 5, scope: !138)
!153 = distinct !DISubprogram(name: "_dictInit", scope: !3, file: !3, line: 142, type: !154, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!7, !100, !105, !5}
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "d", arg: 1, scope: !153, file: !3, line: 142, type: !100)
!158 = !DILocalVariable(name: "type", arg: 2, scope: !153, file: !3, line: 142, type: !105)
!159 = !DILocalVariable(name: "privDataPtr", arg: 3, scope: !153, file: !3, line: 143, type: !5)
!160 = !DILocation(line: 0, scope: !153)
!161 = !DILocation(line: 145, column: 17, scope: !153)
!162 = !DILocation(line: 145, column: 5, scope: !153)
!163 = !DILocation(line: 146, column: 17, scope: !153)
!164 = !DILocation(line: 146, column: 5, scope: !153)
!165 = !DILocation(line: 147, column: 8, scope: !153)
!166 = !DILocation(line: 147, column: 13, scope: !153)
!167 = !{!168, !169, i64 0}
!168 = !{!"dict", !169, i64 0, !169, i64 8, !88, i64 16, !170, i64 80, !170, i64 84}
!169 = !{!"any pointer", !88, i64 0}
!170 = !{!"int", !88, i64 0}
!171 = !DILocation(line: 148, column: 8, scope: !153)
!172 = !DILocation(line: 148, column: 17, scope: !153)
!173 = !{!168, !169, i64 8}
!174 = !DILocation(line: 149, column: 8, scope: !153)
!175 = !DILocation(line: 149, column: 18, scope: !153)
!176 = !{!168, !170, i64 80}
!177 = !DILocation(line: 150, column: 8, scope: !153)
!178 = !DILocation(line: 150, column: 18, scope: !153)
!179 = !{!168, !170, i64 84}
!180 = !DILocation(line: 151, column: 5, scope: !153)
!181 = distinct !DISubprogram(name: "dictResize", scope: !3, file: !3, line: 156, type: !182, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!7, !100}
!184 = !{!185, !186}
!185 = !DILocalVariable(name: "d", arg: 1, scope: !181, file: !3, line: 156, type: !100)
!186 = !DILocalVariable(name: "minimal", scope: !181, file: !3, line: 158, type: !7)
!187 = !DILocation(line: 0, scope: !181)
!188 = !DILocation(line: 160, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 160, column: 9)
!190 = !DILocation(line: 160, column: 26, scope: !189)
!191 = !DILocation(line: 160, column: 29, scope: !189)
!192 = !DILocation(line: 160, column: 9, scope: !181)
!193 = !DILocation(line: 161, column: 24, scope: !181)
!194 = !{!195, !196, i64 24}
!195 = !{!"dictht", !169, i64 0, !196, i64 8, !196, i64 16, !196, i64 24}
!196 = !{!"long", !88, i64 0}
!197 = !DILocation(line: 161, column: 15, scope: !181)
!198 = !DILocation(line: 162, column: 9, scope: !181)
!199 = !DILocation(line: 164, column: 26, scope: !181)
!200 = !DILocation(line: 164, column: 12, scope: !181)
!201 = !DILocation(line: 164, column: 5, scope: !181)
!202 = !DILocation(line: 165, column: 1, scope: !181)
!203 = distinct !DISubprogram(name: "dictExpand", scope: !3, file: !3, line: 168, type: !204, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!7, !100, !123}
!206 = !{!207, !208, !209, !210}
!207 = !DILocalVariable(name: "d", arg: 1, scope: !203, file: !3, line: 168, type: !100)
!208 = !DILocalVariable(name: "size", arg: 2, scope: !203, file: !3, line: 168, type: !123)
!209 = !DILocalVariable(name: "n", scope: !203, file: !3, line: 170, type: !109)
!210 = !DILocalVariable(name: "realsize", scope: !203, file: !3, line: 171, type: !123)
!211 = !DILocation(line: 0, scope: !203)
!212 = !DILocation(line: 171, column: 30, scope: !203)
!213 = !DILocation(line: 175, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !203, file: !3, line: 175, column: 9)
!215 = !DILocation(line: 175, column: 28, scope: !214)
!216 = !DILocation(line: 175, column: 40, scope: !214)
!217 = !DILocation(line: 175, column: 45, scope: !214)
!218 = !DILocation(line: 175, column: 9, scope: !203)
!219 = !DILocation(line: 179, column: 26, scope: !203)
!220 = !DILocation(line: 180, column: 34, scope: !203)
!221 = !DILocation(line: 180, column: 15, scope: !203)
!222 = !DILocation(line: 184, column: 5, scope: !203)
!223 = !DILocation(line: 188, column: 18, scope: !224)
!224 = distinct !DILexicalBlock(scope: !203, file: !3, line: 188, column: 9)
!225 = !{!195, !169, i64 0}
!226 = !DILocation(line: 188, column: 24, scope: !224)
!227 = !DILocation(line: 188, column: 9, scope: !203)
!228 = !DILocation(line: 189, column: 20, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 188, column: 33)
!230 = !{i64 0, i64 8, !231, i64 8, i64 8, !232, i64 16, i64 8, !232, i64 24, i64 8, !232}
!231 = !{!169, !169, i64 0}
!232 = !{!196, !196, i64 0}
!233 = !{i64 0, i64 8, !232, i64 8, i64 8, !232, i64 16, i64 8, !232}
!234 = !{i64 0, i64 8, !232, i64 8, i64 8, !232}
!235 = !{i64 0, i64 8, !232}
!236 = !DILocation(line: 190, column: 9, scope: !229)
!237 = !DILocation(line: 194, column: 16, scope: !203)
!238 = !DILocation(line: 195, column: 18, scope: !203)
!239 = !DILocation(line: 196, column: 5, scope: !203)
!240 = !DILocation(line: 197, column: 1, scope: !203)
!241 = distinct !DISubprogram(name: "_dictNextPower", scope: !3, file: !3, line: 537, type: !242, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!123, !123}
!244 = !{!245, !246}
!245 = !DILocalVariable(name: "size", arg: 1, scope: !241, file: !3, line: 537, type: !123)
!246 = !DILocalVariable(name: "i", scope: !241, file: !3, line: 539, type: !123)
!247 = !DILocation(line: 0, scope: !241)
!248 = !DILocation(line: 541, column: 14, scope: !249)
!249 = distinct !DILexicalBlock(scope: !241, file: !3, line: 541, column: 9)
!250 = !DILocation(line: 541, column: 9, scope: !241)
!251 = !DILocation(line: 543, column: 15, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 543, column: 13)
!253 = distinct !DILexicalBlock(scope: !241, file: !3, line: 542, column: 14)
!254 = !DILocation(line: 545, column: 11, scope: !253)
!255 = !DILocation(line: 543, column: 13, scope: !253)
!256 = distinct !{!256, !257, !258}
!257 = !DILocation(line: 542, column: 5, scope: !241)
!258 = !DILocation(line: 546, column: 5, scope: !241)
!259 = !DILocation(line: 547, column: 1, scope: !241)
!260 = !DISubprogram(name: "memset", scope: !261, file: !261, line: 61, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!261 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!262 = !DISubroutineType(types: !263)
!263 = !{!5, !5, !7, !141}
!264 = !{}
!265 = distinct !DISubprogram(name: "dictRehash", scope: !3, file: !3, line: 203, type: !266, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!7, !100, !7}
!268 = !{!269, !270, !271, !273, !274}
!269 = !DILocalVariable(name: "d", arg: 1, scope: !265, file: !3, line: 203, type: !100)
!270 = !DILocalVariable(name: "n", arg: 2, scope: !265, file: !3, line: 203, type: !7)
!271 = !DILocalVariable(name: "de", scope: !272, file: !3, line: 207, type: !114)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 206, column: 16)
!273 = !DILocalVariable(name: "nextde", scope: !272, file: !3, line: 207, type: !114)
!274 = !DILocalVariable(name: "h", scope: !275, file: !3, line: 224, type: !20)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 223, column: 19)
!276 = !DILocation(line: 0, scope: !265)
!277 = !DILocation(line: 204, column: 10, scope: !278)
!278 = distinct !DILexicalBlock(scope: !265, file: !3, line: 204, column: 9)
!279 = !DILocation(line: 204, column: 9, scope: !265)
!280 = !DILocation(line: 206, column: 5, scope: !265)
!281 = !DILocation(line: 206, column: 12, scope: !265)
!282 = !DILocation(line: 210, column: 22, scope: !283)
!283 = distinct !DILexicalBlock(scope: !272, file: !3, line: 210, column: 13)
!284 = !DILocation(line: 210, column: 27, scope: !283)
!285 = !DILocation(line: 210, column: 13, scope: !272)
!286 = !DILocation(line: 220, column: 15, scope: !272)
!287 = !DILocation(line: 220, column: 44, scope: !272)
!288 = !DILocation(line: 220, column: 9, scope: !272)
!289 = !DILocation(line: 211, column: 32, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !3, line: 210, column: 33)
!291 = !DILocation(line: 211, column: 13, scope: !290)
!292 = !DILocation(line: 212, column: 24, scope: !290)
!293 = !DILocation(line: 213, column: 13, scope: !290)
!294 = !DILocation(line: 0, scope: !272)
!295 = !DILocation(line: 220, column: 65, scope: !272)
!296 = !DILocation(line: 223, column: 9, scope: !272)
!297 = distinct !{!297, !288, !295}
!298 = !DILocation(line: 226, column: 26, scope: !275)
!299 = !{!300, !169, i64 16}
!300 = !{!"dictEntry", !169, i64 0, !169, i64 8, !169, i64 16}
!301 = !DILocation(line: 228, column: 17, scope: !275)
!302 = !{!303, !169, i64 0}
!303 = !{!"dictType", !169, i64 0, !169, i64 8, !169, i64 16, !169, i64 24, !169, i64 32, !169, i64 40}
!304 = !{!300, !169, i64 0}
!305 = !DILocation(line: 228, column: 52, scope: !275)
!306 = !{!195, !196, i64 16}
!307 = !DILocation(line: 0, scope: !275)
!308 = !DILocation(line: 229, column: 33, scope: !275)
!309 = !DILocation(line: 229, column: 24, scope: !275)
!310 = !DILocation(line: 229, column: 22, scope: !275)
!311 = !DILocation(line: 230, column: 31, scope: !275)
!312 = !DILocation(line: 231, column: 26, scope: !275)
!313 = !DILocation(line: 232, column: 26, scope: !275)
!314 = distinct !{!314, !296, !315}
!315 = !DILocation(line: 234, column: 9, scope: !272)
!316 = !DILocation(line: 235, column: 18, scope: !272)
!317 = !DILocation(line: 235, column: 27, scope: !272)
!318 = !DILocation(line: 235, column: 9, scope: !272)
!319 = !DILocation(line: 235, column: 38, scope: !272)
!320 = !DILocation(line: 236, column: 21, scope: !272)
!321 = !DILocation(line: 239, column: 1, scope: !265)
!322 = distinct !DISubprogram(name: "_dictFree", scope: !3, file: !3, line: 78, type: !323, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !5}
!325 = !{!326}
!326 = !DILocalVariable(name: "ptr", arg: 1, scope: !322, file: !3, line: 78, type: !5)
!327 = !DILocation(line: 0, scope: !322)
!328 = !DILocation(line: 79, column: 5, scope: !322)
!329 = !DILocation(line: 80, column: 1, scope: !322)
!330 = distinct !DISubprogram(name: "_dictReset", scope: !3, file: !3, line: 123, type: !331, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!334 = !{!335}
!335 = !DILocalVariable(name: "ht", arg: 1, scope: !330, file: !3, line: 123, type: !333)
!336 = !DILocation(line: 0, scope: !330)
!337 = !DILocation(line: 125, column: 9, scope: !330)
!338 = !DILocation(line: 125, column: 15, scope: !330)
!339 = !DILocation(line: 126, column: 9, scope: !330)
!340 = !DILocation(line: 126, column: 14, scope: !330)
!341 = !DILocation(line: 128, column: 9, scope: !330)
!342 = !DILocation(line: 128, column: 14, scope: !330)
!343 = !DILocation(line: 129, column: 1, scope: !330)
!344 = distinct !DISubprogram(name: "timeInMilliseconds", scope: !3, file: !3, line: 241, type: !345, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!6}
!347 = !{!348}
!348 = !DILocalVariable(name: "tv", scope: !344, file: !3, line: 242, type: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !350, line: 8, size: 128, elements: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!351 = !{!352, !356}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !349, file: !350, line: 10, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !354, line: 160, baseType: !355)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!355 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !349, file: !350, line: 11, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !354, line: 162, baseType: !355)
!358 = !DILocation(line: 242, column: 5, scope: !344)
!359 = !DILocation(line: 242, column: 20, scope: !344)
!360 = !DILocation(line: 244, column: 5, scope: !344)
!361 = !DILocation(line: 245, column: 28, scope: !344)
!362 = !{!363, !196, i64 0}
!363 = !{!"timeval", !196, i64 0, !196, i64 8}
!364 = !DILocation(line: 245, column: 35, scope: !344)
!365 = !DILocation(line: 245, column: 46, scope: !344)
!366 = !{!363, !196, i64 8}
!367 = !DILocation(line: 245, column: 53, scope: !344)
!368 = !DILocation(line: 245, column: 41, scope: !344)
!369 = !DILocation(line: 246, column: 1, scope: !344)
!370 = !DILocation(line: 245, column: 5, scope: !344)
!371 = !DISubprogram(name: "gettimeofday", scope: !372, file: !372, line: 66, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!372 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!373 = !DISubroutineType(types: !374)
!374 = !{!7, !375, !377}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!378 = distinct !DISubprogram(name: "dictRehashMilliseconds", scope: !3, file: !3, line: 249, type: !266, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !379)
!379 = !{!380, !381, !382, !383}
!380 = !DILocalVariable(name: "d", arg: 1, scope: !378, file: !3, line: 249, type: !100)
!381 = !DILocalVariable(name: "ms", arg: 2, scope: !378, file: !3, line: 249, type: !7)
!382 = !DILocalVariable(name: "start", scope: !378, file: !3, line: 250, type: !6)
!383 = !DILocalVariable(name: "rehashes", scope: !378, file: !3, line: 251, type: !7)
!384 = !DILocation(line: 0, scope: !378)
!385 = !DILocation(line: 250, column: 23, scope: !378)
!386 = !DILocation(line: 253, column: 5, scope: !378)
!387 = !DILocation(line: 253, column: 11, scope: !378)
!388 = !DILocation(line: 254, column: 18, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !3, line: 253, column: 30)
!390 = !DILocation(line: 255, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !3, line: 255, column: 13)
!392 = !DILocation(line: 255, column: 33, scope: !391)
!393 = !DILocation(line: 255, column: 40, scope: !391)
!394 = !DILocation(line: 255, column: 13, scope: !389)
!395 = distinct !{!395, !386, !396}
!396 = !DILocation(line: 256, column: 5, scope: !378)
!397 = !DILocation(line: 257, column: 5, scope: !378)
!398 = distinct !DISubprogram(name: "dictAdd", scope: !3, file: !3, line: 273, type: !399, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!7, !100, !5, !5}
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DILocalVariable(name: "d", arg: 1, scope: !398, file: !3, line: 273, type: !100)
!403 = !DILocalVariable(name: "key", arg: 2, scope: !398, file: !3, line: 273, type: !5)
!404 = !DILocalVariable(name: "val", arg: 3, scope: !398, file: !3, line: 273, type: !5)
!405 = !DILocalVariable(name: "index", scope: !398, file: !3, line: 275, type: !7)
!406 = !DILocalVariable(name: "entry", scope: !398, file: !3, line: 276, type: !114)
!407 = !DILocalVariable(name: "ht", scope: !398, file: !3, line: 277, type: !333)
!408 = !DILocation(line: 0, scope: !398)
!409 = !DILocation(line: 279, column: 9, scope: !410)
!410 = distinct !DILexicalBlock(scope: !398, file: !3, line: 279, column: 9)
!411 = !DILocation(line: 279, column: 9, scope: !398)
!412 = !DILocation(line: 279, column: 29, scope: !410)
!413 = !DILocation(line: 283, column: 18, scope: !414)
!414 = distinct !DILexicalBlock(scope: !398, file: !3, line: 283, column: 9)
!415 = !DILocation(line: 283, column: 41, scope: !414)
!416 = !DILocation(line: 283, column: 9, scope: !398)
!417 = !DILocation(line: 287, column: 10, scope: !398)
!418 = !DILocation(line: 288, column: 13, scope: !398)
!419 = !DILocation(line: 289, column: 23, scope: !398)
!420 = !DILocation(line: 289, column: 19, scope: !398)
!421 = !DILocation(line: 289, column: 12, scope: !398)
!422 = !DILocation(line: 289, column: 17, scope: !398)
!423 = !DILocation(line: 290, column: 22, scope: !398)
!424 = !DILocation(line: 291, column: 9, scope: !398)
!425 = !DILocation(line: 291, column: 13, scope: !398)
!426 = !DILocation(line: 294, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 294, column: 5)
!428 = distinct !DILexicalBlock(scope: !398, file: !3, line: 294, column: 5)
!429 = !{!303, !169, i64 8}
!430 = !DILocation(line: 294, column: 5, scope: !428)
!431 = !DILocation(line: 295, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 295, column: 5)
!433 = distinct !DILexicalBlock(scope: !398, file: !3, line: 295, column: 5)
!434 = !{!303, !169, i64 16}
!435 = !DILocation(line: 295, column: 5, scope: !433)
!436 = !{!300, !169, i64 8}
!437 = !DILocation(line: 297, column: 1, scope: !398)
!438 = distinct !DISubprogram(name: "_dictRehashStep", scope: !3, file: !3, line: 268, type: !439, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !100}
!441 = !{!442}
!442 = !DILocalVariable(name: "d", arg: 1, scope: !438, file: !3, line: 268, type: !100)
!443 = !DILocation(line: 0, scope: !438)
!444 = !DILocation(line: 269, column: 12, scope: !445)
!445 = distinct !DILexicalBlock(scope: !438, file: !3, line: 269, column: 9)
!446 = !DILocation(line: 269, column: 22, scope: !445)
!447 = !DILocation(line: 269, column: 9, scope: !438)
!448 = !DILocation(line: 269, column: 28, scope: !445)
!449 = !DILocation(line: 270, column: 1, scope: !438)
!450 = distinct !DISubprogram(name: "_dictKeyIndex", scope: !3, file: !3, line: 555, type: !451, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!7, !100, !21}
!453 = !{!454, !455, !456, !457, !458, !459}
!454 = !DILocalVariable(name: "d", arg: 1, scope: !450, file: !3, line: 555, type: !100)
!455 = !DILocalVariable(name: "key", arg: 2, scope: !450, file: !3, line: 555, type: !21)
!456 = !DILocalVariable(name: "h", scope: !450, file: !3, line: 557, type: !20)
!457 = !DILocalVariable(name: "idx", scope: !450, file: !3, line: 557, type: !20)
!458 = !DILocalVariable(name: "table", scope: !450, file: !3, line: 557, type: !20)
!459 = !DILocalVariable(name: "he", scope: !450, file: !3, line: 558, type: !114)
!460 = !DILocation(line: 0, scope: !450)
!461 = !DILocation(line: 561, column: 9, scope: !462)
!462 = distinct !DILexicalBlock(scope: !450, file: !3, line: 561, column: 9)
!463 = !DILocation(line: 561, column: 32, scope: !462)
!464 = !DILocation(line: 561, column: 9, scope: !450)
!465 = !DILocation(line: 564, column: 9, scope: !450)
!466 = !DILocation(line: 566, column: 32, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 565, column: 42)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 565, column: 5)
!469 = distinct !DILexicalBlock(scope: !450, file: !3, line: 565, column: 5)
!470 = !DILocation(line: 566, column: 15, scope: !467)
!471 = !DILocation(line: 568, column: 27, scope: !467)
!472 = !DILocation(line: 568, column: 14, scope: !467)
!473 = !DILocation(line: 0, scope: !467)
!474 = !DILocation(line: 569, column: 9, scope: !467)
!475 = !DILocation(line: 570, column: 17, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 570, column: 17)
!477 = distinct !DILexicalBlock(scope: !467, file: !3, line: 569, column: 19)
!478 = !{!303, !169, i64 24}
!479 = !DILocation(line: 570, column: 17, scope: !477)
!480 = !DILocation(line: 572, column: 22, scope: !477)
!481 = distinct !{!481, !474, !482}
!482 = !DILocation(line: 573, column: 9, scope: !467)
!483 = !DILocation(line: 574, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !467, file: !3, line: 574, column: 13)
!485 = !DILocation(line: 574, column: 13, scope: !467)
!486 = !DILocation(line: 577, column: 1, scope: !450)
!487 = distinct !DISubprogram(name: "dictReplace", scope: !3, file: !3, line: 303, type: !399, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!488 = !{!489, !490, !491, !492, !493}
!489 = !DILocalVariable(name: "d", arg: 1, scope: !487, file: !3, line: 303, type: !100)
!490 = !DILocalVariable(name: "key", arg: 2, scope: !487, file: !3, line: 303, type: !5)
!491 = !DILocalVariable(name: "val", arg: 3, scope: !487, file: !3, line: 303, type: !5)
!492 = !DILocalVariable(name: "entry", scope: !487, file: !3, line: 305, type: !114)
!493 = !DILocalVariable(name: "auxentry", scope: !487, file: !3, line: 305, type: !115)
!494 = !DILocation(line: 0, scope: !487)
!495 = !DILocation(line: 309, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !487, file: !3, line: 309, column: 9)
!497 = !DILocation(line: 309, column: 30, scope: !496)
!498 = !DILocation(line: 309, column: 9, scope: !487)
!499 = !DILocation(line: 312, column: 13, scope: !487)
!500 = !DILocation(line: 319, column: 16, scope: !487)
!501 = !{i64 0, i64 8, !231, i64 8, i64 8, !231}
!502 = !DILocation(line: 320, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 320, column: 5)
!504 = distinct !DILexicalBlock(scope: !487, file: !3, line: 320, column: 5)
!505 = !DILocation(line: 320, column: 5, scope: !504)
!506 = !DILocation(line: 321, column: 5, scope: !507)
!507 = distinct !DILexicalBlock(scope: !487, file: !3, line: 321, column: 5)
!508 = !{!303, !169, i64 40}
!509 = !DILocation(line: 321, column: 5, scope: !487)
!510 = !DILocation(line: 323, column: 1, scope: !487)
!511 = distinct !DISubprogram(name: "dictFind", scope: !3, file: !3, line: 405, type: !512, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!114, !100, !21}
!514 = !{!515, !516, !517, !518, !519, !520}
!515 = !DILocalVariable(name: "d", arg: 1, scope: !511, file: !3, line: 405, type: !100)
!516 = !DILocalVariable(name: "key", arg: 2, scope: !511, file: !3, line: 405, type: !21)
!517 = !DILocalVariable(name: "he", scope: !511, file: !3, line: 407, type: !114)
!518 = !DILocalVariable(name: "h", scope: !511, file: !3, line: 408, type: !20)
!519 = !DILocalVariable(name: "idx", scope: !511, file: !3, line: 408, type: !20)
!520 = !DILocalVariable(name: "table", scope: !511, file: !3, line: 408, type: !20)
!521 = !DILocation(line: 0, scope: !511)
!522 = !DILocation(line: 410, column: 18, scope: !523)
!523 = distinct !DILexicalBlock(scope: !511, file: !3, line: 410, column: 9)
!524 = !{!195, !196, i64 8}
!525 = !DILocation(line: 410, column: 23, scope: !523)
!526 = !DILocation(line: 410, column: 9, scope: !511)
!527 = !DILocation(line: 411, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !511, file: !3, line: 411, column: 9)
!529 = !DILocation(line: 411, column: 9, scope: !511)
!530 = !DILocation(line: 411, column: 29, scope: !528)
!531 = !DILocation(line: 412, column: 9, scope: !511)
!532 = !DILocation(line: 414, column: 32, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 413, column: 42)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 413, column: 5)
!535 = distinct !DILexicalBlock(scope: !511, file: !3, line: 413, column: 5)
!536 = !DILocation(line: 414, column: 15, scope: !533)
!537 = !DILocation(line: 415, column: 27, scope: !533)
!538 = !DILocation(line: 415, column: 14, scope: !533)
!539 = !DILocation(line: 0, scope: !533)
!540 = !DILocation(line: 416, column: 9, scope: !533)
!541 = !DILocation(line: 417, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 417, column: 17)
!543 = distinct !DILexicalBlock(scope: !533, file: !3, line: 416, column: 19)
!544 = !DILocation(line: 417, column: 17, scope: !543)
!545 = !DILocation(line: 419, column: 22, scope: !543)
!546 = distinct !{!546, !540, !547}
!547 = !DILocation(line: 420, column: 9, scope: !533)
!548 = !DILocation(line: 421, column: 14, scope: !549)
!549 = distinct !DILexicalBlock(scope: !533, file: !3, line: 421, column: 13)
!550 = !DILocation(line: 421, column: 13, scope: !533)
!551 = !DILocation(line: 424, column: 1, scope: !511)
!552 = distinct !DISubprogram(name: "dictDelete", scope: !3, file: !3, line: 363, type: !451, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!553 = !{!554, !555}
!554 = !DILocalVariable(name: "ht", arg: 1, scope: !552, file: !3, line: 363, type: !100)
!555 = !DILocalVariable(name: "key", arg: 2, scope: !552, file: !3, line: 363, type: !21)
!556 = !DILocation(line: 0, scope: !552)
!557 = !DILocation(line: 364, column: 12, scope: !552)
!558 = !DILocation(line: 364, column: 5, scope: !552)
!559 = distinct !DISubprogram(name: "dictGenericDelete", scope: !3, file: !3, line: 326, type: !560, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!7, !100, !21, !7}
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570}
!563 = !DILocalVariable(name: "d", arg: 1, scope: !559, file: !3, line: 326, type: !100)
!564 = !DILocalVariable(name: "key", arg: 2, scope: !559, file: !3, line: 326, type: !21)
!565 = !DILocalVariable(name: "nofree", arg: 3, scope: !559, file: !3, line: 326, type: !7)
!566 = !DILocalVariable(name: "h", scope: !559, file: !3, line: 328, type: !20)
!567 = !DILocalVariable(name: "idx", scope: !559, file: !3, line: 328, type: !20)
!568 = !DILocalVariable(name: "he", scope: !559, file: !3, line: 329, type: !114)
!569 = !DILocalVariable(name: "prevHe", scope: !559, file: !3, line: 329, type: !114)
!570 = !DILocalVariable(name: "table", scope: !559, file: !3, line: 330, type: !7)
!571 = !DILocation(line: 0, scope: !559)
!572 = !DILocation(line: 332, column: 18, scope: !573)
!573 = distinct !DILexicalBlock(scope: !559, file: !3, line: 332, column: 9)
!574 = !DILocation(line: 332, column: 23, scope: !573)
!575 = !DILocation(line: 332, column: 9, scope: !559)
!576 = !DILocation(line: 333, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !559, file: !3, line: 333, column: 9)
!578 = !DILocation(line: 333, column: 9, scope: !559)
!579 = !DILocation(line: 333, column: 29, scope: !577)
!580 = !DILocation(line: 334, column: 9, scope: !559)
!581 = !DILocation(line: 336, column: 5, scope: !582)
!582 = distinct !DILexicalBlock(scope: !559, file: !3, line: 336, column: 5)
!583 = !DILocation(line: 337, column: 32, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 336, column: 42)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 336, column: 5)
!586 = !DILocation(line: 337, column: 15, scope: !584)
!587 = !DILocation(line: 338, column: 27, scope: !584)
!588 = !DILocation(line: 338, column: 14, scope: !584)
!589 = !DILocation(line: 0, scope: !584)
!590 = !DILocation(line: 340, column: 9, scope: !584)
!591 = !DILocation(line: 341, column: 17, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 341, column: 17)
!593 = distinct !DILexicalBlock(scope: !584, file: !3, line: 340, column: 19)
!594 = !DILocation(line: 341, column: 17, scope: !593)
!595 = !DILocation(line: 343, column: 21, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 343, column: 21)
!597 = distinct !DILexicalBlock(scope: !592, file: !3, line: 341, column: 55)
!598 = !DILocation(line: 0, scope: !596)
!599 = !DILocation(line: 343, column: 21, scope: !597)
!600 = !DILocation(line: 344, column: 29, scope: !596)
!601 = !DILocation(line: 344, column: 21, scope: !596)
!602 = !DILocation(line: 346, column: 34, scope: !596)
!603 = !DILocation(line: 346, column: 21, scope: !596)
!604 = !DILocation(line: 347, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !597, file: !3, line: 347, column: 21)
!606 = !DILocation(line: 347, column: 21, scope: !597)
!607 = !DILocation(line: 348, column: 21, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 348, column: 21)
!609 = distinct !DILexicalBlock(scope: !605, file: !3, line: 347, column: 30)
!610 = !{!303, !169, i64 32}
!611 = !DILocation(line: 348, column: 21, scope: !609)
!612 = !DILocation(line: 349, column: 21, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 349, column: 21)
!614 = !DILocation(line: 349, column: 21, scope: !609)
!615 = !DILocation(line: 351, column: 27, scope: !597)
!616 = !DILocation(line: 351, column: 17, scope: !597)
!617 = !DILocation(line: 352, column: 30, scope: !597)
!618 = !DILocation(line: 352, column: 34, scope: !597)
!619 = !DILocation(line: 353, column: 17, scope: !597)
!620 = !DILocation(line: 356, column: 22, scope: !593)
!621 = distinct !{!621, !590, !622}
!622 = !DILocation(line: 357, column: 9, scope: !584)
!623 = !DILocation(line: 358, column: 14, scope: !624)
!624 = distinct !DILexicalBlock(scope: !584, file: !3, line: 358, column: 13)
!625 = !DILocation(line: 358, column: 13, scope: !584)
!626 = distinct !{!626, !581, !627}
!627 = !DILocation(line: 359, column: 5, scope: !582)
!628 = !DILocation(line: 361, column: 1, scope: !559)
!629 = distinct !DISubprogram(name: "dictDeleteNoFree", scope: !3, file: !3, line: 367, type: !451, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !630)
!630 = !{!631, !632}
!631 = !DILocalVariable(name: "ht", arg: 1, scope: !629, file: !3, line: 367, type: !100)
!632 = !DILocalVariable(name: "key", arg: 2, scope: !629, file: !3, line: 367, type: !21)
!633 = !DILocation(line: 0, scope: !629)
!634 = !DILocation(line: 368, column: 12, scope: !629)
!635 = !DILocation(line: 368, column: 5, scope: !629)
!636 = distinct !DISubprogram(name: "_dictClear", scope: !3, file: !3, line: 372, type: !637, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!7, !100, !333}
!639 = !{!640, !641, !642, !643, !647}
!640 = !DILocalVariable(name: "d", arg: 1, scope: !636, file: !3, line: 372, type: !100)
!641 = !DILocalVariable(name: "ht", arg: 2, scope: !636, file: !3, line: 372, type: !333)
!642 = !DILocalVariable(name: "i", scope: !636, file: !3, line: 374, type: !123)
!643 = !DILocalVariable(name: "he", scope: !644, file: !3, line: 378, type: !114)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 377, column: 52)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 377, column: 5)
!646 = distinct !DILexicalBlock(scope: !636, file: !3, line: 377, column: 5)
!647 = !DILocalVariable(name: "nextHe", scope: !644, file: !3, line: 378, type: !114)
!648 = !DILocation(line: 0, scope: !636)
!649 = !DILocation(line: 377, column: 37, scope: !645)
!650 = !DILocation(line: 377, column: 25, scope: !645)
!651 = !DILocation(line: 377, column: 19, scope: !645)
!652 = !DILocation(line: 377, column: 30, scope: !645)
!653 = !DILocation(line: 377, column: 42, scope: !645)
!654 = !DILocation(line: 377, column: 5, scope: !646)
!655 = !DILocation(line: 380, column: 23, scope: !656)
!656 = distinct !DILexicalBlock(scope: !644, file: !3, line: 380, column: 13)
!657 = !DILocation(line: 380, column: 19, scope: !656)
!658 = !DILocation(line: 0, scope: !644)
!659 = !DILocation(line: 380, column: 33, scope: !656)
!660 = !DILocation(line: 380, column: 13, scope: !644)
!661 = !DILocation(line: 382, column: 26, scope: !662)
!662 = distinct !DILexicalBlock(scope: !644, file: !3, line: 381, column: 19)
!663 = !DILocation(line: 383, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !662, file: !3, line: 383, column: 13)
!665 = !DILocation(line: 383, column: 13, scope: !662)
!666 = !DILocation(line: 384, column: 13, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !3, line: 384, column: 13)
!668 = !DILocation(line: 384, column: 13, scope: !662)
!669 = !DILocation(line: 385, column: 23, scope: !662)
!670 = !DILocation(line: 385, column: 13, scope: !662)
!671 = !DILocation(line: 386, column: 21, scope: !662)
!672 = !DILocation(line: 381, column: 9, scope: !644)
!673 = distinct !{!673, !672, !674}
!674 = !DILocation(line: 388, column: 9, scope: !644)
!675 = !DILocation(line: 377, column: 48, scope: !645)
!676 = distinct !{!676, !654, !677}
!677 = !DILocation(line: 389, column: 5, scope: !646)
!678 = !DILocation(line: 391, column: 19, scope: !636)
!679 = !DILocation(line: 391, column: 5, scope: !636)
!680 = !DILocation(line: 393, column: 5, scope: !636)
!681 = !DILocation(line: 394, column: 5, scope: !636)
!682 = distinct !DISubprogram(name: "dictRelease", scope: !3, file: !3, line: 398, type: !439, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!683 = !{!684}
!684 = !DILocalVariable(name: "d", arg: 1, scope: !682, file: !3, line: 398, type: !100)
!685 = !DILocation(line: 0, scope: !682)
!686 = !DILocation(line: 400, column: 19, scope: !682)
!687 = !DILocation(line: 400, column: 5, scope: !682)
!688 = !DILocation(line: 401, column: 19, scope: !682)
!689 = !DILocation(line: 401, column: 5, scope: !682)
!690 = !DILocation(line: 402, column: 15, scope: !682)
!691 = !DILocation(line: 402, column: 5, scope: !682)
!692 = !DILocation(line: 403, column: 1, scope: !682)
!693 = distinct !DISubprogram(name: "dictFetchValue", scope: !3, file: !3, line: 426, type: !694, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!5, !100, !21}
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "d", arg: 1, scope: !693, file: !3, line: 426, type: !100)
!698 = !DILocalVariable(name: "key", arg: 2, scope: !693, file: !3, line: 426, type: !21)
!699 = !DILocalVariable(name: "he", scope: !693, file: !3, line: 427, type: !114)
!700 = !DILocation(line: 0, scope: !693)
!701 = !DILocation(line: 429, column: 10, scope: !693)
!702 = !DILocation(line: 430, column: 12, scope: !693)
!703 = !DILocation(line: 430, column: 17, scope: !693)
!704 = !DILocation(line: 430, column: 5, scope: !693)
!705 = distinct !DISubprogram(name: "dictGetIterator", scope: !3, file: !3, line: 433, type: !706, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!706 = !DISubroutineType(types: !707)
!707 = !{!708, !100}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !13, line: 82, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !13, line: 77, size: 256, elements: !711)
!711 = !{!712, !713, !714, !715, !716}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !710, file: !13, line: 78, baseType: !100, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !710, file: !13, line: 79, baseType: !7, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !710, file: !13, line: 80, baseType: !7, size: 32, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !710, file: !13, line: 81, baseType: !114, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !710, file: !13, line: 81, baseType: !114, size: 64, offset: 192)
!717 = !{!718, !719}
!718 = !DILocalVariable(name: "d", arg: 1, scope: !705, file: !3, line: 433, type: !100)
!719 = !DILocalVariable(name: "iter", scope: !705, file: !3, line: 435, type: !708)
!720 = !DILocation(line: 0, scope: !705)
!721 = !DILocation(line: 435, column: 26, scope: !705)
!722 = !DILocation(line: 437, column: 11, scope: !705)
!723 = !DILocation(line: 437, column: 13, scope: !705)
!724 = !{!725, !169, i64 0}
!725 = !{!"dictIterator", !169, i64 0, !170, i64 8, !170, i64 12, !169, i64 16, !169, i64 24}
!726 = !DILocation(line: 438, column: 11, scope: !705)
!727 = !DILocation(line: 438, column: 17, scope: !705)
!728 = !{!725, !170, i64 8}
!729 = !DILocation(line: 439, column: 11, scope: !705)
!730 = !DILocation(line: 439, column: 17, scope: !705)
!731 = !{!725, !170, i64 12}
!732 = !DILocation(line: 440, column: 11, scope: !705)
!733 = !DILocation(line: 440, column: 17, scope: !705)
!734 = !DILocation(line: 442, column: 5, scope: !705)
!735 = distinct !DISubprogram(name: "dictNext", scope: !3, file: !3, line: 445, type: !736, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!114, !708}
!738 = !{!739, !740}
!739 = !DILocalVariable(name: "iter", arg: 1, scope: !735, file: !3, line: 445, type: !708)
!740 = !DILocalVariable(name: "ht", scope: !741, file: !3, line: 449, type: !333)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 448, column: 34)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 448, column: 13)
!743 = distinct !DILexicalBlock(scope: !735, file: !3, line: 447, column: 15)
!744 = !DILocation(line: 0, scope: !735)
!745 = !DILocation(line: 448, column: 19, scope: !742)
!746 = !{!725, !169, i64 16}
!747 = !DILocation(line: 447, column: 5, scope: !735)
!748 = !DILocation(line: 448, column: 13, scope: !743)
!749 = !DILocation(line: 449, column: 33, scope: !741)
!750 = !DILocation(line: 449, column: 45, scope: !741)
!751 = !DILocation(line: 449, column: 27, scope: !741)
!752 = !DILocation(line: 0, scope: !741)
!753 = !DILocation(line: 450, column: 23, scope: !754)
!754 = distinct !DILexicalBlock(scope: !741, file: !3, line: 450, column: 17)
!755 = !DILocation(line: 450, column: 29, scope: !754)
!756 = !DILocation(line: 450, column: 35, scope: !754)
!757 = !DILocation(line: 450, column: 65, scope: !754)
!758 = !DILocation(line: 450, column: 74, scope: !754)
!759 = !DILocation(line: 450, column: 56, scope: !754)
!760 = !DILocation(line: 451, column: 24, scope: !741)
!761 = !DILocation(line: 452, column: 45, scope: !762)
!762 = distinct !DILexicalBlock(scope: !741, file: !3, line: 452, column: 17)
!763 = !DILocation(line: 452, column: 32, scope: !762)
!764 = !DILocation(line: 452, column: 29, scope: !762)
!765 = !DILocation(line: 452, column: 17, scope: !741)
!766 = !DILocation(line: 453, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 453, column: 21)
!768 = distinct !DILexicalBlock(scope: !762, file: !3, line: 452, column: 51)
!769 = !DILocation(line: 453, column: 46, scope: !767)
!770 = !DILocation(line: 454, column: 32, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !3, line: 453, column: 67)
!772 = !DILocation(line: 455, column: 33, scope: !771)
!773 = !DILocation(line: 460, column: 13, scope: !768)
!774 = !DILocation(line: 461, column: 43, scope: !741)
!775 = !DILocation(line: 461, column: 31, scope: !741)
!776 = !DILocation(line: 461, column: 27, scope: !741)
!777 = !DILocation(line: 0, scope: !742)
!778 = !DILocation(line: 465, column: 13, scope: !779)
!779 = distinct !DILexicalBlock(scope: !743, file: !3, line: 465, column: 13)
!780 = !DILocation(line: 465, column: 13, scope: !743)
!781 = distinct !{!781, !747, !782}
!782 = !DILocation(line: 471, column: 5, scope: !735)
!783 = !DILocation(line: 468, column: 44, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !3, line: 465, column: 26)
!785 = !DILocation(line: 468, column: 29, scope: !784)
!786 = !{!725, !169, i64 24}
!787 = !DILocation(line: 469, column: 13, scope: !784)
!788 = !DILocation(line: 473, column: 1, scope: !735)
!789 = distinct !DISubprogram(name: "dictReleaseIterator", scope: !3, file: !3, line: 475, type: !790, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !792)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !708}
!792 = !{!793}
!793 = !DILocalVariable(name: "iter", arg: 1, scope: !789, file: !3, line: 475, type: !708)
!794 = !DILocation(line: 0, scope: !789)
!795 = !DILocation(line: 477, column: 17, scope: !796)
!796 = distinct !DILexicalBlock(scope: !789, file: !3, line: 477, column: 9)
!797 = !DILocation(line: 477, column: 23, scope: !796)
!798 = !DILocation(line: 477, column: 29, scope: !796)
!799 = !DILocation(line: 477, column: 38, scope: !796)
!800 = !DILocation(line: 477, column: 44, scope: !796)
!801 = !DILocation(line: 477, column: 9, scope: !789)
!802 = !DILocation(line: 477, column: 57, scope: !796)
!803 = !DILocation(line: 477, column: 60, scope: !796)
!804 = !DILocation(line: 477, column: 69, scope: !796)
!805 = !DILocation(line: 477, column: 51, scope: !796)
!806 = !DILocation(line: 478, column: 15, scope: !789)
!807 = !DILocation(line: 478, column: 5, scope: !789)
!808 = !DILocation(line: 479, column: 1, scope: !789)
!809 = distinct !DISubprogram(name: "dictGetRandomKey", scope: !3, file: !3, line: 483, type: !810, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!114, !100}
!812 = !{!813, !814, !815, !816, !817, !818}
!813 = !DILocalVariable(name: "d", arg: 1, scope: !809, file: !3, line: 483, type: !100)
!814 = !DILocalVariable(name: "he", scope: !809, file: !3, line: 485, type: !114)
!815 = !DILocalVariable(name: "orighe", scope: !809, file: !3, line: 485, type: !114)
!816 = !DILocalVariable(name: "h", scope: !809, file: !3, line: 486, type: !20)
!817 = !DILocalVariable(name: "listlen", scope: !809, file: !3, line: 487, type: !7)
!818 = !DILocalVariable(name: "listele", scope: !809, file: !3, line: 487, type: !7)
!819 = !DILocation(line: 0, scope: !809)
!820 = !DILocation(line: 489, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !809, file: !3, line: 489, column: 9)
!822 = !DILocation(line: 489, column: 21, scope: !821)
!823 = !DILocation(line: 489, column: 9, scope: !809)
!824 = !DILocation(line: 490, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !809, file: !3, line: 490, column: 9)
!826 = !DILocation(line: 490, column: 9, scope: !809)
!827 = !DILocation(line: 498, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 497, column: 12)
!829 = distinct !DILexicalBlock(scope: !809, file: !3, line: 491, column: 9)
!830 = !DILocation(line: 490, column: 29, scope: !825)
!831 = !DILocation(line: 491, column: 9, scope: !829)
!832 = !DILocation(line: 491, column: 9, scope: !809)
!833 = !DILocation(line: 492, column: 9, scope: !834)
!834 = distinct !DILexicalBlock(scope: !829, file: !3, line: 491, column: 29)
!835 = !DILocation(line: 493, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !834, file: !3, line: 492, column: 12)
!837 = !DILocation(line: 493, column: 38, scope: !836)
!838 = !DILocation(line: 493, column: 52, scope: !836)
!839 = !DILocation(line: 493, column: 42, scope: !836)
!840 = !DILocation(line: 493, column: 26, scope: !836)
!841 = !DILocation(line: 494, column: 19, scope: !836)
!842 = !DILocation(line: 494, column: 21, scope: !836)
!843 = !DILocation(line: 494, column: 18, scope: !836)
!844 = !DILocation(line: 494, column: 50, scope: !836)
!845 = !DILocation(line: 494, column: 58, scope: !836)
!846 = !DILocation(line: 494, column: 41, scope: !836)
!847 = !DILocation(line: 495, column: 48, scope: !836)
!848 = !DILocation(line: 495, column: 39, scope: !836)
!849 = !DILocation(line: 496, column: 20, scope: !834)
!850 = !DILocation(line: 496, column: 9, scope: !836)
!851 = distinct !{!851, !833, !852}
!852 = !DILocation(line: 496, column: 27, scope: !834)
!853 = !DILocation(line: 499, column: 17, scope: !854)
!854 = distinct !DILexicalBlock(scope: !828, file: !3, line: 498, column: 12)
!855 = !DILocation(line: 499, column: 37, scope: !854)
!856 = !DILocation(line: 500, column: 27, scope: !854)
!857 = !DILocation(line: 499, column: 26, scope: !854)
!858 = !DILocation(line: 500, column: 18, scope: !854)
!859 = !DILocation(line: 501, column: 20, scope: !828)
!860 = !DILocation(line: 501, column: 9, scope: !854)
!861 = distinct !{!861, !827, !862}
!862 = !DILocation(line: 501, column: 27, scope: !828)
!863 = !DILocation(line: 0, scope: !829)
!864 = !DILocation(line: 510, column: 5, scope: !809)
!865 = !DILocation(line: 511, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !809, file: !3, line: 510, column: 15)
!867 = !DILocation(line: 512, column: 16, scope: !866)
!868 = distinct !{!868, !864, !869}
!869 = !DILocation(line: 513, column: 5, scope: !809)
!870 = !DILocation(line: 514, column: 15, scope: !809)
!871 = !DILocation(line: 514, column: 24, scope: !809)
!872 = !DILocation(line: 516, column: 5, scope: !809)
!873 = !DILocation(line: 516, column: 18, scope: !809)
!874 = !DILocation(line: 516, column: 31, scope: !809)
!875 = distinct !{!875, !95}
!876 = distinct !{!876, !872, !874}
!877 = !DILocation(line: 518, column: 1, scope: !809)
!878 = !DISubprogram(name: "random", scope: !879, file: !879, line: 401, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!879 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!880 = !DISubroutineType(types: !881)
!881 = !{!355}
!882 = distinct !DISubprogram(name: "dictEmpty", scope: !3, file: !3, line: 579, type: !439, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "d", arg: 1, scope: !882, file: !3, line: 579, type: !100)
!885 = !DILocation(line: 0, scope: !882)
!886 = !DILocation(line: 580, column: 19, scope: !882)
!887 = !DILocation(line: 580, column: 5, scope: !882)
!888 = !DILocation(line: 581, column: 19, scope: !882)
!889 = !DILocation(line: 581, column: 5, scope: !882)
!890 = !DILocation(line: 582, column: 8, scope: !882)
!891 = !DILocation(line: 582, column: 18, scope: !882)
!892 = !DILocation(line: 583, column: 8, scope: !882)
!893 = !DILocation(line: 583, column: 18, scope: !882)
!894 = !DILocation(line: 584, column: 1, scope: !882)
!895 = distinct !DISubprogram(name: "dictPrintStats", scope: !3, file: !3, line: 631, type: !439, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !896)
!896 = !{!897}
!897 = !DILocalVariable(name: "d", arg: 1, scope: !895, file: !3, line: 631, type: !100)
!898 = !DILocation(line: 0, scope: !895)
!899 = !DILocation(line: 632, column: 24, scope: !895)
!900 = !DILocation(line: 632, column: 5, scope: !895)
!901 = !DILocation(line: 633, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !895, file: !3, line: 633, column: 9)
!903 = !DILocation(line: 633, column: 9, scope: !895)
!904 = !DILocation(line: 634, column: 9, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 633, column: 29)
!906 = !DILocation(line: 635, column: 28, scope: !905)
!907 = !DILocation(line: 635, column: 9, scope: !905)
!908 = !DILocation(line: 636, column: 5, scope: !905)
!909 = !DILocation(line: 637, column: 1, scope: !895)
!910 = distinct !DISubprogram(name: "_dictPrintStatsHt", scope: !3, file: !3, line: 587, type: !331, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !922}
!912 = !DILocalVariable(name: "ht", arg: 1, scope: !910, file: !3, line: 587, type: !333)
!913 = !DILocalVariable(name: "i", scope: !910, file: !3, line: 588, type: !123)
!914 = !DILocalVariable(name: "slots", scope: !910, file: !3, line: 588, type: !123)
!915 = !DILocalVariable(name: "chainlen", scope: !910, file: !3, line: 588, type: !123)
!916 = !DILocalVariable(name: "maxchainlen", scope: !910, file: !3, line: 588, type: !123)
!917 = !DILocalVariable(name: "totchainlen", scope: !910, file: !3, line: 589, type: !123)
!918 = !DILocalVariable(name: "clvector", scope: !910, file: !3, line: 590, type: !919)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 3200, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 50)
!922 = !DILocalVariable(name: "he", scope: !923, file: !3, line: 599, type: !114)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 598, column: 36)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 598, column: 5)
!925 = distinct !DILexicalBlock(scope: !910, file: !3, line: 598, column: 5)
!926 = !DILocation(line: 0, scope: !910)
!927 = !DILocation(line: 590, column: 5, scope: !910)
!928 = !DILocation(line: 590, column: 19, scope: !910)
!929 = !DILocation(line: 592, column: 13, scope: !930)
!930 = distinct !DILexicalBlock(scope: !910, file: !3, line: 592, column: 9)
!931 = !DILocation(line: 592, column: 18, scope: !930)
!932 = !DILocation(line: 592, column: 9, scope: !910)
!933 = !DILocation(line: 597, column: 58, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 597, column: 5)
!935 = distinct !DILexicalBlock(scope: !910, file: !3, line: 597, column: 5)
!936 = !DILocation(line: 597, column: 42, scope: !934)
!937 = !DILocation(line: 598, column: 19, scope: !924)
!938 = !DILocation(line: 598, column: 5, scope: !925)
!939 = !DILocation(line: 593, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !930, file: !3, line: 592, column: 24)
!941 = !DILocation(line: 594, column: 9, scope: !940)
!942 = !DILocation(line: 601, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !3, line: 601, column: 13)
!944 = !DILocation(line: 601, column: 26, scope: !943)
!945 = !DILocation(line: 601, column: 13, scope: !923)
!946 = !DILocation(line: 602, column: 24, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 601, column: 35)
!948 = !DILocation(line: 603, column: 13, scope: !947)
!949 = !DILocation(line: 0, scope: !923)
!950 = !DILocation(line: 610, column: 21, scope: !951)
!951 = distinct !DILexicalBlock(scope: !923, file: !3, line: 609, column: 19)
!952 = !DILocation(line: 611, column: 22, scope: !951)
!953 = !DILocation(line: 609, column: 9, scope: !923)
!954 = distinct !{!954, !953, !955}
!955 = !DILocation(line: 612, column: 9, scope: !923)
!956 = !DILocation(line: 605, column: 14, scope: !923)
!957 = !DILocation(line: 613, column: 18, scope: !923)
!958 = !DILocation(line: 613, column: 9, scope: !923)
!959 = !DILocation(line: 613, column: 86, scope: !923)
!960 = !DILocation(line: 614, column: 22, scope: !961)
!961 = distinct !DILexicalBlock(scope: !923, file: !3, line: 614, column: 13)
!962 = !DILocation(line: 614, column: 13, scope: !923)
!963 = !DILocation(line: 615, column: 21, scope: !923)
!964 = !DILocation(line: 616, column: 5, scope: !924)
!965 = !DILocation(line: 598, column: 32, scope: !924)
!966 = distinct !{!966, !938, !967}
!967 = !DILocation(line: 616, column: 5, scope: !925)
!968 = !DILocation(line: 588, column: 22, scope: !910)
!969 = !DILocation(line: 588, column: 43, scope: !910)
!970 = !DILocation(line: 589, column: 19, scope: !910)
!971 = !DILocation(line: 617, column: 5, scope: !910)
!972 = !DILocation(line: 618, column: 38, scope: !910)
!973 = !DILocation(line: 618, column: 5, scope: !910)
!974 = !DILocation(line: 619, column: 46, scope: !910)
!975 = !DILocation(line: 619, column: 5, scope: !910)
!976 = !DILocation(line: 620, column: 5, scope: !910)
!977 = !DILocation(line: 621, column: 5, scope: !910)
!978 = !DILocation(line: 622, column: 52, scope: !910)
!979 = !DILocation(line: 622, column: 71, scope: !910)
!980 = !DILocation(line: 622, column: 70, scope: !910)
!981 = !DILocation(line: 622, column: 5, scope: !910)
!982 = !DILocation(line: 623, column: 64, scope: !910)
!983 = !DILocation(line: 623, column: 53, scope: !910)
!984 = !DILocation(line: 623, column: 68, scope: !910)
!985 = !DILocation(line: 623, column: 5, scope: !910)
!986 = !DILocation(line: 624, column: 5, scope: !910)
!987 = !DILocation(line: 625, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !910, file: !3, line: 625, column: 5)
!989 = !DILocation(line: 626, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 626, column: 13)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 625, column: 48)
!992 = distinct !DILexicalBlock(scope: !988, file: !3, line: 625, column: 5)
!993 = !DILocation(line: 626, column: 25, scope: !990)
!994 = !DILocation(line: 626, column: 13, scope: !991)
!995 = !DILocation(line: 627, column: 99, scope: !991)
!996 = !DILocation(line: 627, column: 122, scope: !991)
!997 = !DILocation(line: 627, column: 118, scope: !991)
!998 = !DILocation(line: 627, column: 117, scope: !991)
!999 = !DILocation(line: 627, column: 127, scope: !991)
!1000 = !DILocation(line: 627, column: 98, scope: !991)
!1001 = !DILocation(line: 627, column: 9, scope: !991)
!1002 = !DILocation(line: 628, column: 5, scope: !991)
!1003 = !DILocation(line: 625, column: 44, scope: !992)
!1004 = !DILocation(line: 625, column: 19, scope: !992)
!1005 = distinct !{!1005, !987, !1006}
!1006 = !DILocation(line: 628, column: 5, scope: !988)
!1007 = !DILocation(line: 629, column: 1, scope: !910)
!1008 = !DISubprogram(name: "printf", scope: !1009, file: !1009, line: 332, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1009 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!7, !1012, null}
!1012 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1016 = distinct !DISubprogram(name: "dictEnableResize", scope: !3, file: !3, line: 639, type: !1017, scopeLine: 639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null}
!1019 = !DILocation(line: 640, column: 21, scope: !1016)
!1020 = !DILocation(line: 641, column: 1, scope: !1016)
!1021 = distinct !DISubprogram(name: "dictDisableResize", scope: !3, file: !3, line: 643, type: !1017, scopeLine: 643, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!1022 = !DILocation(line: 644, column: 21, scope: !1021)
!1023 = !DILocation(line: 645, column: 1, scope: !1021)
!1024 = distinct !DISubprogram(name: "_dictStringCopyHTHashFunction", scope: !3, file: !3, line: 649, type: !18, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "key", arg: 1, scope: !1024, file: !3, line: 649, type: !21)
!1027 = !DILocation(line: 0, scope: !1024)
!1028 = !DILocation(line: 651, column: 37, scope: !1024)
!1029 = !DILocation(line: 651, column: 12, scope: !1024)
!1030 = !DILocation(line: 651, column: 5, scope: !1024)
!1031 = distinct !DISubprogram(name: "_dictStringCopyHTKeyDup", scope: !3, file: !3, line: 654, type: !25, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DILocalVariable(name: "privdata", arg: 1, scope: !1031, file: !3, line: 654, type: !5)
!1034 = !DILocalVariable(name: "key", arg: 2, scope: !1031, file: !3, line: 654, type: !21)
!1035 = !DILocalVariable(name: "len", scope: !1031, file: !3, line: 656, type: !7)
!1036 = !DILocalVariable(name: "copy", scope: !1031, file: !3, line: 657, type: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1038 = !DILocation(line: 0, scope: !1031)
!1039 = !DILocation(line: 656, column: 15, scope: !1031)
!1040 = !DILocation(line: 657, column: 29, scope: !1031)
!1041 = !DILocation(line: 657, column: 18, scope: !1031)
!1042 = !DILocation(line: 660, column: 23, scope: !1031)
!1043 = !DILocation(line: 660, column: 5, scope: !1031)
!1044 = !DILocation(line: 661, column: 5, scope: !1031)
!1045 = !DILocation(line: 661, column: 15, scope: !1031)
!1046 = !DILocation(line: 662, column: 5, scope: !1031)
!1047 = distinct !DISubprogram(name: "_dictStringCopyHTKeyCompare", scope: !3, file: !3, line: 676, type: !30, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DILocalVariable(name: "privdata", arg: 1, scope: !1047, file: !3, line: 676, type: !5)
!1050 = !DILocalVariable(name: "key1", arg: 2, scope: !1047, file: !3, line: 676, type: !21)
!1051 = !DILocalVariable(name: "key2", arg: 3, scope: !1047, file: !3, line: 677, type: !21)
!1052 = !DILocation(line: 0, scope: !1047)
!1053 = !DILocation(line: 681, column: 12, scope: !1047)
!1054 = !DILocation(line: 681, column: 31, scope: !1047)
!1055 = !DILocation(line: 681, column: 5, scope: !1047)
!1056 = distinct !DISubprogram(name: "_dictStringCopyHTKeyDestructor", scope: !3, file: !3, line: 684, type: !34, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1057 = !{!1058, !1059}
!1058 = !DILocalVariable(name: "privdata", arg: 1, scope: !1056, file: !3, line: 684, type: !5)
!1059 = !DILocalVariable(name: "key", arg: 2, scope: !1056, file: !3, line: 684, type: !5)
!1060 = !DILocation(line: 0, scope: !1056)
!1061 = !DILocation(line: 688, column: 5, scope: !1056)
!1062 = !DILocation(line: 689, column: 1, scope: !1056)
!1063 = distinct !DISubprogram(name: "_dictStringKeyValCopyHTValDup", scope: !3, file: !3, line: 665, type: !25, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DILocalVariable(name: "privdata", arg: 1, scope: !1063, file: !3, line: 665, type: !5)
!1066 = !DILocalVariable(name: "val", arg: 2, scope: !1063, file: !3, line: 665, type: !21)
!1067 = !DILocalVariable(name: "len", scope: !1063, file: !3, line: 667, type: !7)
!1068 = !DILocalVariable(name: "copy", scope: !1063, file: !3, line: 668, type: !1037)
!1069 = !DILocation(line: 0, scope: !1063)
!1070 = !DILocation(line: 667, column: 15, scope: !1063)
!1071 = !DILocation(line: 668, column: 29, scope: !1063)
!1072 = !DILocation(line: 668, column: 18, scope: !1063)
!1073 = !DILocation(line: 671, column: 23, scope: !1063)
!1074 = !DILocation(line: 671, column: 5, scope: !1063)
!1075 = !DILocation(line: 672, column: 5, scope: !1063)
!1076 = !DILocation(line: 672, column: 15, scope: !1063)
!1077 = !DILocation(line: 673, column: 5, scope: !1063)
!1078 = distinct !DISubprogram(name: "_dictStringKeyValCopyHTValDestructor", scope: !3, file: !3, line: 691, type: !34, scopeLine: 692, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1080, !1081}
!1080 = !DILocalVariable(name: "privdata", arg: 1, scope: !1078, file: !3, line: 691, type: !5)
!1081 = !DILocalVariable(name: "val", arg: 2, scope: !1078, file: !3, line: 691, type: !5)
!1082 = !DILocation(line: 0, scope: !1078)
!1083 = !DILocation(line: 695, column: 5, scope: !1078)
!1084 = !DILocation(line: 696, column: 1, scope: !1078)
!1085 = !DISubprogram(name: "zmalloc", scope: !1086, file: !1086, line: 34, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1086 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!1087 = distinct !DISubprogram(name: "_dictPanic", scope: !3, file: !3, line: 57, type: !1088, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1013, null}
!1090 = !{!1091, !1092}
!1091 = !DILocalVariable(name: "fmt", arg: 1, scope: !1087, file: !3, line: 57, type: !1013)
!1092 = !DILocalVariable(name: "ap", scope: !1087, file: !3, line: 59, type: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1009, line: 52, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1095, line: 32, baseType: !1096)
!1095 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stdarg.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1097, baseType: !1098)
!1097 = !DIFile(filename: "dict.c", directory: "/home/xuheng/blackbox/llvm-test/redis")
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1099, size: 192, elements: !1105)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1099, file: !1097, line: 59, baseType: !20, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1099, file: !1097, line: 59, baseType: !20, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1099, file: !1097, line: 59, baseType: !5, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1099, file: !1097, line: 59, baseType: !5, size: 64, offset: 128)
!1105 = !{!1106}
!1106 = !DISubrange(count: 1)
!1107 = !DILocation(line: 0, scope: !1087)
!1108 = !DILocation(line: 59, column: 5, scope: !1087)
!1109 = !DILocation(line: 59, column: 13, scope: !1087)
!1110 = !DILocation(line: 61, column: 5, scope: !1087)
!1111 = !DILocation(line: 62, column: 13, scope: !1087)
!1112 = !DILocation(line: 62, column: 5, scope: !1087)
!1113 = !DILocation(line: 63, column: 14, scope: !1087)
!1114 = !DILocation(line: 63, column: 5, scope: !1087)
!1115 = !DILocation(line: 64, column: 13, scope: !1087)
!1116 = !DILocation(line: 64, column: 5, scope: !1087)
!1117 = !DILocation(line: 65, column: 5, scope: !1087)
!1118 = !DILocation(line: 66, column: 1, scope: !1087)
!1119 = !DISubprogram(name: "fprintf", scope: !1009, file: !1009, line: 326, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!7, !1122, !1012, null}
!1122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1125, line: 7, baseType: !1126)
!1125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1127, line: 49, size: 1728, elements: !1128)
!1127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1144, !1146, !1147, !1148, !1150, !1152, !1154, !1156, !1159, !1161, !1164, !1167, !1168, !1169, !1170, !1171}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1126, file: !1127, line: 51, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1126, file: !1127, line: 54, baseType: !1037, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1126, file: !1127, line: 55, baseType: !1037, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1126, file: !1127, line: 56, baseType: !1037, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1126, file: !1127, line: 57, baseType: !1037, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1126, file: !1127, line: 58, baseType: !1037, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1126, file: !1127, line: 59, baseType: !1037, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1126, file: !1127, line: 60, baseType: !1037, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1126, file: !1127, line: 61, baseType: !1037, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1126, file: !1127, line: 64, baseType: !1037, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1126, file: !1127, line: 65, baseType: !1037, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1126, file: !1127, line: 66, baseType: !1037, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1126, file: !1127, line: 68, baseType: !1142, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1127, line: 36, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1126, file: !1127, line: 70, baseType: !1145, size: 64, offset: 832)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1126, file: !1127, line: 72, baseType: !7, size: 32, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1126, file: !1127, line: 73, baseType: !7, size: 32, offset: 928)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1126, file: !1127, line: 74, baseType: !1149, size: 64, offset: 960)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !354, line: 152, baseType: !355)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1126, file: !1127, line: 77, baseType: !1151, size: 16, offset: 1024)
!1151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1126, file: !1127, line: 78, baseType: !1153, size: 8, offset: 1040)
!1153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1126, file: !1127, line: 79, baseType: !1155, size: 8, offset: 1048)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 8, elements: !1105)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1126, file: !1127, line: 81, baseType: !1157, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1127, line: 43, baseType: null)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1126, file: !1127, line: 89, baseType: !1160, size: 64, offset: 1152)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !354, line: 153, baseType: !355)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1126, file: !1127, line: 91, baseType: !1162, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1127, line: 37, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1126, file: !1127, line: 92, baseType: !1165, size: 64, offset: 1280)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1127, line: 38, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1126, file: !1127, line: 93, baseType: !1145, size: 64, offset: 1344)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1126, file: !1127, line: 94, baseType: !5, size: 64, offset: 1408)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1126, file: !1127, line: 95, baseType: !141, size: 64, offset: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1126, file: !1127, line: 96, baseType: !7, size: 32, offset: 1536)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1126, file: !1127, line: 98, baseType: !1172, size: 160, offset: 1568)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 160, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 20)
!1175 = !DISubprogram(name: "vfprintf", scope: !1009, file: !1009, line: 341, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!7, !1122, !1012, !1178}
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1179 = !DISubprogram(name: "zfree", scope: !1086, file: !1086, line: 36, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1180 = distinct !DISubprogram(name: "_dictExpandIfNeeded", scope: !3, file: !3, line: 523, type: !182, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1181 = !{!1182}
!1182 = !DILocalVariable(name: "d", arg: 1, scope: !1180, file: !3, line: 523, type: !100)
!1183 = !DILocation(line: 0, scope: !1180)
!1184 = !DILocation(line: 527, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 527, column: 9)
!1186 = !DILocation(line: 527, column: 9, scope: !1180)
!1187 = !DILocation(line: 528, column: 18, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 528, column: 9)
!1189 = !DILocation(line: 528, column: 23, scope: !1188)
!1190 = !DILocation(line: 528, column: 9, scope: !1180)
!1191 = !DILocation(line: 530, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 530, column: 9)
!1193 = !DILocation(line: 530, column: 23, scope: !1192)
!1194 = !DILocation(line: 530, column: 40, scope: !1192)
!1195 = !DILocation(line: 532, column: 67, scope: !1192)
!1196 = !DILocation(line: 531, column: 9, scope: !1192)
!1197 = !DILocation(line: 534, column: 1, scope: !1180)
!1198 = !DISubprogram(name: "strlen", scope: !261, file: !261, line: 385, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!141, !1013}
!1201 = !DISubprogram(name: "memcpy", scope: !261, file: !261, line: 43, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!5, !377, !1204, !141}
!1204 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!1205 = !DISubprogram(name: "strcmp", scope: !261, file: !261, line: 137, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !264)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!7, !1013, !1013}
