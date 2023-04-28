; ModuleID = 'zipmap.c'
source_filename = "zipmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [12 x i8] c"{status %u}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"{end}\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"{key %u}\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"{value %u}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @zipmapNew() local_unnamed_addr #0 !dbg !10 {
entry:
  %call = tail call i8* @zmalloc(i64 noundef 2) #7, !dbg !17
  call void @llvm.dbg.value(metadata i8* %call, metadata !16, metadata !DIExpression()), !dbg !18
  store i8 0, i8* %call, align 1, !dbg !19, !tbaa !20
  %arrayidx1 = getelementptr inbounds i8, i8* %call, i64 1, !dbg !23
  store i8 -1, i8* %arrayidx1, align 1, !dbg !24, !tbaa !20
  ret i8* %call, !dbg !25
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare !dbg !26 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @zipmapSet(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i8* noundef %val, i32 noundef %vlen, i32* noundef writeonly %update) local_unnamed_addr #0 !dbg !34 {
entry:
  %zmlen = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %zm, metadata !40, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %key, metadata !41, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %klen, metadata !42, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %val, metadata !43, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %vlen, metadata !44, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32* %update, metadata !45, metadata !DIExpression()), !dbg !53
  %0 = bitcast i32* %zmlen to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !54
  %call = tail call fastcc i64 @zipmapRequiredLength(i32 noundef %klen, i32 noundef %vlen) #9, !dbg !55
  %conv = trunc i64 %call to i32, !dbg !55
  call void @llvm.dbg.value(metadata i32 %conv, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %conv, metadata !48, metadata !DIExpression()), !dbg !53
  %tobool.not = icmp eq i32* %update, null, !dbg !56
  br i1 %tobool.not, label %if.end, label %if.end.thread, !dbg !58

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %zmlen, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !53
  %call1 = call fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef nonnull %zmlen) #9, !dbg !59
  call void @llvm.dbg.value(metadata i8* %call1, metadata !52, metadata !DIExpression()), !dbg !53
  %cmp = icmp eq i8* %call1, null, !dbg !60
  br i1 %cmp, label %if.then3, label %if.end15, !dbg !62

if.end.thread:                                    ; preds = %entry
  store i32 0, i32* %update, align 4, !dbg !63, !tbaa !64
  call void @llvm.dbg.value(metadata i32* %zmlen, metadata !46, metadata !DIExpression(DW_OP_deref)), !dbg !53
  %call1137 = call fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef nonnull %zmlen) #9, !dbg !59
  call void @llvm.dbg.value(metadata i8* %call1, metadata !52, metadata !DIExpression()), !dbg !53
  %cmp138 = icmp eq i8* %call1137, null, !dbg !60
  br i1 %cmp138, label %if.then3, label %if.then14, !dbg !62

if.then3:                                         ; preds = %if.end.thread, %if.end
  %1 = load i32, i32* %zmlen, align 4, !dbg !66, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %1, metadata !46, metadata !DIExpression()), !dbg !53
  %add = add i32 %1, %conv, !dbg !68
  %call4 = call fastcc i8* @zipmapResize(i8* noundef %zm, i32 noundef %add) #9, !dbg !69
  call void @llvm.dbg.value(metadata i8* %call4, metadata !40, metadata !DIExpression()), !dbg !53
  %2 = load i32, i32* %zmlen, align 4, !dbg !70, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %2, metadata !46, metadata !DIExpression()), !dbg !53
  %idx.ext = zext i32 %2 to i64, !dbg !71
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 %idx.ext, !dbg !71
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !72
  call void @llvm.dbg.value(metadata i8* %add.ptr5, metadata !52, metadata !DIExpression()), !dbg !53
  %add6 = add i32 %2, %conv, !dbg !73
  call void @llvm.dbg.value(metadata i32 %add6, metadata !46, metadata !DIExpression()), !dbg !53
  store i32 %add6, i32* %zmlen, align 4, !dbg !74, !tbaa !64
  %3 = load i8, i8* %call4, align 1, !dbg !75, !tbaa !20
  %cmp8 = icmp ult i8 %3, -2, !dbg !77
  br i1 %cmp8, label %if.then10, label %if.end37, !dbg !78

if.then10:                                        ; preds = %if.then3
  %inc = add nuw i8 %3, 1, !dbg !79
  store i8 %inc, i8* %call4, align 1, !dbg !79, !tbaa !20
  br label %if.end37, !dbg !80

if.then14:                                        ; preds = %if.end.thread
  store i32 1, i32* %update, align 4, !dbg !81, !tbaa !64
  br label %if.end15, !dbg !84

if.end15:                                         ; preds = %if.end, %if.then14
  %call1139142 = phi i8* [ %call1137, %if.then14 ], [ %call1, %if.end ]
  %call16 = call fastcc i32 @zipmapRawEntryLength(i8* noundef nonnull %call1139142) #9, !dbg !85
  call void @llvm.dbg.value(metadata i32 %call16, metadata !48, metadata !DIExpression()), !dbg !53
  %cmp17 = icmp ult i32 %call16, %conv, !dbg !86
  br i1 %cmp17, label %if.then19, label %if.end37, !dbg !88

if.then19:                                        ; preds = %if.end15
  %sub.ptr.lhs.cast = ptrtoint i8* %call1139142 to i64, !dbg !89
  %sub.ptr.rhs.cast = ptrtoint i8* %zm to i64, !dbg !89
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !89
  %conv20 = trunc i64 %sub.ptr.sub to i32, !dbg !91
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !47, metadata !DIExpression()), !dbg !53
  %4 = load i32, i32* %zmlen, align 4, !dbg !92, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %4, metadata !46, metadata !DIExpression()), !dbg !53
  %sub = sub i32 %conv, %call16, !dbg !93
  %add21 = add i32 %sub, %4, !dbg !94
  %call22 = call fastcc i8* @zipmapResize(i8* noundef %zm, i32 noundef %add21) #9, !dbg !95
  call void @llvm.dbg.value(metadata i8* %call22, metadata !40, metadata !DIExpression()), !dbg !53
  %idx.ext23 = and i64 %sub.ptr.sub, 4294967295, !dbg !96
  %add.ptr24 = getelementptr inbounds i8, i8* %call22, i64 %idx.ext23, !dbg !96
  call void @llvm.dbg.value(metadata i8* %add.ptr24, metadata !52, metadata !DIExpression()), !dbg !53
  %idx.ext25 = and i64 %call, 4294967295, !dbg !97
  %add.ptr26 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext25, !dbg !97
  %idx.ext27 = zext i32 %call16 to i64, !dbg !98
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext27, !dbg !98
  %5 = load i32, i32* %zmlen, align 4, !dbg !99, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %5, metadata !46, metadata !DIExpression()), !dbg !53
  %add29 = add i32 %call16, %conv20, !dbg !100
  %add30.neg = xor i32 %add29, -1, !dbg !101
  %sub31 = add i32 %5, %add30.neg, !dbg !102
  %conv32 = zext i32 %sub31 to i64, !dbg !99
  %call33 = call i8* @memmove(i8* noundef %add.ptr26, i8* noundef %add.ptr28, i64 noundef %conv32) #7, !dbg !103
  %6 = load i32, i32* %zmlen, align 4, !dbg !104, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %6, metadata !46, metadata !DIExpression()), !dbg !53
  %add35 = add i32 %sub, %6, !dbg !105
  call void @llvm.dbg.value(metadata i32 %add35, metadata !46, metadata !DIExpression()), !dbg !53
  store i32 %add35, i32* %zmlen, align 4, !dbg !106, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %conv, metadata !48, metadata !DIExpression()), !dbg !53
  br label %if.end37, !dbg !107

if.end37:                                         ; preds = %if.end15, %if.then19, %if.then3, %if.then10
  %freelen.0 = phi i32 [ %conv, %if.then10 ], [ %conv, %if.then3 ], [ %conv, %if.then19 ], [ %call16, %if.end15 ], !dbg !53
  %zm.addr.0 = phi i8* [ %call4, %if.then10 ], [ %call4, %if.then3 ], [ %call22, %if.then19 ], [ %zm, %if.end15 ]
  %p.0 = phi i8* [ %add.ptr5, %if.then10 ], [ %add.ptr5, %if.then3 ], [ %add.ptr24, %if.then19 ], [ %call1139142, %if.end15 ], !dbg !53
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %zm.addr.0, metadata !40, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 %freelen.0, metadata !48, metadata !DIExpression()), !dbg !53
  %sub38 = sub i32 %freelen.0, %conv, !dbg !108
  call void @llvm.dbg.value(metadata i32 %sub38, metadata !50, metadata !DIExpression()), !dbg !53
  %cmp39 = icmp ugt i32 %sub38, 3, !dbg !109
  br i1 %cmp39, label %if.then41, label %if.else59, !dbg !111

