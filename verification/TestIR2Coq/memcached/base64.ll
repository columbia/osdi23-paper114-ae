; ModuleID = 'base64.c'
source_filename = "base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_table = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16, !dbg !0
@dtable = internal unnamed_addr constant [256 x i8] c"\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80>\80\80\80?456789:;<=\80\80\80\00\80\80\80\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\80\80\80\80\80\80\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16, !dbg !7
@__llvm_gcov_ctr = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [14 x i64] zeroinitializer
@0 = private unnamed_addr constant [54 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/base64.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i64 @base64_encode(i8* noundef %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_len) local_unnamed_addr #0 !dbg !23 {
entry:
  call void @llvm.dbg.value(metadata i8* %src, metadata !32, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 %len, metadata !33, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %out, metadata !34, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i64 %out_len, metadata !35, metadata !DIExpression()), !dbg !40
  %mul = shl i64 %len, 2, !dbg !41
  %div = udiv i64 %mul, 3, !dbg !42
  %add = add nuw nsw i64 %div, 4, !dbg !43
  call void @llvm.dbg.value(metadata i64 %add, metadata !39, metadata !DIExpression()), !dbg !40
  %div1 = udiv i64 %add, 72, !dbg !44
  %add2 = add nuw nsw i64 %div1, %add, !dbg !45
  call void @llvm.dbg.value(metadata i64 %add2, metadata !39, metadata !DIExpression()), !dbg !40
  %inc = add nuw nsw i64 %add2, 1, !dbg !46
  call void @llvm.dbg.value(metadata i64 %inc, metadata !39, metadata !DIExpression()), !dbg !40
  %cmp = icmp ult i64 %inc, %len, !dbg !47
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !50
  %0 = add i64 %gcov_ctr, 1, !dbg !50
  store i64 %0, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !50
  br label %cleanup, !dbg !50

if.end:                                           ; preds = %entry
  %cmp3.not = icmp ult i64 %add2, %out_len, !dbg !52
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !54

if.then4:                                         ; preds = %if.end
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !55
  %1 = add i64 %gcov_ctr88, 1, !dbg !55
  store i64 %1, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !55
  br label %cleanup, !dbg !55

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp eq i8* %out, null, !dbg !57
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !59

if.then7:                                         ; preds = %if.end5
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !60
  %2 = add i64 %gcov_ctr89, 1, !dbg !60
  store i64 %2, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !60
  br label %cleanup, !dbg !60

if.end8:                                          ; preds = %if.end5
  %add.ptr = getelementptr inbounds i8, i8* %src, i64 %len, !dbg !62
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %src, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %out, metadata !36, metadata !DIExpression()), !dbg !40
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  call void @llvm.dbg.value(metadata i8* %src, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %out, metadata !36, metadata !DIExpression()), !dbg !40
  %cmp9139 = icmp sgt i64 %len, 2, !dbg !63
  br i1 %cmp9139, label %while.body, label %while.end, !dbg !64

