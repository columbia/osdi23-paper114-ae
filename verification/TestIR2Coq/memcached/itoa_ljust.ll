; ModuleID = 'itoa_ljust.c'
source_filename = "itoa_ljust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lut = internal constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16, !dbg !0
@__llvm_gcov_ctr = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@0 = private unnamed_addr constant [58 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/itoa_ljust.gcda\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @itoa_u32(i32 noundef %u, i8* noundef %p) local_unnamed_addr #0 !dbg !26 {
entry:
  %p.addr = alloca i8*, align 8
  %d = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %u, metadata !31, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i8* %p, metadata !32, metadata !DIExpression()), !dbg !36
  store i8* %p, i8** %p.addr, align 8, !tbaa !37
  %0 = bitcast i32* %d to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !41
  call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %d, align 4, !dbg !42, !tbaa !43
  %cmp = icmp ugt i32 %u, 99999999, !dbg !45
  br i1 %cmp, label %if.then, label %if.else, !dbg !47

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !48
  %1 = add i64 %gcov_ctr, 1, !dbg !48
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !48
  call void @llvm.dbg.value(metadata i8** %p.addr, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !36
  call void @llvm.dbg.value(metadata i32* %d, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call = call fastcc i32 @digits(i32 noundef %u, i32 noundef 100000000, i32* noundef nonnull %d, i8** noundef nonnull %p.addr, i32 noundef 10) #8, !dbg !49
  call void @llvm.dbg.value(metadata i32 %call, metadata !35, metadata !DIExpression()), !dbg !36
  br label %if.end16, !dbg !50

if.else:                                          ; preds = %entry
  %cmp1 = icmp ult i32 %u, 100, !dbg !51
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !53

if.then2:                                         ; preds = %if.else
  %gcov_ctr18 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !54
  %2 = add i64 %gcov_ctr18, 1, !dbg !54
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !54
  call void @llvm.dbg.value(metadata i8** %p.addr, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !36
  call void @llvm.dbg.value(metadata i32* %d, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call3 = call fastcc i32 @digits(i32 noundef %u, i32 noundef 1, i32* noundef nonnull %d, i8** noundef nonnull %p.addr, i32 noundef 2) #8, !dbg !55
  call void @llvm.dbg.value(metadata i32 %call3, metadata !35, metadata !DIExpression()), !dbg !36
  br label %if.end16, !dbg !56

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %u, 10000, !dbg !57
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !59

if.then6:                                         ; preds = %if.else4
  %gcov_ctr19 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !60
  %3 = add i64 %gcov_ctr19, 1, !dbg !60
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !60
  call void @llvm.dbg.value(metadata i8** %p.addr, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !36
  call void @llvm.dbg.value(metadata i32* %d, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call7 = call fastcc i32 @digits(i32 noundef %u, i32 noundef 100, i32* noundef nonnull %d, i8** noundef nonnull %p.addr, i32 noundef 4) #8, !dbg !61
  call void @llvm.dbg.value(metadata i32 %call7, metadata !35, metadata !DIExpression()), !dbg !36
  br label %if.end16, !dbg !62

if.else8:                                         ; preds = %if.else4
  %cmp9 = icmp ult i32 %u, 1000000, !dbg !63
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !65

if.then10:                                        ; preds = %if.else8
  %gcov_ctr20 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !66
  %4 = add i64 %gcov_ctr20, 1, !dbg !66
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !66
  call void @llvm.dbg.value(metadata i8** %p.addr, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !36
  call void @llvm.dbg.value(metadata i32* %d, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call11 = call fastcc i32 @digits(i32 noundef %u, i32 noundef 10000, i32* noundef nonnull %d, i8** noundef nonnull %p.addr, i32 noundef 6) #8, !dbg !67
  call void @llvm.dbg.value(metadata i32 %call11, metadata !35, metadata !DIExpression()), !dbg !36
  br label %if.end16, !dbg !68

if.else12:                                        ; preds = %if.else8
  %gcov_ctr21 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !69
  %5 = add i64 %gcov_ctr21, 1, !dbg !69
  store i64 %5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 4), align 16, !dbg !69
  call void @llvm.dbg.value(metadata i8** %p.addr, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !36
  call void @llvm.dbg.value(metadata i32* %d, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call13 = call fastcc i32 @digits(i32 noundef %u, i32 noundef 1000000, i32* noundef nonnull %d, i8** noundef nonnull %p.addr, i32 noundef 8) #8, !dbg !70
  call void @llvm.dbg.value(metadata i32 %call13, metadata !35, metadata !DIExpression()), !dbg !36
  br label %if.end16

if.end16:                                         ; preds = %if.then2, %if.then10, %if.else12, %if.then6, %if.then
  %n.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call7, %if.then6 ], [ %call11, %if.then10 ], [ %call13, %if.else12 ], !dbg !71
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !35, metadata !DIExpression()), !dbg !36
  %6 = load i8*, i8** %p.addr, align 8, !dbg !72, !tbaa !37
  call void @llvm.dbg.value(metadata i8* %6, metadata !32, metadata !DIExpression()), !dbg !36
  %7 = load i32, i32* %d, align 4, !dbg !73, !tbaa !43
  call void @llvm.dbg.value(metadata i32 %7, metadata !33, metadata !DIExpression()), !dbg !36
  %call17 = tail call fastcc i8* @itoa(i32 noundef %u, i8* noundef %6, i32 noundef %7, i32 noundef %n.0) #8, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !75
  ret i8* %call17, !dbg !76
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @digits(i32 noundef %u, i32 noundef %k, i32* nocapture noundef writeonly %d, i8** nocapture noundef %p, i32 noundef %n) unnamed_addr #0 !dbg !77 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %u, metadata !83, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 %k, metadata !84, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32* %d, metadata !85, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i8** %p, metadata !86, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 %n, metadata !87, metadata !DIExpression()), !dbg !88
  %mul = mul i32 %k, 10, !dbg !89
  %cmp = icmp ugt i32 %mul, %u, !dbg !91
  br i1 %cmp, label %if.then, label %if.end, !dbg !92

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !93
  %1 = add i64 %gcov_ctr1, 1, !dbg !93
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 1), align 8, !dbg !93
  %div = udiv i32 %u, %k, !dbg !95
  store i32 %div, i32* %d, align 4, !dbg !96, !tbaa !43
  %2 = trunc i32 %div to i8, !dbg !97
  %conv = add i8 %2, 48, !dbg !97
  %3 = load i8*, i8** %p, align 8, !dbg !98, !tbaa !37
  %call = tail call fastcc i8* @out1(i8 noundef signext %conv, i8* noundef %3) #8, !dbg !99
  store i8* %call, i8** %p, align 8, !dbg !100, !tbaa !37
  %dec = add nsw i32 %n, -1, !dbg !101
  call void @llvm.dbg.value(metadata i32 %dec, metadata !87, metadata !DIExpression()), !dbg !88
  br label %if.end, !dbg !102

if.end:                                           ; preds = %if.then, %entry
  %n.addr.0 = phi i32 [ %dec, %if.then ], [ %n, %entry ]
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !87, metadata !DIExpression()), !dbg !88
  ret i32 %n.addr.0, !dbg !103
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @itoa(i32 noundef %u, i8* noundef %p, i32 noundef %d, i32 noundef %n) unnamed_addr #0 !dbg !104 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 16
  call void @llvm.dbg.value(metadata i32 %u, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p, metadata !109, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %d, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %n, metadata !111, metadata !DIExpression()), !dbg !112
  switch i32 %n, label %sw.epilog [
    i32 10, label %sw.bb
    i32 9, label %sw.bb1
    i32 8, label %sw.bb2
    i32 7, label %sw.bb5
    i32 6, label %sw.bb8
    i32 5, label %sw.bb11
    i32 4, label %sw.bb14
    i32 3, label %sw.bb17
    i32 2, label %sw.bb20
    i32 1, label %sw.bb23
  ], !dbg !113

sw.bb:                                            ; preds = %entry
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !114
  %1 = add i64 %gcov_ctr24, 1, !dbg !114
  store i64 %1, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 1), align 8, !dbg !114
  %div = udiv i32 %u, 100000000, !dbg !116
  call void @llvm.dbg.value(metadata i32 %div, metadata !110, metadata !DIExpression()), !dbg !112
  %call = tail call fastcc i8* @out2(i32 noundef %div, i8* noundef %p) #8, !dbg !117
  call void @llvm.dbg.value(metadata i8* %call, metadata !109, metadata !DIExpression()), !dbg !112
  br label %sw.bb1, !dbg !118

sw.bb1:                                           ; preds = %entry, %sw.bb
  %p.addr.0 = phi i8* [ %p, %entry ], [ %call, %sw.bb ]
  %d.addr.0 = phi i32 [ %d, %entry ], [ %div, %sw.bb ]
  call void @llvm.dbg.value(metadata i32 %d.addr.0, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !119
  %2 = add i64 %gcov_ctr25, 1, !dbg !119
  store i64 %2, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 2), align 16, !dbg !119
  %mul.neg = mul i32 %d.addr.0, -100000000, !dbg !120
  %sub = add i32 %mul.neg, %u, !dbg !121
  call void @llvm.dbg.value(metadata i32 %sub, metadata !108, metadata !DIExpression()), !dbg !112
  br label %sw.bb2, !dbg !122

sw.bb2:                                           ; preds = %entry, %sw.bb1
  %p.addr.1 = phi i8* [ %p, %entry ], [ %p.addr.0, %sw.bb1 ]
  %u.addr.0 = phi i32 [ %u, %entry ], [ %sub, %sw.bb1 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.0, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.1, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !123
  %3 = add i64 %gcov_ctr26, 1, !dbg !123
  store i64 %3, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 3), align 8, !dbg !123
  %div3 = udiv i32 %u.addr.0, 1000000, !dbg !124
  call void @llvm.dbg.value(metadata i32 %div3, metadata !110, metadata !DIExpression()), !dbg !112
  %call4 = tail call fastcc i8* @out2(i32 noundef %div3, i8* noundef %p.addr.1) #8, !dbg !125
  call void @llvm.dbg.value(metadata i8* %call4, metadata !109, metadata !DIExpression()), !dbg !112
  br label %sw.bb5, !dbg !126

sw.bb5:                                           ; preds = %entry, %sw.bb2
  %p.addr.2 = phi i8* [ %p, %entry ], [ %call4, %sw.bb2 ]
  %d.addr.1 = phi i32 [ %d, %entry ], [ %div3, %sw.bb2 ]
  %u.addr.1 = phi i32 [ %u, %entry ], [ %u.addr.0, %sw.bb2 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.1, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %d.addr.1, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.2, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr27 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !127
  %4 = add i64 %gcov_ctr27, 1, !dbg !127
  store i64 %4, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 4), align 16, !dbg !127
  %mul6.neg = mul i32 %d.addr.1, -1000000, !dbg !128
  %sub7 = add i32 %mul6.neg, %u.addr.1, !dbg !129
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !108, metadata !DIExpression()), !dbg !112
  br label %sw.bb8, !dbg !130

sw.bb8:                                           ; preds = %entry, %sw.bb5
  %p.addr.3 = phi i8* [ %p, %entry ], [ %p.addr.2, %sw.bb5 ]
  %u.addr.2 = phi i32 [ %u, %entry ], [ %sub7, %sw.bb5 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.2, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.3, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr28 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !131
  %5 = add i64 %gcov_ctr28, 1, !dbg !131
  store i64 %5, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 5), align 8, !dbg !131
  %div9 = udiv i32 %u.addr.2, 10000, !dbg !132
  call void @llvm.dbg.value(metadata i32 %div9, metadata !110, metadata !DIExpression()), !dbg !112
  %call10 = tail call fastcc i8* @out2(i32 noundef %div9, i8* noundef %p.addr.3) #8, !dbg !133
  call void @llvm.dbg.value(metadata i8* %call10, metadata !109, metadata !DIExpression()), !dbg !112
  br label %sw.bb11, !dbg !134

sw.bb11:                                          ; preds = %entry, %sw.bb8
  %p.addr.4 = phi i8* [ %p, %entry ], [ %call10, %sw.bb8 ]
  %d.addr.2 = phi i32 [ %d, %entry ], [ %div9, %sw.bb8 ]
  %u.addr.3 = phi i32 [ %u, %entry ], [ %u.addr.2, %sw.bb8 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.3, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %d.addr.2, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.4, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr29 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !135
  %6 = add i64 %gcov_ctr29, 1, !dbg !135
  store i64 %6, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 6), align 16, !dbg !135
  %mul12.neg = mul i32 %d.addr.2, -10000, !dbg !136
  %sub13 = add i32 %mul12.neg, %u.addr.3, !dbg !137
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !108, metadata !DIExpression()), !dbg !112
  br label %sw.bb14, !dbg !138

sw.bb14:                                          ; preds = %entry, %sw.bb11
  %p.addr.5 = phi i8* [ %p, %entry ], [ %p.addr.4, %sw.bb11 ]
  %u.addr.4 = phi i32 [ %u, %entry ], [ %sub13, %sw.bb11 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.4, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.5, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !139
  %7 = add i64 %gcov_ctr30, 1, !dbg !139
  store i64 %7, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 7), align 8, !dbg !139
  %div15 = udiv i32 %u.addr.4, 100, !dbg !140
  call void @llvm.dbg.value(metadata i32 %div15, metadata !110, metadata !DIExpression()), !dbg !112
  %call16 = tail call fastcc i8* @out2(i32 noundef %div15, i8* noundef %p.addr.5) #8, !dbg !141
  call void @llvm.dbg.value(metadata i8* %call16, metadata !109, metadata !DIExpression()), !dbg !112
  br label %sw.bb17, !dbg !142

sw.bb17:                                          ; preds = %entry, %sw.bb14
  %p.addr.6 = phi i8* [ %p, %entry ], [ %call16, %sw.bb14 ]
  %d.addr.3 = phi i32 [ %d, %entry ], [ %div15, %sw.bb14 ]
  %u.addr.5 = phi i32 [ %u, %entry ], [ %u.addr.4, %sw.bb14 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.5, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %d.addr.3, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.6, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16, !dbg !143
  %8 = add i64 %gcov_ctr31, 1, !dbg !143
  store i64 %8, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 8), align 16, !dbg !143
  %mul18.neg = mul i32 %d.addr.3, -100, !dbg !144
  %sub19 = add i32 %mul18.neg, %u.addr.5, !dbg !145
  call void @llvm.dbg.value(metadata i32 %sub19, metadata !108, metadata !DIExpression()), !dbg !112
  br label %sw.bb20, !dbg !146

sw.bb20:                                          ; preds = %entry, %sw.bb17
  %p.addr.7 = phi i8* [ %p, %entry ], [ %p.addr.6, %sw.bb17 ]
  %u.addr.6 = phi i32 [ %u, %entry ], [ %sub19, %sw.bb17 ]
  call void @llvm.dbg.value(metadata i32 %u.addr.6, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i8* %p.addr.7, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr32 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !147
  %9 = add i64 %gcov_ctr32, 1, !dbg !147
  store i64 %9, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 9), align 8, !dbg !147
  call void @llvm.dbg.value(metadata i32 %u.addr.6, metadata !110, metadata !DIExpression()), !dbg !112
  %call22 = tail call fastcc i8* @out2(i32 noundef %u.addr.6, i8* noundef %p.addr.7) #8, !dbg !148
  call void @llvm.dbg.value(metadata i8* %call22, metadata !109, metadata !DIExpression()), !dbg !112
  br label %sw.bb23, !dbg !149

sw.bb23:                                          ; preds = %entry, %sw.bb20
  %p.addr.8 = phi i8* [ %p, %entry ], [ %call22, %sw.bb20 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.8, metadata !109, metadata !DIExpression()), !dbg !112
  %gcov_ctr33 = load i64, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !150
  %10 = add i64 %gcov_ctr33, 1, !dbg !150
  store i64 %10, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 10), align 16, !dbg !150
  br label %sw.epilog, !dbg !150

sw.epilog:                                        ; preds = %sw.bb23, %entry
  %p.addr.9 = phi i8* [ %p, %entry ], [ %p.addr.8, %sw.bb23 ]
  call void @llvm.dbg.value(metadata i8* %p.addr.9, metadata !109, metadata !DIExpression()), !dbg !112
  store i8 0, i8* %p.addr.9, align 1, !dbg !151, !tbaa !152
  ret i8* %p.addr.9, !dbg !153
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @itoa_32(i32 noundef %i, i8* noundef %p) local_unnamed_addr #0 !dbg !154 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %i, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %p, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i32 %i, metadata !163, metadata !DIExpression()), !dbg !164
  %cmp = icmp slt i32 %i, 0, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !168
  %1 = add i64 %gcov_ctr1, 1, !dbg !168
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 1), align 8, !dbg !168
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !168
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !162, metadata !DIExpression()), !dbg !164
  store i8 45, i8* %p, align 1, !dbg !170, !tbaa !152
  %sub = sub i32 0, %i, !dbg !171
  call void @llvm.dbg.value(metadata i32 %sub, metadata !163, metadata !DIExpression()), !dbg !164
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then, %entry
  %p.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %p, %entry ]
  %u.0 = phi i32 [ %sub, %if.then ], [ %i, %entry ], !dbg !164
  call void @llvm.dbg.value(metadata i32 %u.0, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !162, metadata !DIExpression()), !dbg !164
  %call = tail call i8* @itoa_u32(i32 noundef %u.0, i8* noundef %p.addr.0) #8, !dbg !173
  ret i8* %call, !dbg !174
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @itoa_u64(i64 noundef %u, i8* noundef %p) local_unnamed_addr #0 !dbg !175 {
entry:
  call void @llvm.dbg.value(metadata i64 %u, metadata !182, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i8* %p, metadata !183, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i64 %u, metadata !185, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !187
  %0 = icmp ult i64 %u, 4294967296, !dbg !188
  br i1 %0, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  %conv = trunc i64 %u to i32, !dbg !191
  call void @llvm.dbg.value(metadata i32 %conv, metadata !185, metadata !DIExpression()), !dbg !187
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8, !dbg !192
  %1 = add i64 %gcov_ctr, 1, !dbg !192
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8, !dbg !192
  %call = tail call i8* @itoa_u32(i32 noundef %conv, i8* noundef %p) #8, !dbg !193
  br label %common.ret

common.ret:                                       ; preds = %if.then, %if.end
  %common.ret.op = phi i8* [ %call8, %if.end ], [ %call, %if.then ]
  ret i8* %common.ret.op, !dbg !194

if.end:                                           ; preds = %entry
  %gcov_ctr10 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !195
  %2 = add i64 %gcov_ctr10, 1, !dbg !195
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !195
  %div = udiv i64 %u, 1000000000, !dbg !196
  call void @llvm.dbg.value(metadata i64 %div, metadata !186, metadata !DIExpression()), !dbg !187
  %call3 = tail call i8* @itoa_u64(i64 noundef %div, i8* noundef %p) #8, !dbg !197
  call void @llvm.dbg.value(metadata i8* %call3, metadata !183, metadata !DIExpression()), !dbg !187
  %mul.neg = mul i64 %div, -1000000000, !dbg !198
  %sub = add i64 %mul.neg, %u, !dbg !199
  %conv4 = trunc i64 %sub to i32, !dbg !200
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !185, metadata !DIExpression()), !dbg !187
  %div5 = udiv i32 %conv4, 100000000, !dbg !201
  call void @llvm.dbg.value(metadata i32 %div5, metadata !184, metadata !DIExpression()), !dbg !187
  %3 = trunc i32 %div5 to i8, !dbg !202
  %conv6 = add nuw nsw i8 %3, 48, !dbg !202
  %call7 = tail call fastcc i8* @out1(i8 noundef signext %conv6, i8* noundef %call3) #8, !dbg !203
  call void @llvm.dbg.value(metadata i8* %call7, metadata !183, metadata !DIExpression()), !dbg !187
  %call8 = tail call fastcc i8* @itoa(i32 noundef %conv4, i8* noundef nonnull %call7, i32 noundef %div5, i32 noundef 9) #8, !dbg !204
  br label %common.ret
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc nonnull i8* @out1(i8 noundef signext %in, i8* noundef %p) unnamed_addr #0 !dbg !205 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  %in.addr = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8 %in, metadata !209, metadata !DIExpression()), !dbg !211
  store i8 %in, i8* %in.addr, align 1, !tbaa !152
  call void @llvm.dbg.value(metadata i8* %p, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i8* %in.addr, metadata !209, metadata !DIExpression(DW_OP_deref)), !dbg !211
  %call = call i8* @memcpy(i8* noundef %p, i8* noundef nonnull %in.addr, i64 noundef 1) #9, !dbg !212
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !213
  ret i8* %add.ptr, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @itoa_64(i64 noundef %i, i8* noundef %p) local_unnamed_addr #0 !dbg !215 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %i, metadata !222, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i8* %p, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %i, metadata !224, metadata !DIExpression()), !dbg !225
  %cmp = icmp slt i64 %i, 0, !dbg !226
  br i1 %cmp, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %gcov_ctr1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 1), align 8, !dbg !229
  %1 = add i64 %gcov_ctr1, 1, !dbg !229
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 1), align 8, !dbg !229
  %incdec.ptr = getelementptr inbounds i8, i8* %p, i64 1, !dbg !229
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !223, metadata !DIExpression()), !dbg !225
  store i8 45, i8* %p, align 1, !dbg !231, !tbaa !152
  %sub = sub i64 0, %i, !dbg !232
  call void @llvm.dbg.value(metadata i64 %sub, metadata !224, metadata !DIExpression()), !dbg !225
  br label %if.end, !dbg !233