if.then41:                                        ; preds = %if.end37
  %sub.ptr.lhs.cast42 = ptrtoint i8* %p.0 to i64, !dbg !112
  %sub.ptr.rhs.cast43 = ptrtoint i8* %zm.addr.0 to i64, !dbg !112
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !112
  %conv45 = trunc i64 %sub.ptr.sub44 to i32, !dbg !114
  call void @llvm.dbg.value(metadata i32 %conv45, metadata !47, metadata !DIExpression()), !dbg !53
  %idx.ext46 = and i64 %call, 4294967295, !dbg !115
  %add.ptr47 = getelementptr inbounds i8, i8* %p.0, i64 %idx.ext46, !dbg !115
  %idx.ext48 = zext i32 %freelen.0 to i64, !dbg !116
  %add.ptr49 = getelementptr inbounds i8, i8* %p.0, i64 %idx.ext48, !dbg !116
  %7 = load i32, i32* %zmlen, align 4, !dbg !117, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %7, metadata !46, metadata !DIExpression()), !dbg !53
  %add50 = add i32 %freelen.0, %conv45, !dbg !118
  %add51.neg = xor i32 %add50, -1, !dbg !119
  %sub52 = add i32 %7, %add51.neg, !dbg !120
  %conv53 = zext i32 %sub52 to i64, !dbg !117
  %call54 = call i8* @memmove(i8* noundef %add.ptr47, i8* noundef %add.ptr49, i64 noundef %conv53) #7, !dbg !121
  %8 = load i32, i32* %zmlen, align 4, !dbg !122, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %8, metadata !46, metadata !DIExpression()), !dbg !53
  %sub55 = sub i32 %8, %sub38, !dbg !122
  call void @llvm.dbg.value(metadata i32 %sub55, metadata !46, metadata !DIExpression()), !dbg !53
  store i32 %sub55, i32* %zmlen, align 4, !dbg !122, !tbaa !64
  %call56 = call fastcc i8* @zipmapResize(i8* noundef %zm.addr.0, i32 noundef %sub55) #9, !dbg !123
  call void @llvm.dbg.value(metadata i8* %call56, metadata !40, metadata !DIExpression()), !dbg !53
  %idx.ext57 = and i64 %sub.ptr.sub44, 4294967295, !dbg !124
  %add.ptr58 = getelementptr inbounds i8, i8* %call56, i64 %idx.ext57, !dbg !124
  call void @llvm.dbg.value(metadata i8* %add.ptr58, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !53
  br label %if.end60, !dbg !125

if.else59:                                        ; preds = %if.end37
  call void @llvm.dbg.value(metadata i32 %sub38, metadata !51, metadata !DIExpression()), !dbg !53
  %phi.cast = trunc i32 %sub38 to i8
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then41
  %zm.addr.1 = phi i8* [ %call56, %if.then41 ], [ %zm.addr.0, %if.else59 ], !dbg !53
  %vempty.0 = phi i8 [ 0, %if.then41 ], [ %phi.cast, %if.else59 ]
  %p.1 = phi i8* [ %add.ptr58, %if.then41 ], [ %p.0, %if.else59 ], !dbg !53
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i32 undef, metadata !51, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8* %zm.addr.1, metadata !40, metadata !DIExpression()), !dbg !53
  %call61 = call fastcc i32 @zipmapEncodeLength(i8* noundef %p.1, i32 noundef %klen) #9, !dbg !126
  %idx.ext62 = zext i32 %call61 to i64, !dbg !127
  %add.ptr63 = getelementptr inbounds i8, i8* %p.1, i64 %idx.ext62, !dbg !127
  call void @llvm.dbg.value(metadata i8* %add.ptr63, metadata !52, metadata !DIExpression()), !dbg !53
  %conv64 = zext i32 %klen to i64, !dbg !128
  %call65 = call i8* @memcpy(i8* noundef %add.ptr63, i8* noundef %key, i64 noundef %conv64) #7, !dbg !129
  %add.ptr67 = getelementptr inbounds i8, i8* %add.ptr63, i64 %conv64, !dbg !130
  call void @llvm.dbg.value(metadata i8* %add.ptr67, metadata !52, metadata !DIExpression()), !dbg !53
  %call68 = call fastcc i32 @zipmapEncodeLength(i8* noundef %add.ptr67, i32 noundef %vlen) #9, !dbg !131
  %idx.ext69 = zext i32 %call68 to i64, !dbg !132
  %add.ptr70 = getelementptr inbounds i8, i8* %add.ptr67, i64 %idx.ext69, !dbg !132
  call void @llvm.dbg.value(metadata i8* %add.ptr70, metadata !52, metadata !DIExpression()), !dbg !53
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr70, i64 1, !dbg !133
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !52, metadata !DIExpression()), !dbg !53
  store i8 %vempty.0, i8* %add.ptr70, align 1, !dbg !134, !tbaa !20
  %conv72 = zext i32 %vlen to i64, !dbg !135
  %call73 = call i8* @memcpy(i8* noundef nonnull %incdec.ptr, i8* noundef %val, i64 noundef %conv72) #7, !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !137
  ret i8* %zm.addr.1, !dbg !138
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i64 @zipmapRequiredLength(i32 noundef %klen, i32 noundef %vlen) unnamed_addr #3 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata i32 %klen, metadata !143, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32 %vlen, metadata !144, metadata !DIExpression()), !dbg !146
  %add = add i32 %vlen, %klen, !dbg !147
  call void @llvm.dbg.value(metadata i32 %add, metadata !145, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !146
  %cmp = icmp ugt i32 %klen, 253, !dbg !148
  %spec.select.v = select i1 %cmp, i32 7, i32 3, !dbg !150
  %spec.select = add i32 %add, %spec.select.v, !dbg !150
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !145, metadata !DIExpression()), !dbg !146
  %cmp3 = icmp ugt i32 %vlen, 253, !dbg !151
  %add5 = add i32 %spec.select, 4, !dbg !153
  %l.1 = select i1 %cmp3, i32 %add5, i32 %spec.select, !dbg !153
  call void @llvm.dbg.value(metadata i32 %l.1, metadata !145, metadata !DIExpression()), !dbg !146
  %conv = zext i32 %l.1 to i64, !dbg !154
  ret i64 %conv, !dbg !155
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef readonly %key, i32 noundef %klen, i32* noundef writeonly %totlen) unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !161, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i8* %key, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 %klen, metadata !163, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32* %totlen, metadata !164, metadata !DIExpression()), !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %zm, i64 1, !dbg !172
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !165, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i8* null, metadata !166, metadata !DIExpression()), !dbg !171
  %0 = load i8, i8* %add.ptr, align 1, !dbg !173, !tbaa !20
  %cmp.not66 = icmp eq i8 %0, -1, !dbg !174
  br i1 %cmp.not66, label %while.end, label %while.body.lr.ph, !dbg !175

while.body.lr.ph:                                 ; preds = %entry
  %cmp11.not = icmp ne i32* %totlen, null
  %conv9 = zext i32 %klen to i64
  br label %while.body, !dbg !175

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  %p.068 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %add.ptr25, %cleanup ]
  %k.067 = phi i8* [ null, %while.body.lr.ph ], [ %k.1, %cleanup ]
  call void @llvm.dbg.value(metadata i8* %p.068, metadata !165, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i8* %k.067, metadata !166, metadata !DIExpression()), !dbg !171
  %call = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %p.068) #9, !dbg !176
  call void @llvm.dbg.value(metadata i32 %call, metadata !167, metadata !DIExpression()), !dbg !171
  %call2 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call) #9, !dbg !177
  call void @llvm.dbg.value(metadata i32 %call2, metadata !168, metadata !DIExpression()), !dbg !171
  %cmp3 = icmp eq i8* %k.067, null, !dbg !178
  br i1 %cmp3, label %land.lhs.true, label %cleanup, !dbg !180

land.lhs.true:                                    ; preds = %while.body
  %cmp5 = icmp eq i32 %call, %klen, !dbg !181
  br i1 %cmp5, label %land.lhs.true7, label %cleanup, !dbg !182

land.lhs.true7:                                   ; preds = %land.lhs.true
  %idx.ext = zext i32 %call2 to i64, !dbg !183
  %add.ptr8 = getelementptr inbounds i8, i8* %p.068, i64 %idx.ext, !dbg !183
  %call10 = tail call i32 @memcmp(i8* noundef nonnull %add.ptr8, i8* noundef %key, i64 noundef %conv9) #10, !dbg !184
  %tobool.not = icmp ne i32 %call10, 0, !dbg !184
  %brmerge = or i1 %tobool.not, %cmp11.not, !dbg !185
  %.mux = select i1 %tobool.not, i8* null, i8* %p.068, !dbg !185
  br i1 %brmerge, label %cleanup, label %cleanup32, !dbg !185

cleanup:                                          ; preds = %land.lhs.true7, %while.body, %land.lhs.true
  %k.1 = phi i8* [ %.mux, %land.lhs.true7 ], [ null, %land.lhs.true ], [ %k.067, %while.body ], !dbg !171
  call void @llvm.dbg.value(metadata i8* %k.1, metadata !166, metadata !DIExpression()), !dbg !171
  %add = add i32 %call2, %call, !dbg !186
  %idx.ext15 = zext i32 %add to i64, !dbg !187
  %add.ptr16 = getelementptr inbounds i8, i8* %p.068, i64 %idx.ext15, !dbg !187
  call void @llvm.dbg.value(metadata i8* %add.ptr16, metadata !165, metadata !DIExpression()), !dbg !171
  %call17 = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %add.ptr16) #9, !dbg !188
  call void @llvm.dbg.value(metadata i32 %call17, metadata !167, metadata !DIExpression()), !dbg !171
  %call18 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call17) #9, !dbg !189
  %idx.ext19 = zext i32 %call18 to i64, !dbg !190
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.ext19, !dbg !190
  call void @llvm.dbg.value(metadata i8* %add.ptr20, metadata !165, metadata !DIExpression()), !dbg !171
  %1 = load i8, i8* %add.ptr20, align 1, !dbg !191, !tbaa !20
  call void @llvm.dbg.value(metadata i8 %1, metadata !169, metadata !DIExpression()), !dbg !192
  %add21 = add i32 %call17, 1, !dbg !193
  %conv22 = zext i8 %1 to i32, !dbg !194
  %add23 = add i32 %add21, %conv22, !dbg !195
  %idx.ext24 = zext i32 %add23 to i64, !dbg !196
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr20, i64 %idx.ext24, !dbg !196
  call void @llvm.dbg.value(metadata i8* %add.ptr25, metadata !165, metadata !DIExpression()), !dbg !171
  %2 = load i8, i8* %add.ptr25, align 1, !dbg !173, !tbaa !20
  %cmp.not = icmp eq i8 %2, -1, !dbg !174
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !175, !llvm.loop !197

while.end:                                        ; preds = %cleanup, %entry
  %k.0.lcssa = phi i8* [ null, %entry ], [ %k.1, %cleanup ], !dbg !199
  %p.0.lcssa = phi i8* [ %add.ptr, %entry ], [ %add.ptr25, %cleanup ], !dbg !171
  %cmp26.not = icmp eq i32* %totlen, null, !dbg !200
  br i1 %cmp26.not, label %cleanup32, label %if.then28, !dbg !202

if.then28:                                        ; preds = %while.end
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0.lcssa to i64, !dbg !203
  %sub.ptr.rhs.cast = ptrtoint i8* %zm to i64, !dbg !203
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !203
  %conv29 = trunc i64 %sub.ptr.sub to i32, !dbg !204
  %add30 = add i32 %conv29, 1, !dbg !205
  store i32 %add30, i32* %totlen, align 4, !dbg !206, !tbaa !64
  br label %cleanup32, !dbg !207