while.body:                                       ; preds = %if.end8, %while.body
  %in.0141 = phi i8* [ %add.ptr36, %while.body ], [ %src, %if.end8 ]
  %pos.0140 = phi i8* [ %incdec.ptr35, %while.body ], [ %out, %if.end8 ]
  call void @llvm.dbg.value(metadata i8* %in.0141, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.value(metadata i8* %pos.0140, metadata !36, metadata !DIExpression()), !dbg !40
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !65
  %3 = add i64 %gcov_ctr90, 1, !dbg !65
  store i64 %3, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !65
  %4 = load i8, i8* %in.0141, align 1, !dbg !65, !tbaa !67
  %5 = lshr i8 %4, 2, !dbg !70
  %6 = zext i8 %5 to i64
  %arrayidx10 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %6, !dbg !71
  %7 = load i8, i8* %arrayidx10, align 1, !dbg !71, !tbaa !67
  %incdec.ptr = getelementptr inbounds i8, i8* %pos.0140, i64 1, !dbg !72
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %7, i8* %pos.0140, align 1, !dbg !73, !tbaa !67
  %8 = load i8, i8* %in.0141, align 1, !dbg !74, !tbaa !67
  %9 = shl i8 %8, 4, !dbg !75
  %10 = and i8 %9, 48, !dbg !75
  %arrayidx13 = getelementptr inbounds i8, i8* %in.0141, i64 1, !dbg !76
  %11 = load i8, i8* %arrayidx13, align 1, !dbg !76, !tbaa !67
  %12 = lshr i8 %11, 4, !dbg !77
  %or135 = or i8 %10, %12, !dbg !78
  %idxprom16 = zext i8 %or135 to i64, !dbg !79
  %arrayidx17 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %idxprom16, !dbg !79
  %13 = load i8, i8* %arrayidx17, align 1, !dbg !79, !tbaa !67
  %incdec.ptr18 = getelementptr inbounds i8, i8* %pos.0140, i64 2, !dbg !80
  call void @llvm.dbg.value(metadata i8* %incdec.ptr18, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %13, i8* %incdec.ptr, align 1, !dbg !81, !tbaa !67
  %14 = load i8, i8* %arrayidx13, align 1, !dbg !82, !tbaa !67
  %15 = shl i8 %14, 2, !dbg !83
  %16 = and i8 %15, 60, !dbg !83
  %arrayidx23 = getelementptr inbounds i8, i8* %in.0141, i64 2, !dbg !84
  %17 = load i8, i8* %arrayidx23, align 1, !dbg !84, !tbaa !67
  %18 = lshr i8 %17, 6, !dbg !85
  %or26136 = or i8 %16, %18, !dbg !86
  %idxprom27 = zext i8 %or26136 to i64, !dbg !87
  %arrayidx28 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %idxprom27, !dbg !87
  %19 = load i8, i8* %arrayidx28, align 1, !dbg !87, !tbaa !67
  %incdec.ptr29 = getelementptr inbounds i8, i8* %pos.0140, i64 3, !dbg !88
  call void @llvm.dbg.value(metadata i8* %incdec.ptr29, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %19, i8* %incdec.ptr18, align 1, !dbg !89, !tbaa !67
  %20 = load i8, i8* %arrayidx23, align 1, !dbg !90, !tbaa !67
  %21 = and i8 %20, 63, !dbg !91
  %22 = zext i8 %21 to i64
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %22, !dbg !92
  %23 = load i8, i8* %arrayidx34, align 1, !dbg !92, !tbaa !67
  %incdec.ptr35 = getelementptr inbounds i8, i8* %pos.0140, i64 4, !dbg !93
  call void @llvm.dbg.value(metadata i8* %incdec.ptr35, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %23, i8* %incdec.ptr29, align 1, !dbg !94, !tbaa !67
  %add.ptr36 = getelementptr inbounds i8, i8* %in.0141, i64 3, !dbg !95
  call void @llvm.dbg.value(metadata i8* %add.ptr36, metadata !38, metadata !DIExpression()), !dbg !40
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr36 to i64, !dbg !96
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !96
  %cmp9 = icmp sgt i64 %sub.ptr.sub, 2, !dbg !63
  br i1 %cmp9, label %while.body, label %while.end, !dbg !64, !llvm.loop !97

while.end:                                        ; preds = %while.body, %if.end8
  %pos.0.lcssa = phi i8* [ %out, %if.end8 ], [ %incdec.ptr35, %while.body ], !dbg !40
  %in.0.lcssa = phi i8* [ %src, %if.end8 ], [ %add.ptr36, %while.body ], !dbg !40
  %sub.ptr.sub.lcssa = phi i64 [ %len, %if.end8 ], [ %sub.ptr.sub, %while.body ], !dbg !96
  %tobool.not = icmp eq i64 %sub.ptr.sub.lcssa, 0, !dbg !100
  br i1 %tobool.not, label %if.end81, label %if.then40, !dbg !102

if.then40:                                        ; preds = %while.end
  %24 = load i8, i8* %in.0.lcssa, align 1, !dbg !103, !tbaa !67
  %25 = lshr i8 %24, 2, !dbg !105
  %26 = zext i8 %25 to i64
  %arrayidx45 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %26, !dbg !106
  %27 = load i8, i8* %arrayidx45, align 1, !dbg !106, !tbaa !67
  %incdec.ptr46 = getelementptr inbounds i8, i8* %pos.0.lcssa, i64 1, !dbg !107
  call void @llvm.dbg.value(metadata i8* %incdec.ptr46, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %27, i8* %pos.0.lcssa, align 1, !dbg !108, !tbaa !67
  %cmp50 = icmp eq i64 %sub.ptr.sub.lcssa, 1, !dbg !109
  br i1 %cmp50, label %if.then52, label %if.else, !dbg !111

if.then52:                                        ; preds = %if.then40
  %gcov_ctr91 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !112
  %28 = add i64 %gcov_ctr91, 1, !dbg !112
  store i64 %28, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !112
  %29 = load i8, i8* %in.0.lcssa, align 1, !dbg !112, !tbaa !67
  %30 = shl i8 %29, 4, !dbg !114
  %31 = and i8 %30, 48, !dbg !114
  %32 = zext i8 %31 to i64
  %arrayidx58 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %32, !dbg !115
  %33 = load i8, i8* %arrayidx58, align 16, !dbg !115, !tbaa !67
  call void @llvm.dbg.value(metadata i8* %46, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %33, i8* %incdec.ptr46, align 1, !dbg !116, !tbaa !67
  call void @llvm.dbg.value(metadata i8* %pos.0.lcssa, metadata !36, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !40
  br label %if.end79, !dbg !117

if.else:                                          ; preds = %if.then40
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !118
  %34 = add i64 %gcov_ctr92, 1, !dbg !118
  store i64 %34, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 5), align 8, !dbg !118
  %35 = load i8, i8* %in.0.lcssa, align 1, !dbg !118, !tbaa !67
  %36 = shl i8 %35, 4, !dbg !120
  %37 = and i8 %36, 48, !dbg !120
  %arrayidx65 = getelementptr inbounds i8, i8* %in.0.lcssa, i64 1, !dbg !121
  %38 = load i8, i8* %arrayidx65, align 1, !dbg !121, !tbaa !67
  %39 = lshr i8 %38, 4, !dbg !122
  %or68134 = or i8 %37, %39, !dbg !123
  %idxprom69 = zext i8 %or68134 to i64, !dbg !124
  %arrayidx70 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %idxprom69, !dbg !124
  %40 = load i8, i8* %arrayidx70, align 1, !dbg !124, !tbaa !67
  call void @llvm.dbg.value(metadata i8* %46, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 %40, i8* %incdec.ptr46, align 1, !dbg !125, !tbaa !67
  %41 = load i8, i8* %arrayidx65, align 1, !dbg !126, !tbaa !67
  %42 = shl i8 %41, 2, !dbg !127
  %43 = and i8 %42, 60, !dbg !127
  %44 = zext i8 %43 to i64
  %arrayidx77 = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %44, !dbg !128
  %45 = load i8, i8* %arrayidx77, align 4, !dbg !128, !tbaa !67
  call void @llvm.dbg.value(metadata i8* %pos.0.lcssa, metadata !36, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !40
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then52
  %.sink = phi i8 [ 61, %if.then52 ], [ %45, %if.else ], !dbg !129
  %46 = getelementptr inbounds i8, i8* %pos.0.lcssa, i64 2, !dbg !130
  store i8 %.sink, i8* %46, align 1, !dbg !131
  %pos.1 = getelementptr inbounds i8, i8* %pos.0.lcssa, i64 3, !dbg !129
  call void @llvm.dbg.value(metadata i8* %pos.1, metadata !36, metadata !DIExpression()), !dbg !40
  %incdec.ptr80 = getelementptr inbounds i8, i8* %pos.0.lcssa, i64 4, !dbg !132
  call void @llvm.dbg.value(metadata i8* %incdec.ptr80, metadata !36, metadata !DIExpression()), !dbg !40
  store i8 61, i8* %pos.1, align 1, !dbg !133, !tbaa !67
  br label %if.end81, !dbg !134

if.end81:                                         ; preds = %if.end79, %while.end
  %pos.2 = phi i8* [ %incdec.ptr80, %if.end79 ], [ %pos.0.lcssa, %while.end ], !dbg !40
  call void @llvm.dbg.value(metadata i8* %pos.2, metadata !36, metadata !DIExpression()), !dbg !40
  %gcov_ctr93 = load i64, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16, !dbg !135
  %47 = add i64 %gcov_ctr93, 1, !dbg !135
  store i64 %47, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 6), align 16, !dbg !135
  store i8 0, i8* %pos.2, align 1, !dbg !136, !tbaa !67
  %sub.ptr.lhs.cast82 = ptrtoint i8* %pos.2 to i64, !dbg !137
  %sub.ptr.rhs.cast83 = ptrtoint i8* %out to i64, !dbg !137
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83, !dbg !137
  br label %cleanup, !dbg !138

cleanup:                                          ; preds = %if.end81, %if.then7, %if.then4, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then7 ], [ %sub.ptr.sub84, %if.end81 ], !dbg !40
  ret i64 %retval.0, !dbg !139
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @base64_decode(i8* nocapture noundef readonly %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_len) local_unnamed_addr #3 !dbg !140 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 16
  %block = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %src, metadata !142, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %len, metadata !143, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %out, metadata !144, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %out_len, metadata !145, metadata !DIExpression()), !dbg !157
  %1 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 0, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !158
  call void @llvm.dbg.declare(metadata [4 x i8]* %block, metadata !147, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 0, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()), !dbg !157
  %cmp137.not = icmp eq i64 %len, 0, !dbg !160
  br i1 %cmp137.not, label %cleanup, label %for.body.preheader, !dbg !163

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %len, 1, !dbg !163
  %2 = icmp eq i64 %len, 1, !dbg !163
  br i1 %2, label %for.end.unr-lcssa, label %for.body.preheader.new, !dbg !163

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %len, -2, !dbg !163
  br label %for.body, !dbg !163

for.body:                                         ; preds = %for.inc.1, %for.body.preheader.new
  %count.0139 = phi i64 [ 0, %for.body.preheader.new ], [ %count.1.1, %for.inc.1 ]
  %i.0138 = phi i64 [ 0, %for.body.preheader.new ], [ %inc4.1, %for.inc.1 ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.inc.1 ]
  call void @llvm.dbg.value(metadata i64 %count.0139, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %i.0138, metadata !152, metadata !DIExpression()), !dbg !157
  %arrayidx = getelementptr inbounds i8, i8* %src, i64 %i.0138, !dbg !164
  %3 = load i8, i8* %arrayidx, align 1, !dbg !164, !tbaa !67
  %idxprom = zext i8 %3 to i64, !dbg !167
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @dtable, i64 0, i64 %idxprom, !dbg !167
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !167, !tbaa !67
  %cmp2.not = icmp eq i8 %4, -128, !dbg !168
  br i1 %cmp2.not, label %for.inc, label %if.then, !dbg !169

if.then:                                          ; preds = %for.body
  %gcov_ctr86 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %5 = add i64 %gcov_ctr86, 1, !dbg !170
  store i64 %5, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %inc = add i64 %count.0139, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %inc, metadata !153, metadata !DIExpression()), !dbg !157
  br label %for.inc, !dbg !171

for.inc:                                          ; preds = %for.body, %if.then
  %count.1 = phi i64 [ %inc, %if.then ], [ %count.0139, %for.body ], !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !153, metadata !DIExpression()), !dbg !157
  %gcov_ctr87 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  %6 = add i64 %gcov_ctr87, 1, !dbg !172
  store i64 %6, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  %inc4 = or i64 %i.0138, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %inc4, metadata !152, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %inc4, metadata !152, metadata !DIExpression()), !dbg !157
  %arrayidx.1 = getelementptr inbounds i8, i8* %src, i64 %inc4, !dbg !164
  %7 = load i8, i8* %arrayidx.1, align 1, !dbg !164, !tbaa !67
  %idxprom.1 = zext i8 %7 to i64, !dbg !167
  %arrayidx1.1 = getelementptr inbounds [256 x i8], [256 x i8]* @dtable, i64 0, i64 %idxprom.1, !dbg !167
  %8 = load i8, i8* %arrayidx1.1, align 1, !dbg !167, !tbaa !67
  %cmp2.not.1 = icmp eq i8 %8, -128, !dbg !168
  br i1 %cmp2.not.1, label %for.inc.1, label %if.then.1, !dbg !169

if.then.1:                                        ; preds = %for.inc
  %gcov_ctr86.1 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %9 = add i64 %gcov_ctr86.1, 1, !dbg !170
  store i64 %9, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %inc.1 = add i64 %count.1, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %inc.1, metadata !153, metadata !DIExpression()), !dbg !157
  br label %for.inc.1, !dbg !171

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %count.1.1 = phi i64 [ %inc.1, %if.then.1 ], [ %count.1, %for.inc ], !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.1.1, metadata !153, metadata !DIExpression()), !dbg !157
  %gcov_ctr87.1 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  %10 = add i64 %gcov_ctr87.1, 1, !dbg !172
  store i64 %10, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  %inc4.1 = add nuw i64 %i.0138, 2, !dbg !172
  call void @llvm.dbg.value(metadata i64 %inc4.1, metadata !152, metadata !DIExpression()), !dbg !157
  %niter.next.1 = add i64 %niter, 2, !dbg !163
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !163
  br i1 %niter.ncmp.1, label %for.end.unr-lcssa, label %for.body, !dbg !163, !llvm.loop !173