if.end:                                           ; preds = %if.then, %entry
  %p.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %p, %entry ]
  %u.0 = phi i64 [ %sub, %if.then ], [ %i, %entry ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %u.0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i8* %p.addr.0, metadata !223, metadata !DIExpression()), !dbg !225
  %call = tail call i8* @itoa_u64(i64 noundef %u.0, i8* noundef %p.addr.0) #8, !dbg !234
  ret i8* %call, !dbg !235
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc nonnull i8* @out2(i32 noundef %d, i8* noundef %p) unnamed_addr #0 !dbg !236 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %d, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8* %p, metadata !242, metadata !DIExpression()), !dbg !243
  %idxprom = sext i32 %d to i64, !dbg !244
  %arrayidx = getelementptr inbounds i16, i16* bitcast ([201 x i8]* @lut to i16*), i64 %idxprom, !dbg !244
  %1 = bitcast i16* %arrayidx to i8*, !dbg !245
  %call = tail call i8* @memcpy(i8* noundef %p, i8* noundef %1, i64 noundef 2) #9, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 2, !dbg !247
  ret i8* %add.ptr, !dbg !248
}

; Function Attrs: nounwind
declare !dbg !249 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #3 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @0, i64 0, i64 0), i32 875575338, i32 609987586) #7
  tail call void @llvm_gcda_emit_function(i32 0, i32 1029453359, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 1, i32 -1287753937, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 2, i32 1552943179, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 3, i32 -1113809008, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 4, i32 691612340, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 5, i32 -854046742, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 6, i32 -1462202891, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0)) #7
  tail call void @llvm_gcda_emit_function(i32 7, i32 -1327684437, i32 609987586) #7
  tail call void @llvm_gcda_emit_arcs(i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0)) #7
  tail call void @llvm_gcda_summary_info() #7
  tail call void @llvm_gcda_end_file() #7
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #4 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.1 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(88) bitcast ([11 x i64]* @__llvm_gcov_ctr.2 to i8*), i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.3 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.4 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.6 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #3 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #7
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23}
!llvm.gcov = !{!24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lut", scope: !2, file: !3, line: 64, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "itoa_ljust.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "66fbfbcb2a41eb580045e47241c1ceeb")
!4 = !{!5, !10}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 42, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !6, line: 25, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !8, line: 40, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1608, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 201)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{!"/home/xuheng/blackbox/llvm-test/memcached/itoa_ljust.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/itoa_ljust.gcda", !2}
!25 = !{!"clang version 14.0.0"}
!26 = distinct !DISubprogram(name: "itoa_u32", scope: !3, file: !3, line: 109, type: !27, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !5, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!30 = !{!31, !32, !33, !35}
!31 = !DILocalVariable(name: "u", arg: 1, scope: !26, file: !3, line: 109, type: !5)
!32 = !DILocalVariable(name: "p", arg: 2, scope: !26, file: !3, line: 109, type: !29)
!33 = !DILocalVariable(name: "d", scope: !26, file: !3, line: 110, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "n", scope: !26, file: !3, line: 110, type: !34)
!36 = !DILocation(line: 0, scope: !26)
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 110, column: 5, scope: !26)
!42 = !DILocation(line: 110, column: 9, scope: !26)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !39, i64 0}
!45 = !DILocation(line: 111, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !26, file: !3, line: 111, column: 14)
!47 = !DILocation(line: 111, column: 14, scope: !26)
!48 = !DILocation(line: 111, column: 40, scope: !46)
!49 = !DILocation(line: 111, column: 33, scope: !46)
!50 = !DILocation(line: 111, column: 29, scope: !46)
!51 = !DILocation(line: 112, column: 16, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !3, line: 112, column: 14)
!53 = !DILocation(line: 112, column: 14, scope: !46)
!54 = !DILocation(line: 112, column: 40, scope: !52)
!55 = !DILocation(line: 112, column: 33, scope: !52)
!56 = !DILocation(line: 112, column: 29, scope: !52)
!57 = !DILocation(line: 113, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !3, line: 113, column: 14)
!59 = !DILocation(line: 113, column: 14, scope: !52)
!60 = !DILocation(line: 113, column: 40, scope: !58)
!61 = !DILocation(line: 113, column: 33, scope: !58)
!62 = !DILocation(line: 113, column: 29, scope: !58)
!63 = !DILocation(line: 114, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !3, line: 114, column: 14)
!65 = !DILocation(line: 114, column: 14, scope: !58)
!66 = !DILocation(line: 114, column: 40, scope: !64)
!67 = !DILocation(line: 114, column: 33, scope: !64)
!68 = !DILocation(line: 114, column: 29, scope: !64)
!69 = !DILocation(line: 115, column: 40, scope: !64)
!70 = !DILocation(line: 115, column: 33, scope: !64)
!71 = !DILocation(line: 0, scope: !46)
!72 = !DILocation(line: 116, column: 21, scope: !26)
!73 = !DILocation(line: 116, column: 24, scope: !26)
!74 = !DILocation(line: 116, column: 12, scope: !26)
!75 = !DILocation(line: 117, column: 1, scope: !26)
!76 = !DILocation(line: 116, column: 5, scope: !26)
!77 = distinct !DISubprogram(name: "digits", scope: !3, file: !3, line: 83, type: !78, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{!34, !5, !9, !80, !81, !34}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DILocalVariable(name: "u", arg: 1, scope: !77, file: !3, line: 83, type: !5)
!84 = !DILocalVariable(name: "k", arg: 2, scope: !77, file: !3, line: 83, type: !9)
!85 = !DILocalVariable(name: "d", arg: 3, scope: !77, file: !3, line: 83, type: !80)
!86 = !DILocalVariable(name: "p", arg: 4, scope: !77, file: !3, line: 83, type: !81)
!87 = !DILocalVariable(name: "n", arg: 5, scope: !77, file: !3, line: 83, type: !34)
!88 = !DILocation(line: 0, scope: !77)
!89 = !DILocation(line: 84, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !77, file: !3, line: 84, column: 9)
!91 = !DILocation(line: 84, column: 11, scope: !90)
!92 = !DILocation(line: 84, column: 9, scope: !77)
!93 = !DILocation(line: 85, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 84, column: 19)
!95 = !DILocation(line: 85, column: 16, scope: !94)
!96 = !DILocation(line: 85, column: 12, scope: !94)
!97 = !DILocation(line: 86, column: 19, scope: !94)
!98 = !DILocation(line: 86, column: 27, scope: !94)
!99 = !DILocation(line: 86, column: 14, scope: !94)
!100 = !DILocation(line: 86, column: 12, scope: !94)
!101 = !DILocation(line: 87, column: 9, scope: !94)
!102 = !DILocation(line: 88, column: 5, scope: !94)
!103 = !DILocation(line: 89, column: 5, scope: !77)
!104 = distinct !DISubprogram(name: "itoa", scope: !3, file: !3, line: 92, type: !105, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!29, !5, !29, !34, !34}
!107 = !{!108, !109, !110, !111}
!108 = !DILocalVariable(name: "u", arg: 1, scope: !104, file: !3, line: 92, type: !5)
!109 = !DILocalVariable(name: "p", arg: 2, scope: !104, file: !3, line: 92, type: !29)
!110 = !DILocalVariable(name: "d", arg: 3, scope: !104, file: !3, line: 92, type: !34)
!111 = !DILocalVariable(name: "n", arg: 4, scope: !104, file: !3, line: 92, type: !34)
!112 = !DILocation(line: 0, scope: !104)
!113 = !DILocation(line: 93, column: 5, scope: !104)
!114 = !DILocation(line: 94, column: 19, scope: !115)
!115 = distinct !DILexicalBlock(scope: !104, file: !3, line: 93, column: 15)
!116 = !DILocation(line: 94, column: 21, scope: !115)
!117 = !DILocation(line: 94, column: 38, scope: !115)
!118 = !DILocation(line: 94, column: 34, scope: !115)
!119 = !DILocation(line: 95, column: 19, scope: !115)
!120 = !DILocation(line: 95, column: 21, scope: !115)
!121 = !DILocation(line: 95, column: 16, scope: !115)
!122 = !DILocation(line: 95, column: 14, scope: !115)
!123 = !DILocation(line: 96, column: 19, scope: !115)
!124 = !DILocation(line: 96, column: 21, scope: !115)
!125 = !DILocation(line: 96, column: 38, scope: !115)
!126 = !DILocation(line: 96, column: 34, scope: !115)
!127 = !DILocation(line: 97, column: 19, scope: !115)
!128 = !DILocation(line: 97, column: 21, scope: !115)
!129 = !DILocation(line: 97, column: 16, scope: !115)
!130 = !DILocation(line: 97, column: 14, scope: !115)
!131 = !DILocation(line: 98, column: 19, scope: !115)
!132 = !DILocation(line: 98, column: 21, scope: !115)
!133 = !DILocation(line: 98, column: 38, scope: !115)
!134 = !DILocation(line: 98, column: 34, scope: !115)
!135 = !DILocation(line: 99, column: 19, scope: !115)
!136 = !DILocation(line: 99, column: 21, scope: !115)
!137 = !DILocation(line: 99, column: 16, scope: !115)
!138 = !DILocation(line: 99, column: 14, scope: !115)
!139 = !DILocation(line: 100, column: 19, scope: !115)
!140 = !DILocation(line: 100, column: 21, scope: !115)
!141 = !DILocation(line: 100, column: 38, scope: !115)
!142 = !DILocation(line: 100, column: 34, scope: !115)
!143 = !DILocation(line: 101, column: 19, scope: !115)
!144 = !DILocation(line: 101, column: 21, scope: !115)
!145 = !DILocation(line: 101, column: 16, scope: !115)
!146 = !DILocation(line: 101, column: 14, scope: !115)
!147 = !DILocation(line: 102, column: 19, scope: !115)
!148 = !DILocation(line: 102, column: 38, scope: !115)
!149 = !DILocation(line: 102, column: 34, scope: !115)
!150 = !DILocation(line: 104, column: 5, scope: !115)
!151 = !DILocation(line: 105, column: 8, scope: !104)
!152 = !{!39, !39, i64 0}
!153 = !DILocation(line: 106, column: 5, scope: !104)
!154 = distinct !DISubprogram(name: "itoa_32", scope: !3, file: !3, line: 119, type: !155, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!155 = !DISubroutineType(types: !156)
!156 = !{!29, !157, !29}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 26, baseType: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 41, baseType: !34)
!160 = !{!161, !162, !163}
!161 = !DILocalVariable(name: "i", arg: 1, scope: !154, file: !3, line: 119, type: !157)
!162 = !DILocalVariable(name: "p", arg: 2, scope: !154, file: !3, line: 119, type: !29)
!163 = !DILocalVariable(name: "u", scope: !154, file: !3, line: 120, type: !5)
!164 = !DILocation(line: 0, scope: !154)
!165 = !DILocation(line: 121, column: 11, scope: !166)
!166 = distinct !DILexicalBlock(scope: !154, file: !3, line: 121, column: 9)
!167 = !DILocation(line: 121, column: 9, scope: !154)
!168 = !DILocation(line: 122, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 121, column: 16)
!170 = !DILocation(line: 122, column: 14, scope: !169)
!171 = !DILocation(line: 123, column: 13, scope: !169)
!172 = !DILocation(line: 124, column: 5, scope: !169)
!173 = !DILocation(line: 125, column: 12, scope: !154)
!174 = !DILocation(line: 125, column: 5, scope: !154)
!175 = distinct !DISubprogram(name: "itoa_u64", scope: !3, file: !3, line: 128, type: !176, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!176 = !DISubroutineType(types: !177)
!177 = !{!29, !178, !29}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !180)
!180 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DILocalVariable(name: "u", arg: 1, scope: !175, file: !3, line: 128, type: !178)
!183 = !DILocalVariable(name: "p", arg: 2, scope: !175, file: !3, line: 128, type: !29)
!184 = !DILocalVariable(name: "d", scope: !175, file: !3, line: 129, type: !34)
!185 = !DILocalVariable(name: "lower", scope: !175, file: !3, line: 131, type: !5)
!186 = !DILocalVariable(name: "upper", scope: !175, file: !3, line: 134, type: !178)
!187 = !DILocation(line: 0, scope: !175)
!188 = !DILocation(line: 132, column: 15, scope: !189)
!189 = distinct !DILexicalBlock(scope: !175, file: !3, line: 132, column: 9)
!190 = !DILocation(line: 132, column: 9, scope: !175)
!191 = !DILocation(line: 131, column: 22, scope: !175)
!192 = !DILocation(line: 132, column: 37, scope: !189)
!193 = !DILocation(line: 132, column: 28, scope: !189)
!194 = !DILocation(line: 140, column: 1, scope: !175)
!195 = !DILocation(line: 134, column: 5, scope: !175)
!196 = !DILocation(line: 134, column: 24, scope: !175)
!197 = !DILocation(line: 135, column: 9, scope: !175)
!198 = !DILocation(line: 136, column: 24, scope: !175)
!199 = !DILocation(line: 136, column: 15, scope: !175)
!200 = !DILocation(line: 136, column: 13, scope: !175)
!201 = !DILocation(line: 137, column: 15, scope: !175)
!202 = !DILocation(line: 138, column: 14, scope: !175)
!203 = !DILocation(line: 138, column: 9, scope: !175)
!204 = !DILocation(line: 139, column: 12, scope: !175)
!205 = distinct !DISubprogram(name: "out1", scope: !3, file: !3, line: 78, type: !206, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!29, !16, !29}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "in", arg: 1, scope: !205, file: !3, line: 78, type: !16)
!210 = !DILocalVariable(name: "p", arg: 2, scope: !205, file: !3, line: 78, type: !29)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 79, column: 5, scope: !205)
!213 = !DILocation(line: 80, column: 14, scope: !205)
!214 = !DILocation(line: 80, column: 5, scope: !205)
!215 = distinct !DISubprogram(name: "itoa_64", scope: !3, file: !3, line: 142, type: !216, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!216 = !DISubroutineType(types: !217)
!217 = !{!29, !218, !29}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !158, line: 27, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !220)
!220 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!221 = !{!222, !223, !224}
!222 = !DILocalVariable(name: "i", arg: 1, scope: !215, file: !3, line: 142, type: !218)
!223 = !DILocalVariable(name: "p", arg: 2, scope: !215, file: !3, line: 142, type: !29)
!224 = !DILocalVariable(name: "u", scope: !215, file: !3, line: 143, type: !178)
!225 = !DILocation(line: 0, scope: !215)
!226 = !DILocation(line: 144, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !215, file: !3, line: 144, column: 9)
!228 = !DILocation(line: 144, column: 9, scope: !215)
!229 = !DILocation(line: 145, column: 11, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 144, column: 16)
!231 = !DILocation(line: 145, column: 14, scope: !230)
!232 = !DILocation(line: 146, column: 13, scope: !230)
!233 = !DILocation(line: 147, column: 5, scope: !230)
!234 = !DILocation(line: 148, column: 12, scope: !215)
!235 = !DILocation(line: 148, column: 5, scope: !215)
!236 = distinct !DISubprogram(name: "out2", scope: !3, file: !3, line: 73, type: !237, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!237 = !DISubroutineType(types: !238)
!238 = !{!29, !239, !29}
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!240 = !{!241, !242}
!241 = !DILocalVariable(name: "d", arg: 1, scope: !236, file: !3, line: 73, type: !239)
!242 = !DILocalVariable(name: "p", arg: 2, scope: !236, file: !3, line: 73, type: !29)
!243 = !DILocation(line: 0, scope: !236)
!244 = !DILocation(line: 74, column: 16, scope: !236)
!245 = !DILocation(line: 74, column: 15, scope: !236)
!246 = !DILocation(line: 74, column: 5, scope: !236)
!247 = !DILocation(line: 75, column: 14, scope: !236)
!248 = !DILocation(line: 75, column: 5, scope: !236)
!249 = !DISubprogram(name: "memcpy", scope: !250, file: !250, line: 43, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !260)
!250 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !254, !255, !258}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !253)
!255 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !259, line: 46, baseType: !180)
!259 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!260 = !{}