cleanup32:                                        ; preds = %land.lhs.true7, %while.end, %if.then28
  %retval.2 = phi i8* [ %k.0.lcssa, %if.then28 ], [ %k.0.lcssa, %while.end ], [ %p.068, %land.lhs.true7 ]
  ret i8* %retval.2, !dbg !208
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @zipmapResize(i8* noundef %zm, i32 noundef %len) unnamed_addr #0 !dbg !209 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %len, metadata !214, metadata !DIExpression()), !dbg !215
  %conv = zext i32 %len to i64, !dbg !216
  %call = tail call i8* @zrealloc(i8* noundef %zm, i64 noundef %conv) #7, !dbg !217
  call void @llvm.dbg.value(metadata i8* %call, metadata !213, metadata !DIExpression()), !dbg !215
  %sub = add i32 %len, -1, !dbg !218
  %idxprom = zext i32 %sub to i64, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %idxprom, !dbg !219
  store i8 -1, i8* %arrayidx, align 1, !dbg !220, !tbaa !20
  ret i8* %call, !dbg !221
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @zipmapRawEntryLength(i8* noundef %p) unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !226, metadata !DIExpression()), !dbg !228
  %call = tail call fastcc i32 @zipmapRawKeyLength(i8* noundef %p) #9, !dbg !229
  call void @llvm.dbg.value(metadata i32 %call, metadata !227, metadata !DIExpression()), !dbg !228
  %idx.ext = zext i32 %call to i64, !dbg !230
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %idx.ext, !dbg !230
  %call1 = tail call fastcc i32 @zipmapRawValueLength(i8* noundef %add.ptr) #9, !dbg !231
  %add = add i32 %call1, %call, !dbg !232
  ret i32 %add, !dbg !233
}

; Function Attrs: nounwind
declare !dbg !234 dso_local i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @zipmapEncodeLength(i8* noundef %p, i32 noundef %len) unnamed_addr #0 !dbg !240 {
entry:
  %len.addr = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %len, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 %len, i32* %len.addr, align 4, !tbaa !64
  %cmp = icmp eq i8* %p, null, !dbg !247
  %cmp1 = icmp ult i32 %len, 254, !dbg !249
  br i1 %cmp, label %if.then, label %if.else, !dbg !250

if.then:                                          ; preds = %entry
  %conv = select i1 %cmp1, i32 1, i32 5, !dbg !251
  br label %return, !dbg !253

if.else:                                          ; preds = %entry
  br i1 %cmp1, label %if.then4, label %if.else6, !dbg !254

if.then4:                                         ; preds = %if.else
  %conv5 = trunc i32 %len to i8, !dbg !256
  store i8 %conv5, i8* %p, align 1, !dbg !259, !tbaa !20
  br label %return, !dbg !260

if.else6:                                         ; preds = %if.else
  store i8 -2, i8* %p, align 1, !dbg !261, !tbaa !20
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !263
  %0 = bitcast i32* %len.addr to i8*, !dbg !264
  call void @llvm.dbg.value(metadata i32* %len.addr, metadata !245, metadata !DIExpression(DW_OP_deref)), !dbg !246
  %call = call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef nonnull %0, i64 noundef 4) #7, !dbg !265
  br label %return, !dbg !266

return:                                           ; preds = %if.else6, %if.then4, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 1, %if.then4 ], [ 5, %if.else6 ], !dbg !249
  ret i32 %retval.0, !dbg !267
}

; Function Attrs: nounwind
declare !dbg !268 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @zipmapDel(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef writeonly %deleted) local_unnamed_addr #0 !dbg !273 {
entry:
  %zmlen = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %zm, metadata !277, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i8* %key, metadata !278, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %klen, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32* %deleted, metadata !280, metadata !DIExpression()), !dbg !284
  %0 = bitcast i32* %zmlen to i8*, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !285
  call void @llvm.dbg.value(metadata i32* %zmlen, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !284
  %call = call fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef nonnull %zmlen) #9, !dbg !286
  call void @llvm.dbg.value(metadata i8* %call, metadata !283, metadata !DIExpression()), !dbg !284
  %tobool.not = icmp eq i8* %call, null, !dbg !287
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !289

if.then:                                          ; preds = %entry
  %call1 = call fastcc i32 @zipmapRawEntryLength(i8* noundef nonnull %call) #9, !dbg !290
  call void @llvm.dbg.value(metadata i32 %call1, metadata !282, metadata !DIExpression()), !dbg !284
  %idx.ext = zext i32 %call1 to i64, !dbg !292
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !292
  %1 = load i32, i32* %zmlen, align 4, !dbg !293, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %1, metadata !281, metadata !DIExpression()), !dbg !284
  %conv = zext i32 %1 to i64, !dbg !293
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64, !dbg !294
  %sub.ptr.rhs.cast = ptrtoint i8* %zm to i64, !dbg !294
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !294
  %add = add nsw i64 %sub.ptr.sub, %idx.ext, !dbg !295
  %add3.neg = xor i64 %add, -1, !dbg !296
  %sub = add i64 %add3.neg, %conv, !dbg !297
  %call4 = call i8* @memmove(i8* noundef nonnull %call, i8* noundef nonnull %add.ptr, i64 noundef %sub) #7, !dbg !298
  %2 = load i32, i32* %zmlen, align 4, !dbg !299, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %2, metadata !281, metadata !DIExpression()), !dbg !284
  %sub5 = sub i32 %2, %call1, !dbg !300
  %call6 = call fastcc i8* @zipmapResize(i8* noundef %zm, i32 noundef %sub5) #9, !dbg !301
  call void @llvm.dbg.value(metadata i8* %call6, metadata !277, metadata !DIExpression()), !dbg !284
  %3 = load i8, i8* %call6, align 1, !dbg !302, !tbaa !20
  %cmp = icmp ult i8 %3, -2, !dbg !304
  br i1 %cmp, label %if.then9, label %if.end, !dbg !305

if.then9:                                         ; preds = %if.then
  %dec = add i8 %3, -1, !dbg !306
  store i8 %dec, i8* %call6, align 1, !dbg !306, !tbaa !20
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then9, %if.then
  %tobool11.not = icmp eq i32* %deleted, null, !dbg !308
  br i1 %tobool11.not, label %if.end17, label %if.end17.sink.split, !dbg !310

if.else:                                          ; preds = %entry
  %tobool14.not = icmp eq i32* %deleted, null, !dbg !311
  br i1 %tobool14.not, label %if.end17, label %if.end17.sink.split, !dbg !314

if.end17.sink.split:                              ; preds = %if.else, %if.end
  %.sink = phi i32 [ 1, %if.end ], [ 0, %if.else ]
  %zm.addr.0.ph = phi i8* [ %call6, %if.end ], [ %zm, %if.else ]
  store i32 %.sink, i32* %deleted, align 4, !dbg !315, !tbaa !64
  br label %if.end17, !dbg !316

if.end17:                                         ; preds = %if.end17.sink.split, %if.else, %if.end
  %zm.addr.0 = phi i8* [ %call6, %if.end ], [ %zm, %if.else ], [ %zm.addr.0.ph, %if.end17.sink.split ]
  call void @llvm.dbg.value(metadata i8* %zm.addr.0, metadata !277, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !316
  ret i8* %zm.addr.0, !dbg !317
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local nonnull i8* @zipmapRewind(i8* noundef readnone %zm) local_unnamed_addr #3 !dbg !318 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !322, metadata !DIExpression()), !dbg !323
  %add.ptr = getelementptr inbounds i8, i8* %zm, i64 1, !dbg !324
  ret i8* %add.ptr, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @zipmapNext(i8* noundef %zm, i8** noundef %key, i32* nocapture noundef writeonly %klen, i8** noundef %value, i32* nocapture noundef writeonly %vlen) local_unnamed_addr #0 !dbg !326 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !331, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8** %key, metadata !332, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32* %klen, metadata !333, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i8** %value, metadata !334, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.value(metadata i32* %vlen, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8, i8* %zm, align 1, !dbg !337, !tbaa !20
  %cmp = icmp eq i8 %0, -1, !dbg !339
  br i1 %cmp, label %return, label %if.end, !dbg !340

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i8** %key, null, !dbg !341
  br i1 %tobool.not, label %if.end5, label %if.then2, !dbg !343

if.then2:                                         ; preds = %if.end
  store i8* %zm, i8** %key, align 8, !dbg !344, !tbaa !346
  %call = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %zm) #9, !dbg !348
  store i32 %call, i32* %klen, align 4, !dbg !349, !tbaa !64
  %cmp3 = icmp ult i32 %call, 254, !dbg !350
  %cond = select i1 %cmp3, i64 1, i64 5, !dbg !350
  %1 = load i8*, i8** %key, align 8, !dbg !351, !tbaa !346
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %cond, !dbg !351
  store i8* %add.ptr, i8** %key, align 8, !dbg !351, !tbaa !346
  br label %if.end5, !dbg !352

if.end5:                                          ; preds = %if.then2, %if.end
  %call6 = tail call fastcc i32 @zipmapRawKeyLength(i8* noundef nonnull %zm) #9, !dbg !353
  %idx.ext = zext i32 %call6 to i64, !dbg !354
  %add.ptr7 = getelementptr inbounds i8, i8* %zm, i64 %idx.ext, !dbg !354
  call void @llvm.dbg.value(metadata i8* %add.ptr7, metadata !331, metadata !DIExpression()), !dbg !336
  %tobool8.not = icmp eq i8** %value, null, !dbg !355
  br i1 %tobool8.not, label %if.end16, label %if.then9, !dbg !357

if.then9:                                         ; preds = %if.end5
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr7, i64 1, !dbg !358
  store i8* %add.ptr10, i8** %value, align 8, !dbg !360, !tbaa !346
  %call11 = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %add.ptr7) #9, !dbg !361
  store i32 %call11, i32* %vlen, align 4, !dbg !362, !tbaa !64
  %cmp12 = icmp ult i32 %call11, 254, !dbg !363
  %cond14 = select i1 %cmp12, i64 1, i64 5, !dbg !363
  %2 = load i8*, i8** %value, align 8, !dbg !364, !tbaa !346
  %add.ptr15 = getelementptr inbounds i8, i8* %2, i64 %cond14, !dbg !364
  store i8* %add.ptr15, i8** %value, align 8, !dbg !364, !tbaa !346
  br label %if.end16, !dbg !365