for.end.unr-lcssa:                                ; preds = %for.inc.1, %for.body.preheader
  %count.1.lcssa.ph = phi i64 [ undef, %for.body.preheader ], [ %count.1.1, %for.inc.1 ]
  %count.0139.unr = phi i64 [ 0, %for.body.preheader ], [ %count.1.1, %for.inc.1 ]
  %i.0138.unr = phi i64 [ 0, %for.body.preheader ], [ %inc4.1, %for.inc.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !169
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil, !dbg !169

for.body.epil:                                    ; preds = %for.end.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %count.0139.unr, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %i.0138.unr, metadata !152, metadata !DIExpression()), !dbg !157
  %arrayidx.epil = getelementptr inbounds i8, i8* %src, i64 %i.0138.unr, !dbg !164
  %11 = load i8, i8* %arrayidx.epil, align 1, !dbg !164, !tbaa !67
  %idxprom.epil = zext i8 %11 to i64, !dbg !167
  %arrayidx1.epil = getelementptr inbounds [256 x i8], [256 x i8]* @dtable, i64 0, i64 %idxprom.epil, !dbg !167
  %12 = load i8, i8* %arrayidx1.epil, align 1, !dbg !167, !tbaa !67
  %cmp2.not.epil = icmp eq i8 %12, -128, !dbg !168
  br i1 %cmp2.not.epil, label %for.inc.epil, label %if.then.epil, !dbg !169