if.end16:                                         ; preds = %if.then9, %if.end5
  %call17 = tail call fastcc i32 @zipmapRawValueLength(i8* noundef nonnull %add.ptr7) #9, !dbg !366
  %idx.ext18 = zext i32 %call17 to i64, !dbg !367
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr7, i64 %idx.ext18, !dbg !367
  call void @llvm.dbg.value(metadata i8* %add.ptr19, metadata !331, metadata !DIExpression()), !dbg !336
  br label %return, !dbg !368

return:                                           ; preds = %entry, %if.end16
  %retval.0 = phi i8* [ %add.ptr19, %if.end16 ], [ null, %entry ], !dbg !336
  ret i8* %retval.0, !dbg !369
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @zipmapDecodeLength(i8* noundef %p) unnamed_addr #0 !dbg !370 {
entry:
  %len = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %p, metadata !372, metadata !DIExpression()), !dbg !374
  %0 = bitcast i32* %len to i8*, !dbg !375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !375
  %1 = load i8, i8* %p, align 1, !dbg !376, !tbaa !20
  %conv = zext i8 %1 to i32, !dbg !376
  call void @llvm.dbg.value(metadata i32 %conv, metadata !373, metadata !DIExpression()), !dbg !374
  store i32 %conv, i32* %len, align 4, !dbg !377, !tbaa !64
  %cmp = icmp ult i8 %1, -2, !dbg !378
  br i1 %cmp, label %cleanup, label %if.end, !dbg !380

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !381
  call void @llvm.dbg.value(metadata i32* %len, metadata !373, metadata !DIExpression(DW_OP_deref)), !dbg !374
  %call = call i8* @memcpy(i8* noundef nonnull %0, i8* noundef nonnull %add.ptr, i64 noundef 4) #7, !dbg !382
  %2 = load i32, i32* %len, align 4, !dbg !383, !tbaa !64
  call void @llvm.dbg.value(metadata i32 %2, metadata !373, metadata !DIExpression()), !dbg !374
  br label %cleanup, !dbg !384

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %2, %if.end ], [ %conv, %entry ], !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !385
  ret i32 %retval.0, !dbg !385
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @zipmapRawKeyLength(i8* noundef %p) unnamed_addr #0 !dbg !386 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !388, metadata !DIExpression()), !dbg !390
  %call = tail call fastcc i32 @zipmapDecodeLength(i8* noundef %p) #9, !dbg !391
  call void @llvm.dbg.value(metadata i32 %call, metadata !389, metadata !DIExpression()), !dbg !390
  %call1 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call) #9, !dbg !392
  %add = add i32 %call1, %call, !dbg !393
  ret i32 %add, !dbg !394
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @zipmapRawValueLength(i8* noundef %p) unnamed_addr #0 !dbg !395 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !397, metadata !DIExpression()), !dbg !400
  %call = tail call fastcc i32 @zipmapDecodeLength(i8* noundef %p) #9, !dbg !401
  call void @llvm.dbg.value(metadata i32 %call, metadata !398, metadata !DIExpression()), !dbg !400
  %call1 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call) #9, !dbg !402
  call void @llvm.dbg.value(metadata i32 %call1, metadata !399, metadata !DIExpression()), !dbg !400
  %idxprom = zext i32 %call1 to i64, !dbg !403
  %arrayidx = getelementptr inbounds i8, i8* %p, i64 %idxprom, !dbg !403
  %0 = load i8, i8* %arrayidx, align 1, !dbg !403, !tbaa !20
  %conv = zext i8 %0 to i32, !dbg !403
  %add = add i32 %call, 1, !dbg !404
  %add2 = add i32 %add, %call1, !dbg !405
  %add3 = add i32 %add2, %conv, !dbg !406
  call void @llvm.dbg.value(metadata i32 %add3, metadata !399, metadata !DIExpression()), !dbg !400
  ret i32 %add3, !dbg !407
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zipmapGet(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i8** nocapture noundef writeonly %value, i32* nocapture noundef writeonly %vlen) local_unnamed_addr #0 !dbg !408 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !412, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8* %key, metadata !413, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %klen, metadata !414, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8** %value, metadata !415, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32* %vlen, metadata !416, metadata !DIExpression()), !dbg !418
  %call = tail call fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef null) #9, !dbg !419
  call void @llvm.dbg.value(metadata i8* %call, metadata !417, metadata !DIExpression()), !dbg !418
  %cmp = icmp eq i8* %call, null, !dbg !421
  br i1 %cmp, label %cleanup, label %if.end, !dbg !422

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @zipmapRawKeyLength(i8* noundef nonnull %call) #9, !dbg !423
  %idx.ext = zext i32 %call1 to i64, !dbg !424
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !424
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !417, metadata !DIExpression()), !dbg !418
  %call2 = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %add.ptr) #9, !dbg !425
  store i32 %call2, i32* %vlen, align 4, !dbg !426, !tbaa !64
  %cmp3 = icmp ult i32 %call2, 254, !dbg !427
  %cond = select i1 %cmp3, i64 1, i64 5, !dbg !427
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 %cond, !dbg !428
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr4, i64 1, !dbg !429
  store i8* %add.ptr5, i8** %value, align 8, !dbg !430, !tbaa !346
  br label %cleanup, !dbg !431

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ], !dbg !418
  ret i32 %retval.0, !dbg !432
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zipmapExists(i8* noundef %zm, i8* noundef %key, i32 noundef %klen) local_unnamed_addr #0 !dbg !433 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !437, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i8* %key, metadata !438, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata i32 %klen, metadata !439, metadata !DIExpression()), !dbg !440
  %call = tail call fastcc i8* @zipmapLookupRaw(i8* noundef %zm, i8* noundef %key, i32 noundef %klen, i32* noundef null) #9, !dbg !441
  %cmp = icmp ne i8* %call, null, !dbg !442
  %conv = zext i1 %cmp to i32, !dbg !442
  ret i32 %conv, !dbg !443
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zipmapLen(i8* noundef %zm) local_unnamed_addr #0 !dbg !444 {
entry:
  call void @llvm.dbg.value(metadata i8* %zm, metadata !446, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i32 0, metadata !447, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %zm, align 1, !dbg !452, !tbaa !20
  %cmp = icmp ult i8 %0, -2, !dbg !453
  br i1 %cmp, label %if.then, label %if.else, !dbg !454

if.then:                                          ; preds = %entry
  %conv = zext i8 %0 to i32, !dbg !452
  call void @llvm.dbg.value(metadata i32 %conv, metadata !447, metadata !DIExpression()), !dbg !451
  br label %if.end12, !dbg !455

if.else:                                          ; preds = %entry
  %call = tail call i8* @zipmapRewind(i8* noundef nonnull %zm) #9, !dbg !457
  call void @llvm.dbg.value(metadata i8* %call, metadata !448, metadata !DIExpression()), !dbg !458
  br label %while.cond, !dbg !459

while.cond:                                       ; preds = %while.cond, %if.else
  %len.0 = phi i32 [ 0, %if.else ], [ %inc, %while.cond ], !dbg !451
  %p.0 = phi i8* [ %call, %if.else ], [ %call4, %while.cond ], !dbg !458
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !448, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !447, metadata !DIExpression()), !dbg !451
  %call4 = tail call i8* @zipmapNext(i8* noundef nonnull %p.0, i8** noundef null, i32* noundef null, i8** noundef null, i32* noundef null) #9, !dbg !460
  call void @llvm.dbg.value(metadata i8* %call4, metadata !448, metadata !DIExpression()), !dbg !458
  %cmp5.not = icmp eq i8* %call4, null, !dbg !461
  %inc = add i32 %len.0, 1, !dbg !462
  call void @llvm.dbg.value(metadata i32 %inc, metadata !447, metadata !DIExpression()), !dbg !451
  br i1 %cmp5.not, label %while.end, label %while.cond, !dbg !459, !llvm.loop !463

while.end:                                        ; preds = %while.cond
  %cmp7 = icmp ult i32 %len.0, 254, !dbg !464
  br i1 %cmp7, label %if.then9, label %if.end12, !dbg !466

if.then9:                                         ; preds = %while.end
  %conv10 = trunc i32 %len.0 to i8, !dbg !467
  store i8 %conv10, i8* %zm, align 1, !dbg !468, !tbaa !20
  br label %if.end12, !dbg !469

if.end12:                                         ; preds = %while.end, %if.then9, %if.then
  %len.1 = phi i32 [ %conv, %if.then ], [ %len.0, %if.then9 ], [ %len.0, %while.end ], !dbg !451
  call void @llvm.dbg.value(metadata i32 %len.1, metadata !447, metadata !DIExpression()), !dbg !451
  ret i32 %len.1, !dbg !470
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zipmapRepr(i8* noundef %p) local_unnamed_addr #0 !dbg !471 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !475, metadata !DIExpression()), !dbg !481
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !482
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !475, metadata !DIExpression()), !dbg !481
  %0 = load i8, i8* %p, align 1, !dbg !483, !tbaa !20
  %conv = zext i8 %0 to i32, !dbg !483
  %call = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %conv) #7, !dbg !484
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !475, metadata !DIExpression()), !dbg !481
  %1 = load i8, i8* %incdec.ptr, align 1, !dbg !485, !tbaa !20
  %cmp54 = icmp eq i8 %1, -1, !dbg !486
  br i1 %cmp54, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %if.end, %entry
  %call3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !488
  %call31 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !490
  ret void, !dbg !491