if.then.epil:                                     ; preds = %for.body.epil
  %gcov_ctr86.epil = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %13 = add i64 %gcov_ctr86.epil, 1, !dbg !170
  store i64 %13, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !170
  %inc.epil = add i64 %count.0139.unr, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %inc.epil, metadata !153, metadata !DIExpression()), !dbg !157
  br label %for.inc.epil, !dbg !171

for.inc.epil:                                     ; preds = %if.then.epil, %for.body.epil
  %count.1.epil = phi i64 [ %inc.epil, %if.then.epil ], [ %count.0139.unr, %for.body.epil ], !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.1.epil, metadata !153, metadata !DIExpression()), !dbg !157
  %gcov_ctr87.epil = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  %14 = add i64 %gcov_ctr87.epil, 1, !dbg !172
  store i64 %14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 2), align 16, !dbg !172
  call void @llvm.dbg.value(metadata i64 %i.0138.unr, metadata !152, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !157
  br label %for.end, !dbg !175

for.end:                                          ; preds = %for.end.unr-lcssa, %for.inc.epil
  %count.1.lcssa = phi i64 [ %count.1.lcssa.ph, %for.end.unr-lcssa ], [ %count.1.epil, %for.inc.epil ], !dbg !157
  %cmp5 = icmp eq i64 %count.1.lcssa, 0, !dbg !175
  br i1 %cmp5, label %cleanup, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %for.end
  %gcov_ctr88 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 3), align 8, !dbg !178
  %15 = add i64 %gcov_ctr88, 1, !dbg !178
  store i64 %15, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 3), align 8, !dbg !178
  %rem = and i64 %count.1.lcssa, 3, !dbg !179
  %tobool.not = icmp eq i64 %rem, 0, !dbg !179
  br i1 %tobool.not, label %if.end8, label %cleanup, !dbg !180

if.end8:                                          ; preds = %lor.lhs.false
  %div = lshr i64 %count.1.lcssa, 2, !dbg !181
  %mul = mul nuw i64 %div, 3, !dbg !182
  call void @llvm.dbg.value(metadata i64 %mul, metadata !154, metadata !DIExpression()), !dbg !157
  %cmp9 = icmp ugt i64 %mul, %out_len, !dbg !183
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !185

if.then11:                                        ; preds = %if.end8
  %gcov_ctr89 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 4), align 16, !dbg !186
  %16 = add i64 %gcov_ctr89, 1, !dbg !186
  store i64 %16, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 4), align 16, !dbg !186
  br label %cleanup, !dbg !186

if.end12:                                         ; preds = %if.end8
  call void @llvm.dbg.value(metadata i8* %out, metadata !146, metadata !DIExpression()), !dbg !157
  %cmp13 = icmp eq i8* %out, null, !dbg !188
  br i1 %cmp13, label %if.then15, label %for.cond17.preheader, !dbg !190

for.cond17.preheader:                             ; preds = %if.end12
  call void @llvm.dbg.value(metadata i32 0, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %out, metadata !146, metadata !DIExpression()), !dbg !157
  br i1 %cmp137.not, label %for.end79, label %for.body20.lr.ph, !dbg !191

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %arrayidx43 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 1
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 2
  %arrayidx58 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 3
  br label %for.body20, !dbg !191

if.then15:                                        ; preds = %if.end12
  %gcov_ctr90 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 5), align 8, !dbg !193
  %17 = add i64 %gcov_ctr90, 1, !dbg !193
  store i64 %17, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 5), align 8, !dbg !193
  br label %cleanup, !dbg !193

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc77
  %pad.0146 = phi i32 [ 0, %for.body20.lr.ph ], [ %pad.2, %for.inc77 ]
  %count.2145 = phi i64 [ 0, %for.body20.lr.ph ], [ %count.4, %for.inc77 ]
  %i.1144 = phi i64 [ 0, %for.body20.lr.ph ], [ %inc78, %for.inc77 ]
  %pos.0143 = phi i8* [ %out, %for.body20.lr.ph ], [ %pos.2, %for.inc77 ]
  call void @llvm.dbg.value(metadata i32 %pad.0146, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.2145, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %i.1144, metadata !152, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %pos.0143, metadata !146, metadata !DIExpression()), !dbg !157
  %arrayidx21 = getelementptr inbounds i8, i8* %src, i64 %i.1144, !dbg !195
  %18 = load i8, i8* %arrayidx21, align 1, !dbg !195, !tbaa !67
  %idxprom22 = zext i8 %18 to i64, !dbg !198
  %arrayidx23 = getelementptr inbounds [256 x i8], [256 x i8]* @dtable, i64 0, i64 %idxprom22, !dbg !198
  %19 = load i8, i8* %arrayidx23, align 1, !dbg !198, !tbaa !67
  call void @llvm.dbg.value(metadata i8 %19, metadata !151, metadata !DIExpression()), !dbg !157
  %cmp25 = icmp eq i8 %19, -128, !dbg !199
  br i1 %cmp25, label %for.inc77, label %if.end28, !dbg !201

if.end28:                                         ; preds = %for.body20
  %cmp31 = icmp eq i8 %18, 61, !dbg !202
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !204

if.then33:                                        ; preds = %if.end28
  %gcov_ctr92 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 7), align 8, !dbg !205
  %20 = add i64 %gcov_ctr92, 1, !dbg !205
  store i64 %20, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 7), align 8, !dbg !205
  %inc34 = add nsw i32 %pad.0146, 1, !dbg !205
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !155, metadata !DIExpression()), !dbg !157
  br label %if.end35, !dbg !206

if.end35:                                         ; preds = %if.then33, %if.end28
  %pad.1 = phi i32 [ %inc34, %if.then33 ], [ %pad.0146, %if.end28 ], !dbg !157
  call void @llvm.dbg.value(metadata i32 %pad.1, metadata !155, metadata !DIExpression()), !dbg !157
  %arrayidx36 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 %count.2145, !dbg !207
  store i8 %19, i8* %arrayidx36, align 1, !dbg !208, !tbaa !67
  %inc37 = add i64 %count.2145, 1, !dbg !209
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !153, metadata !DIExpression()), !dbg !157
  %cmp38 = icmp eq i64 %inc37, 4, !dbg !210
  br i1 %cmp38, label %if.then40, label %for.inc77, !dbg !212

if.then40:                                        ; preds = %if.end35
  %21 = load i8, i8* %1, align 1, !dbg !213, !tbaa !67
  %shl = shl i8 %21, 2, !dbg !215
  %22 = load i8, i8* %arrayidx43, align 1, !dbg !216, !tbaa !67
  %23 = lshr i8 %22, 4, !dbg !217
  %or = or i8 %23, %shl, !dbg !218
  %incdec.ptr = getelementptr inbounds i8, i8* %pos.0143, i64 1, !dbg !219
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !146, metadata !DIExpression()), !dbg !157
  store i8 %or, i8* %pos.0143, align 1, !dbg !220, !tbaa !67
  %24 = load i8, i8* %arrayidx43, align 1, !dbg !221, !tbaa !67
  %shl48 = shl i8 %24, 4, !dbg !222
  %25 = load i8, i8* %arrayidx49, align 1, !dbg !223, !tbaa !67
  %26 = lshr i8 %25, 2, !dbg !224
  %or52 = or i8 %26, %shl48, !dbg !225
  %incdec.ptr54 = getelementptr inbounds i8, i8* %pos.0143, i64 2, !dbg !226
  call void @llvm.dbg.value(metadata i8* %incdec.ptr54, metadata !146, metadata !DIExpression()), !dbg !157
  store i8 %or52, i8* %incdec.ptr, align 1, !dbg !227, !tbaa !67
  %27 = load i8, i8* %arrayidx49, align 1, !dbg !228, !tbaa !67
  %shl57 = shl i8 %27, 6, !dbg !229
  %28 = load i8, i8* %arrayidx58, align 1, !dbg !230, !tbaa !67
  %or60 = or i8 %shl57, %28, !dbg !231
  call void @llvm.dbg.value(metadata i8* %pos.0143, metadata !146, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !157
  store i8 %or60, i8* %incdec.ptr54, align 1, !dbg !232, !tbaa !67
  call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !157
  switch i32 %pad.1, label %if.else72 [
    i32 0, label %if.end75
    i32 1, label %for.end79.sink.split.loopexit
    i32 2, label %for.end79.sink.split
  ], !dbg !233

if.else72:                                        ; preds = %if.then40
  %gcov_ctr94 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 9), align 8, !dbg !234
  %29 = add i64 %gcov_ctr94, 1, !dbg !234
  store i64 %29, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 9), align 8, !dbg !234
  br label %cleanup, !dbg !234

if.end75:                                         ; preds = %if.then40
  %incdec.ptr62 = getelementptr inbounds i8, i8* %pos.0143, i64 3, !dbg !240
  call void @llvm.dbg.value(metadata i8* %incdec.ptr62, metadata !146, metadata !DIExpression()), !dbg !157
  %gcov_ctr96 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 11), align 8, !dbg !241
  %30 = add i64 %gcov_ctr96, 1, !dbg !241
  store i64 %30, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 11), align 8, !dbg !241
  br label %for.inc77, !dbg !241

for.inc77:                                        ; preds = %if.end35, %if.end75, %for.body20
  %.sink = phi i64* [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 6), %for.body20 ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 12), %if.end75 ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 12), %if.end35 ]
  %pos.2 = phi i8* [ %pos.0143, %for.body20 ], [ %incdec.ptr62, %if.end75 ], [ %pos.0143, %if.end35 ], !dbg !157
  %count.4 = phi i64 [ %count.2145, %for.body20 ], [ 0, %if.end75 ], [ %inc37, %if.end35 ], !dbg !157
  %pad.2 = phi i32 [ %pad.0146, %for.body20 ], [ %pad.1, %if.end75 ], [ %pad.1, %if.end35 ], !dbg !157
  %gcov_ctr97 = load i64, i64* %.sink, align 16, !dbg !242
  %31 = add i64 %gcov_ctr97, 1, !dbg !242
  store i64 %31, i64* %.sink, align 16, !dbg !242
  call void @llvm.dbg.value(metadata i32 %pad.2, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i64 %count.4, metadata !153, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i8* %pos.2, metadata !146, metadata !DIExpression()), !dbg !157
  %inc78 = add nuw i64 %i.1144, 1, !dbg !243
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !152, metadata !DIExpression()), !dbg !157
  %exitcond151.not = icmp eq i64 %inc78, %len, !dbg !244
  br i1 %exitcond151.not, label %for.end79, label %for.body20, !dbg !191, !llvm.loop !245