if.else:                                          ; preds = %entry, %if.end
  %p.addr.055 = phi i8* [ %add.ptr21, %if.end ], [ %incdec.ptr, %entry ]
  call void @llvm.dbg.value(metadata i8* %p.addr.055, metadata !475, metadata !DIExpression()), !dbg !481
  %call4 = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %p.addr.055) #9, !dbg !492
  call void @llvm.dbg.value(metadata i32 %call4, metadata !476, metadata !DIExpression()), !dbg !481
  %call5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef %call4) #7, !dbg !493
  %call6 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call4) #9, !dbg !494
  %idx.ext = zext i32 %call6 to i64, !dbg !495
  %add.ptr = getelementptr inbounds i8, i8* %p.addr.055, i64 %idx.ext, !dbg !495
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !475, metadata !DIExpression()), !dbg !481
  %conv7 = zext i32 %call4 to i64, !dbg !496
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !497, !tbaa !346
  %call8 = tail call i64 @fwrite(i8* noundef nonnull %add.ptr, i64 noundef %conv7, i64 noundef 1, %struct._IO_FILE* noundef %2) #7, !dbg !498
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr, i64 %conv7, !dbg !499
  call void @llvm.dbg.value(metadata i8* %add.ptr10, metadata !475, metadata !DIExpression()), !dbg !481
  %call11 = tail call fastcc i32 @zipmapDecodeLength(i8* noundef nonnull %add.ptr10) #9, !dbg !500
  call void @llvm.dbg.value(metadata i32 %call11, metadata !476, metadata !DIExpression()), !dbg !481
  %call12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 noundef %call11) #7, !dbg !501
  %call13 = tail call fastcc i32 @zipmapEncodeLength(i8* noundef null, i32 noundef %call11) #9, !dbg !502
  %idx.ext14 = zext i32 %call13 to i64, !dbg !503
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr10, i64 %idx.ext14, !dbg !503
  call void @llvm.dbg.value(metadata i8* %add.ptr15, metadata !475, metadata !DIExpression()), !dbg !481
  %incdec.ptr16 = getelementptr inbounds i8, i8* %add.ptr15, i64 1, !dbg !504
  call void @llvm.dbg.value(metadata i8* %incdec.ptr16, metadata !475, metadata !DIExpression()), !dbg !481
  %3 = load i8, i8* %add.ptr15, align 1, !dbg !505, !tbaa !20
  call void @llvm.dbg.value(metadata i8 %3, metadata !477, metadata !DIExpression()), !dbg !506
  %conv17 = zext i32 %call11 to i64, !dbg !507
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508, !tbaa !346
  %call18 = tail call i64 @fwrite(i8* noundef nonnull %incdec.ptr16, i64 noundef %conv17, i64 noundef 1, %struct._IO_FILE* noundef %4) #7, !dbg !509
  %conv19 = zext i8 %3 to i32, !dbg !510
  %add = add i32 %call11, %conv19, !dbg !511
  %idx.ext20 = zext i32 %add to i64, !dbg !512
  %add.ptr21 = getelementptr inbounds i8, i8* %incdec.ptr16, i64 %idx.ext20, !dbg !512
  call void @llvm.dbg.value(metadata i8* %add.ptr21, metadata !475, metadata !DIExpression()), !dbg !481
  %tobool.not = icmp eq i8 %3, 0, !dbg !513
  br i1 %tobool.not, label %if.end, label %if.then22, !dbg !515