for.end79.sink.split.loopexit:                    ; preds = %if.then40
  br label %for.end79.sink.split, !dbg !247

for.end79.sink.split:                             ; preds = %if.then40, %for.end79.sink.split.loopexit
  %.sink166 = phi i64 [ 2, %for.end79.sink.split.loopexit ], [ 1, %if.then40 ]
  %.sink162 = phi i64* [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 8), %for.end79.sink.split.loopexit ], [ getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 10), %if.then40 ]
  %incdec.ptr.le = getelementptr inbounds i8, i8* %pos.0143, i64 %.sink166, !dbg !247
  %gcov_ctr93 = load i64, i64* %.sink162, align 16
  %32 = add i64 %gcov_ctr93, 1
  store i64 %32, i64* %.sink162, align 16
  br label %for.end79, !dbg !248

for.end79:                                        ; preds = %for.inc77, %for.end79.sink.split, %for.cond17.preheader
  %pos.3 = phi i8* [ %out, %for.cond17.preheader ], [ %incdec.ptr.le, %for.end79.sink.split ], [ %pos.2, %for.inc77 ], !dbg !157
  call void @llvm.dbg.value(metadata i8* %pos.3, metadata !146, metadata !DIExpression()), !dbg !157
  %gcov_ctr98 = load i64, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 13), align 8, !dbg !248
  %33 = add i64 %gcov_ctr98, 1, !dbg !248
  store i64 %33, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 13), align 8, !dbg !248
  %sub.ptr.lhs.cast = ptrtoint i8* %pos.3 to i64, !dbg !249
  %sub.ptr.rhs.cast = ptrtoint i8* %out to i64, !dbg !249
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !249
  br label %cleanup, !dbg !250

cleanup:                                          ; preds = %entry, %for.end, %lor.lhs.false, %for.end79, %if.else72, %if.then15, %if.then11
  %retval.0 = phi i64 [ 0, %if.then11 ], [ 0, %if.then15 ], [ %sub.ptr.sub, %for.end79 ], [ 0, %if.else72 ], [ 0, %lor.lhs.false ], [ 0, %for.end ], [ 0, %entry ], !dbg !157
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !251
  ret i64 %retval.0, !dbg !251
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #4 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @0, i64 0, i64 0), i32 875575338, i32 1165837529) #8
  tail call void @llvm_gcda_emit_function(i32 0, i32 516455773, i32 1165837529) #8
  tail call void @llvm_gcda_emit_arcs(i32 7, i64* getelementptr inbounds ([7 x i64], [7 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #8
  tail call void @llvm_gcda_emit_function(i32 1, i32 -1700930954, i32 1165837529) #8
  tail call void @llvm_gcda_emit_arcs(i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0)) #8
  tail call void @llvm_gcda_summary_info() #8
  tail call void @llvm_gcda_end_file() #8
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #5 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(56) bitcast ([7 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(112) bitcast ([14 x i64]* @__llvm_gcov_ctr.1 to i8*), i8 0, i64 112, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #4 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #8
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable }
attributes #5 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20}
!llvm.gcov = !{!21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base64_table", scope: !2, file: !3, line: 53, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "base64.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "3f97c459458a4a3531b971206ea6ece0")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "dtable", scope: !2, file: !3, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13}
!13 = !DISubrange(count: 256)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{!"/home/xuheng/blackbox/llvm-test/memcached/base64.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/base64.gcda", !2}
!22 = !{!"clang version 14.0.0"}
!23 = distinct !DISubprogram(name: "base64_encode", scope: !3, file: !3, line: 93, type: !24, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !29, !26, !30, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39}
!32 = !DILocalVariable(name: "src", arg: 1, scope: !23, file: !3, line: 93, type: !29)
!33 = !DILocalVariable(name: "len", arg: 2, scope: !23, file: !3, line: 93, type: !26)
!34 = !DILocalVariable(name: "out", arg: 3, scope: !23, file: !3, line: 94, type: !30)
!35 = !DILocalVariable(name: "out_len", arg: 4, scope: !23, file: !3, line: 94, type: !26)
!36 = !DILocalVariable(name: "pos", scope: !23, file: !3, line: 96, type: !30)
!37 = !DILocalVariable(name: "end", scope: !23, file: !3, line: 97, type: !29)
!38 = !DILocalVariable(name: "in", scope: !23, file: !3, line: 97, type: !29)
!39 = !DILocalVariable(name: "olen", scope: !23, file: !3, line: 98, type: !26)
!40 = !DILocation(line: 0, scope: !23)
!41 = !DILocation(line: 100, column: 16, scope: !23)
!42 = !DILocation(line: 100, column: 20, scope: !23)
!43 = !DILocation(line: 100, column: 24, scope: !23)
!44 = !DILocation(line: 101, column: 18, scope: !23)
!45 = !DILocation(line: 101, column: 10, scope: !23)
!46 = !DILocation(line: 102, column: 9, scope: !23)
!47 = !DILocation(line: 103, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !23, file: !3, line: 103, column: 9)
!49 = !DILocation(line: 103, column: 9, scope: !23)
!50 = !DILocation(line: 104, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !3, line: 103, column: 21)
!52 = !DILocation(line: 106, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !23, file: !3, line: 106, column: 9)
!54 = !DILocation(line: 106, column: 9, scope: !23)
!55 = !DILocation(line: 107, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !3, line: 106, column: 25)
!57 = !DILocation(line: 109, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !23, file: !3, line: 109, column: 9)
!59 = !DILocation(line: 109, column: 9, scope: !23)
!60 = !DILocation(line: 110, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !3, line: 109, column: 22)
!62 = !DILocation(line: 113, column: 15, scope: !23)
!63 = !DILocation(line: 116, column: 21, scope: !23)
!64 = !DILocation(line: 116, column: 5, scope: !23)
!65 = !DILocation(line: 117, column: 31, scope: !66)
!66 = distinct !DILexicalBlock(scope: !23, file: !3, line: 116, column: 27)
!67 = !{!68, !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 117, column: 37, scope: !66)
!71 = !DILocation(line: 117, column: 18, scope: !66)
!72 = !DILocation(line: 117, column: 13, scope: !66)
!73 = !DILocation(line: 117, column: 16, scope: !66)
!74 = !DILocation(line: 118, column: 33, scope: !66)
!75 = !DILocation(line: 118, column: 47, scope: !66)
!76 = !DILocation(line: 118, column: 56, scope: !66)
!77 = !DILocation(line: 118, column: 62, scope: !66)
!78 = !DILocation(line: 118, column: 53, scope: !66)
!79 = !DILocation(line: 118, column: 18, scope: !66)
!80 = !DILocation(line: 118, column: 13, scope: !66)
!81 = !DILocation(line: 118, column: 16, scope: !66)
!82 = !DILocation(line: 119, column: 33, scope: !66)
!83 = !DILocation(line: 119, column: 47, scope: !66)
!84 = !DILocation(line: 119, column: 56, scope: !66)
!85 = !DILocation(line: 119, column: 62, scope: !66)
!86 = !DILocation(line: 119, column: 53, scope: !66)
!87 = !DILocation(line: 119, column: 18, scope: !66)
!88 = !DILocation(line: 119, column: 13, scope: !66)
!89 = !DILocation(line: 119, column: 16, scope: !66)
!90 = !DILocation(line: 120, column: 31, scope: !66)
!91 = !DILocation(line: 120, column: 37, scope: !66)
!92 = !DILocation(line: 120, column: 18, scope: !66)
!93 = !DILocation(line: 120, column: 13, scope: !66)
!94 = !DILocation(line: 120, column: 16, scope: !66)
!95 = !DILocation(line: 121, column: 12, scope: !66)
!96 = !DILocation(line: 116, column: 16, scope: !23)
!97 = distinct !{!97, !64, !98, !99}
!98 = !DILocation(line: 122, column: 5, scope: !23)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 124, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !23, file: !3, line: 124, column: 9)
!102 = !DILocation(line: 124, column: 9, scope: !23)
!103 = !DILocation(line: 125, column: 31, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 124, column: 19)
!105 = !DILocation(line: 125, column: 37, scope: !104)
!106 = !DILocation(line: 125, column: 18, scope: !104)
!107 = !DILocation(line: 125, column: 13, scope: !104)
!108 = !DILocation(line: 125, column: 16, scope: !104)
!109 = !DILocation(line: 126, column: 22, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !3, line: 126, column: 13)
!111 = !DILocation(line: 126, column: 13, scope: !104)
!112 = !DILocation(line: 127, column: 36, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !3, line: 126, column: 28)
!114 = !DILocation(line: 127, column: 50, scope: !113)
!115 = !DILocation(line: 127, column: 22, scope: !113)
!116 = !DILocation(line: 127, column: 20, scope: !113)
!117 = !DILocation(line: 129, column: 9, scope: !113)
!118 = !DILocation(line: 130, column: 37, scope: !119)
!119 = distinct !DILexicalBlock(scope: !110, file: !3, line: 129, column: 16)
!120 = !DILocation(line: 130, column: 51, scope: !119)
!121 = !DILocation(line: 131, column: 28, scope: !119)
!122 = !DILocation(line: 131, column: 34, scope: !119)
!123 = !DILocation(line: 130, column: 57, scope: !119)
!124 = !DILocation(line: 130, column: 22, scope: !119)
!125 = !DILocation(line: 130, column: 20, scope: !119)
!126 = !DILocation(line: 132, column: 36, scope: !119)
!127 = !DILocation(line: 132, column: 50, scope: !119)
!128 = !DILocation(line: 132, column: 22, scope: !119)
!129 = !DILocation(line: 0, scope: !110)
!130 = !DILocation(line: 127, column: 17, scope: !113)
!131 = !DILocation(line: 128, column: 20, scope: !113)
!132 = !DILocation(line: 134, column: 13, scope: !104)
!133 = !DILocation(line: 134, column: 16, scope: !104)
!134 = !DILocation(line: 135, column: 5, scope: !104)
!135 = !DILocation(line: 137, column: 6, scope: !23)
!136 = !DILocation(line: 137, column: 10, scope: !23)
!137 = !DILocation(line: 138, column: 16, scope: !23)
!138 = !DILocation(line: 138, column: 5, scope: !23)
!139 = !DILocation(line: 139, column: 1, scope: !23)
!140 = distinct !DISubprogram(name: "base64_decode", scope: !3, file: !3, line: 150, type: !24, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !151, !152, !153, !154, !155}
!142 = !DILocalVariable(name: "src", arg: 1, scope: !140, file: !3, line: 150, type: !29)
!143 = !DILocalVariable(name: "len", arg: 2, scope: !140, file: !3, line: 150, type: !26)
!144 = !DILocalVariable(name: "out", arg: 3, scope: !140, file: !3, line: 151, type: !30)
!145 = !DILocalVariable(name: "out_len", arg: 4, scope: !140, file: !3, line: 151, type: !26)
!146 = !DILocalVariable(name: "pos", scope: !140, file: !3, line: 153, type: !30)
!147 = !DILocalVariable(name: "block", scope: !140, file: !3, line: 153, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 4)
!151 = !DILocalVariable(name: "tmp", scope: !140, file: !3, line: 153, type: !11)
!152 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 154, type: !26)
!153 = !DILocalVariable(name: "count", scope: !140, file: !3, line: 154, type: !26)
!154 = !DILocalVariable(name: "olen", scope: !140, file: !3, line: 154, type: !26)
!155 = !DILocalVariable(name: "pad", scope: !140, file: !3, line: 155, type: !156)
!156 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!157 = !DILocation(line: 0, scope: !140)
!158 = !DILocation(line: 153, column: 5, scope: !140)
!159 = !DILocation(line: 153, column: 25, scope: !140)
!160 = !DILocation(line: 158, column: 19, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 158, column: 5)
!162 = distinct !DILexicalBlock(scope: !140, file: !3, line: 158, column: 5)
!163 = !DILocation(line: 158, column: 5, scope: !162)
!164 = !DILocation(line: 159, column: 20, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 159, column: 13)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 158, column: 31)
!167 = !DILocation(line: 159, column: 13, scope: !165)
!168 = !DILocation(line: 159, column: 28, scope: !165)
!169 = !DILocation(line: 159, column: 13, scope: !166)
!170 = !DILocation(line: 160, column: 18, scope: !165)
!171 = !DILocation(line: 160, column: 13, scope: !165)
!172 = !DILocation(line: 158, column: 27, scope: !161)
!173 = distinct !{!173, !163, !174, !99}
!174 = !DILocation(line: 161, column: 5, scope: !162)
!175 = !DILocation(line: 163, column: 15, scope: !176)
!176 = distinct !DILexicalBlock(scope: !140, file: !3, line: 163, column: 9)
!177 = !DILocation(line: 163, column: 20, scope: !176)
!178 = !DILocation(line: 163, column: 23, scope: !176)
!179 = !DILocation(line: 163, column: 29, scope: !176)
!180 = !DILocation(line: 163, column: 9, scope: !140)
!181 = !DILocation(line: 166, column: 18, scope: !140)
!182 = !DILocation(line: 166, column: 22, scope: !140)
!183 = !DILocation(line: 167, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !140, file: !3, line: 167, column: 9)
!185 = !DILocation(line: 167, column: 9, scope: !140)
!186 = !DILocation(line: 168, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 167, column: 25)
!188 = !DILocation(line: 171, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !140, file: !3, line: 171, column: 9)
!190 = !DILocation(line: 171, column: 9, scope: !140)
!191 = !DILocation(line: 176, column: 5, scope: !192)
!192 = distinct !DILexicalBlock(scope: !140, file: !3, line: 176, column: 5)
!193 = !DILocation(line: 172, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 171, column: 22)
!195 = !DILocation(line: 177, column: 22, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 176, column: 31)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 176, column: 5)
!198 = !DILocation(line: 177, column: 15, scope: !196)
!199 = !DILocation(line: 178, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 178, column: 13)
!201 = !DILocation(line: 178, column: 13, scope: !196)
!202 = !DILocation(line: 181, column: 20, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !3, line: 181, column: 13)
!204 = !DILocation(line: 181, column: 13, scope: !196)
!205 = !DILocation(line: 182, column: 16, scope: !203)
!206 = !DILocation(line: 182, column: 13, scope: !203)
!207 = !DILocation(line: 183, column: 9, scope: !196)
!208 = !DILocation(line: 183, column: 22, scope: !196)
!209 = !DILocation(line: 184, column: 14, scope: !196)
!210 = !DILocation(line: 185, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !196, file: !3, line: 185, column: 13)
!212 = !DILocation(line: 185, column: 13, scope: !196)
!213 = !DILocation(line: 186, column: 23, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 185, column: 25)
!215 = !DILocation(line: 186, column: 32, scope: !214)
!216 = !DILocation(line: 186, column: 41, scope: !214)
!217 = !DILocation(line: 186, column: 50, scope: !214)
!218 = !DILocation(line: 186, column: 38, scope: !214)
!219 = !DILocation(line: 186, column: 17, scope: !214)
!220 = !DILocation(line: 186, column: 20, scope: !214)
!221 = !DILocation(line: 187, column: 23, scope: !214)
!222 = !DILocation(line: 187, column: 32, scope: !214)
!223 = !DILocation(line: 187, column: 41, scope: !214)
!224 = !DILocation(line: 187, column: 50, scope: !214)
!225 = !DILocation(line: 187, column: 38, scope: !214)
!226 = !DILocation(line: 187, column: 17, scope: !214)
!227 = !DILocation(line: 187, column: 20, scope: !214)
!228 = !DILocation(line: 188, column: 23, scope: !214)
!229 = !DILocation(line: 188, column: 32, scope: !214)
!230 = !DILocation(line: 188, column: 40, scope: !214)
!231 = !DILocation(line: 188, column: 38, scope: !214)
!232 = !DILocation(line: 188, column: 20, scope: !214)
!233 = !DILocation(line: 190, column: 17, scope: !214)
!234 = !DILocation(line: 197, column: 21, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 195, column: 22)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 193, column: 26)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 191, column: 21)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 190, column: 22)
!239 = distinct !DILexicalBlock(scope: !214, file: !3, line: 190, column: 17)
!240 = !DILocation(line: 188, column: 17, scope: !214)
!241 = !DILocation(line: 201, column: 9, scope: !214)
!242 = !DILocation(line: 0, scope: !196)
!243 = !DILocation(line: 176, column: 27, scope: !197)
!244 = !DILocation(line: 176, column: 19, scope: !197)
!245 = distinct !{!245, !191, !246, !99}
!246 = !DILocation(line: 202, column: 5, scope: !192)
!247 = !DILocation(line: 0, scope: !214)
!248 = !DILocation(line: 204, column: 12, scope: !140)
!249 = !DILocation(line: 204, column: 16, scope: !140)
!250 = !DILocation(line: 204, column: 5, scope: !140)
!251 = !DILocation(line: 205, column: 1, scope: !140)