if.then22:                                        ; preds = %if.else
  %call23 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !516
  call void @llvm.dbg.value(metadata i8 %3, metadata !477, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !506
  br label %while.body26, !dbg !518

while.body26:                                     ; preds = %if.then22, %while.body26
  %e.053 = phi i8 [ %3, %if.then22 ], [ %dec, %while.body26 ]
  call void @llvm.dbg.value(metadata i8 %e.053, metadata !477, metadata !DIExpression()), !dbg !506
  %dec = add i8 %e.053, -1, !dbg !519
  call void @llvm.dbg.value(metadata i8 %dec, metadata !477, metadata !DIExpression()), !dbg !506
  %call27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !520
  call void @llvm.dbg.value(metadata i8 %dec, metadata !477, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !506
  %tobool25.not = icmp eq i8 %dec, 0, !dbg !518
  br i1 %tobool25.not, label %while.cond24.while.end_crit_edge, label %while.body26, !dbg !518, !llvm.loop !521

while.cond24.while.end_crit_edge:                 ; preds = %while.body26
  %call28 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !523
  br label %if.end, !dbg !524

if.end:                                           ; preds = %while.cond24.while.end_crit_edge, %if.else
  call void @llvm.dbg.value(metadata i8* %add.ptr21, metadata !475, metadata !DIExpression()), !dbg !481
  %5 = load i8, i8* %add.ptr21, align 1, !dbg !485, !tbaa !20
  %cmp = icmp eq i8 %5, -1, !dbg !486
  br i1 %cmp, label %if.then, label %if.else, !dbg !487, !llvm.loop !525
}

declare !dbg !528 dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

declare !dbg !536 dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !597 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !600 dso_local i8* @zrealloc(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "zipmap.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "b8df5ef39d26de2b51594448b44f7ecc")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 14.0.0"}
!10 = distinct !DISubprogram(name: "zipmapNew", scope: !1, file: !1, line: 97, type: !11, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16}
!16 = !DILocalVariable(name: "zm", scope: !10, file: !1, line: 98, type: !13)
!17 = !DILocation(line: 98, column: 25, scope: !10)
!18 = !DILocation(line: 0, scope: !10)
!19 = !DILocation(line: 100, column: 11, scope: !10)
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 101, column: 5, scope: !10)
!24 = !DILocation(line: 101, column: 11, scope: !10)
!25 = !DILocation(line: 102, column: 5, scope: !10)
!26 = !DISubprogram(name: "zmalloc", scope: !27, file: !27, line: 34, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!27 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!28 = !DISubroutineType(types: !29)
!29 = !{!3, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = distinct !DISubprogram(name: "zipmapSet", scope: !1, file: !1, line: 211, type: !35, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!35 = !DISubroutineType(types: !36)
!36 = !{!13, !13, !13, !4, !13, !4, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!40 = !DILocalVariable(name: "zm", arg: 1, scope: !34, file: !1, line: 211, type: !13)
!41 = !DILocalVariable(name: "key", arg: 2, scope: !34, file: !1, line: 211, type: !13)
!42 = !DILocalVariable(name: "klen", arg: 3, scope: !34, file: !1, line: 211, type: !4)
!43 = !DILocalVariable(name: "val", arg: 4, scope: !34, file: !1, line: 211, type: !13)
!44 = !DILocalVariable(name: "vlen", arg: 5, scope: !34, file: !1, line: 211, type: !4)
!45 = !DILocalVariable(name: "update", arg: 6, scope: !34, file: !1, line: 211, type: !37)
!46 = !DILocalVariable(name: "zmlen", scope: !34, file: !1, line: 212, type: !4)
!47 = !DILocalVariable(name: "offset", scope: !34, file: !1, line: 212, type: !4)
!48 = !DILocalVariable(name: "freelen", scope: !34, file: !1, line: 213, type: !4)
!49 = !DILocalVariable(name: "reqlen", scope: !34, file: !1, line: 213, type: !4)
!50 = !DILocalVariable(name: "empty", scope: !34, file: !1, line: 214, type: !4)
!51 = !DILocalVariable(name: "vempty", scope: !34, file: !1, line: 214, type: !4)
!52 = !DILocalVariable(name: "p", scope: !34, file: !1, line: 215, type: !13)
!53 = !DILocation(line: 0, scope: !34)
!54 = !DILocation(line: 212, column: 5, scope: !34)
!55 = !DILocation(line: 213, column: 36, scope: !34)
!56 = !DILocation(line: 218, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !34, file: !1, line: 218, column: 9)
!58 = !DILocation(line: 218, column: 9, scope: !34)
!59 = !DILocation(line: 219, column: 9, scope: !34)
!60 = !DILocation(line: 220, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !34, file: !1, line: 220, column: 9)
!62 = !DILocation(line: 220, column: 9, scope: !34)
!63 = !DILocation(line: 218, column: 25, scope: !57)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !21, i64 0}
!66 = !DILocation(line: 222, column: 31, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 220, column: 20)
!68 = !DILocation(line: 222, column: 36, scope: !67)
!69 = !DILocation(line: 222, column: 14, scope: !67)
!70 = !DILocation(line: 223, column: 16, scope: !67)
!71 = !DILocation(line: 223, column: 15, scope: !67)
!72 = !DILocation(line: 223, column: 21, scope: !67)
!73 = !DILocation(line: 224, column: 22, scope: !67)
!74 = !DILocation(line: 224, column: 15, scope: !67)
!75 = !DILocation(line: 227, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !67, file: !1, line: 227, column: 13)
!77 = !DILocation(line: 227, column: 19, scope: !76)
!78 = !DILocation(line: 227, column: 13, scope: !67)
!79 = !DILocation(line: 227, column: 41, scope: !76)
!80 = !DILocation(line: 227, column: 36, scope: !76)
!81 = !DILocation(line: 231, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 231, column: 13)
!83 = distinct !DILexicalBlock(scope: !61, file: !1, line: 228, column: 12)
!84 = !DILocation(line: 231, column: 21, scope: !82)
!85 = !DILocation(line: 232, column: 19, scope: !83)
!86 = !DILocation(line: 233, column: 21, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 233, column: 13)
!88 = !DILocation(line: 233, column: 13, scope: !83)
!89 = !DILocation(line: 237, column: 23, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 233, column: 31)
!91 = !DILocation(line: 237, column: 22, scope: !90)
!92 = !DILocation(line: 238, column: 35, scope: !90)
!93 = !DILocation(line: 238, column: 40, scope: !90)
!94 = !DILocation(line: 238, column: 48, scope: !90)
!95 = !DILocation(line: 238, column: 18, scope: !90)
!96 = !DILocation(line: 239, column: 19, scope: !90)
!97 = !DILocation(line: 243, column: 22, scope: !90)
!98 = !DILocation(line: 243, column: 32, scope: !90)
!99 = !DILocation(line: 243, column: 42, scope: !90)
!100 = !DILocation(line: 243, column: 55, scope: !90)
!101 = !DILocation(line: 243, column: 63, scope: !90)
!102 = !DILocation(line: 243, column: 47, scope: !90)
!103 = !DILocation(line: 243, column: 13, scope: !90)
!104 = !DILocation(line: 244, column: 21, scope: !90)
!105 = !DILocation(line: 244, column: 34, scope: !90)
!106 = !DILocation(line: 244, column: 19, scope: !90)
!107 = !DILocation(line: 246, column: 9, scope: !90)
!108 = !DILocation(line: 253, column: 20, scope: !34)
!109 = !DILocation(line: 254, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !34, file: !1, line: 254, column: 9)
!111 = !DILocation(line: 254, column: 9, scope: !34)
!112 = !DILocation(line: 257, column: 19, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 254, column: 41)
!114 = !DILocation(line: 257, column: 18, scope: !113)
!115 = !DILocation(line: 258, column: 18, scope: !113)
!116 = !DILocation(line: 258, column: 28, scope: !113)
!117 = !DILocation(line: 258, column: 38, scope: !113)
!118 = !DILocation(line: 258, column: 51, scope: !113)
!119 = !DILocation(line: 258, column: 59, scope: !113)
!120 = !DILocation(line: 258, column: 43, scope: !113)
!121 = !DILocation(line: 258, column: 9, scope: !113)
!122 = !DILocation(line: 259, column: 15, scope: !113)
!123 = !DILocation(line: 260, column: 14, scope: !113)
!124 = !DILocation(line: 261, column: 15, scope: !113)
!125 = !DILocation(line: 263, column: 5, scope: !113)
!126 = !DILocation(line: 269, column: 10, scope: !34)
!127 = !DILocation(line: 269, column: 7, scope: !34)
!128 = !DILocation(line: 270, column: 18, scope: !34)
!129 = !DILocation(line: 270, column: 5, scope: !34)
!130 = !DILocation(line: 271, column: 7, scope: !34)
!131 = !DILocation(line: 273, column: 10, scope: !34)
!132 = !DILocation(line: 273, column: 7, scope: !34)
!133 = !DILocation(line: 274, column: 7, scope: !34)
!134 = !DILocation(line: 274, column: 10, scope: !34)
!135 = !DILocation(line: 275, column: 18, scope: !34)
!136 = !DILocation(line: 275, column: 5, scope: !34)
!137 = !DILocation(line: 277, column: 1, scope: !34)
!138 = !DILocation(line: 276, column: 5, scope: !34)
!139 = distinct !DISubprogram(name: "zipmapRequiredLength", scope: !1, file: !1, line: 167, type: !140, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!32, !4, !4}
!142 = !{!143, !144, !145}
!143 = !DILocalVariable(name: "klen", arg: 1, scope: !139, file: !1, line: 167, type: !4)
!144 = !DILocalVariable(name: "vlen", arg: 2, scope: !139, file: !1, line: 167, type: !4)
!145 = !DILocalVariable(name: "l", scope: !139, file: !1, line: 168, type: !4)
!146 = !DILocation(line: 0, scope: !139)
!147 = !DILocation(line: 170, column: 13, scope: !139)
!148 = !DILocation(line: 171, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !139, file: !1, line: 171, column: 9)
!150 = !DILocation(line: 171, column: 9, scope: !139)
!151 = !DILocation(line: 172, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !139, file: !1, line: 172, column: 9)
!153 = !DILocation(line: 172, column: 9, scope: !139)
!154 = !DILocation(line: 173, column: 12, scope: !139)
!155 = !DILocation(line: 173, column: 5, scope: !139)
!156 = distinct !DISubprogram(name: "zipmapLookupRaw", scope: !1, file: !1, line: 137, type: !157, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!157 = !DISubroutineType(types: !158)
!158 = !{!13, !13, !13, !4, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169}
!161 = !DILocalVariable(name: "zm", arg: 1, scope: !156, file: !1, line: 137, type: !13)
!162 = !DILocalVariable(name: "key", arg: 2, scope: !156, file: !1, line: 137, type: !13)
!163 = !DILocalVariable(name: "klen", arg: 3, scope: !156, file: !1, line: 137, type: !4)
!164 = !DILocalVariable(name: "totlen", arg: 4, scope: !156, file: !1, line: 137, type: !159)
!165 = !DILocalVariable(name: "p", scope: !156, file: !1, line: 138, type: !13)
!166 = !DILocalVariable(name: "k", scope: !156, file: !1, line: 138, type: !13)
!167 = !DILocalVariable(name: "l", scope: !156, file: !1, line: 139, type: !4)
!168 = !DILocalVariable(name: "llen", scope: !156, file: !1, line: 139, type: !4)
!169 = !DILocalVariable(name: "free", scope: !170, file: !1, line: 142, type: !14)
!170 = distinct !DILexicalBlock(scope: !156, file: !1, line: 141, column: 29)
!171 = !DILocation(line: 0, scope: !156)
!172 = !DILocation(line: 138, column: 26, scope: !156)
!173 = !DILocation(line: 141, column: 11, scope: !156)
!174 = !DILocation(line: 141, column: 14, scope: !156)
!175 = !DILocation(line: 141, column: 5, scope: !156)
!176 = !DILocation(line: 145, column: 13, scope: !170)
!177 = !DILocation(line: 146, column: 16, scope: !170)
!178 = !DILocation(line: 147, column: 15, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 147, column: 13)
!180 = !DILocation(line: 147, column: 23, scope: !179)
!181 = !DILocation(line: 147, column: 28, scope: !179)
!182 = !DILocation(line: 147, column: 36, scope: !179)
!183 = !DILocation(line: 147, column: 48, scope: !179)
!184 = !DILocation(line: 147, column: 40, scope: !179)
!185 = !DILocation(line: 147, column: 13, scope: !170)
!186 = !DILocation(line: 156, column: 18, scope: !170)
!187 = !DILocation(line: 156, column: 11, scope: !170)
!188 = !DILocation(line: 158, column: 13, scope: !170)
!189 = !DILocation(line: 159, column: 14, scope: !170)
!190 = !DILocation(line: 159, column: 11, scope: !170)
!191 = !DILocation(line: 160, column: 16, scope: !170)
!192 = !DILocation(line: 0, scope: !170)
!193 = !DILocation(line: 161, column: 15, scope: !170)
!194 = !DILocation(line: 161, column: 18, scope: !170)
!195 = !DILocation(line: 161, column: 17, scope: !170)
!196 = !DILocation(line: 161, column: 11, scope: !170)
!197 = distinct !{!197, !175, !198}
!198 = !DILocation(line: 162, column: 5, scope: !156)
!199 = !DILocation(line: 138, column: 31, scope: !156)
!200 = !DILocation(line: 163, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !156, file: !1, line: 163, column: 9)
!202 = !DILocation(line: 163, column: 9, scope: !156)
!203 = !DILocation(line: 163, column: 51, scope: !201)
!204 = !DILocation(line: 163, column: 35, scope: !201)
!205 = !DILocation(line: 163, column: 55, scope: !201)
!206 = !DILocation(line: 163, column: 33, scope: !201)
!207 = !DILocation(line: 163, column: 25, scope: !201)
!208 = !DILocation(line: 165, column: 1, scope: !156)
!209 = distinct !DISubprogram(name: "zipmapResize", scope: !1, file: !1, line: 202, type: !210, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!210 = !DISubroutineType(types: !211)
!211 = !{!13, !13, !4}
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "zm", arg: 1, scope: !209, file: !1, line: 202, type: !13)
!214 = !DILocalVariable(name: "len", arg: 2, scope: !209, file: !1, line: 202, type: !4)
!215 = !DILocation(line: 0, scope: !209)
!216 = !DILocation(line: 203, column: 23, scope: !209)
!217 = !DILocation(line: 203, column: 10, scope: !209)
!218 = !DILocation(line: 204, column: 11, scope: !209)
!219 = !DILocation(line: 204, column: 5, scope: !209)
!220 = !DILocation(line: 204, column: 15, scope: !209)
!221 = !DILocation(line: 205, column: 5, scope: !209)
!222 = distinct !DISubprogram(name: "zipmapRawEntryLength", scope: !1, file: !1, line: 197, type: !223, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!4, !13}
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "p", arg: 1, scope: !222, file: !1, line: 197, type: !13)
!227 = !DILocalVariable(name: "l", scope: !222, file: !1, line: 198, type: !4)
!228 = !DILocation(line: 0, scope: !222)
!229 = !DILocation(line: 198, column: 22, scope: !222)
!230 = !DILocation(line: 199, column: 38, scope: !222)
!231 = !DILocation(line: 199, column: 16, scope: !222)
!232 = !DILocation(line: 199, column: 14, scope: !222)
!233 = !DILocation(line: 199, column: 5, scope: !222)
!234 = !DISubprogram(name: "memmove", scope: !235, file: !235, line: 47, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!235 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!236 = !DISubroutineType(types: !237)
!237 = !{!3, !3, !238, !30}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!240 = distinct !DISubprogram(name: "zipmapEncodeLength", scope: !1, file: !1, line: 116, type: !241, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!4, !13, !4}
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "p", arg: 1, scope: !240, file: !1, line: 116, type: !13)
!245 = !DILocalVariable(name: "len", arg: 2, scope: !240, file: !1, line: 116, type: !4)
!246 = !DILocation(line: 0, scope: !240)
!247 = !DILocation(line: 117, column: 11, scope: !248)
!248 = distinct !DILexicalBlock(scope: !240, file: !1, line: 117, column: 9)
!249 = !DILocation(line: 0, scope: !248)
!250 = !DILocation(line: 117, column: 9, scope: !240)
!251 = !DILocation(line: 118, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 117, column: 20)
!253 = !DILocation(line: 118, column: 9, scope: !252)
!254 = !DILocation(line: 120, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !1, line: 119, column: 12)
!256 = !DILocation(line: 121, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 120, column: 34)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 120, column: 13)
!259 = !DILocation(line: 121, column: 18, scope: !257)
!260 = !DILocation(line: 122, column: 13, scope: !257)
!261 = !DILocation(line: 124, column: 18, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !1, line: 123, column: 16)
!263 = !DILocation(line: 125, column: 21, scope: !262)
!264 = !DILocation(line: 125, column: 24, scope: !262)
!265 = !DILocation(line: 125, column: 13, scope: !262)
!266 = !DILocation(line: 126, column: 13, scope: !262)
!267 = !DILocation(line: 129, column: 1, scope: !240)
!268 = !DISubprogram(name: "memcpy", scope: !235, file: !235, line: 43, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!269 = !DISubroutineType(types: !270)
!270 = !{!3, !271, !272, !30}
!271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3)
!272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!273 = distinct !DISubprogram(name: "zipmapDel", scope: !1, file: !1, line: 281, type: !274, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{!13, !13, !13, !4, !37}
!276 = !{!277, !278, !279, !280, !281, !282, !283}
!277 = !DILocalVariable(name: "zm", arg: 1, scope: !273, file: !1, line: 281, type: !13)
!278 = !DILocalVariable(name: "key", arg: 2, scope: !273, file: !1, line: 281, type: !13)
!279 = !DILocalVariable(name: "klen", arg: 3, scope: !273, file: !1, line: 281, type: !4)
!280 = !DILocalVariable(name: "deleted", arg: 4, scope: !273, file: !1, line: 281, type: !37)
!281 = !DILocalVariable(name: "zmlen", scope: !273, file: !1, line: 282, type: !4)
!282 = !DILocalVariable(name: "freelen", scope: !273, file: !1, line: 282, type: !4)
!283 = !DILocalVariable(name: "p", scope: !273, file: !1, line: 283, type: !13)
!284 = !DILocation(line: 0, scope: !273)
!285 = !DILocation(line: 282, column: 5, scope: !273)
!286 = !DILocation(line: 283, column: 24, scope: !273)
!287 = !DILocation(line: 284, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !273, file: !1, line: 284, column: 9)
!289 = !DILocation(line: 284, column: 9, scope: !273)
!290 = !DILocation(line: 285, column: 19, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !1, line: 284, column: 12)
!292 = !DILocation(line: 286, column: 21, scope: !291)
!293 = !DILocation(line: 286, column: 31, scope: !291)
!294 = !DILocation(line: 286, column: 40, scope: !291)
!295 = !DILocation(line: 286, column: 44, scope: !291)
!296 = !DILocation(line: 286, column: 52, scope: !291)
!297 = !DILocation(line: 286, column: 36, scope: !291)
!298 = !DILocation(line: 286, column: 9, scope: !291)
!299 = !DILocation(line: 287, column: 31, scope: !291)
!300 = !DILocation(line: 287, column: 36, scope: !291)
!301 = !DILocation(line: 287, column: 14, scope: !291)
!302 = !DILocation(line: 290, column: 13, scope: !303)
!303 = distinct !DILexicalBlock(scope: !291, file: !1, line: 290, column: 13)
!304 = !DILocation(line: 290, column: 19, scope: !303)
!305 = !DILocation(line: 290, column: 13, scope: !291)
!306 = !DILocation(line: 290, column: 41, scope: !303)
!307 = !DILocation(line: 290, column: 36, scope: !303)
!308 = !DILocation(line: 292, column: 13, scope: !309)
!309 = distinct !DILexicalBlock(scope: !291, file: !1, line: 292, column: 13)
!310 = !DILocation(line: 292, column: 13, scope: !291)
!311 = !DILocation(line: 294, column: 13, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 294, column: 13)
!313 = distinct !DILexicalBlock(scope: !288, file: !1, line: 293, column: 12)
!314 = !DILocation(line: 294, column: 13, scope: !313)
!315 = !DILocation(line: 0, scope: !288)
!316 = !DILocation(line: 297, column: 1, scope: !273)
!317 = !DILocation(line: 296, column: 5, scope: !273)
!318 = distinct !DISubprogram(name: "zipmapRewind", scope: !1, file: !1, line: 300, type: !319, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{!13, !13}
!321 = !{!322}
!322 = !DILocalVariable(name: "zm", arg: 1, scope: !318, file: !1, line: 300, type: !13)
!323 = !DILocation(line: 0, scope: !318)
!324 = !DILocation(line: 301, column: 14, scope: !318)
!325 = !DILocation(line: 301, column: 5, scope: !318)
!326 = distinct !DISubprogram(name: "zipmapNext", scope: !1, file: !1, line: 315, type: !327, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !330)
!327 = !DISubroutineType(types: !328)
!328 = !{!13, !13, !329, !159, !329, !159}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!330 = !{!331, !332, !333, !334, !335}
!331 = !DILocalVariable(name: "zm", arg: 1, scope: !326, file: !1, line: 315, type: !13)
!332 = !DILocalVariable(name: "key", arg: 2, scope: !326, file: !1, line: 315, type: !329)
!333 = !DILocalVariable(name: "klen", arg: 3, scope: !326, file: !1, line: 315, type: !159)
!334 = !DILocalVariable(name: "value", arg: 4, scope: !326, file: !1, line: 315, type: !329)
!335 = !DILocalVariable(name: "vlen", arg: 5, scope: !326, file: !1, line: 315, type: !159)
!336 = !DILocation(line: 0, scope: !326)
!337 = !DILocation(line: 316, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !326, file: !1, line: 316, column: 9)
!339 = !DILocation(line: 316, column: 15, scope: !338)
!340 = !DILocation(line: 316, column: 9, scope: !326)
!341 = !DILocation(line: 317, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !326, file: !1, line: 317, column: 9)
!343 = !DILocation(line: 317, column: 9, scope: !326)
!344 = !DILocation(line: 318, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !1, line: 317, column: 14)
!346 = !{!347, !347, i64 0}
!347 = !{!"any pointer", !21, i64 0}
!348 = !DILocation(line: 319, column: 17, scope: !345)
!349 = !DILocation(line: 319, column: 15, scope: !345)
!350 = !DILocation(line: 320, column: 17, scope: !345)
!351 = !DILocation(line: 320, column: 14, scope: !345)
!352 = !DILocation(line: 321, column: 5, scope: !345)
!353 = !DILocation(line: 322, column: 11, scope: !326)
!354 = !DILocation(line: 322, column: 8, scope: !326)
!355 = !DILocation(line: 323, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !326, file: !1, line: 323, column: 9)
!357 = !DILocation(line: 323, column: 9, scope: !326)
!358 = !DILocation(line: 324, column: 20, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 323, column: 16)
!360 = !DILocation(line: 324, column: 16, scope: !359)
!361 = !DILocation(line: 325, column: 17, scope: !359)
!362 = !DILocation(line: 325, column: 15, scope: !359)
!363 = !DILocation(line: 326, column: 19, scope: !359)
!364 = !DILocation(line: 326, column: 16, scope: !359)
!365 = !DILocation(line: 327, column: 5, scope: !359)
!366 = !DILocation(line: 328, column: 11, scope: !326)
!367 = !DILocation(line: 328, column: 8, scope: !326)
!368 = !DILocation(line: 329, column: 5, scope: !326)
!369 = !DILocation(line: 330, column: 1, scope: !326)
!370 = distinct !DISubprogram(name: "zipmapDecodeLength", scope: !1, file: !1, line: 106, type: !223, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !371)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "p", arg: 1, scope: !370, file: !1, line: 106, type: !13)
!373 = !DILocalVariable(name: "len", scope: !370, file: !1, line: 107, type: !4)
!374 = !DILocation(line: 0, scope: !370)
!375 = !DILocation(line: 107, column: 5, scope: !370)
!376 = !DILocation(line: 107, column: 24, scope: !370)
!377 = !DILocation(line: 107, column: 18, scope: !370)
!378 = !DILocation(line: 109, column: 13, scope: !379)
!379 = distinct !DILexicalBlock(scope: !370, file: !1, line: 109, column: 9)
!380 = !DILocation(line: 109, column: 9, scope: !370)
!381 = !DILocation(line: 110, column: 18, scope: !370)
!382 = !DILocation(line: 110, column: 5, scope: !370)
!383 = !DILocation(line: 111, column: 12, scope: !370)
!384 = !DILocation(line: 111, column: 5, scope: !370)
!385 = !DILocation(line: 112, column: 1, scope: !370)
!386 = distinct !DISubprogram(name: "zipmapRawKeyLength", scope: !1, file: !1, line: 177, type: !223, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "p", arg: 1, scope: !386, file: !1, line: 177, type: !13)
!389 = !DILocalVariable(name: "l", scope: !386, file: !1, line: 178, type: !4)
!390 = !DILocation(line: 0, scope: !386)
!391 = !DILocation(line: 178, column: 22, scope: !386)
!392 = !DILocation(line: 180, column: 12, scope: !386)
!393 = !DILocation(line: 180, column: 39, scope: !386)
!394 = !DILocation(line: 180, column: 5, scope: !386)
!395 = distinct !DISubprogram(name: "zipmapRawValueLength", scope: !1, file: !1, line: 185, type: !223, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !396)
!396 = !{!397, !398, !399}
!397 = !DILocalVariable(name: "p", arg: 1, scope: !395, file: !1, line: 185, type: !13)
!398 = !DILocalVariable(name: "l", scope: !395, file: !1, line: 186, type: !4)
!399 = !DILocalVariable(name: "used", scope: !395, file: !1, line: 187, type: !4)
!400 = !DILocation(line: 0, scope: !395)
!401 = !DILocation(line: 186, column: 22, scope: !395)
!402 = !DILocation(line: 189, column: 12, scope: !395)
!403 = !DILocation(line: 190, column: 13, scope: !395)
!404 = !DILocation(line: 190, column: 21, scope: !395)
!405 = !DILocation(line: 190, column: 25, scope: !395)
!406 = !DILocation(line: 190, column: 10, scope: !395)
!407 = !DILocation(line: 191, column: 5, scope: !395)
!408 = distinct !DISubprogram(name: "zipmapGet", scope: !1, file: !1, line: 334, type: !409, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!38, !13, !13, !4, !329, !159}
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DILocalVariable(name: "zm", arg: 1, scope: !408, file: !1, line: 334, type: !13)
!413 = !DILocalVariable(name: "key", arg: 2, scope: !408, file: !1, line: 334, type: !13)
!414 = !DILocalVariable(name: "klen", arg: 3, scope: !408, file: !1, line: 334, type: !4)
!415 = !DILocalVariable(name: "value", arg: 4, scope: !408, file: !1, line: 334, type: !329)
!416 = !DILocalVariable(name: "vlen", arg: 5, scope: !408, file: !1, line: 334, type: !159)
!417 = !DILocalVariable(name: "p", scope: !408, file: !1, line: 335, type: !13)
!418 = !DILocation(line: 0, scope: !408)
!419 = !DILocation(line: 337, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !408, file: !1, line: 337, column: 9)
!421 = !DILocation(line: 337, column: 49, scope: !420)
!422 = !DILocation(line: 337, column: 9, scope: !408)
!423 = !DILocation(line: 338, column: 10, scope: !408)
!424 = !DILocation(line: 338, column: 7, scope: !408)
!425 = !DILocation(line: 339, column: 13, scope: !408)
!426 = !DILocation(line: 339, column: 11, scope: !408)
!427 = !DILocation(line: 340, column: 18, scope: !408)
!428 = !DILocation(line: 340, column: 16, scope: !408)
!429 = !DILocation(line: 340, column: 42, scope: !408)
!430 = !DILocation(line: 340, column: 12, scope: !408)
!431 = !DILocation(line: 341, column: 5, scope: !408)
!432 = !DILocation(line: 342, column: 1, scope: !408)
!433 = distinct !DISubprogram(name: "zipmapExists", scope: !1, file: !1, line: 345, type: !434, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!38, !13, !13, !4}
!436 = !{!437, !438, !439}
!437 = !DILocalVariable(name: "zm", arg: 1, scope: !433, file: !1, line: 345, type: !13)
!438 = !DILocalVariable(name: "key", arg: 2, scope: !433, file: !1, line: 345, type: !13)
!439 = !DILocalVariable(name: "klen", arg: 3, scope: !433, file: !1, line: 345, type: !4)
!440 = !DILocation(line: 0, scope: !433)
!441 = !DILocation(line: 346, column: 12, scope: !433)
!442 = !DILocation(line: 346, column: 46, scope: !433)
!443 = !DILocation(line: 346, column: 5, scope: !433)
!444 = distinct !DISubprogram(name: "zipmapLen", scope: !1, file: !1, line: 350, type: !223, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!445 = !{!446, !447, !448}
!446 = !DILocalVariable(name: "zm", arg: 1, scope: !444, file: !1, line: 350, type: !13)
!447 = !DILocalVariable(name: "len", scope: !444, file: !1, line: 351, type: !4)
!448 = !DILocalVariable(name: "p", scope: !449, file: !1, line: 355, type: !13)
!449 = distinct !DILexicalBlock(scope: !450, file: !1, line: 354, column: 12)
!450 = distinct !DILexicalBlock(scope: !444, file: !1, line: 352, column: 9)
!451 = !DILocation(line: 0, scope: !444)
!452 = !DILocation(line: 352, column: 9, scope: !450)
!453 = !DILocation(line: 352, column: 15, scope: !450)
!454 = !DILocation(line: 352, column: 9, scope: !444)
!455 = !DILocation(line: 354, column: 5, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !1, line: 352, column: 32)
!457 = !DILocation(line: 355, column: 28, scope: !449)
!458 = !DILocation(line: 0, scope: !449)
!459 = !DILocation(line: 356, column: 9, scope: !449)
!460 = !DILocation(line: 356, column: 20, scope: !449)
!461 = !DILocation(line: 356, column: 55, scope: !449)
!462 = !DILocation(line: 356, column: 67, scope: !449)
!463 = distinct !{!463, !459, !462}
!464 = !DILocation(line: 359, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !449, file: !1, line: 359, column: 13)
!466 = !DILocation(line: 359, column: 13, scope: !449)
!467 = !DILocation(line: 359, column: 42, scope: !465)
!468 = !DILocation(line: 359, column: 40, scope: !465)
!469 = !DILocation(line: 359, column: 34, scope: !465)
!470 = !DILocation(line: 361, column: 5, scope: !444)
!471 = distinct !DISubprogram(name: "zipmapRepr", scope: !1, file: !1, line: 364, type: !472, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !474)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !13}
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(name: "p", arg: 1, scope: !471, file: !1, line: 364, type: !13)
!476 = !DILocalVariable(name: "l", scope: !471, file: !1, line: 365, type: !4)
!477 = !DILocalVariable(name: "e", scope: !478, file: !1, line: 373, type: !14)
!478 = distinct !DILexicalBlock(scope: !479, file: !1, line: 372, column: 16)
!479 = distinct !DILexicalBlock(scope: !480, file: !1, line: 369, column: 13)
!480 = distinct !DILexicalBlock(scope: !471, file: !1, line: 368, column: 14)
!481 = !DILocation(line: 0, scope: !471)
!482 = !DILocation(line: 367, column: 28, scope: !471)
!483 = !DILocation(line: 367, column: 26, scope: !471)
!484 = !DILocation(line: 367, column: 5, scope: !471)
!485 = !DILocation(line: 369, column: 13, scope: !479)
!486 = !DILocation(line: 369, column: 18, scope: !479)
!487 = !DILocation(line: 369, column: 13, scope: !480)
!488 = !DILocation(line: 370, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !1, line: 369, column: 33)
!490 = !DILocation(line: 394, column: 5, scope: !471)
!491 = !DILocation(line: 395, column: 1, scope: !471)
!492 = !DILocation(line: 375, column: 17, scope: !478)
!493 = !DILocation(line: 376, column: 13, scope: !478)
!494 = !DILocation(line: 377, column: 18, scope: !478)
!495 = !DILocation(line: 377, column: 15, scope: !478)
!496 = !DILocation(line: 378, column: 22, scope: !478)
!497 = !DILocation(line: 378, column: 26, scope: !478)
!498 = !DILocation(line: 378, column: 13, scope: !478)
!499 = !DILocation(line: 379, column: 15, scope: !478)
!500 = !DILocation(line: 381, column: 17, scope: !478)
!501 = !DILocation(line: 382, column: 13, scope: !478)
!502 = !DILocation(line: 383, column: 18, scope: !478)
!503 = !DILocation(line: 383, column: 15, scope: !478)
!504 = !DILocation(line: 384, column: 19, scope: !478)
!505 = !DILocation(line: 384, column: 17, scope: !478)
!506 = !DILocation(line: 0, scope: !478)
!507 = !DILocation(line: 385, column: 22, scope: !478)
!508 = !DILocation(line: 385, column: 26, scope: !478)
!509 = !DILocation(line: 385, column: 13, scope: !478)
!510 = !DILocation(line: 386, column: 20, scope: !478)
!511 = !DILocation(line: 386, column: 19, scope: !478)
!512 = !DILocation(line: 386, column: 15, scope: !478)
!513 = !DILocation(line: 387, column: 17, scope: !514)
!514 = distinct !DILexicalBlock(scope: !478, file: !1, line: 387, column: 17)
!515 = !DILocation(line: 387, column: 17, scope: !478)
!516 = !DILocation(line: 388, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !1, line: 387, column: 20)
!518 = !DILocation(line: 389, column: 17, scope: !517)
!519 = !DILocation(line: 389, column: 24, scope: !517)
!520 = !DILocation(line: 389, column: 28, scope: !517)
!521 = distinct !{!521, !518, !522}
!522 = !DILocation(line: 389, column: 38, scope: !517)
!523 = !DILocation(line: 390, column: 17, scope: !517)
!524 = !DILocation(line: 391, column: 13, scope: !517)
!525 = distinct !{!525, !526, !527}
!526 = !DILocation(line: 368, column: 5, scope: !471)
!527 = !DILocation(line: 393, column: 5, scope: !471)
!528 = !DISubprogram(name: "printf", scope: !529, file: !529, line: 332, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!529 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!530 = !DISubroutineType(types: !531)
!531 = !{!38, !532, null}
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!536 = !DISubprogram(name: "fwrite", scope: !529, file: !529, line: 652, type: !537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!537 = !DISubroutineType(types: !538)
!538 = !{!30, !272, !30, !30, !539}
!539 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !542, line: 7, baseType: !543)
!542 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !544, line: 49, size: 1728, elements: !545)
!544 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!545 = !{!546, !547, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !562, !564, !565, !566, !570, !572, !574, !578, !581, !583, !586, !589, !590, !591, !592, !593}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !543, file: !544, line: 51, baseType: !38, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !543, file: !544, line: 54, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !543, file: !544, line: 55, baseType: !548, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !543, file: !544, line: 56, baseType: !548, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !543, file: !544, line: 57, baseType: !548, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !543, file: !544, line: 58, baseType: !548, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !543, file: !544, line: 59, baseType: !548, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !543, file: !544, line: 60, baseType: !548, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !543, file: !544, line: 61, baseType: !548, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !543, file: !544, line: 64, baseType: !548, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !543, file: !544, line: 65, baseType: !548, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !543, file: !544, line: 66, baseType: !548, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !543, file: !544, line: 68, baseType: !560, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !544, line: 36, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !543, file: !544, line: 70, baseType: !563, size: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !543, file: !544, line: 72, baseType: !38, size: 32, offset: 896)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !543, file: !544, line: 73, baseType: !38, size: 32, offset: 928)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !543, file: !544, line: 74, baseType: !567, size: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !568, line: 152, baseType: !569)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!569 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !543, file: !544, line: 77, baseType: !571, size: 16, offset: 1024)
!571 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !543, file: !544, line: 78, baseType: !573, size: 8, offset: 1040)
!573 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !543, file: !544, line: 79, baseType: !575, size: 8, offset: 1048)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 8, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 1)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !543, file: !544, line: 81, baseType: !579, size: 64, offset: 1088)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !544, line: 43, baseType: null)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !543, file: !544, line: 89, baseType: !582, size: 64, offset: 1152)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !568, line: 153, baseType: !569)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !543, file: !544, line: 91, baseType: !584, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !544, line: 37, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !543, file: !544, line: 92, baseType: !587, size: 64, offset: 1280)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !544, line: 38, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !543, file: !544, line: 93, baseType: !563, size: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !543, file: !544, line: 94, baseType: !3, size: 64, offset: 1408)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !543, file: !544, line: 95, baseType: !30, size: 64, offset: 1472)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !543, file: !544, line: 96, baseType: !38, size: 32, offset: 1536)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !543, file: !544, line: 98, baseType: !594, size: 160, offset: 1568)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 160, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 20)
!597 = !DISubprogram(name: "memcmp", scope: !235, file: !235, line: 64, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!598 = !DISubroutineType(types: !599)
!599 = !{!38, !238, !238, !30}
!600 = !DISubprogram(name: "zrealloc", scope: !27, file: !27, line: 35, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !33)
!601 = !DISubroutineType(types: !602)
!602 = !{!3, !3, !30}
