; ModuleID = 'hash.c'
source_filename = "hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.settings = type { i64, i32, i32, i32, i8*, i32, i32, i64, i32, i8*, i8*, i32, double, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, double, i32, i32, i8, i32, i8, i8, i8*, i32, i32, i32, i32, double, double, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8, i32, i32, i8*, i32 }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }

@hash = dso_local local_unnamed_addr global i32 (i8*, i64)* null, align 8, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"jenkins\00", align 1
@settings = external dso_local local_unnamed_addr global %struct.settings, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"murmur3\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"xxh3\00", align 1
@XXH3_kSecret = internal constant [192 x i8] c"\B8\FEl9#\A4K\BE|\01\81,\F7!\AD\1C\DE\D4m\E9\83\90\97\DBr@\A4\A4\B7\B3g\1F\CBy\E6N\CC\C0\E5x\82Z\D0}\CC\FFr!\B8\08Ft\F7C$\8E\E05\90\E6\81:&L<(R\BB\91\C3\00\CB\88\D0e\8B\1BS.\A3qdH\97\A2\0D\F9N8\19\EFF\A9\DE\AC\D8\A8\FAv?\E3\9C4?\F9\DC\BB\C7\C7\0BO\1D\8AQ\E0K\CD\B4Y1\C8\9F~\C9\D9xsd\EA\C5\AC\834\D3\EB\C3\C5\81\A0\FF\FA\13c\EB\17\0D\DDQ\B7\F0\DAI\D3\16U&)\D4h\9E+\16\BEX}G\A1\FC\8F\F8\B8\D1z\D01\CEE\CB:\8F\95\16\04(\AF\D7\FB\CA\BBK@~", align 64, !dbg !60
@__const.XXH3_hashLong_64b_internal.acc = private unnamed_addr constant [8 x i64] [i64 3266489917, i64 -7046029288634856825, i64 -4417276706812531889, i64 1609587929392839161, i64 -8796714831421723037, i64 2246822519, i64 2870177450012600261, i64 2654435761], align 16
@__llvm_gcov_ctr = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [2 x i64] zeroinitializer, align 16
@__llvm_gcov_ctr.28 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [1 x i64] zeroinitializer
@0 = private unnamed_addr constant [52 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/hash.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [31 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1359601722, i32 -295098680 }, %emit_function_args_ty { i32 1, i32 -954210513, i32 -295098680 }, %emit_function_args_ty { i32 2, i32 483368766, i32 -295098680 }, %emit_function_args_ty { i32 3, i32 560250758, i32 -295098680 }, %emit_function_args_ty { i32 4, i32 1508957646, i32 -295098680 }, %emit_function_args_ty { i32 5, i32 -2128762009, i32 -295098680 }, %emit_function_args_ty { i32 6, i32 -1071600297, i32 -295098680 }, %emit_function_args_ty { i32 7, i32 -1087562757, i32 -295098680 }, %emit_function_args_ty { i32 8, i32 -32749800, i32 -295098680 }, %emit_function_args_ty { i32 9, i32 -707791845, i32 -295098680 }, %emit_function_args_ty { i32 10, i32 -1645578527, i32 -295098680 }, %emit_function_args_ty { i32 11, i32 -1169478640, i32 -295098680 }, %emit_function_args_ty { i32 12, i32 -356190522, i32 -295098680 }, %emit_function_args_ty { i32 13, i32 -1832507037, i32 -295098680 }, %emit_function_args_ty { i32 14, i32 -1583577931, i32 -295098680 }, %emit_function_args_ty { i32 15, i32 973705220, i32 -295098680 }, %emit_function_args_ty { i32 16, i32 -1768765756, i32 -295098680 }, %emit_function_args_ty { i32 17, i32 -316691945, i32 -295098680 }, %emit_function_args_ty { i32 18, i32 -1256795545, i32 -295098680 }, %emit_function_args_ty { i32 19, i32 457278395, i32 -295098680 }, %emit_function_args_ty { i32 20, i32 1556291647, i32 -295098680 }, %emit_function_args_ty { i32 21, i32 -321759250, i32 -295098680 }, %emit_function_args_ty { i32 22, i32 1207083508, i32 -295098680 }, %emit_function_args_ty { i32 23, i32 -491029013, i32 -295098680 }, %emit_function_args_ty { i32 24, i32 -98111392, i32 -295098680 }, %emit_function_args_ty { i32 25, i32 2081876149, i32 -295098680 }, %emit_function_args_ty { i32 26, i32 -1813325754, i32 -295098680 }, %emit_function_args_ty { i32 27, i32 -362603413, i32 -295098680 }, %emit_function_args_ty { i32 28, i32 -240094603, i32 -295098680 }, %emit_function_args_ty { i32 29, i32 272122728, i32 -295098680 }, %emit_function_args_ty { i32 30, i32 -123347020, i32 -295098680 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [31 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.4, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i32 0, i32 0) }, %emit_arcs_args_ty { i32 4, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.10, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.11, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.12, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.16, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.17, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.22, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.23, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.26, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.27, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.28, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.29, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @hash_init(i32 noundef %type) local_unnamed_addr #0 !dbg !79 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !83, metadata !DIExpression()), !dbg !84
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ], !dbg !85

sw.bb:                                            ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !86
  %0 = add i64 %gcov_ctr, 1, !dbg !86
  store i64 %0, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 16, !dbg !86
  store i32 (i8*, i64)* @jenkins_hash, i32 (i8*, i64)** @hash, align 8, !dbg !86, !tbaa !88
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 40), align 8, !dbg !92, !tbaa !93
  br label %return, !dbg !99

sw.bb1:                                           ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !100
  %1 = add i64 %gcov_ctr3, 1, !dbg !100
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !100
  store i32 (i8*, i64)* @MurmurHash3_x86_32, i32 (i8*, i64)** @hash, align 8, !dbg !100, !tbaa !88
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 40), align 8, !dbg !101, !tbaa !93
  br label %return, !dbg !102

sw.bb2:                                           ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !103
  %2 = add i64 %gcov_ctr4, 1, !dbg !103
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 2), align 16, !dbg !103
  store i32 (i8*, i64)* @XXH3_hash, i32 (i8*, i64)** @hash, align 8, !dbg !103, !tbaa !88
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.settings, %struct.settings* @settings, i64 0, i32 40), align 8, !dbg !104, !tbaa !93
  br label %return, !dbg !105

sw.default:                                       ; preds = %entry
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !106
  %3 = add i64 %gcov_ctr5, 1, !dbg !106
  store i64 %3, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr, i64 0, i64 3), align 8, !dbg !106
  br label %return, !dbg !106

return:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.default
  %retval.0 = phi i32 [ -1, %sw.default ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], !dbg !84
  ret i32 %retval.0, !dbg !107
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @jenkins_hash(i8* noundef, i64 noundef) #2

declare dso_local i32 @MurmurHash3_x86_32(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @XXH3_hash(i8* noundef %key, i64 noundef %length) #3 !dbg !108 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %key, metadata !110, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i64 %length, metadata !111, metadata !DIExpression()), !dbg !112
  %call = tail call fastcc i64 @XXH_INLINE_XXH3_64bits(i8* noundef %key, i64 noundef %length) #15, !dbg !113
  %conv = trunc i64 %call to i32, !dbg !114
  ret i32 %conv, !dbg !115
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH_INLINE_XXH3_64bits(i8* noundef %input, i64 noundef %len) unnamed_addr #3 !dbg !116 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !120, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i64 %len, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i8* %input, metadata !123, metadata !DIExpression()) #16, !dbg !139
  call void @llvm.dbg.value(metadata i64 %len, metadata !134, metadata !DIExpression()) #16, !dbg !139
  call void @llvm.dbg.value(metadata i64 0, metadata !135, metadata !DIExpression()) #16, !dbg !139
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !136, metadata !DIExpression()) #16, !dbg !139
  call void @llvm.dbg.value(metadata i64 192, metadata !137, metadata !DIExpression()) #16, !dbg !139
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i64, i8*, i64)* @XXH3_hashLong_64b_default, metadata !138, metadata !DIExpression()) #16, !dbg !139
  %cmp.i = icmp ult i64 %len, 17, !dbg !141
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !143

if.then.i:                                        ; preds = %entry
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 16, !dbg !144
  %1 = add i64 %gcov_ctr.i, 1, !dbg !144
  store i64 %1, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 16, !dbg !144
  call void @llvm.dbg.value(metadata i8* %input, metadata !145, metadata !DIExpression()) #16, !dbg !153
  call void @llvm.dbg.value(metadata i64 %len, metadata !150, metadata !DIExpression()) #16, !dbg !153
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !151, metadata !DIExpression()) #16, !dbg !153
  call void @llvm.dbg.value(metadata i64 0, metadata !152, metadata !DIExpression()) #16, !dbg !153
  %cmp.i.i = icmp ugt i64 %len, 8, !dbg !155
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !158, !prof !159

if.then.i.i:                                      ; preds = %if.then.i
  %gcov_ctr.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 16, !dbg !160
  %2 = add i64 %gcov_ctr.i.i, 1, !dbg !160
  store i64 %2, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 16, !dbg !160
  %gcov_ctr.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 8
  %3 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %3, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !161, metadata !DIExpression()) #16, !dbg !174
  call void @llvm.dbg.value(metadata i64 %len, metadata !164, metadata !DIExpression()) #16, !dbg !174
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !165, metadata !DIExpression()) #16, !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()) #16, !dbg !174
  %gcov_ctr.i.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %4 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %4, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 24), metadata !176, metadata !DIExpression()) #16, !dbg !181
  %call.i.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 24)) #17, !dbg !183
  %gcov_ctr.i1.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %5 = add i64 %gcov_ctr.i1.i.i.i, 1
  store i64 %5, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 32), metadata !176, metadata !DIExpression()) #16, !dbg !184
  %call.i2.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 32)) #17, !dbg !186
  %xor.i.i.i = xor i64 %call.i2.i.i.i, %call.i.i.i.i, !dbg !187
  call void @llvm.dbg.value(metadata i64 %xor.i.i.i, metadata !167, metadata !DIExpression()) #16, !dbg !188
  %gcov_ctr.i3.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %6 = add i64 %gcov_ctr.i3.i.i.i, 1
  store i64 %6, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 40), metadata !176, metadata !DIExpression()) #16, !dbg !189
  %call.i4.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 40)) #17, !dbg !191
  %gcov_ctr.i5.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %7 = add i64 %gcov_ctr.i5.i.i.i, 1
  store i64 %7, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 48), metadata !176, metadata !DIExpression()) #16, !dbg !192
  %call.i6.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 48)) #17, !dbg !194
  %xor7.i.i.i = xor i64 %call.i6.i.i.i, %call.i4.i.i.i, !dbg !195
  call void @llvm.dbg.value(metadata i64 %xor7.i.i.i, metadata !170, metadata !DIExpression()) #16, !dbg !188
  %gcov_ctr.i7.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %8 = add i64 %gcov_ctr.i7.i.i.i, 1
  store i64 %8, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !176, metadata !DIExpression()) #16, !dbg !196
  %call.i8.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef %input) #17, !dbg !198
  %xor9.i.i.i = xor i64 %xor.i.i.i, %call.i8.i.i.i, !dbg !199
  call void @llvm.dbg.value(metadata i64 %xor9.i.i.i, metadata !171, metadata !DIExpression()) #16, !dbg !188
  %add.ptr10.i.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !200
  %add.ptr11.i.i.i = getelementptr inbounds i8, i8* %add.ptr10.i.i.i, i64 -8, !dbg !201
  %gcov_ctr.i9.i.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %9 = add i64 %gcov_ctr.i9.i.i.i, 1
  store i64 %9, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %add.ptr11.i.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !202
  %call.i10.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr11.i.i.i) #17, !dbg !204
  %xor13.i.i.i = xor i64 %xor7.i.i.i, %call.i10.i.i.i, !dbg !205
  call void @llvm.dbg.value(metadata i64 %xor13.i.i.i, metadata !172, metadata !DIExpression()) #16, !dbg !188
  %call14.i.i.i = tail call fastcc i64 @XXH_swap64(i64 noundef %xor9.i.i.i) #17, !dbg !206
  %add15.i.i.i = add i64 %call14.i.i.i, %len, !dbg !207
  %add16.i.i.i = add i64 %add15.i.i.i, %xor13.i.i.i, !dbg !208
  %call17.i.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor9.i.i.i, i64 noundef %xor13.i.i.i) #17, !dbg !209
  %add18.i.i.i = add i64 %add16.i.i.i, %call17.i.i.i, !dbg !210
  call void @llvm.dbg.value(metadata i64 %add18.i.i.i, metadata !173, metadata !DIExpression()) #16, !dbg !188
  %call19.i.i.i = tail call fastcc i64 @XXH3_avalanche(i64 noundef %add18.i.i.i) #17, !dbg !211
  br label %XXH3_64bits_internal.exit, !dbg !212

if.end.i.i:                                       ; preds = %if.then.i
  %cmp2.i.i = icmp ugt i64 %len, 3, !dbg !213
  br i1 %cmp2.i.i, label %if.then7.i.i, label %if.end9.i.i, !dbg !215, !prof !159

if.then7.i.i:                                     ; preds = %if.end.i.i
  %gcov_ctr19.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 1), align 8, !dbg !216
  %10 = add i64 %gcov_ctr19.i.i, 1, !dbg !216
  store i64 %10, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 1), align 8, !dbg !216
  %gcov_ctr.i1.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 8
  %11 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %11, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !217, metadata !DIExpression()) #16, !dbg !230
  call void @llvm.dbg.value(metadata i64 %len, metadata !220, metadata !DIExpression()) #16, !dbg !230
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !221, metadata !DIExpression()) #16, !dbg !230
  call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()) #16, !dbg !230
  tail call fastcc void @XXH_swap32() #17, !dbg !232
  call void @llvm.dbg.value(metadata i64 0, metadata !222, metadata !DIExpression()) #16, !dbg !230
  %gcov_ctr.i.i2.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  %12 = add i64 %gcov_ctr.i.i2.i.i, 1
  store i64 %12, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !233, metadata !DIExpression()) #16, !dbg !238
  %call.i.i3.i.i = tail call fastcc i32 @XXH_read32(i8* noundef %input) #17, !dbg !240
  call void @llvm.dbg.value(metadata i32 %call.i.i3.i.i, metadata !223, metadata !DIExpression()) #16, !dbg !241
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !242
  %add.ptr3.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i64 -4, !dbg !243
  %gcov_ctr.i1.i4.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  %13 = add i64 %gcov_ctr.i1.i4.i.i, 1
  store i64 %13, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %add.ptr3.i.i.i, metadata !233, metadata !DIExpression()) #16, !dbg !244
  %call.i2.i5.i.i = tail call fastcc i32 @XXH_read32(i8* noundef nonnull %add.ptr3.i.i.i) #17, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call.i2.i5.i.i, metadata !226, metadata !DIExpression()) #16, !dbg !241
  %gcov_ctr.i3.i6.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %14 = add i64 %gcov_ctr.i3.i6.i.i, 1
  store i64 %14, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 8), metadata !176, metadata !DIExpression()) #16, !dbg !247
  %call.i4.i7.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 8)) #17, !dbg !249
  %gcov_ctr.i5.i8.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %15 = add i64 %gcov_ctr.i5.i8.i.i, 1
  store i64 %15, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 16), metadata !176, metadata !DIExpression()) #16, !dbg !250
  %call.i6.i9.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 16)) #17, !dbg !252
  call void @llvm.dbg.value(metadata i64 undef, metadata !227, metadata !DIExpression()) #16, !dbg !241
  %conv10.i.i.i = zext i32 %call.i2.i5.i.i to i64, !dbg !253
  %conv11.i.i.i = zext i32 %call.i.i3.i.i to i64, !dbg !254
  %shl12.i.i.i = shl nuw i64 %conv11.i.i.i, 32, !dbg !255
  %add.i.i.i = or i64 %shl12.i.i.i, %conv10.i.i.i, !dbg !256
  call void @llvm.dbg.value(metadata i64 %add.i.i.i, metadata !228, metadata !DIExpression()) #16, !dbg !241
  %xor9.i10.i.i = xor i64 %call.i4.i7.i.i, %add.i.i.i, !dbg !257
  %xor13.i11.i.i = xor i64 %xor9.i10.i.i, %call.i6.i9.i.i, !dbg !258
  call void @llvm.dbg.value(metadata i64 %xor13.i11.i.i, metadata !229, metadata !DIExpression()) #16, !dbg !241
  %call14.i12.i.i = tail call fastcc i64 @XXH3_rrmxmx(i64 noundef %xor13.i11.i.i, i64 noundef %len) #17, !dbg !259
  br label %XXH3_64bits_internal.exit, !dbg !260

if.end9.i.i:                                      ; preds = %if.end.i.i
  %tobool10.not.i.i = icmp eq i64 %len, 0, !dbg !261
  br i1 %tobool10.not.i.i, label %if.end13.i.i, label %if.then11.i.i, !dbg !263

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %gcov_ctr21.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 3), align 8, !dbg !264
  %16 = add i64 %gcov_ctr21.i.i, 1, !dbg !264
  store i64 %16, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 3), align 8, !dbg !264
  %gcov_ctr.i13.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 8
  %17 = add i64 %gcov_ctr.i13.i.i, 1
  store i64 %17, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !265, metadata !DIExpression()) #16, !dbg !278
  call void @llvm.dbg.value(metadata i64 %len, metadata !268, metadata !DIExpression()) #16, !dbg !278
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !269, metadata !DIExpression()) #16, !dbg !278
  call void @llvm.dbg.value(metadata i64 0, metadata !270, metadata !DIExpression()) #16, !dbg !278
  %18 = load i8, i8* %input, align 1, !dbg !280, !tbaa !281, !alias.scope !282
  call void @llvm.dbg.value(metadata i8 %18, metadata !271, metadata !DIExpression()) #16, !dbg !285
  %shr.i.i.i = lshr i64 %len, 1, !dbg !286
  %arrayidx1.i.i.i = getelementptr inbounds i8, i8* %input, i64 %shr.i.i.i, !dbg !287
  %19 = load i8, i8* %arrayidx1.i.i.i, align 1, !dbg !287, !tbaa !281, !alias.scope !282
  call void @llvm.dbg.value(metadata i8 %19, metadata !273, metadata !DIExpression()) #16, !dbg !285
  %sub.i.i.i = add nsw i64 %len, -1, !dbg !288
  %arrayidx2.i.i.i = getelementptr inbounds i8, i8* %input, i64 %sub.i.i.i, !dbg !289
  %20 = load i8, i8* %arrayidx2.i.i.i, align 1, !dbg !289, !tbaa !281, !alias.scope !282
  call void @llvm.dbg.value(metadata i8 %20, metadata !274, metadata !DIExpression()) #16, !dbg !285
  %conv.i.i.i = zext i8 %18 to i64, !dbg !290
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 16, !dbg !291
  %conv3.i.i.i = zext i8 %19 to i64, !dbg !292
  %shl4.i.i.i = shl nuw nsw i64 %conv3.i.i.i, 24, !dbg !293
  %conv5.i.i.i = zext i8 %20 to i64, !dbg !294
  %shl9.i.i.i = shl nuw nsw i64 %len, 8, !dbg !295
  call void @llvm.dbg.value(metadata !DIArgList(i8 %18, i64 %len, i8 %20, i8 %19), metadata !275, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_stack_value)) #16, !dbg !285
  %gcov_ctr.i.i14.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  %21 = add i64 %gcov_ctr.i.i14.i.i, 1
  store i64 %21, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !233, metadata !DIExpression()) #16, !dbg !296
  %call.i.i15.i.i = tail call fastcc i32 @XXH_read32(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0)) #17, !dbg !298
  %gcov_ctr.i1.i16.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  %22 = add i64 %gcov_ctr.i1.i16.i.i, 1
  store i64 %22, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 4), metadata !233, metadata !DIExpression()) #16, !dbg !299
  %call.i2.i17.i.i = tail call fastcc i32 @XXH_read32(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 4)) #17, !dbg !301
  %xor.i18.i.i = xor i32 %call.i2.i17.i.i, %call.i.i15.i.i, !dbg !302
  %conv12.i.i.i = zext i32 %xor.i18.i.i to i64, !dbg !303
  call void @llvm.dbg.value(metadata i64 %conv12.i.i.i, metadata !276, metadata !DIExpression()) #16, !dbg !285
  %shl9.masked.i.i.i = and i64 %shl9.i.i.i, 4294967040, !dbg !304
  %or.i.i.i = or i64 %shl.i.i.i, %shl9.masked.i.i.i, !dbg !305
  %or7.i.i.i = or i64 %or.i.i.i, %shl4.i.i.i, !dbg !306
  %conv13.i.i.i = or i64 %or7.i.i.i, %conv5.i.i.i, !dbg !304
  %xor14.i.i.i = xor i64 %conv13.i.i.i, %conv12.i.i.i, !dbg !307
  call void @llvm.dbg.value(metadata i64 %xor14.i.i.i, metadata !277, metadata !DIExpression()) #16, !dbg !285
  %call15.i.i.i = tail call fastcc i64 @XXH64_avalanche(i64 noundef %xor14.i.i.i) #17, !dbg !308
  br label %XXH3_64bits_internal.exit, !dbg !309

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %gcov_ctr20.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 2), align 16, !dbg !310
  %23 = add i64 %gcov_ctr20.i.i, 1, !dbg !310
  store i64 %23, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 2), align 16, !dbg !310
  %gcov_ctr.i19.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %24 = add i64 %gcov_ctr.i19.i.i, 1
  store i64 %24, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 56), metadata !176, metadata !DIExpression()) #16, !dbg !311
  %call.i.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 56)) #17, !dbg !313
  %gcov_ctr.i20.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %25 = add i64 %gcov_ctr.i20.i.i, 1
  store i64 %25, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 64), metadata !176, metadata !DIExpression()) #16, !dbg !314
  %call.i21.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 64)) #17, !dbg !316
  %xor.i.i = xor i64 %call.i21.i.i, %call.i.i.i, !dbg !317
  %call18.i.i = tail call fastcc i64 @XXH64_avalanche(i64 noundef %xor.i.i) #17, !dbg !318
  br label %XXH3_64bits_internal.exit, !dbg !319

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp ult i64 %len, 129, !dbg !320
  br i1 %cmp1.i, label %if.then2.i, label %if.end4.i, !dbg !322

if.then2.i:                                       ; preds = %if.end.i
  %gcov_ctr10.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 1), align 8, !dbg !323
  %26 = add i64 %gcov_ctr10.i, 1, !dbg !323
  store i64 %26, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 1), align 8, !dbg !323
  %gcov_ctr.i1.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16, !noalias !324
  %27 = add i64 %gcov_ctr.i1.i, 1
  store i64 %27, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16, !noalias !324
  call void @llvm.dbg.value(metadata i8* %input, metadata !327, metadata !DIExpression()) #16, !dbg !338
  call void @llvm.dbg.value(metadata i64 %len, metadata !332, metadata !DIExpression()) #16, !dbg !338
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !333, metadata !DIExpression()) #16, !dbg !338
  call void @llvm.dbg.value(metadata i64 undef, metadata !334, metadata !DIExpression()) #16, !dbg !338
  call void @llvm.dbg.value(metadata i64 0, metadata !335, metadata !DIExpression()) #16, !dbg !338
  %mul.i.i = mul i64 %len, -7046029288634856825, !dbg !340
  call void @llvm.dbg.value(metadata i64 %mul.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %cmp.i2.i = icmp ugt i64 %len, 32, !dbg !342
  br i1 %cmp.i2.i, label %if.then.i3.i, label %XXH3_len_17to128_64b.exit.i, !dbg !344

if.then.i3.i:                                     ; preds = %if.then2.i
  %cmp1.i.i = icmp ugt i64 %len, 64, !dbg !345
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end20.i.i, !dbg !348

if.then2.i.i:                                     ; preds = %if.then.i3.i
  %cmp3.i.i = icmp ugt i64 %len, 96, !dbg !349
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end.i18.i, !dbg !352

if.then4.i.i:                                     ; preds = %if.then2.i.i
  %gcov_ctr41.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !353, !noalias !324
  %28 = add i64 %gcov_ctr41.i.i, 1, !dbg !353
  store i64 %28, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !353, !noalias !324
  %add.ptr.i.i = getelementptr inbounds i8, i8* %input, i64 48, !dbg !355
  %gcov_ctr.i.i4.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !356
  %29 = add i64 %gcov_ctr.i.i4.i, 1
  store i64 %29, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !356
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !370
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 96), metadata !365, metadata !DIExpression()) #16, !dbg !370
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !370
  %gcov_ctr.i.i.i5.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !356
  %30 = add i64 %gcov_ctr.i.i.i5.i, 1
  store i64 %30, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !356
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !372
  %call.i.i.i6.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i.i) #17, !dbg !374, !noalias !375
  call void @llvm.dbg.value(metadata i64 %call.i.i.i6.i, metadata !367, metadata !DIExpression()) #16, !dbg !376
  %add.ptr.i.i7.i = getelementptr inbounds i8, i8* %input, i64 56, !dbg !377
  %gcov_ctr.i1.i.i8.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !375
  %31 = add i64 %gcov_ctr.i1.i.i8.i, 1
  store i64 %31, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !375
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i7.i, metadata !176, metadata !DIExpression()) #16, !dbg !378
  %call.i2.i.i9.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i.i7.i) #17, !dbg !380, !noalias !375
  call void @llvm.dbg.value(metadata i64 %call.i2.i.i9.i, metadata !369, metadata !DIExpression()) #16, !dbg !376
  %gcov_ctr.i3.i.i10.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !375
  %32 = add i64 %gcov_ctr.i3.i.i10.i, 1
  store i64 %32, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !375
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 96), metadata !176, metadata !DIExpression()) #16, !dbg !381
  %call.i4.i.i11.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 96)) #17, !dbg !383
  %xor.i.i12.i = xor i64 %call.i4.i.i11.i, %call.i.i.i6.i, !dbg !384
  %gcov_ctr.i5.i.i13.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %33 = add i64 %gcov_ctr.i5.i.i13.i, 1
  store i64 %33, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 104), metadata !176, metadata !DIExpression()) #16, !dbg !385
  %call.i6.i.i14.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 104)) #17, !dbg !387
  %xor5.i.i.i = xor i64 %call.i6.i.i14.i, %call.i2.i.i9.i, !dbg !388
  %call6.i.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i.i12.i, i64 noundef %xor5.i.i.i) #17, !dbg !389
  %add.i.i = add i64 %call6.i.i.i, %mul.i.i, !dbg !390
  call void @llvm.dbg.value(metadata i64 %add.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %add.ptr6.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !391
  %add.ptr7.i.i = getelementptr inbounds i8, i8* %add.ptr6.i.i, i64 -64, !dbg !392
  %gcov_ctr.i1.i15.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !393
  %34 = add i64 %gcov_ctr.i1.i15.i, 1
  store i64 %34, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !393
  call void @llvm.dbg.value(metadata i8* %add.ptr7.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !397
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 112), metadata !365, metadata !DIExpression()) #16, !dbg !397
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !397
  %gcov_ctr.i.i2.i16.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !393
  %35 = add i64 %gcov_ctr.i.i2.i16.i, 1
  store i64 %35, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !393
  call void @llvm.dbg.value(metadata i8* %add.ptr7.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !399
  %call.i.i3.i17.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr7.i.i) #17, !dbg !401, !noalias !402
  call void @llvm.dbg.value(metadata i64 %call.i.i3.i17.i, metadata !367, metadata !DIExpression()) #16, !dbg !403
  %add.ptr.i4.i.i = getelementptr inbounds i8, i8* %add.ptr7.i.i, i64 8, !dbg !404
  %gcov_ctr.i1.i5.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !402
  %36 = add i64 %gcov_ctr.i1.i5.i.i, 1
  store i64 %36, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !402
  call void @llvm.dbg.value(metadata i8* %add.ptr.i4.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !405
  %call.i2.i6.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i4.i.i) #17, !dbg !407, !noalias !402
  call void @llvm.dbg.value(metadata i64 %call.i2.i6.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !403
  %gcov_ctr.i3.i7.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !402
  %37 = add i64 %gcov_ctr.i3.i7.i.i, 1
  store i64 %37, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !402
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 112), metadata !176, metadata !DIExpression()) #16, !dbg !408
  %call.i4.i8.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 112)) #17, !dbg !410
  %xor.i9.i.i = xor i64 %call.i4.i8.i.i, %call.i.i3.i17.i, !dbg !411
  %gcov_ctr.i5.i10.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %38 = add i64 %gcov_ctr.i5.i10.i.i, 1
  store i64 %38, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 120), metadata !176, metadata !DIExpression()) #16, !dbg !412
  %call.i6.i11.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 120)) #17, !dbg !414
  %xor5.i12.i.i = xor i64 %call.i6.i11.i.i, %call.i2.i6.i.i, !dbg !415
  %call6.i13.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i9.i.i, i64 noundef %xor5.i12.i.i) #17, !dbg !416
  %add10.i.i = add i64 %add.i.i, %call6.i13.i.i, !dbg !417
  call void @llvm.dbg.value(metadata i64 %add10.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  br label %if.end.i18.i, !dbg !418

if.end.i18.i:                                     ; preds = %if.then4.i.i, %if.then2.i.i
  %acc.0.i.i = phi i64 [ %add10.i.i, %if.then4.i.i ], [ %mul.i.i, %if.then2.i.i ], !dbg !341
  call void @llvm.dbg.value(metadata i64 %acc.0.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %gcov_ctr42.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !419
  %39 = add i64 %gcov_ctr42.i.i, 1, !dbg !419
  store i64 %39, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !419
  %add.ptr11.i.i = getelementptr inbounds i8, i8* %input, i64 32, !dbg !420
  %gcov_ctr.i14.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !421
  %40 = add i64 %gcov_ctr.i14.i.i, 1
  store i64 %40, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !421
  call void @llvm.dbg.value(metadata i8* %add.ptr11.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !425
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 64), metadata !365, metadata !DIExpression()) #16, !dbg !425
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !425
  %gcov_ctr.i.i15.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !421
  %41 = add i64 %gcov_ctr.i.i15.i.i, 1
  store i64 %41, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !421
  call void @llvm.dbg.value(metadata i8* %add.ptr11.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !427
  %call.i.i16.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr11.i.i) #17, !dbg !429, !noalias !430
  call void @llvm.dbg.value(metadata i64 %call.i.i16.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !431
  %add.ptr.i17.i.i = getelementptr inbounds i8, i8* %input, i64 40, !dbg !432
  %gcov_ctr.i1.i18.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !430
  %42 = add i64 %gcov_ctr.i1.i18.i.i, 1
  store i64 %42, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !430
  call void @llvm.dbg.value(metadata i8* %add.ptr.i17.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !433
  %call.i2.i19.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i17.i.i) #17, !dbg !435, !noalias !430
  call void @llvm.dbg.value(metadata i64 %call.i2.i19.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !431
  %gcov_ctr.i3.i20.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !430
  %43 = add i64 %gcov_ctr.i3.i20.i.i, 1
  store i64 %43, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !430
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 64), metadata !176, metadata !DIExpression()) #16, !dbg !436
  %call.i4.i21.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 64)) #17, !dbg !438
  %xor.i22.i.i = xor i64 %call.i4.i21.i.i, %call.i.i16.i.i, !dbg !439
  %gcov_ctr.i5.i23.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %44 = add i64 %gcov_ctr.i5.i23.i.i, 1
  store i64 %44, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 72), metadata !176, metadata !DIExpression()) #16, !dbg !440
  %call.i6.i24.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 72)) #17, !dbg !442
  %xor5.i25.i.i = xor i64 %call.i6.i24.i.i, %call.i2.i19.i.i, !dbg !443
  %call6.i26.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i22.i.i, i64 noundef %xor5.i25.i.i) #17, !dbg !444
  %add14.i.i = add i64 %call6.i26.i.i, %acc.0.i.i, !dbg !445
  call void @llvm.dbg.value(metadata i64 %add14.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %add.ptr15.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !446
  %add.ptr16.i.i = getelementptr inbounds i8, i8* %add.ptr15.i.i, i64 -48, !dbg !447
  %gcov_ctr.i27.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !448
  %45 = add i64 %gcov_ctr.i27.i.i, 1
  store i64 %45, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !448
  call void @llvm.dbg.value(metadata i8* %add.ptr16.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !452
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 80), metadata !365, metadata !DIExpression()) #16, !dbg !452
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !452
  %gcov_ctr.i.i28.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !448
  %46 = add i64 %gcov_ctr.i.i28.i.i, 1
  store i64 %46, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !448
  call void @llvm.dbg.value(metadata i8* %add.ptr16.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !454
  %call.i.i29.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr16.i.i) #17, !dbg !456, !noalias !457
  call void @llvm.dbg.value(metadata i64 %call.i.i29.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !458
  %add.ptr.i30.i.i = getelementptr inbounds i8, i8* %add.ptr16.i.i, i64 8, !dbg !459
  %gcov_ctr.i1.i31.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !457
  %47 = add i64 %gcov_ctr.i1.i31.i.i, 1
  store i64 %47, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !457
  call void @llvm.dbg.value(metadata i8* %add.ptr.i30.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !460
  %call.i2.i32.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i30.i.i) #17, !dbg !462, !noalias !457
  call void @llvm.dbg.value(metadata i64 %call.i2.i32.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !458
  %gcov_ctr.i3.i33.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !457
  %48 = add i64 %gcov_ctr.i3.i33.i.i, 1
  store i64 %48, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !457
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 80), metadata !176, metadata !DIExpression()) #16, !dbg !463
  %call.i4.i34.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 80)) #17, !dbg !465
  %xor.i35.i.i = xor i64 %call.i4.i34.i.i, %call.i.i29.i.i, !dbg !466
  %gcov_ctr.i5.i36.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %49 = add i64 %gcov_ctr.i5.i36.i.i, 1
  store i64 %49, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 88), metadata !176, metadata !DIExpression()) #16, !dbg !467
  %call.i6.i37.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 88)) #17, !dbg !469
  %xor5.i38.i.i = xor i64 %call.i6.i37.i.i, %call.i2.i32.i.i, !dbg !470
  %call6.i39.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i35.i.i, i64 noundef %xor5.i38.i.i) #17, !dbg !471
  %add19.i.i = add i64 %add14.i.i, %call6.i39.i.i, !dbg !472
  call void @llvm.dbg.value(metadata i64 %add19.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  br label %if.end20.i.i, !dbg !473

if.end20.i.i:                                     ; preds = %if.end.i18.i, %if.then.i3.i
  %acc.1.i.i = phi i64 [ %add19.i.i, %if.end.i18.i ], [ %mul.i.i, %if.then.i3.i ], !dbg !341
  call void @llvm.dbg.value(metadata i64 %acc.1.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %gcov_ctr43.i.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 3), align 8, !dbg !474
  %50 = add i64 %gcov_ctr43.i.i, 1, !dbg !474
  store i64 %50, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 3), align 8, !dbg !474
  %add.ptr21.i.i = getelementptr inbounds i8, i8* %input, i64 16, !dbg !475
  %gcov_ctr.i40.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !476
  %51 = add i64 %gcov_ctr.i40.i.i, 1
  store i64 %51, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !476
  call void @llvm.dbg.value(metadata i8* %add.ptr21.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !480
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 32), metadata !365, metadata !DIExpression()) #16, !dbg !480
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !480
  %gcov_ctr.i.i41.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !476
  %52 = add i64 %gcov_ctr.i.i41.i.i, 1
  store i64 %52, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !476
  call void @llvm.dbg.value(metadata i8* %add.ptr21.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !482
  %call.i.i42.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr21.i.i) #17, !dbg !484, !noalias !485
  call void @llvm.dbg.value(metadata i64 %call.i.i42.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !486
  %add.ptr.i43.i.i = getelementptr inbounds i8, i8* %input, i64 24, !dbg !487
  %gcov_ctr.i1.i44.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !485
  %53 = add i64 %gcov_ctr.i1.i44.i.i, 1
  store i64 %53, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !485
  call void @llvm.dbg.value(metadata i8* %add.ptr.i43.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !488
  %call.i2.i45.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i43.i.i) #17, !dbg !490, !noalias !485
  call void @llvm.dbg.value(metadata i64 %call.i2.i45.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !486
  %gcov_ctr.i3.i46.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !485
  %54 = add i64 %gcov_ctr.i3.i46.i.i, 1
  store i64 %54, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 32), metadata !176, metadata !DIExpression()) #16, !dbg !491
  %call.i4.i47.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 32)) #17, !dbg !493
  %xor.i48.i.i = xor i64 %call.i4.i47.i.i, %call.i.i42.i.i, !dbg !494
  %gcov_ctr.i5.i49.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %55 = add i64 %gcov_ctr.i5.i49.i.i, 1
  store i64 %55, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 40), metadata !176, metadata !DIExpression()) #16, !dbg !495
  %call.i6.i50.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 40)) #17, !dbg !497
  %xor5.i51.i.i = xor i64 %call.i6.i50.i.i, %call.i2.i45.i.i, !dbg !498
  %call6.i52.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i48.i.i, i64 noundef %xor5.i51.i.i) #17, !dbg !499
  %add24.i.i = add i64 %call6.i52.i.i, %acc.1.i.i, !dbg !500
  call void @llvm.dbg.value(metadata i64 %add24.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %add.ptr25.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !501
  %add.ptr26.i.i = getelementptr inbounds i8, i8* %add.ptr25.i.i, i64 -32, !dbg !502
  %gcov_ctr.i53.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !503
  %56 = add i64 %gcov_ctr.i53.i.i, 1
  store i64 %56, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !503
  call void @llvm.dbg.value(metadata i8* %add.ptr26.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !507
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 48), metadata !365, metadata !DIExpression()) #16, !dbg !507
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !507
  %gcov_ctr.i.i54.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !503
  %57 = add i64 %gcov_ctr.i.i54.i.i, 1
  store i64 %57, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !503
  call void @llvm.dbg.value(metadata i8* %add.ptr26.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !509
  %call.i.i55.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr26.i.i) #17, !dbg !511, !noalias !512
  call void @llvm.dbg.value(metadata i64 %call.i.i55.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !513
  %add.ptr.i56.i.i = getelementptr inbounds i8, i8* %add.ptr26.i.i, i64 8, !dbg !514
  %gcov_ctr.i1.i57.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !512
  %58 = add i64 %gcov_ctr.i1.i57.i.i, 1
  store i64 %58, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !512
  call void @llvm.dbg.value(metadata i8* %add.ptr.i56.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !515
  %call.i2.i58.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i56.i.i) #17, !dbg !517, !noalias !512
  call void @llvm.dbg.value(metadata i64 %call.i2.i58.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !513
  %gcov_ctr.i3.i59.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !512
  %59 = add i64 %gcov_ctr.i3.i59.i.i, 1
  store i64 %59, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 48), metadata !176, metadata !DIExpression()) #16, !dbg !518
  %call.i4.i60.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 48)) #17, !dbg !520
  %xor.i61.i.i = xor i64 %call.i4.i60.i.i, %call.i.i55.i.i, !dbg !521
  %gcov_ctr.i5.i62.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %60 = add i64 %gcov_ctr.i5.i62.i.i, 1
  store i64 %60, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 56), metadata !176, metadata !DIExpression()) #16, !dbg !522
  %call.i6.i63.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 56)) #17, !dbg !524
  %xor5.i64.i.i = xor i64 %call.i6.i63.i.i, %call.i2.i58.i.i, !dbg !525
  %call6.i65.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i61.i.i, i64 noundef %xor5.i64.i.i) #17, !dbg !526
  %add29.i.i = add i64 %add24.i.i, %call6.i65.i.i, !dbg !527
  call void @llvm.dbg.value(metadata i64 %add29.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  br label %XXH3_len_17to128_64b.exit.i, !dbg !528

XXH3_len_17to128_64b.exit.i:                      ; preds = %if.end20.i.i, %if.then2.i
  %acc.2.i.i = phi i64 [ %add29.i.i, %if.end20.i.i ], [ %mul.i.i, %if.then2.i ], !dbg !341
  call void @llvm.dbg.value(metadata i64 %acc.2.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %gcov_ctr.i66.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !529
  %61 = add i64 %gcov_ctr.i66.i.i, 1
  store i64 %61, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !529
  call void @llvm.dbg.value(metadata i8* %input, metadata !360, metadata !DIExpression()) #16, !dbg !533
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !365, metadata !DIExpression()) #16, !dbg !533
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !533
  %gcov_ctr.i.i67.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !529
  %62 = add i64 %gcov_ctr.i.i67.i.i, 1
  store i64 %62, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !529
  call void @llvm.dbg.value(metadata i8* %input, metadata !176, metadata !DIExpression()) #16, !dbg !535
  %call.i.i68.i.i = tail call fastcc i64 @XXH_read64(i8* noundef %input) #17, !dbg !537, !noalias !538
  call void @llvm.dbg.value(metadata i64 %call.i.i68.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !539
  %add.ptr.i69.i.i = getelementptr inbounds i8, i8* %input, i64 8, !dbg !540
  %gcov_ctr.i1.i70.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !538
  %63 = add i64 %gcov_ctr.i1.i70.i.i, 1
  store i64 %63, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !538
  call void @llvm.dbg.value(metadata i8* %add.ptr.i69.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !541
  %call.i2.i71.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i69.i.i) #17, !dbg !543, !noalias !538
  call void @llvm.dbg.value(metadata i64 %call.i2.i71.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !539
  %gcov_ctr.i3.i72.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !538
  %64 = add i64 %gcov_ctr.i3.i72.i.i, 1
  store i64 %64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !538
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !176, metadata !DIExpression()) #16, !dbg !544
  %call.i4.i73.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0)) #17, !dbg !546
  %xor.i74.i.i = xor i64 %call.i4.i73.i.i, %call.i.i68.i.i, !dbg !547
  %gcov_ctr.i5.i75.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %65 = add i64 %gcov_ctr.i5.i75.i.i, 1
  store i64 %65, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 8), metadata !176, metadata !DIExpression()) #16, !dbg !548
  %call.i6.i76.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 8)) #17, !dbg !550
  %xor5.i77.i.i = xor i64 %call.i6.i76.i.i, %call.i2.i71.i.i, !dbg !551
  %call6.i78.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i74.i.i, i64 noundef %xor5.i77.i.i) #17, !dbg !552
  %add34.i.i = add i64 %call6.i78.i.i, %acc.2.i.i, !dbg !553
  call void @llvm.dbg.value(metadata i64 %add34.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %add.ptr35.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !554
  %add.ptr36.i.i = getelementptr inbounds i8, i8* %add.ptr35.i.i, i64 -16, !dbg !555
  %gcov_ctr.i79.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !556
  %66 = add i64 %gcov_ctr.i79.i.i, 1
  store i64 %66, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !556
  call void @llvm.dbg.value(metadata i8* %add.ptr36.i.i, metadata !360, metadata !DIExpression()) #16, !dbg !560
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 16), metadata !365, metadata !DIExpression()) #16, !dbg !560
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !560
  %gcov_ctr.i.i80.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !556
  %67 = add i64 %gcov_ctr.i.i80.i.i, 1
  store i64 %67, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !556
  call void @llvm.dbg.value(metadata i8* %add.ptr36.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !562
  %call.i.i81.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr36.i.i) #17, !dbg !564, !noalias !565
  call void @llvm.dbg.value(metadata i64 %call.i.i81.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !566
  %add.ptr.i82.i.i = getelementptr inbounds i8, i8* %add.ptr36.i.i, i64 8, !dbg !567
  %gcov_ctr.i1.i83.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !565
  %68 = add i64 %gcov_ctr.i1.i83.i.i, 1
  store i64 %68, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !565
  call void @llvm.dbg.value(metadata i8* %add.ptr.i82.i.i, metadata !176, metadata !DIExpression()) #16, !dbg !568
  %call.i2.i84.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i82.i.i) #17, !dbg !570, !noalias !565
  call void @llvm.dbg.value(metadata i64 %call.i2.i84.i.i, metadata !369, metadata !DIExpression()) #16, !dbg !566
  %gcov_ctr.i3.i85.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !565
  %69 = add i64 %gcov_ctr.i3.i85.i.i, 1
  store i64 %69, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 16), metadata !176, metadata !DIExpression()) #16, !dbg !571
  %call.i4.i86.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 16)) #17, !dbg !573
  %xor.i87.i.i = xor i64 %call.i4.i86.i.i, %call.i.i81.i.i, !dbg !574
  %gcov_ctr.i5.i88.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %70 = add i64 %gcov_ctr.i5.i88.i.i, 1
  store i64 %70, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 24), metadata !176, metadata !DIExpression()) #16, !dbg !575
  %call.i6.i89.i.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 24)) #17, !dbg !577
  %xor5.i90.i.i = xor i64 %call.i6.i89.i.i, %call.i2.i84.i.i, !dbg !578
  %call6.i91.i.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i87.i.i, i64 noundef %xor5.i90.i.i) #17, !dbg !579
  %add39.i.i = add i64 %add34.i.i, %call6.i91.i.i, !dbg !580
  call void @llvm.dbg.value(metadata i64 %add39.i.i, metadata !336, metadata !DIExpression()) #16, !dbg !341
  %call40.i.i = tail call fastcc i64 @XXH3_avalanche(i64 noundef %add39.i.i) #17, !dbg !581
  br label %XXH3_64bits_internal.exit, !dbg !582

if.end4.i:                                        ; preds = %if.end.i
  %cmp5.i = icmp ult i64 %len, 241, !dbg !583
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i, !dbg !585

if.then6.i:                                       ; preds = %if.end4.i
  %gcov_ctr11.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 2), align 16, !dbg !586
  %71 = add i64 %gcov_ctr11.i, 1, !dbg !586
  store i64 %71, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 2), align 16, !dbg !586
  %call7.i = tail call fastcc i64 @XXH3_len_129to240_64b(i8* noundef %input, i64 noundef %len) #17, !dbg !587
  br label %XXH3_64bits_internal.exit, !dbg !588

if.end8.i:                                        ; preds = %if.end4.i
  %gcov_ctr12.i = load i64, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 3), align 8, !dbg !589
  %72 = add i64 %gcov_ctr12.i, 1, !dbg !589
  store i64 %72, i64* getelementptr inbounds ([4 x i64], [4 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 3), align 8, !dbg !589
  %call9.i = tail call fastcc i64 @XXH3_hashLong_64b_default(i8* noundef %input, i64 noundef %len, i64 noundef 0, i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), i64 noundef 192) #17, !dbg !589
  br label %XXH3_64bits_internal.exit, !dbg !590

XXH3_64bits_internal.exit:                        ; preds = %if.then.i.i, %if.then7.i.i, %if.then11.i.i, %if.end13.i.i, %XXH3_len_17to128_64b.exit.i, %if.then6.i, %if.end8.i
  %retval.0.i = phi i64 [ %call40.i.i, %XXH3_len_17to128_64b.exit.i ], [ %call7.i, %if.then6.i ], [ %call9.i, %if.end8.i ], [ %call19.i.i.i, %if.then.i.i ], [ %call14.i12.i.i, %if.then7.i.i ], [ %call15.i.i.i, %if.then11.i.i ], [ %call18.i.i, %if.end13.i.i ], !dbg !139
  ret i64 %retval.0.i, !dbg !591
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(i8* noalias nocapture noundef readonly %input, i64 noundef %len, i64 noundef %seed64, i8* noalias nocapture noundef readnone %secret, i64 noundef %secretLen) unnamed_addr #4 !dbg !592 {
entry:
  %acc.i = alloca [8 x i64], align 16
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %input, metadata !594, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %len, metadata !595, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %seed64, metadata !596, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i8* %secret, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata i64 %secretLen, metadata !598, metadata !DIExpression()), !dbg !599
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !dbg !603
  call void @llvm.dbg.value(metadata i8* %input, metadata !604, metadata !DIExpression()) #16, !dbg !628
  call void @llvm.dbg.value(metadata i64 %len, metadata !619, metadata !DIExpression()) #16, !dbg !628
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !620, metadata !DIExpression()) #16, !dbg !628
  call void @llvm.dbg.value(metadata i64 192, metadata !621, metadata !DIExpression()) #16, !dbg !628
  %1 = bitcast [8 x i64]* %acc.i to i8*, !dbg !630
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #16, !dbg !630, !noalias !600
  call void @llvm.dbg.declare(metadata [8 x i64]* %acc.i, metadata !624, metadata !DIExpression()) #16, !dbg !631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %1, i8* noundef nonnull align 16 dereferenceable(64) bitcast ([8 x i64]* @__const.XXH3_hashLong_64b_internal.acc to i8*), i64 64, i1 false) #16, !dbg !631, !noalias !600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632) #16, !dbg !635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636) #16, !dbg !635
  %gcov_ctr.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 8, !noalias !638
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0), align 8, !noalias !638
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !639, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i8* %input, metadata !646, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 %len, metadata !647, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !648, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 192, metadata !649, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 16, metadata !652, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 1024, metadata !654, metadata !DIExpression()) #16, !dbg !662
  %sub1.i.i = add i64 %len, -1, !dbg !664
  call void @llvm.dbg.value(metadata i64 %sub1.i.i, metadata !655, metadata !DIExpression(DW_OP_constu, 10, DW_OP_shr, DW_OP_stack_value)) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 0, metadata !656, metadata !DIExpression()) #16, !dbg !662
  call void @llvm.dbg.value(metadata i64 0, metadata !656, metadata !DIExpression()) #16, !dbg !662
  %cmp79.not.i.i = icmp ult i64 %sub1.i.i, 1024, !dbg !665
  br i1 %cmp79.not.i.i, label %entry.for.end_crit_edge.i.i, label %for.body.lr.ph.i.i, !dbg !668

entry.for.end_crit_edge.i.i:                      ; preds = %entry
  %gcov_ctr.i3.pre.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8, !noalias !669
  br label %for.end.i.i, !dbg !668

for.body.lr.ph.i.i:                               ; preds = %entry
  %div2.i.i = lshr i64 %sub1.i.i, 10, !dbg !673
  call void @llvm.dbg.value(metadata i64 %div2.i.i, metadata !655, metadata !DIExpression()) #16, !dbg !662
  %.promoted78.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !noalias !638
  %.promoted77.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !noalias !674
  %.promoted76.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 8, !noalias !674
  %.promoted75.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 16, !noalias !678
  %.promoted74.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 1), align 8, !noalias !678
  %.promoted73.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !noalias !686
  %.promoted.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8, !noalias !686
  %3 = shl nuw nsw i64 %div2.i.i, 4, !dbg !668
  %4 = add i64 %.promoted75.i.i, %3, !dbg !668
  br label %for.body.i.i, !dbg !668

for.body.i.i:                                     ; preds = %XXH3_accumulate.exit.i.i, %for.body.lr.ph.i.i
  %add.i29.3.i.i.lcssa89.i.i = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %for.body.lr.ph.i.i ], [ %add.i.3.i.i.i, %XXH3_accumulate.exit.i.i ]
  %add.i29.2.i.i.lcssa87.i.i = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %for.body.lr.ph.i.i ], [ %add.i.2.i.i.i, %XXH3_accumulate.exit.i.i ]
  %add.i29.1.i.i.lcssa85.i.i = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %for.body.lr.ph.i.i ], [ %add.i.1.i.i.i, %XXH3_accumulate.exit.i.i ]
  %add.i29.i.i.lcssa83.i.i = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %for.body.lr.ph.i.i ], [ %add.i.i.i.i, %XXH3_accumulate.exit.i.i ]
  %n.080.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %XXH3_accumulate.exit.i.i ]
  call void @llvm.dbg.value(metadata i64 %n.080.i.i, metadata !656, metadata !DIExpression()) #16, !dbg !662
  %mul3.i.i = shl i64 %n.080.i.i, 10, !dbg !687
  %add.ptr.i.i = getelementptr inbounds i8, i8* %input, i64 %mul3.i.i, !dbg !689
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690) #16, !dbg !691
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !692, metadata !DIExpression()) #16, !dbg !706
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i, metadata !697, metadata !DIExpression()) #16, !dbg !706
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !698, metadata !DIExpression()) #16, !dbg !706
  call void @llvm.dbg.value(metadata i64 16, metadata !699, metadata !DIExpression()) #16, !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()) #16, !dbg !706
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()) #16, !dbg !706
  br label %for.body.i.i.i, !dbg !708

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body.i.i
  %5 = phi <2 x i64> [ %add.i29.3.i.i.lcssa89.i.i, %for.body.i.i ], [ %add.i29.3.i.i.i.i, %for.body.i.i.i ], !dbg !706
  %6 = phi <2 x i64> [ %add.i29.2.i.i.lcssa87.i.i, %for.body.i.i ], [ %add.i29.2.i.i.i.i, %for.body.i.i.i ], !dbg !706
  %7 = phi <2 x i64> [ %add.i29.1.i.i.lcssa85.i.i, %for.body.i.i ], [ %add.i29.1.i.i.i.i, %for.body.i.i.i ], !dbg !706
  %8 = phi <2 x i64> [ %add.i29.i.i.lcssa83.i.i, %for.body.i.i ], [ %add.i29.i.i.i.i, %for.body.i.i.i ], !dbg !706
  %n.07.i.i.i = phi i64 [ 0, %for.body.i.i ], [ %inc.i.i.i, %for.body.i.i.i ]
  call void @llvm.dbg.value(metadata i64 %n.07.i.i.i, metadata !701, metadata !DIExpression()) #16, !dbg !706
  %mul.i.i.i = shl i64 %n.07.i.i.i, 6, !dbg !709
  %add.ptr.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i, i64 %mul.i.i.i, !dbg !710
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i.i, metadata !702, metadata !DIExpression()) #16, !dbg !711
  %add.ptr1.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i64 320, !dbg !712
  tail call void @llvm.prefetch.p0i8(i8* nonnull %add.ptr1.i.i.i, i32 0, i32 3, i32 1) #16, !dbg !712, !noalias !713
  %mul2.i.i.i = shl i64 %n.07.i.i.i, 3, !dbg !714
  %add.ptr3.i.i.i = getelementptr inbounds [192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 %mul2.i.i.i, !dbg !715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716) #16, !dbg !717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718) #16, !dbg !717
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !719, metadata !DIExpression()) #16, !dbg !743
  call void @llvm.dbg.value(metadata i8* %add.ptr.i.i.i, metadata !724, metadata !DIExpression()) #16, !dbg !743
  call void @llvm.dbg.value(metadata i8* %add.ptr3.i.i.i, metadata !725, metadata !DIExpression()) #16, !dbg !743
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !726, metadata !DIExpression()) #16, !dbg !745
  %9 = bitcast i8* %add.ptr.i.i.i to <2 x i64>*, !dbg !746
  call void @llvm.dbg.value(metadata <2 x i64>* %9, metadata !729, metadata !DIExpression()) #16, !dbg !745
  %10 = bitcast i8* %add.ptr3.i.i.i to <2 x i64>*, !dbg !747
  call void @llvm.dbg.value(metadata <2 x i64>* %10, metadata !731, metadata !DIExpression()) #16, !dbg !745
  call void @llvm.dbg.value(metadata i64 0, metadata !732, metadata !DIExpression()) #16, !dbg !745
  %11 = load <2 x i64>, <2 x i64>* %9, align 1, !dbg !748, !tbaa !281, !alias.scope !749, !noalias !750
  call void @llvm.dbg.value(metadata <2 x i64> %11, metadata !733, metadata !DIExpression()) #16, !dbg !751
  %12 = load <2 x i64>, <2 x i64>* %10, align 8, !dbg !752, !tbaa !281, !alias.scope !718, !noalias !753
  call void @llvm.dbg.value(metadata <2 x i64> %12, metadata !737, metadata !DIExpression()) #16, !dbg !751
  %xor.i.i.i.i.i = xor <2 x i64> %12, %11, !dbg !754
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.i.i.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !751
  %13 = bitcast <2 x i64> %xor.i.i.i.i.i to <4 x i32>, !dbg !755
  %permil.i.i.i.i = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !755
  %14 = bitcast <4 x i32> %permil.i.i.i.i to <2 x i64>, !dbg !755
  call void @llvm.dbg.value(metadata <2 x i64> %14, metadata !739, metadata !DIExpression()) #16, !dbg !751
  %15 = and <2 x i64> %xor.i.i.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !756
  %16 = and <2 x i64> %14, <i64 4294967295, i64 4294967295>, !dbg !756
  %17 = mul nuw <2 x i64> %16, %15, !dbg !756
  call void @llvm.dbg.value(metadata <2 x i64> %17, metadata !740, metadata !DIExpression()) #16, !dbg !751
  %18 = shufflevector <2 x i64> %11, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !757
  call void @llvm.dbg.value(metadata <2 x i64> %18, metadata !741, metadata !DIExpression()) #16, !dbg !751
  %add.i.i.i.i.i = add <2 x i64> %8, %18, !dbg !758
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.i.i.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !751
  %add.i29.i.i.i.i = add <2 x i64> %add.i.i.i.i.i, %17, !dbg !759
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()) #16, !dbg !745
  %add.ptr.1.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i64 16, !dbg !760
  %19 = bitcast i8* %add.ptr.1.i.i.i.i to <2 x i64>*, !dbg !760
  %20 = load <2 x i64>, <2 x i64>* %19, align 1, !dbg !748, !tbaa !281, !alias.scope !749, !noalias !750
  call void @llvm.dbg.value(metadata <2 x i64> %20, metadata !733, metadata !DIExpression()) #16, !dbg !751
  %add.ptr1.1.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr3.i.i.i, i64 16, !dbg !761
  %21 = bitcast i8* %add.ptr1.1.i.i.i.i to <2 x i64>*, !dbg !761
  %22 = load <2 x i64>, <2 x i64>* %21, align 8, !dbg !752, !tbaa !281, !alias.scope !718, !noalias !753
  call void @llvm.dbg.value(metadata <2 x i64> %22, metadata !737, metadata !DIExpression()) #16, !dbg !751
  %xor.i.1.i.i.i.i = xor <2 x i64> %22, %20, !dbg !754
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.1.i.i.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !751
  %23 = bitcast <2 x i64> %xor.i.1.i.i.i.i to <4 x i32>, !dbg !755
  %permil.1.i.i.i.i = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !755
  %24 = bitcast <4 x i32> %permil.1.i.i.i.i to <2 x i64>, !dbg !755
  call void @llvm.dbg.value(metadata <2 x i64> %24, metadata !739, metadata !DIExpression()) #16, !dbg !751
  %25 = and <2 x i64> %xor.i.1.i.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !756
  %26 = and <2 x i64> %24, <i64 4294967295, i64 4294967295>, !dbg !756
  %27 = mul nuw <2 x i64> %26, %25, !dbg !756
  call void @llvm.dbg.value(metadata <2 x i64> %27, metadata !740, metadata !DIExpression()) #16, !dbg !751
  %28 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !757
  call void @llvm.dbg.value(metadata <2 x i64> %28, metadata !741, metadata !DIExpression()) #16, !dbg !751
  %add.i.1.i.i.i.i = add <2 x i64> %7, %28, !dbg !758
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.1.i.i.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !751
  %add.i29.1.i.i.i.i = add <2 x i64> %add.i.1.i.i.i.i, %27, !dbg !759
  call void @llvm.dbg.value(metadata i64 2, metadata !732, metadata !DIExpression()) #16, !dbg !745
  %add.ptr.2.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i64 32, !dbg !760
  %29 = bitcast i8* %add.ptr.2.i.i.i.i to <2 x i64>*, !dbg !760
  %30 = load <2 x i64>, <2 x i64>* %29, align 1, !dbg !748, !tbaa !281, !alias.scope !749, !noalias !750
  call void @llvm.dbg.value(metadata <2 x i64> %30, metadata !733, metadata !DIExpression()) #16, !dbg !751
  %add.ptr1.2.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr3.i.i.i, i64 32, !dbg !761
  %31 = bitcast i8* %add.ptr1.2.i.i.i.i to <2 x i64>*, !dbg !761
  %32 = load <2 x i64>, <2 x i64>* %31, align 8, !dbg !752, !tbaa !281, !alias.scope !718, !noalias !753
  call void @llvm.dbg.value(metadata <2 x i64> %32, metadata !737, metadata !DIExpression()) #16, !dbg !751
  %xor.i.2.i.i.i.i = xor <2 x i64> %32, %30, !dbg !754
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.2.i.i.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !751
  %33 = bitcast <2 x i64> %xor.i.2.i.i.i.i to <4 x i32>, !dbg !755
  %permil.2.i.i.i.i = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !755
  %34 = bitcast <4 x i32> %permil.2.i.i.i.i to <2 x i64>, !dbg !755
  call void @llvm.dbg.value(metadata <2 x i64> %34, metadata !739, metadata !DIExpression()) #16, !dbg !751
  %35 = and <2 x i64> %xor.i.2.i.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !756
  %36 = and <2 x i64> %34, <i64 4294967295, i64 4294967295>, !dbg !756
  %37 = mul nuw <2 x i64> %36, %35, !dbg !756
  call void @llvm.dbg.value(metadata <2 x i64> %37, metadata !740, metadata !DIExpression()) #16, !dbg !751
  %38 = shufflevector <2 x i64> %30, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !757
  call void @llvm.dbg.value(metadata <2 x i64> %38, metadata !741, metadata !DIExpression()) #16, !dbg !751
  %add.i.2.i.i.i.i = add <2 x i64> %6, %38, !dbg !758
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.2.i.i.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !751
  %add.i29.2.i.i.i.i = add <2 x i64> %add.i.2.i.i.i.i, %37, !dbg !759
  call void @llvm.dbg.value(metadata i64 3, metadata !732, metadata !DIExpression()) #16, !dbg !745
  %add.ptr.3.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i.i.i, i64 48, !dbg !760
  %39 = bitcast i8* %add.ptr.3.i.i.i.i to <2 x i64>*, !dbg !760
  %40 = load <2 x i64>, <2 x i64>* %39, align 1, !dbg !748, !tbaa !281, !alias.scope !749, !noalias !750
  call void @llvm.dbg.value(metadata <2 x i64> %40, metadata !733, metadata !DIExpression()) #16, !dbg !751
  %add.ptr1.3.i.i.i.i = getelementptr inbounds i8, i8* %add.ptr3.i.i.i, i64 48, !dbg !761
  %41 = bitcast i8* %add.ptr1.3.i.i.i.i to <2 x i64>*, !dbg !761
  %42 = load <2 x i64>, <2 x i64>* %41, align 8, !dbg !752, !tbaa !281, !alias.scope !718, !noalias !753
  call void @llvm.dbg.value(metadata <2 x i64> %42, metadata !737, metadata !DIExpression()) #16, !dbg !751
  %xor.i.3.i.i.i.i = xor <2 x i64> %42, %40, !dbg !754
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.3.i.i.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !751
  %43 = bitcast <2 x i64> %xor.i.3.i.i.i.i to <4 x i32>, !dbg !755
  %permil.3.i.i.i.i = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !755
  %44 = bitcast <4 x i32> %permil.3.i.i.i.i to <2 x i64>, !dbg !755
  call void @llvm.dbg.value(metadata <2 x i64> %44, metadata !739, metadata !DIExpression()) #16, !dbg !751
  %45 = and <2 x i64> %xor.i.3.i.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !756
  %46 = and <2 x i64> %44, <i64 4294967295, i64 4294967295>, !dbg !756
  %47 = mul nuw <2 x i64> %46, %45, !dbg !756
  call void @llvm.dbg.value(metadata <2 x i64> %47, metadata !740, metadata !DIExpression()) #16, !dbg !751
  %48 = shufflevector <2 x i64> %40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !757
  call void @llvm.dbg.value(metadata <2 x i64> %48, metadata !741, metadata !DIExpression()) #16, !dbg !751
  %add.i.3.i.i.i.i = add <2 x i64> %5, %48, !dbg !758
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.3.i.i.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !751
  %add.i29.3.i.i.i.i = add <2 x i64> %add.i.3.i.i.i.i, %47, !dbg !759
  call void @llvm.dbg.value(metadata i64 4, metadata !732, metadata !DIExpression()) #16, !dbg !745
  %inc.i.i.i = add nuw nsw i64 %n.07.i.i.i, 1, !dbg !762
  call void @llvm.dbg.value(metadata i64 %inc.i.i.i, metadata !701, metadata !DIExpression()) #16, !dbg !706
  %exitcond.not.i.i.i = icmp eq i64 %inc.i.i.i, 16, !dbg !763
  br i1 %exitcond.not.i.i.i, label %XXH3_accumulate.exit.i.i, label %for.body.i.i.i, !dbg !708, !llvm.loop !764

XXH3_accumulate.exit.i.i:                         ; preds = %for.body.i.i.i
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !767, metadata !DIExpression()) #16, !dbg !789
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !773, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> <i64 -7046029288227243599, i64 -7046029288227243599>, metadata !776, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata i64 0, metadata !777, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> %add.i29.i.i.i.i, metadata !778, metadata !DIExpression()) #16, !dbg !792
  %49 = lshr <2 x i64> %add.i29.i.i.i.i, <i64 47, i64 47>, !dbg !793
  call void @llvm.dbg.value(metadata <2 x i64> %49, metadata !782, metadata !DIExpression()) #16, !dbg !792
  call void @llvm.dbg.value(metadata <2 x i64> undef, metadata !783, metadata !DIExpression()) #16, !dbg !792
  call void @llvm.dbg.value(metadata <2 x i64> <i64 -4329134394285701654, i64 -1485321483350670907>, metadata !784, metadata !DIExpression()) #16, !dbg !792
  %50 = xor <2 x i64> %add.i29.i.i.i.i, %49, !dbg !794
  %xor.i31.i.i.i = xor <2 x i64> %50, <i64 -4329134394285701654, i64 -1485321483350670907>, !dbg !794
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i31.i.i.i, metadata !785, metadata !DIExpression()) #16, !dbg !792
  %51 = bitcast <2 x i64> %xor.i31.i.i.i to <4 x i32>, !dbg !795
  %permil.i.i.i = shufflevector <4 x i32> %51, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !795
  %52 = bitcast <4 x i32> %permil.i.i.i to <2 x i64>, !dbg !795
  call void @llvm.dbg.value(metadata <2 x i64> %52, metadata !786, metadata !DIExpression()) #16, !dbg !792
  %53 = and <2 x i64> %xor.i31.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !796
  %54 = mul nuw <2 x i64> %53, <i64 2654435761, i64 2654435761>, !dbg !796
  call void @llvm.dbg.value(metadata <2 x i64> %54, metadata !787, metadata !DIExpression()) #16, !dbg !792
  %55 = and <2 x i64> %52, <i64 4294967295, i64 4294967295>, !dbg !797
  call void @llvm.dbg.value(metadata !DIArgList(<2 x i64> %55, <2 x i64> <i64 2654435761, i64 2654435761>), metadata !788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)) #16, !dbg !792
  %56 = mul <2 x i64> %55, <i64 -7046029290881679360, i64 -7046029290881679360>, !dbg !798
  %add.i.i.i.i = add <2 x i64> %56, %54, !dbg !799
  call void @llvm.dbg.value(metadata i64 1, metadata !777, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> %add.i29.1.i.i.i.i, metadata !778, metadata !DIExpression()) #16, !dbg !792
  %57 = lshr <2 x i64> %add.i29.1.i.i.i.i, <i64 47, i64 47>, !dbg !793
  call void @llvm.dbg.value(metadata <2 x i64> %57, metadata !782, metadata !DIExpression()) #16, !dbg !792
  call void @llvm.dbg.value(metadata <2 x i64> <i64 5321830579834785047, i64 -7032137544937171245>, metadata !784, metadata !DIExpression()) #16, !dbg !792
  %58 = xor <2 x i64> %add.i29.1.i.i.i.i, %57, !dbg !794
  %xor.i31.1.i.i.i = xor <2 x i64> %58, <i64 5321830579834785047, i64 -7032137544937171245>, !dbg !794
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i31.1.i.i.i, metadata !785, metadata !DIExpression()) #16, !dbg !792
  %59 = bitcast <2 x i64> %xor.i31.1.i.i.i to <4 x i32>, !dbg !795
  %permil.1.i.i.i = shufflevector <4 x i32> %59, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !795
  %60 = bitcast <4 x i32> %permil.1.i.i.i to <2 x i64>, !dbg !795
  call void @llvm.dbg.value(metadata <2 x i64> %60, metadata !786, metadata !DIExpression()) #16, !dbg !792
  %61 = and <2 x i64> %xor.i31.1.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !796
  %62 = mul nuw <2 x i64> %61, <i64 2654435761, i64 2654435761>, !dbg !796
  call void @llvm.dbg.value(metadata <2 x i64> %62, metadata !787, metadata !DIExpression()) #16, !dbg !792
  %63 = and <2 x i64> %60, <i64 4294967295, i64 4294967295>, !dbg !797
  call void @llvm.dbg.value(metadata !DIArgList(<2 x i64> %63, <2 x i64> <i64 2654435761, i64 2654435761>), metadata !788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)) #16, !dbg !792
  %64 = mul <2 x i64> %63, <i64 -7046029290881679360, i64 -7046029290881679360>, !dbg !798
  %add.i.1.i.i.i = add <2 x i64> %64, %62, !dbg !799
  call void @llvm.dbg.value(metadata i64 2, metadata !777, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> %add.i29.2.i.i.i.i, metadata !778, metadata !DIExpression()) #16, !dbg !792
  %65 = lshr <2 x i64> %add.i29.2.i.i.i.i, <i64 47, i64 47>, !dbg !793
  call void @llvm.dbg.value(metadata <2 x i64> %65, metadata !782, metadata !DIExpression()) #16, !dbg !792
  call void @llvm.dbg.value(metadata <2 x i64> <i64 -242834301215959509, i64 -3588858202114426737>, metadata !784, metadata !DIExpression()) #16, !dbg !792
  %66 = xor <2 x i64> %add.i29.2.i.i.i.i, %65, !dbg !794
  %xor.i31.2.i.i.i = xor <2 x i64> %66, <i64 -242834301215959509, i64 -3588858202114426737>, !dbg !794
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i31.2.i.i.i, metadata !785, metadata !DIExpression()) #16, !dbg !792
  %67 = bitcast <2 x i64> %xor.i31.2.i.i.i to <4 x i32>, !dbg !795
  %permil.2.i.i.i = shufflevector <4 x i32> %67, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !795
  %68 = bitcast <4 x i32> %permil.2.i.i.i to <2 x i64>, !dbg !795
  call void @llvm.dbg.value(metadata <2 x i64> %68, metadata !786, metadata !DIExpression()) #16, !dbg !792
  %69 = and <2 x i64> %xor.i31.2.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !796
  %70 = mul nuw <2 x i64> %69, <i64 2654435761, i64 2654435761>, !dbg !796
  call void @llvm.dbg.value(metadata <2 x i64> %70, metadata !787, metadata !DIExpression()) #16, !dbg !792
  %71 = and <2 x i64> %68, <i64 4294967295, i64 4294967295>, !dbg !797
  call void @llvm.dbg.value(metadata !DIArgList(<2 x i64> %71, <2 x i64> <i64 2654435761, i64 2654435761>), metadata !788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)) #16, !dbg !792
  %72 = mul <2 x i64> %71, <i64 -7046029290881679360, i64 -7046029290881679360>, !dbg !798
  %add.i.2.i.i.i = add <2 x i64> %72, %70, !dbg !799
  call void @llvm.dbg.value(metadata i64 3, metadata !777, metadata !DIExpression()) #16, !dbg !791
  call void @llvm.dbg.value(metadata <2 x i64> %add.i29.3.i.i.i.i, metadata !778, metadata !DIExpression()) #16, !dbg !792
  %73 = lshr <2 x i64> %add.i29.3.i.i.i.i, <i64 47, i64 47>, !dbg !793
  call void @llvm.dbg.value(metadata <2 x i64> %73, metadata !782, metadata !DIExpression()) #16, !dbg !792
  call void @llvm.dbg.value(metadata <2 x i64> <i64 2883454493032893253, i64 9097354517224871855>, metadata !784, metadata !DIExpression()) #16, !dbg !792
  %74 = xor <2 x i64> %add.i29.3.i.i.i.i, %73, !dbg !794
  %xor.i31.3.i.i.i = xor <2 x i64> %74, <i64 2883454493032893253, i64 9097354517224871855>, !dbg !794
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i31.3.i.i.i, metadata !785, metadata !DIExpression()) #16, !dbg !792
  %75 = bitcast <2 x i64> %xor.i31.3.i.i.i to <4 x i32>, !dbg !795
  %permil.3.i.i.i = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !795
  %76 = bitcast <4 x i32> %permil.3.i.i.i to <2 x i64>, !dbg !795
  call void @llvm.dbg.value(metadata <2 x i64> %76, metadata !786, metadata !DIExpression()) #16, !dbg !792
  %77 = and <2 x i64> %xor.i31.3.i.i.i, <i64 4294967295, i64 4294967295>, !dbg !796
  %78 = mul nuw <2 x i64> %77, <i64 2654435761, i64 2654435761>, !dbg !796
  call void @llvm.dbg.value(metadata <2 x i64> %78, metadata !787, metadata !DIExpression()) #16, !dbg !792
  %79 = and <2 x i64> %76, <i64 4294967295, i64 4294967295>, !dbg !797
  call void @llvm.dbg.value(metadata !DIArgList(<2 x i64> %79, <2 x i64> <i64 2654435761, i64 2654435761>), metadata !788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)) #16, !dbg !792
  %80 = mul <2 x i64> %79, <i64 -7046029290881679360, i64 -7046029290881679360>, !dbg !798
  %add.i.3.i.i.i = add <2 x i64> %80, %78, !dbg !799
  call void @llvm.dbg.value(metadata i64 4, metadata !777, metadata !DIExpression()) #16, !dbg !791
  %inc.i.i = add nuw nsw i64 %n.080.i.i, 1, !dbg !800
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !656, metadata !DIExpression()) #16, !dbg !662
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, %div2.i.i, !dbg !665
  br i1 %exitcond.not.i.i, label %for.cond.for.end_crit_edge.i.i, label %for.body.i.i, !dbg !668, !llvm.loop !801

for.cond.for.end_crit_edge.i.i:                   ; preds = %XXH3_accumulate.exit.i.i
  %81 = shl nuw nsw i64 %div2.i.i, 6, !dbg !668
  %82 = shl nuw nsw i64 %div2.i.i, 2, !dbg !668
  %83 = add i64 %.promoted78.i.i, %div2.i.i, !dbg !668
  %84 = add i64 %.promoted74.i.i, %81, !dbg !668
  %85 = add i64 %.promoted73.i.i, %3, !dbg !668
  %86 = add i64 %.promoted77.i.i, %82, !dbg !668
  %87 = add i64 %.promoted76.i.i, %div2.i.i, !dbg !668
  %88 = add i64 %.promoted.i.i, %div2.i.i, !dbg !668
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 0), align 16, !noalias !678
  store i64 %84, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.27, i64 0, i64 1), align 8, !dbg !803, !noalias !678
  store i64 %85, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !762, !noalias !686
  store i64 %87, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 0), align 8, !noalias !674
  store i64 %86, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.28, i64 0, i64 1), align 8, !dbg !804, !noalias !674
  store i64 %83, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 1), align 8, !dbg !800, !noalias !638
  br label %for.end.i.i, !dbg !668

for.end.i.i:                                      ; preds = %for.cond.for.end_crit_edge.i.i, %entry.for.end_crit_edge.i.i
  %.pre116.i.i = phi <2 x i64> [ <i64 2870177450012600261, i64 2654435761>, %entry.for.end_crit_edge.i.i ], [ %add.i.3.i.i.i, %for.cond.for.end_crit_edge.i.i ]
  %.pre114.i.i = phi <2 x i64> [ <i64 -8796714831421723037, i64 2246822519>, %entry.for.end_crit_edge.i.i ], [ %add.i.2.i.i.i, %for.cond.for.end_crit_edge.i.i ]
  %.pre112.i.i = phi <2 x i64> [ <i64 -4417276706812531889, i64 1609587929392839161>, %entry.for.end_crit_edge.i.i ], [ %add.i.1.i.i.i, %for.cond.for.end_crit_edge.i.i ]
  %.pre.i.i = phi <2 x i64> [ <i64 3266489917, i64 -7046029288634856825>, %entry.for.end_crit_edge.i.i ], [ %add.i.i.i.i, %for.cond.for.end_crit_edge.i.i ]
  %gcov_ctr.i3.i.i = phi i64 [ %gcov_ctr.i3.pre.i.i, %entry.for.end_crit_edge.i.i ], [ %88, %for.cond.for.end_crit_edge.i.i ]
  %mul7.i.i = and i64 %sub1.i.i, -1024, !dbg !805
  %sub8.i.i = lshr i64 %sub1.i.i, 6, !dbg !806
  %div9.i.i = and i64 %sub8.i.i, 15, !dbg !806
  call void @llvm.dbg.value(metadata i64 %div9.i.i, metadata !657, metadata !DIExpression()) #16, !dbg !807
  %add.ptr11.i.i = getelementptr inbounds i8, i8* %input, i64 %mul7.i.i, !dbg !808
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809) #16, !dbg !810
  %89 = add i64 %gcov_ctr.i3.i.i, 1
  store i64 %89, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0), align 8, !noalias !669
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !692, metadata !DIExpression()) #16, !dbg !811
  call void @llvm.dbg.value(metadata i8* %add.ptr11.i.i, metadata !697, metadata !DIExpression()) #16, !dbg !811
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !698, metadata !DIExpression()) #16, !dbg !811
  call void @llvm.dbg.value(metadata i64 %div9.i.i, metadata !699, metadata !DIExpression()) #16, !dbg !811
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()) #16, !dbg !811
  call void @llvm.dbg.value(metadata i64 0, metadata !701, metadata !DIExpression()) #16, !dbg !811
  %cmp6.not.i.i.i = icmp eq i64 %div9.i.i, 0, !dbg !813
  br i1 %cmp6.not.i.i.i, label %for.end.XXH3_accumulate.exit49_crit_edge.i.i, label %for.body.lr.ph.i.i.i, !dbg !814

for.end.XXH3_accumulate.exit49_crit_edge.i.i:     ; preds = %for.end.i.i
  %90 = load <2 x i64>, <2 x i64>* bitcast ([2 x i64]* @__llvm_gcov_ctr.27 to <2 x i64>*), align 16, !noalias !815
  %arrayidx.1.i5767.phi.trans.insert.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 2
  %arrayidx.2.i6168.phi.trans.insert.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 4
  %arrayidx.3.i6569.phi.trans.insert.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 6
  br label %XXH3_hashLong_64b_internal.exit, !dbg !814

for.body.lr.ph.i.i.i:                             ; preds = %for.end.i.i
  %.promoted5.i4.i.i = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !noalias !669
  %91 = load <2 x i64>, <2 x i64>* bitcast ([2 x i64]* @__llvm_gcov_ctr.27 to <2 x i64>*), align 16, !noalias !820
  %arrayidx.2.i2.i8.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 4
  br label %for.body.i48.i.i, !dbg !814

for.body.i48.i.i:                                 ; preds = %for.body.i48.i.i, %for.body.lr.ph.i.i.i
  %92 = phi <2 x i64> [ %.pre116.i.i, %for.body.lr.ph.i.i.i ], [ %add.i29.3.i.i45.i.i, %for.body.i48.i.i ], !dbg !811
  %93 = phi <2 x i64> [ %.pre114.i.i, %for.body.lr.ph.i.i.i ], [ %add.i29.2.i.i38.i.i, %for.body.i48.i.i ], !dbg !811
  %94 = phi <2 x i64> [ %.pre112.i.i, %for.body.lr.ph.i.i.i ], [ %add.i29.1.i.i31.i.i, %for.body.i48.i.i ], !dbg !811
  %95 = phi <2 x i64> [ %.pre.i.i, %for.body.lr.ph.i.i.i ], [ %add.i29.i.i24.i.i, %for.body.i48.i.i ], !dbg !811
  %n.07.i14.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i46.i.i, %for.body.i48.i.i ]
  call void @llvm.dbg.value(metadata i64 %n.07.i14.i.i, metadata !701, metadata !DIExpression()) #16, !dbg !811
  %mul.i15.i.i = shl i64 %n.07.i14.i.i, 6, !dbg !825
  %add.ptr.i16.i.i = getelementptr inbounds i8, i8* %add.ptr11.i.i, i64 %mul.i15.i.i, !dbg !826
  call void @llvm.dbg.value(metadata i8* %add.ptr.i16.i.i, metadata !702, metadata !DIExpression()) #16, !dbg !827
  %add.ptr1.i17.i.i = getelementptr inbounds i8, i8* %add.ptr.i16.i.i, i64 320, !dbg !828
  tail call void @llvm.prefetch.p0i8(i8* nonnull %add.ptr1.i17.i.i, i32 0, i32 3, i32 1) #16, !dbg !828, !noalias !829
  %mul2.i18.i.i = shl i64 %n.07.i14.i.i, 3, !dbg !830
  %add.ptr3.i19.i.i = getelementptr inbounds [192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 %mul2.i18.i.i, !dbg !831
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832) #16, !dbg !833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834) #16, !dbg !833
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !719, metadata !DIExpression()) #16, !dbg !835
  call void @llvm.dbg.value(metadata i8* %add.ptr.i16.i.i, metadata !724, metadata !DIExpression()) #16, !dbg !835
  call void @llvm.dbg.value(metadata i8* %add.ptr3.i19.i.i, metadata !725, metadata !DIExpression()) #16, !dbg !835
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !726, metadata !DIExpression()) #16, !dbg !837
  %96 = bitcast i8* %add.ptr.i16.i.i to <2 x i64>*, !dbg !838
  call void @llvm.dbg.value(metadata <2 x i64>* %96, metadata !729, metadata !DIExpression()) #16, !dbg !837
  %97 = bitcast i8* %add.ptr3.i19.i.i to <2 x i64>*, !dbg !839
  call void @llvm.dbg.value(metadata <2 x i64>* %97, metadata !731, metadata !DIExpression()) #16, !dbg !837
  call void @llvm.dbg.value(metadata i64 0, metadata !732, metadata !DIExpression()) #16, !dbg !837
  %98 = load <2 x i64>, <2 x i64>* %96, align 1, !dbg !840, !tbaa !281, !alias.scope !841, !noalias !842
  call void @llvm.dbg.value(metadata <2 x i64> %98, metadata !733, metadata !DIExpression()) #16, !dbg !843
  %99 = load <2 x i64>, <2 x i64>* %97, align 8, !dbg !844, !tbaa !281, !alias.scope !834, !noalias !845
  call void @llvm.dbg.value(metadata <2 x i64> %99, metadata !737, metadata !DIExpression()) #16, !dbg !843
  %xor.i.i.i20.i.i = xor <2 x i64> %99, %98, !dbg !846
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.i.i20.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !843
  %100 = bitcast <2 x i64> %xor.i.i.i20.i.i to <4 x i32>, !dbg !847
  %permil.i.i21.i.i = shufflevector <4 x i32> %100, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !847
  %101 = bitcast <4 x i32> %permil.i.i21.i.i to <2 x i64>, !dbg !847
  call void @llvm.dbg.value(metadata <2 x i64> %101, metadata !739, metadata !DIExpression()) #16, !dbg !843
  %102 = and <2 x i64> %xor.i.i.i20.i.i, <i64 4294967295, i64 4294967295>, !dbg !848
  %103 = and <2 x i64> %101, <i64 4294967295, i64 4294967295>, !dbg !848
  %104 = mul nuw <2 x i64> %103, %102, !dbg !848
  call void @llvm.dbg.value(metadata <2 x i64> %104, metadata !740, metadata !DIExpression()) #16, !dbg !843
  %105 = shufflevector <2 x i64> %98, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !849
  call void @llvm.dbg.value(metadata <2 x i64> %105, metadata !741, metadata !DIExpression()) #16, !dbg !843
  %add.i.i.i23.i.i = add <2 x i64> %95, %105, !dbg !850
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.i.i23.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !843
  %add.i29.i.i24.i.i = add <2 x i64> %add.i.i.i23.i.i, %104, !dbg !851
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()) #16, !dbg !837
  %add.ptr.1.i.i25.i.i = getelementptr inbounds i8, i8* %add.ptr.i16.i.i, i64 16, !dbg !852
  %106 = bitcast i8* %add.ptr.1.i.i25.i.i to <2 x i64>*, !dbg !852
  %107 = load <2 x i64>, <2 x i64>* %106, align 1, !dbg !840, !tbaa !281, !alias.scope !841, !noalias !842
  call void @llvm.dbg.value(metadata <2 x i64> %107, metadata !733, metadata !DIExpression()) #16, !dbg !843
  %add.ptr1.1.i.i26.i.i = getelementptr inbounds i8, i8* %add.ptr3.i19.i.i, i64 16, !dbg !853
  %108 = bitcast i8* %add.ptr1.1.i.i26.i.i to <2 x i64>*, !dbg !853
  %109 = load <2 x i64>, <2 x i64>* %108, align 8, !dbg !844, !tbaa !281, !alias.scope !834, !noalias !845
  call void @llvm.dbg.value(metadata <2 x i64> %109, metadata !737, metadata !DIExpression()) #16, !dbg !843
  %xor.i.1.i.i27.i.i = xor <2 x i64> %109, %107, !dbg !846
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.1.i.i27.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !843
  %110 = bitcast <2 x i64> %xor.i.1.i.i27.i.i to <4 x i32>, !dbg !847
  %permil.1.i.i28.i.i = shufflevector <4 x i32> %110, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !847
  %111 = bitcast <4 x i32> %permil.1.i.i28.i.i to <2 x i64>, !dbg !847
  call void @llvm.dbg.value(metadata <2 x i64> %111, metadata !739, metadata !DIExpression()) #16, !dbg !843
  %112 = and <2 x i64> %xor.i.1.i.i27.i.i, <i64 4294967295, i64 4294967295>, !dbg !848
  %113 = and <2 x i64> %111, <i64 4294967295, i64 4294967295>, !dbg !848
  %114 = mul nuw <2 x i64> %113, %112, !dbg !848
  call void @llvm.dbg.value(metadata <2 x i64> %114, metadata !740, metadata !DIExpression()) #16, !dbg !843
  %115 = shufflevector <2 x i64> %107, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !849
  call void @llvm.dbg.value(metadata <2 x i64> %115, metadata !741, metadata !DIExpression()) #16, !dbg !843
  %add.i.1.i.i30.i.i = add <2 x i64> %94, %115, !dbg !850
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.1.i.i30.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !843
  %add.i29.1.i.i31.i.i = add <2 x i64> %add.i.1.i.i30.i.i, %114, !dbg !851
  call void @llvm.dbg.value(metadata i64 2, metadata !732, metadata !DIExpression()) #16, !dbg !837
  %add.ptr.2.i.i32.i.i = getelementptr inbounds i8, i8* %add.ptr.i16.i.i, i64 32, !dbg !852
  %116 = bitcast i8* %add.ptr.2.i.i32.i.i to <2 x i64>*, !dbg !852
  %117 = load <2 x i64>, <2 x i64>* %116, align 1, !dbg !840, !tbaa !281, !alias.scope !841, !noalias !842
  call void @llvm.dbg.value(metadata <2 x i64> %117, metadata !733, metadata !DIExpression()) #16, !dbg !843
  %add.ptr1.2.i.i33.i.i = getelementptr inbounds i8, i8* %add.ptr3.i19.i.i, i64 32, !dbg !853
  %118 = bitcast i8* %add.ptr1.2.i.i33.i.i to <2 x i64>*, !dbg !853
  %119 = load <2 x i64>, <2 x i64>* %118, align 8, !dbg !844, !tbaa !281, !alias.scope !834, !noalias !845
  call void @llvm.dbg.value(metadata <2 x i64> %119, metadata !737, metadata !DIExpression()) #16, !dbg !843
  %xor.i.2.i.i34.i.i = xor <2 x i64> %119, %117, !dbg !846
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.2.i.i34.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !843
  %120 = bitcast <2 x i64> %xor.i.2.i.i34.i.i to <4 x i32>, !dbg !847
  %permil.2.i.i35.i.i = shufflevector <4 x i32> %120, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !847
  %121 = bitcast <4 x i32> %permil.2.i.i35.i.i to <2 x i64>, !dbg !847
  call void @llvm.dbg.value(metadata <2 x i64> %121, metadata !739, metadata !DIExpression()) #16, !dbg !843
  %122 = and <2 x i64> %xor.i.2.i.i34.i.i, <i64 4294967295, i64 4294967295>, !dbg !848
  %123 = and <2 x i64> %121, <i64 4294967295, i64 4294967295>, !dbg !848
  %124 = mul nuw <2 x i64> %123, %122, !dbg !848
  call void @llvm.dbg.value(metadata <2 x i64> %124, metadata !740, metadata !DIExpression()) #16, !dbg !843
  %125 = shufflevector <2 x i64> %117, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !849
  call void @llvm.dbg.value(metadata <2 x i64> %125, metadata !741, metadata !DIExpression()) #16, !dbg !843
  %add.i.2.i.i37.i.i = add <2 x i64> %93, %125, !dbg !850
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.2.i.i37.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !843
  %add.i29.2.i.i38.i.i = add <2 x i64> %add.i.2.i.i37.i.i, %124, !dbg !851
  call void @llvm.dbg.value(metadata i64 3, metadata !732, metadata !DIExpression()) #16, !dbg !837
  %add.ptr.3.i.i39.i.i = getelementptr inbounds i8, i8* %add.ptr.i16.i.i, i64 48, !dbg !852
  %126 = bitcast i8* %add.ptr.3.i.i39.i.i to <2 x i64>*, !dbg !852
  %127 = load <2 x i64>, <2 x i64>* %126, align 1, !dbg !840, !tbaa !281, !alias.scope !841, !noalias !842
  call void @llvm.dbg.value(metadata <2 x i64> %127, metadata !733, metadata !DIExpression()) #16, !dbg !843
  %add.ptr1.3.i.i40.i.i = getelementptr inbounds i8, i8* %add.ptr3.i19.i.i, i64 48, !dbg !853
  %128 = bitcast i8* %add.ptr1.3.i.i40.i.i to <2 x i64>*, !dbg !853
  %129 = load <2 x i64>, <2 x i64>* %128, align 8, !dbg !844, !tbaa !281, !alias.scope !834, !noalias !845
  call void @llvm.dbg.value(metadata <2 x i64> %129, metadata !737, metadata !DIExpression()) #16, !dbg !843
  %xor.i.3.i.i41.i.i = xor <2 x i64> %129, %127, !dbg !846
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.3.i.i41.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !843
  %130 = bitcast <2 x i64> %xor.i.3.i.i41.i.i to <4 x i32>, !dbg !847
  %permil.3.i.i42.i.i = shufflevector <4 x i32> %130, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !847
  %131 = bitcast <4 x i32> %permil.3.i.i42.i.i to <2 x i64>, !dbg !847
  call void @llvm.dbg.value(metadata <2 x i64> %131, metadata !739, metadata !DIExpression()) #16, !dbg !843
  %132 = and <2 x i64> %xor.i.3.i.i41.i.i, <i64 4294967295, i64 4294967295>, !dbg !848
  %133 = and <2 x i64> %131, <i64 4294967295, i64 4294967295>, !dbg !848
  %134 = mul nuw <2 x i64> %133, %132, !dbg !848
  call void @llvm.dbg.value(metadata <2 x i64> %134, metadata !740, metadata !DIExpression()) #16, !dbg !843
  %135 = shufflevector <2 x i64> %127, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !849
  call void @llvm.dbg.value(metadata <2 x i64> %135, metadata !741, metadata !DIExpression()) #16, !dbg !843
  %add.i.3.i.i44.i.i = add <2 x i64> %92, %135, !dbg !850
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.3.i.i44.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !843
  %add.i29.3.i.i45.i.i = add <2 x i64> %add.i.3.i.i44.i.i, %134, !dbg !851
  call void @llvm.dbg.value(metadata i64 4, metadata !732, metadata !DIExpression()) #16, !dbg !837
  %inc.i46.i.i = add nuw nsw i64 %n.07.i14.i.i, 1, !dbg !854
  call void @llvm.dbg.value(metadata i64 %inc.i46.i.i, metadata !701, metadata !DIExpression()) #16, !dbg !811
  %exitcond.not.i47.i.i = icmp eq i64 %inc.i46.i.i, %div9.i.i, !dbg !813
  br i1 %exitcond.not.i47.i.i, label %for.cond.for.end_crit_edge.i.i.i, label %for.body.i48.i.i, !dbg !814, !llvm.loop !855

for.cond.for.end_crit_edge.i.i.i:                 ; preds = %for.body.i48.i.i
  %arrayidx.1.i1.i7.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 2
  %arrayidx.3.i3.i9.i.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 6
  %136 = shl nuw nsw i64 %div9.i.i, 2, !dbg !814
  %137 = insertelement <2 x i64> poison, i64 %div9.i.i, i64 0, !dbg !814
  %138 = insertelement <2 x i64> %137, i64 %136, i64 1, !dbg !814
  %139 = add <2 x i64> %91, %138, !dbg !814
  %140 = add i64 %.promoted5.i4.i.i, %div9.i.i, !dbg !814
  store i64 %140, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 1), align 8, !dbg !854, !noalias !669
  br label %XXH3_hashLong_64b_internal.exit, !dbg !814

XXH3_hashLong_64b_internal.exit:                  ; preds = %for.end.XXH3_accumulate.exit49_crit_edge.i.i, %for.cond.for.end_crit_edge.i.i.i
  %.pre-phi119.i.in.i = phi i64* [ %arrayidx.3.i6569.phi.trans.insert.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %arrayidx.3.i3.i9.i.i, %for.cond.for.end_crit_edge.i.i.i ]
  %.pre-phi118.i.in.i = phi i64* [ %arrayidx.2.i6168.phi.trans.insert.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %arrayidx.2.i2.i8.i.i, %for.cond.for.end_crit_edge.i.i.i ]
  %.pre-phi117.i.in.i = phi i64* [ %arrayidx.1.i5767.phi.trans.insert.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %arrayidx.1.i1.i7.i.i, %for.cond.for.end_crit_edge.i.i.i ]
  %141 = phi <2 x i64> [ %.pre116.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %add.i29.3.i.i45.i.i, %for.cond.for.end_crit_edge.i.i.i ], !dbg !857
  %142 = phi <2 x i64> [ %.pre114.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %add.i29.2.i.i38.i.i, %for.cond.for.end_crit_edge.i.i.i ], !dbg !857
  %143 = phi <2 x i64> [ %.pre112.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %add.i29.1.i.i31.i.i, %for.cond.for.end_crit_edge.i.i.i ], !dbg !857
  %144 = phi <2 x i64> [ %.pre.i.i, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %add.i29.i.i24.i.i, %for.cond.for.end_crit_edge.i.i.i ], !dbg !857
  %145 = phi <2 x i64> [ %90, %for.end.XXH3_accumulate.exit49_crit_edge.i.i ], [ %139, %for.cond.for.end_crit_edge.i.i.i ]
  %.pre-phi117.i.i = bitcast i64* %.pre-phi117.i.in.i to <2 x i64>*, !dbg !857
  %.pre-phi118.i.i = bitcast i64* %.pre-phi118.i.in.i to <2 x i64>*, !dbg !857
  %.pre-phi119.i.i = bitcast i64* %.pre-phi119.i.in.i to <2 x i64>*, !dbg !857
  %.pre-phi.i.pre-phi.i = bitcast [8 x i64]* %acc.i to <2 x i64>*, !dbg !859
  %arraydecay.i = getelementptr inbounds [8 x i64], [8 x i64]* %acc.i, i64 0, i64 0, !dbg !860
  call void @llvm.dbg.value(metadata i64* %arraydecay.i, metadata !639, metadata !DIExpression()) #16, !dbg !662
  %add.ptr12.i.i = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !861
  %add.ptr13.i.i = getelementptr inbounds i8, i8* %add.ptr12.i.i, i64 -64, !dbg !862
  call void @llvm.dbg.value(metadata i8* %add.ptr13.i.i, metadata !659, metadata !DIExpression()) #16, !dbg !863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864) #16, !dbg !865
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866) #16, !dbg !865
  call void @llvm.dbg.value(metadata [8 x i64]* %acc.i, metadata !719, metadata !DIExpression()) #16, !dbg !867
  call void @llvm.dbg.value(metadata i8* %add.ptr13.i.i, metadata !724, metadata !DIExpression()) #16, !dbg !867
  call void @llvm.dbg.value(metadata <2 x i64>* %.pre-phi.i.pre-phi.i, metadata !726, metadata !DIExpression()) #16, !dbg !868
  %146 = bitcast i8* %add.ptr13.i.i to <2 x i64>*, !dbg !869
  call void @llvm.dbg.value(metadata <2 x i64>* %146, metadata !729, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !732, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !732, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !732, metadata !DIExpression()) #16, !dbg !868
  %147 = load <2 x i64>, <2 x i64>* %146, align 1, !dbg !870, !tbaa !281, !alias.scope !871, !noalias !872
  call void @llvm.dbg.value(metadata <2 x i64> %147, metadata !733, metadata !DIExpression()) #16, !dbg !873
  call void @llvm.dbg.value(metadata <2 x i64> <i64 -1556992608276218209, i64 -4196251135427498811>, metadata !737, metadata !DIExpression()) #16, !dbg !873
  %xor.i.i52.i.i = xor <2 x i64> %147, <i64 -1556992608276218209, i64 -4196251135427498811>, !dbg !874
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.i52.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !873
  %148 = bitcast <2 x i64> %xor.i.i52.i.i to <4 x i32>, !dbg !875
  %permil.i53.i.i = shufflevector <4 x i32> %148, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !875
  %149 = bitcast <4 x i32> %permil.i53.i.i to <2 x i64>, !dbg !875
  call void @llvm.dbg.value(metadata <2 x i64> %149, metadata !739, metadata !DIExpression()) #16, !dbg !873
  %150 = and <2 x i64> %xor.i.i52.i.i, <i64 4294967295, i64 4294967295>, !dbg !876
  %151 = and <2 x i64> %149, <i64 4294967295, i64 4294967295>, !dbg !876
  %152 = mul nuw <2 x i64> %151, %150, !dbg !876
  call void @llvm.dbg.value(metadata <2 x i64> %152, metadata !740, metadata !DIExpression()) #16, !dbg !873
  %153 = shufflevector <2 x i64> %147, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !877
  call void @llvm.dbg.value(metadata <2 x i64> %153, metadata !741, metadata !DIExpression()) #16, !dbg !873
  %add.i.i54.i.i = add <2 x i64> %144, %153, !dbg !878
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.i54.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !873
  %add.i29.i.i.i = add <2 x i64> %add.i.i54.i.i, %152, !dbg !879
  store <2 x i64> %add.i29.i.i.i, <2 x i64>* %.pre-phi.i.pre-phi.i, align 16, !dbg !880, !tbaa !281, !alias.scope !881, !noalias !882
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()) #16, !dbg !868
  %add.ptr.1.i.i.i = getelementptr inbounds i8, i8* %add.ptr13.i.i, i64 16, !dbg !883
  %154 = bitcast i8* %add.ptr.1.i.i.i to <2 x i64>*, !dbg !883
  %155 = load <2 x i64>, <2 x i64>* %154, align 1, !dbg !870, !tbaa !281, !alias.scope !871, !noalias !872
  call void @llvm.dbg.value(metadata <2 x i64> %155, metadata !733, metadata !DIExpression()) #16, !dbg !873
  call void @llvm.dbg.value(metadata <2 x i64> <i64 1723580219865931905, i64 -3221803331004277491>, metadata !737, metadata !DIExpression()) #16, !dbg !873
  %xor.i.1.i55.i.i = xor <2 x i64> %155, <i64 1723580219865931905, i64 -3221803331004277491>, !dbg !874
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.1.i55.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !873
  %156 = bitcast <2 x i64> %xor.i.1.i55.i.i to <4 x i32>, !dbg !875
  %permil.1.i56.i.i = shufflevector <4 x i32> %156, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !875
  %157 = bitcast <4 x i32> %permil.1.i56.i.i to <2 x i64>, !dbg !875
  call void @llvm.dbg.value(metadata <2 x i64> %157, metadata !739, metadata !DIExpression()) #16, !dbg !873
  %158 = and <2 x i64> %xor.i.1.i55.i.i, <i64 4294967295, i64 4294967295>, !dbg !876
  %159 = and <2 x i64> %157, <i64 4294967295, i64 4294967295>, !dbg !876
  %160 = mul nuw <2 x i64> %159, %158, !dbg !876
  call void @llvm.dbg.value(metadata <2 x i64> %160, metadata !740, metadata !DIExpression()) #16, !dbg !873
  %161 = shufflevector <2 x i64> %155, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !877
  call void @llvm.dbg.value(metadata <2 x i64> %161, metadata !741, metadata !DIExpression()) #16, !dbg !873
  %add.i.1.i58.i.i = add <2 x i64> %143, %161, !dbg !878
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.1.i58.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !873
  %add.i29.1.i.i.i = add <2 x i64> %add.i.1.i58.i.i, %160, !dbg !879
  store <2 x i64> %add.i29.1.i.i.i, <2 x i64>* %.pre-phi117.i.i, align 16, !dbg !880, !tbaa !281, !alias.scope !881, !noalias !882
  call void @llvm.dbg.value(metadata i64 2, metadata !732, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 2, metadata !732, metadata !DIExpression()) #16, !dbg !868
  %add.ptr.2.i.i.i = getelementptr inbounds i8, i8* %add.ptr13.i.i, i64 32, !dbg !883
  %162 = bitcast i8* %add.ptr.2.i.i.i to <2 x i64>*, !dbg !883
  %163 = load <2 x i64>, <2 x i64>* %162, align 1, !dbg !870, !tbaa !281, !alias.scope !871, !noalias !872
  call void @llvm.dbg.value(metadata <2 x i64> %163, metadata !733, metadata !DIExpression()) #16, !dbg !873
  call void @llvm.dbg.value(metadata <2 x i64> <i64 3143064850383918358, i64 -8071399103737053674>, metadata !737, metadata !DIExpression()) #16, !dbg !873
  %xor.i.2.i59.i.i = xor <2 x i64> %163, <i64 3143064850383918358, i64 -8071399103737053674>, !dbg !874
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.2.i59.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !873
  %164 = bitcast <2 x i64> %xor.i.2.i59.i.i to <4 x i32>, !dbg !875
  %permil.2.i60.i.i = shufflevector <4 x i32> %164, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !875
  %165 = bitcast <4 x i32> %permil.2.i60.i.i to <2 x i64>, !dbg !875
  call void @llvm.dbg.value(metadata <2 x i64> %165, metadata !739, metadata !DIExpression()) #16, !dbg !873
  %166 = and <2 x i64> %xor.i.2.i59.i.i, <i64 4294967295, i64 4294967295>, !dbg !876
  %167 = and <2 x i64> %165, <i64 4294967295, i64 4294967295>, !dbg !876
  %168 = mul nuw <2 x i64> %167, %166, !dbg !876
  call void @llvm.dbg.value(metadata <2 x i64> %168, metadata !740, metadata !DIExpression()) #16, !dbg !873
  %169 = shufflevector <2 x i64> %163, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !877
  call void @llvm.dbg.value(metadata <2 x i64> %169, metadata !741, metadata !DIExpression()) #16, !dbg !873
  %add.i.2.i62.i.i = add <2 x i64> %142, %169, !dbg !878
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.2.i62.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !873
  %add.i29.2.i.i.i = add <2 x i64> %add.i.2.i62.i.i, %168, !dbg !879
  store <2 x i64> %add.i29.2.i.i.i, <2 x i64>* %.pre-phi118.i.i, align 16, !dbg !880, !tbaa !281, !alias.scope !881, !noalias !882
  call void @llvm.dbg.value(metadata i64 3, metadata !732, metadata !DIExpression()) #16, !dbg !868
  call void @llvm.dbg.value(metadata i64 3, metadata !732, metadata !DIExpression()) #16, !dbg !868
  %add.ptr.3.i.i.i = getelementptr inbounds i8, i8* %add.ptr13.i.i, i64 48, !dbg !883
  %170 = bitcast i8* %add.ptr.3.i.i.i to <2 x i64>*, !dbg !883
  %171 = load <2 x i64>, <2 x i64>* %170, align 1, !dbg !870, !tbaa !281, !alias.scope !871, !noalias !872
  call void @llvm.dbg.value(metadata <2 x i64> %171, metadata !733, metadata !DIExpression()) #16, !dbg !873
  call void @llvm.dbg.value(metadata <2 x i64> <i64 5030012605302946040, i64 -5825401622958753077>, metadata !737, metadata !DIExpression()) #16, !dbg !873
  %xor.i.3.i63.i.i = xor <2 x i64> %171, <i64 5030012605302946040, i64 -5825401622958753077>, !dbg !874
  call void @llvm.dbg.value(metadata <2 x i64> %xor.i.3.i63.i.i, metadata !738, metadata !DIExpression()) #16, !dbg !873
  %172 = bitcast <2 x i64> %xor.i.3.i63.i.i to <4 x i32>, !dbg !875
  %permil.3.i64.i.i = shufflevector <4 x i32> %172, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>, !dbg !875
  %173 = bitcast <4 x i32> %permil.3.i64.i.i to <2 x i64>, !dbg !875
  call void @llvm.dbg.value(metadata <2 x i64> %173, metadata !739, metadata !DIExpression()) #16, !dbg !873
  %174 = and <2 x i64> %xor.i.3.i63.i.i, <i64 4294967295, i64 4294967295>, !dbg !876
  %175 = and <2 x i64> %173, <i64 4294967295, i64 4294967295>, !dbg !876
  %176 = mul nuw <2 x i64> %175, %174, !dbg !876
  call void @llvm.dbg.value(metadata <2 x i64> %176, metadata !740, metadata !DIExpression()) #16, !dbg !873
  %177 = shufflevector <2 x i64> %171, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !877
  call void @llvm.dbg.value(metadata <2 x i64> %177, metadata !741, metadata !DIExpression()) #16, !dbg !873
  %add.i.3.i66.i.i = add <2 x i64> %141, %177, !dbg !878
  call void @llvm.dbg.value(metadata <2 x i64> %add.i.3.i66.i.i, metadata !742, metadata !DIExpression()) #16, !dbg !873
  %add.i29.3.i.i.i = add <2 x i64> %add.i.3.i66.i.i, %176, !dbg !879
  store <2 x i64> %add.i29.3.i.i.i, <2 x i64>* %.pre-phi119.i.i, align 16, !dbg !880, !tbaa !281, !alias.scope !881, !noalias !882
  call void @llvm.dbg.value(metadata i64 4, metadata !732, metadata !DIExpression()) #16, !dbg !868
  %178 = add <2 x i64> %145, <i64 1, i64 4>
  store <2 x i64> %178, <2 x i64>* bitcast ([2 x i64]* @__llvm_gcov_ctr.27 to <2 x i64>*), align 16, !noalias !815
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 8, !dbg !884, !noalias !600
  %179 = add i64 %gcov_ctr.i, 1, !dbg !884
  store i64 %179, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 8, !dbg !884, !noalias !600
  %mul.i = mul i64 %len, -7046029288634856825, !dbg !886
  %call.i = call fastcc i64 @XXH3_mergeAccs(i64* noundef nonnull %arraydecay.i, i64 noundef %mul.i) #17, !dbg !887, !noalias !600
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #16, !dbg !888, !noalias !600
  ret i64 %call.i, !dbg !889
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(i8* noalias noundef %input, i64 noundef %len) unnamed_addr #3 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata i8* %input, metadata !892, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 %len, metadata !893, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 0), metadata !894, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 undef, metadata !895, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()), !dbg !902
  %mul = mul i64 %len, -7046029288634856825, !dbg !903
  call void @llvm.dbg.value(metadata i64 %mul, metadata !897, metadata !DIExpression()), !dbg !904
  %conv = trunc i64 %len to i32, !dbg !905
  call void @llvm.dbg.value(metadata i32 %conv, metadata !899, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !904
  call void @llvm.dbg.value(metadata i32 0, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 %mul, metadata !897, metadata !DIExpression()), !dbg !904
  br label %for.body, !dbg !906

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %acc.028 = phi i64 [ %mul, %entry ], [ %add, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 %acc.028, metadata !897, metadata !DIExpression()), !dbg !904
  %0 = shl nuw nsw i64 %indvars.iv, 4, !dbg !908
  %add.ptr = getelementptr inbounds i8, i8* %input, i64 %0, !dbg !911
  %add.ptr5 = getelementptr inbounds [192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 %0, !dbg !912
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !913
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !913
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !360, metadata !DIExpression()) #16, !dbg !917
  call void @llvm.dbg.value(metadata i8* %add.ptr5, metadata !365, metadata !DIExpression()) #16, !dbg !917
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !917
  %gcov_ctr.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !913
  %2 = add i64 %gcov_ctr.i.i, 1
  store i64 %2, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !913
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !176, metadata !DIExpression()) #16, !dbg !919
  %call.i.i = tail call fastcc i64 @XXH_read64(i8* noundef %add.ptr) #17, !dbg !921, !noalias !922
  call void @llvm.dbg.value(metadata i64 %call.i.i, metadata !367, metadata !DIExpression()) #16, !dbg !923
  %add.ptr.i = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !924
  %gcov_ctr.i1.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !922
  %3 = add i64 %gcov_ctr.i1.i, 1
  store i64 %3, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !922
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, metadata !176, metadata !DIExpression()) #16, !dbg !925
  %call.i2.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i) #17, !dbg !927, !noalias !922
  call void @llvm.dbg.value(metadata i64 %call.i2.i, metadata !369, metadata !DIExpression()) #16, !dbg !923
  %gcov_ctr.i3.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !922
  %4 = add i64 %gcov_ctr.i3.i, 1
  store i64 %4, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !922
  call void @llvm.dbg.value(metadata i8* %add.ptr5, metadata !176, metadata !DIExpression()) #16, !dbg !928
  %call.i4.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr5) #17, !dbg !930
  %xor.i = xor i64 %call.i4.i, %call.i.i, !dbg !931
  %add.ptr3.i = getelementptr inbounds i8, i8* %add.ptr5, i64 8, !dbg !932
  %gcov_ctr.i5.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %5 = add i64 %gcov_ctr.i5.i, 1
  store i64 %5, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %add.ptr3.i, metadata !176, metadata !DIExpression()) #16, !dbg !933
  %call.i6.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr3.i) #17, !dbg !935
  %xor5.i = xor i64 %call.i6.i, %call.i2.i, !dbg !936
  %call6.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i, i64 noundef %xor5.i) #17, !dbg !937
  %add = add i64 %call6.i, %acc.028, !dbg !938
  call void @llvm.dbg.value(metadata i64 %add, metadata !897, metadata !DIExpression()), !dbg !904
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !939
  %6 = add i64 %gcov_ctr, 1, !dbg !939
  store i64 %6, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !939
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !939
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !901, metadata !DIExpression()), !dbg !904
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !940
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !906, !llvm.loop !941

for.end:                                          ; preds = %for.body
  %gcov_ctr30 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !943
  %7 = add i64 %gcov_ctr30, 1, !dbg !943
  store i64 %7, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !943
  %call6 = tail call fastcc i64 @XXH3_avalanche(i64 noundef %add) #15, !dbg !944
  call void @llvm.dbg.value(metadata i64 %call6, metadata !897, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i32 8, metadata !901, metadata !DIExpression()), !dbg !904
  %cmp830 = icmp sgt i32 %conv, 143, !dbg !945
  br i1 %cmp830, label %for.body10.preheader, label %for.end22, !dbg !948

for.body10.preheader:                             ; preds = %for.end
  %div41 = lshr i64 %len, 4, !dbg !949
  %wide.trip.count = and i64 %div41, 268435455, !dbg !945
  br label %for.body10, !dbg !948

for.body10:                                       ; preds = %for.body10.preheader, %for.body10
  %indvars.iv35 = phi i64 [ 8, %for.body10.preheader ], [ %indvars.iv.next36, %for.body10 ]
  %acc.131 = phi i64 [ %call6, %for.body10.preheader ], [ %add19, %for.body10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv35, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i64 %acc.131, metadata !897, metadata !DIExpression()), !dbg !904
  %8 = shl nsw i64 %indvars.iv35, 4, !dbg !950
  %add.ptr13 = getelementptr inbounds i8, i8* %input, i64 %8, !dbg !952
  %9 = add nsw i64 %8, -128, !dbg !953
  %add.ptr16 = getelementptr inbounds [192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 %9, !dbg !954
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 3, !dbg !955
  %gcov_ctr.i1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !956
  %10 = add i64 %gcov_ctr.i1, 1
  store i64 %10, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !956
  call void @llvm.dbg.value(metadata i8* %add.ptr13, metadata !360, metadata !DIExpression()) #16, !dbg !960
  call void @llvm.dbg.value(metadata i8* %add.ptr17, metadata !365, metadata !DIExpression()) #16, !dbg !960
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !960
  %gcov_ctr.i.i2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !956
  %11 = add i64 %gcov_ctr.i.i2, 1
  store i64 %11, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !956
  call void @llvm.dbg.value(metadata i8* %add.ptr13, metadata !176, metadata !DIExpression()) #16, !dbg !962
  %call.i.i3 = tail call fastcc i64 @XXH_read64(i8* noundef %add.ptr13) #17, !dbg !964, !noalias !965
  call void @llvm.dbg.value(metadata i64 %call.i.i3, metadata !367, metadata !DIExpression()) #16, !dbg !966
  %add.ptr.i4 = getelementptr inbounds i8, i8* %add.ptr13, i64 8, !dbg !967
  %gcov_ctr.i1.i5 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !965
  %12 = add i64 %gcov_ctr.i1.i5, 1
  store i64 %12, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !965
  call void @llvm.dbg.value(metadata i8* %add.ptr.i4, metadata !176, metadata !DIExpression()) #16, !dbg !968
  %call.i2.i6 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i4) #17, !dbg !970, !noalias !965
  call void @llvm.dbg.value(metadata i64 %call.i2.i6, metadata !369, metadata !DIExpression()) #16, !dbg !966
  %gcov_ctr.i3.i7 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !965
  %13 = add i64 %gcov_ctr.i3.i7, 1
  store i64 %13, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !965
  call void @llvm.dbg.value(metadata i8* %add.ptr17, metadata !176, metadata !DIExpression()) #16, !dbg !971
  %call.i4.i8 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr17) #17, !dbg !973
  %xor.i9 = xor i64 %call.i4.i8, %call.i.i3, !dbg !974
  %add.ptr3.i10 = getelementptr inbounds i8, i8* %add.ptr16, i64 11, !dbg !975
  %gcov_ctr.i5.i11 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %14 = add i64 %gcov_ctr.i5.i11, 1
  store i64 %14, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* %add.ptr3.i10, metadata !176, metadata !DIExpression()) #16, !dbg !976
  %call.i6.i12 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr3.i10) #17, !dbg !978
  %xor5.i13 = xor i64 %call.i6.i12, %call.i2.i6, !dbg !979
  %call6.i14 = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i9, i64 noundef %xor5.i13) #17, !dbg !980
  %add19 = add i64 %call6.i14, %acc.131, !dbg !981
  call void @llvm.dbg.value(metadata i64 %add19, metadata !897, metadata !DIExpression()), !dbg !904
  %gcov_ctr31 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !982
  %15 = add i64 %gcov_ctr31, 1, !dbg !982
  store i64 %15, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !982
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !982
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next36, metadata !901, metadata !DIExpression()), !dbg !904
  %exitcond40.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count, !dbg !945
  br i1 %exitcond40.not, label %for.end22, label %for.body10, !dbg !948, !llvm.loop !983

for.end22:                                        ; preds = %for.body10, %for.end
  %acc.1.lcssa = phi i64 [ %call6, %for.end ], [ %add19, %for.body10 ], !dbg !904
  %add.ptr23 = getelementptr inbounds i8, i8* %input, i64 %len, !dbg !985
  %add.ptr24 = getelementptr inbounds i8, i8* %add.ptr23, i64 -16, !dbg !986
  %gcov_ctr.i15 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !987
  %16 = add i64 %gcov_ctr.i15, 1
  store i64 %16, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8, !noalias !987
  call void @llvm.dbg.value(metadata i8* %add.ptr24, metadata !360, metadata !DIExpression()) #16, !dbg !991
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 119), metadata !365, metadata !DIExpression()) #16, !dbg !991
  call void @llvm.dbg.value(metadata i64 0, metadata !366, metadata !DIExpression()) #16, !dbg !991
  %gcov_ctr.i.i16 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !987
  %17 = add i64 %gcov_ctr.i.i16, 1
  store i64 %17, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !987
  call void @llvm.dbg.value(metadata i8* %add.ptr24, metadata !176, metadata !DIExpression()) #16, !dbg !993
  %call.i.i17 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr24) #17, !dbg !995, !noalias !996
  call void @llvm.dbg.value(metadata i64 %call.i.i17, metadata !367, metadata !DIExpression()) #16, !dbg !997
  %add.ptr.i18 = getelementptr inbounds i8, i8* %add.ptr24, i64 8, !dbg !998
  %gcov_ctr.i1.i19 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !996
  %18 = add i64 %gcov_ctr.i1.i19, 1
  store i64 %18, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !996
  call void @llvm.dbg.value(metadata i8* %add.ptr.i18, metadata !176, metadata !DIExpression()) #16, !dbg !999
  %call.i2.i20 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull %add.ptr.i18) #17, !dbg !1001, !noalias !996
  call void @llvm.dbg.value(metadata i64 %call.i2.i20, metadata !369, metadata !DIExpression()) #16, !dbg !997
  %gcov_ctr.i3.i21 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !996
  %19 = add i64 %gcov_ctr.i3.i21, 1
  store i64 %19, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !996
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 119), metadata !176, metadata !DIExpression()) #16, !dbg !1002
  %call.i4.i22 = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 119)) #17, !dbg !1004
  %xor.i23 = xor i64 %call.i4.i22, %call.i.i17, !dbg !1005
  %gcov_ctr.i5.i24 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  %20 = add i64 %gcov_ctr.i5.i24, 1
  store i64 %20, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 127), metadata !176, metadata !DIExpression()) #16, !dbg !1006
  %call.i6.i25 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 127)) #17, !dbg !1008
  %xor5.i26 = xor i64 %call.i6.i25, %call.i2.i20, !dbg !1009
  %call6.i27 = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i23, i64 noundef %xor5.i26) #17, !dbg !1010
  %add28 = add i64 %call6.i27, %acc.1.lcssa, !dbg !1011
  call void @llvm.dbg.value(metadata i64 %add28, metadata !897, metadata !DIExpression()), !dbg !904
  %call29 = tail call fastcc i64 @XXH3_avalanche(i64 noundef %add28) #15, !dbg !1012
  ret i64 %call29, !dbg !1013
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @XXH64_avalanche(i64 noundef %h64) unnamed_addr #0 !dbg !1014 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %h64, metadata !1018, metadata !DIExpression()), !dbg !1019
  %shr = lshr i64 %h64, 33, !dbg !1020
  %xor = xor i64 %shr, %h64, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %xor, metadata !1018, metadata !DIExpression()), !dbg !1019
  %mul = mul i64 %xor, -4417276706812531889, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1018, metadata !DIExpression()), !dbg !1019
  %shr1 = lshr i64 %mul, 29, !dbg !1023
  %xor2 = xor i64 %shr1, %mul, !dbg !1024
  call void @llvm.dbg.value(metadata i64 %xor2, metadata !1018, metadata !DIExpression()), !dbg !1019
  %mul3 = mul i64 %xor2, 1609587929392839161, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %mul3, metadata !1018, metadata !DIExpression()), !dbg !1019
  %shr4 = lshr i64 %mul3, 32, !dbg !1026
  %xor5 = xor i64 %shr4, %mul3, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %xor5, metadata !1018, metadata !DIExpression()), !dbg !1019
  ret i64 %xor5, !dbg !1028
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i64 @XXH_swap64(i64 noundef %x) unnamed_addr #6 !dbg !1029 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %x, metadata !1031, metadata !DIExpression()), !dbg !1032
  %or19 = tail call i64 @llvm.bswap.i64(i64 %x), !dbg !1033
  ret i64 %or19, !dbg !1034
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @XXH3_mul128_fold64(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #0 !dbg !1035 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %lhs, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %rhs, metadata !1040, metadata !DIExpression()), !dbg !1047
  %call = tail call fastcc { i64, i64 } @XXH_mult64to128(i64 noundef %lhs, i64 noundef %rhs) #15, !dbg !1048
  %1 = extractvalue { i64, i64 } %call, 0, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %1, metadata !1041, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1047
  %2 = extractvalue { i64, i64 } %call, 1, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %2, metadata !1041, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1047
  %xor = xor i64 %1, %2, !dbg !1049
  ret i64 %xor, !dbg !1050
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @XXH3_avalanche(i64 noundef %h64) unnamed_addr #0 !dbg !1051 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %h64, metadata !1055, metadata !DIExpression()), !dbg !1056
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %h64, metadata !1057, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i32 37, metadata !1062, metadata !DIExpression()), !dbg !1063
  %shr.i = lshr i64 %h64, 37, !dbg !1065
  %xor.i = xor i64 %shr.i, %h64, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %xor.i, metadata !1055, metadata !DIExpression()), !dbg !1056
  %mul = mul i64 %xor.i, 1609587791953885689, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1055, metadata !DIExpression()), !dbg !1056
  %1 = add i64 %gcov_ctr.i, 2
  store i64 %1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i32 32, metadata !1062, metadata !DIExpression()), !dbg !1068
  %shr.i6 = lshr i64 %mul, 32, !dbg !1070
  %xor.i7 = xor i64 %shr.i6, %mul, !dbg !1071
  call void @llvm.dbg.value(metadata i64 %xor.i7, metadata !1055, metadata !DIExpression()), !dbg !1056
  ret i64 %xor.i7, !dbg !1072
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc { i64, i64 } @XXH_mult64to128(i64 noundef %lhs, i64 noundef %rhs) unnamed_addr #0 !dbg !1073 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %lhs, metadata !1077, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %rhs, metadata !1078, metadata !DIExpression()), !dbg !1082
  %conv = zext i64 %lhs to i128, !dbg !1083
  %conv1 = zext i64 %rhs to i128, !dbg !1084
  %mul = mul nuw i128 %conv1, %conv, !dbg !1085
  call void @llvm.dbg.value(metadata i128 %mul, metadata !1079, metadata !DIExpression()), !dbg !1082
  %conv2 = trunc i128 %mul to i64, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %conv2, metadata !1081, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1082
  %shr = lshr i128 %mul, 64, !dbg !1087
  %conv3 = trunc i128 %shr to i64, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !1081, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1082
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %conv2, 0, !dbg !1089
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %conv3, 1, !dbg !1089
  ret { i64, i64 } %.fca.1.insert, !dbg !1089
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @XXH_swap32() unnamed_addr #0 !dbg !1090 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !1094, metadata !DIExpression()), !dbg !1095
  ret void, !dbg !1096
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal fastcc i64 @XXH3_rrmxmx(i64 noundef %h64, i64 noundef %len) unnamed_addr #6 !dbg !1097 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %h64, metadata !1101, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %len, metadata !1102, metadata !DIExpression()), !dbg !1103
  %1 = tail call i64 @llvm.fshl.i64(i64 %h64, i64 %h64, i64 49), !dbg !1104
  %2 = tail call i64 @llvm.fshl.i64(i64 %h64, i64 %h64, i64 24), !dbg !1105
  %xor = xor i64 %2, %h64, !dbg !1106
  %xor1 = xor i64 %xor, %1, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %xor1, metadata !1101, metadata !DIExpression()), !dbg !1103
  %mul = mul i64 %xor1, -6939452855193903323, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %mul, metadata !1101, metadata !DIExpression()), !dbg !1103
  %shr = lshr i64 %mul, 35, !dbg !1109
  %add = add i64 %shr, %len, !dbg !1110
  %xor2 = xor i64 %add, %mul, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %xor2, metadata !1101, metadata !DIExpression()), !dbg !1103
  %mul3 = mul i64 %xor2, -6939452855193903323, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %mul3, metadata !1101, metadata !DIExpression()), !dbg !1103
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64 %mul3, metadata !1057, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i32 28, metadata !1062, metadata !DIExpression()), !dbg !1113
  %shr.i = lshr i64 %mul3, 28, !dbg !1115
  %xor.i = xor i64 %shr.i, %mul3, !dbg !1116
  ret i64 %xor.i, !dbg !1117
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @XXH_read32(i8* noundef %memPtr) unnamed_addr #3 !dbg !1118 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 8
  %val = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %memPtr, metadata !1120, metadata !DIExpression()), !dbg !1122
  %1 = bitcast i32* %val to i8*, !dbg !1123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #16, !dbg !1123
  call void @llvm.dbg.value(metadata i32* %val, metadata !1121, metadata !DIExpression(DW_OP_deref)), !dbg !1122
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %memPtr, i64 noundef 4) #17, !dbg !1124
  %2 = load i32, i32* %val, align 4, !dbg !1125, !tbaa !1126
  call void @llvm.dbg.value(metadata i32 %2, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #16, !dbg !1127
  ret i32 %2, !dbg !1128
}

; Function Attrs: nounwind
declare !dbg !1129 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH_read64(i8* noundef %memPtr) unnamed_addr #3 !dbg !1134 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  %val = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %memPtr, metadata !1136, metadata !DIExpression()), !dbg !1138
  %1 = bitcast i64* %val to i8*, !dbg !1139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #16, !dbg !1139
  call void @llvm.dbg.value(metadata i64* %val, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !1138
  %call = call i8* @memcpy(i8* noundef nonnull %1, i8* noundef %memPtr, i64 noundef 8) #17, !dbg !1140
  %2 = load i64, i64* %val, align 8, !dbg !1141, !tbaa !1142
  call void @llvm.dbg.value(metadata i64 %2, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #16, !dbg !1143
  ret i64 %2, !dbg !1144
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @XXH3_mergeAccs(i64* noalias nocapture noundef readonly %acc, i64 noundef %start) unnamed_addr #3 !dbg !1145 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i64* %acc, metadata !1151, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 11), metadata !1152, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %start, metadata !1153, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %start, metadata !1154, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 0, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 0, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 0, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %start, metadata !1154, metadata !DIExpression()), !dbg !1156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157), !dbg !1160
  %gcov_ctr.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1164
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1164
  call void @llvm.dbg.value(metadata i64* %acc, metadata !1166, metadata !DIExpression()) #16, !dbg !1172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 11), metadata !1171, metadata !DIExpression()) #16, !dbg !1172
  %2 = load i64, i64* %acc, align 8, !dbg !1174, !tbaa !1142, !alias.scope !1157, !noalias !1175
  %gcov_ctr.i.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1164
  %3 = add i64 %gcov_ctr.i.i, 1
  store i64 %3, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1164
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 11), metadata !176, metadata !DIExpression()) #16, !dbg !1176
  %call.i.i = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 11)) #17, !dbg !1178, !noalias !1157
  %xor.i = xor i64 %call.i.i, %2, !dbg !1179
  %arrayidx1.i = getelementptr inbounds i64, i64* %acc, i64 1, !dbg !1180
  %4 = load i64, i64* %arrayidx1.i, align 8, !dbg !1180, !tbaa !1142, !alias.scope !1157, !noalias !1175
  %gcov_ctr.i7.i = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1157
  %5 = add i64 %gcov_ctr.i7.i, 1
  store i64 %5, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1157
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 19), metadata !176, metadata !DIExpression()) #16, !dbg !1181
  %call.i8.i = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 19)) #17, !dbg !1183, !noalias !1157
  %xor3.i = xor i64 %call.i8.i, %4, !dbg !1184
  %call4.i = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i, i64 noundef %xor3.i) #17, !dbg !1185, !noalias !1157
  %add = add i64 %call4.i, %start, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %add, metadata !1154, metadata !DIExpression()), !dbg !1156
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  %6 = add i64 %gcov_ctr4, 1, !dbg !1187
  store i64 %6, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  call void @llvm.dbg.value(metadata i64 1, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 1, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %add, metadata !1154, metadata !DIExpression()), !dbg !1156
  %add.ptr.1 = getelementptr inbounds i64, i64* %acc, i64 2, !dbg !1188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189), !dbg !1160
  %gcov_ctr.i.1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1191
  %7 = add i64 %gcov_ctr.i.1, 1
  store i64 %7, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1191
  call void @llvm.dbg.value(metadata i64* %add.ptr.1, metadata !1166, metadata !DIExpression()) #16, !dbg !1172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 27), metadata !1171, metadata !DIExpression()) #16, !dbg !1172
  %8 = load i64, i64* %add.ptr.1, align 8, !dbg !1174, !tbaa !1142, !alias.scope !1189, !noalias !1175
  %gcov_ctr.i.i.1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1191
  %9 = add i64 %gcov_ctr.i.i.1, 1
  store i64 %9, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1191
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 27), metadata !176, metadata !DIExpression()) #16, !dbg !1176
  %call.i.i.1 = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 27)) #17, !dbg !1178, !noalias !1189
  %xor.i.1 = xor i64 %call.i.i.1, %8, !dbg !1179
  %arrayidx1.i.1 = getelementptr inbounds i64, i64* %acc, i64 3, !dbg !1180
  %10 = load i64, i64* %arrayidx1.i.1, align 8, !dbg !1180, !tbaa !1142, !alias.scope !1189, !noalias !1175
  %gcov_ctr.i7.i.1 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1189
  %11 = add i64 %gcov_ctr.i7.i.1, 1
  store i64 %11, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1189
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 35), metadata !176, metadata !DIExpression()) #16, !dbg !1181
  %call.i8.i.1 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 35)) #17, !dbg !1183, !noalias !1189
  %xor3.i.1 = xor i64 %call.i8.i.1, %10, !dbg !1184
  %call4.i.1 = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i.1, i64 noundef %xor3.i.1) #17, !dbg !1185, !noalias !1189
  %add.1 = add i64 %call4.i.1, %add, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %add.1, metadata !1154, metadata !DIExpression()), !dbg !1156
  %gcov_ctr4.1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  %12 = add i64 %gcov_ctr4.1, 1, !dbg !1187
  store i64 %12, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  call void @llvm.dbg.value(metadata i64 2, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 2, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %add.1, metadata !1154, metadata !DIExpression()), !dbg !1156
  %add.ptr.2 = getelementptr inbounds i64, i64* %acc, i64 4, !dbg !1188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192), !dbg !1160
  %gcov_ctr.i.2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1194
  %13 = add i64 %gcov_ctr.i.2, 1
  store i64 %13, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1194
  call void @llvm.dbg.value(metadata i64* %add.ptr.2, metadata !1166, metadata !DIExpression()) #16, !dbg !1172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 43), metadata !1171, metadata !DIExpression()) #16, !dbg !1172
  %14 = load i64, i64* %add.ptr.2, align 8, !dbg !1174, !tbaa !1142, !alias.scope !1192, !noalias !1175
  %gcov_ctr.i.i.2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1194
  %15 = add i64 %gcov_ctr.i.i.2, 1
  store i64 %15, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1194
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 43), metadata !176, metadata !DIExpression()) #16, !dbg !1176
  %call.i.i.2 = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 43)) #17, !dbg !1178, !noalias !1192
  %xor.i.2 = xor i64 %call.i.i.2, %14, !dbg !1179
  %arrayidx1.i.2 = getelementptr inbounds i64, i64* %acc, i64 5, !dbg !1180
  %16 = load i64, i64* %arrayidx1.i.2, align 8, !dbg !1180, !tbaa !1142, !alias.scope !1192, !noalias !1175
  %gcov_ctr.i7.i.2 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1192
  %17 = add i64 %gcov_ctr.i7.i.2, 1
  store i64 %17, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 51), metadata !176, metadata !DIExpression()) #16, !dbg !1181
  %call.i8.i.2 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 51)) #17, !dbg !1183, !noalias !1192
  %xor3.i.2 = xor i64 %call.i8.i.2, %16, !dbg !1184
  %call4.i.2 = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i.2, i64 noundef %xor3.i.2) #17, !dbg !1185, !noalias !1192
  %add.2 = add i64 %call4.i.2, %add.1, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %add.2, metadata !1154, metadata !DIExpression()), !dbg !1156
  %gcov_ctr4.2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  %18 = add i64 %gcov_ctr4.2, 1, !dbg !1187
  store i64 %18, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  call void @llvm.dbg.value(metadata i64 3, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 3, metadata !1155, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %add.2, metadata !1154, metadata !DIExpression()), !dbg !1156
  %add.ptr.3 = getelementptr inbounds i64, i64* %acc, i64 6, !dbg !1188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195), !dbg !1160
  %gcov_ctr.i.3 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1197
  %19 = add i64 %gcov_ctr.i.3, 1
  store i64 %19, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8, !noalias !1197
  call void @llvm.dbg.value(metadata i64* %add.ptr.3, metadata !1166, metadata !DIExpression()) #16, !dbg !1172
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 59), metadata !1171, metadata !DIExpression()) #16, !dbg !1172
  %20 = load i64, i64* %add.ptr.3, align 8, !dbg !1174, !tbaa !1142, !alias.scope !1195, !noalias !1175
  %gcov_ctr.i.i.3 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1197
  %21 = add i64 %gcov_ctr.i.i.3, 1
  store i64 %21, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1197
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 59), metadata !176, metadata !DIExpression()) #16, !dbg !1176
  %call.i.i.3 = tail call fastcc i64 @XXH_read64(i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 59)) #17, !dbg !1178, !noalias !1195
  %xor.i.3 = xor i64 %call.i.i.3, %20, !dbg !1179
  %arrayidx1.i.3 = getelementptr inbounds i64, i64* %acc, i64 7, !dbg !1180
  %22 = load i64, i64* %arrayidx1.i.3, align 8, !dbg !1180, !tbaa !1142, !alias.scope !1195, !noalias !1175
  %gcov_ctr.i7.i.3 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1195
  %23 = add i64 %gcov_ctr.i7.i.3, 1
  store i64 %23, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8, !noalias !1195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 67), metadata !176, metadata !DIExpression()) #16, !dbg !1181
  %call.i8.i.3 = tail call fastcc i64 @XXH_read64(i8* noundef nonnull getelementptr inbounds ([192 x i8], [192 x i8]* @XXH3_kSecret, i64 0, i64 67)) #17, !dbg !1183, !noalias !1195
  %xor3.i.3 = xor i64 %call.i8.i.3, %22, !dbg !1184
  %call4.i.3 = tail call fastcc i64 @XXH3_mul128_fold64(i64 noundef %xor.i.3, i64 noundef %xor3.i.3) #17, !dbg !1185, !noalias !1195
  %add.3 = add i64 %call4.i.3, %add.2, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %add.3, metadata !1154, metadata !DIExpression()), !dbg !1156
  %gcov_ctr4.3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  %24 = add i64 %gcov_ctr4.3, 1, !dbg !1187
  store i64 %24, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 1), align 8, !dbg !1187
  call void @llvm.dbg.value(metadata i64 4, metadata !1155, metadata !DIExpression()), !dbg !1156
  %call3 = tail call fastcc i64 @XXH3_avalanche(i64 noundef %add.3) #15, !dbg !1198
  ret i64 %call3, !dbg !1199
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #10 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i32 875575338, i32 -295098680) #16
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [31 x %emit_function_args_ty], [31 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [31 x %emit_function_args_ty], [31 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [31 x %emit_function_args_ty], [31 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #16
  %3 = getelementptr inbounds [31 x %emit_arcs_args_ty], [31 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [31 x %emit_arcs_args_ty], [31 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #16
  tail call void @llvm_gcda_end_file() #16
  ret void
}

declare void @llvm_gcda_start_file(i8*, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly
define internal void @__llvm_gcov_reset() unnamed_addr #11 {
entry:
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.5 to i8*), i8 0, i64 32, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.7 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x i64]* @__llvm_gcov_ctr.8 to i8*), i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.9 to i8*), i8 0, i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.15, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.16, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.17, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.18, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.19, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.20, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.21, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.22, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.23, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.24, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.25, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.26, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.27 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.28 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.29 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.30 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.31 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #10 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #16
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="128" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #10 = { noinline nounwind uwtable }
attributes #11 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #12 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #13 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin nounwind "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!73, !74, !75, !76}
!llvm.gcov = !{!77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hash", scope: !2, file: !3, line: 9, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hash.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "a416e9d32a6ff5488b0e80d57d2784a0")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hashfunc_type", file: !6, line: 7, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./hash.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "7bf64ed462fb4e5d2a6ceb2b3243c634")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "JENKINS_HASH", value: 0)
!10 = !DIEnumerator(name: "MURMUR3_HASH", value: 1)
!11 = !DIEnumerator(name: "XXH3_HASH", value: 2)
!12 = !{!13, !17, !24, !27, !32, !34, !35, !42, !36, !44, !49, !55, !58}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !7)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xxh_u8", file: !20, line: 1426, baseType: !21)
!20 = !DIFile(filename: "./xxhash.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "573e63a686bcc82fe34b64d32d9185b2")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 24, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 38, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint128_t", file: !25, baseType: !26)
!25 = !DIFile(filename: "hash.c", directory: "/home/xuheng/blackbox/llvm-test/memcached")
!26 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xxh_u64", file: !20, line: 2141, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH64_hash_t", file: !20, line: 567, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !31)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xxh_u32", file: !20, line: 1430, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH32_hash_t", file: !20, line: 304, baseType: !13)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i", file: !37, line: 20, baseType: !38, align: 128)
!37 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/emmintrin.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "3b885b350ea7fd76ea9c80227854a50a")
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, flags: DIFlagVector, elements: !40)
!39 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!40 = !{!41}
!41 = !DISubrange(count: 2)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v4si", file: !45, line: 19, baseType: !46)
!45 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/xmmintrin.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "8d7b5ddd9f1174cb1d61f3313da7a7e7")
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, flags: DIFlagVector, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 4)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__loadu_si128", file: !37, line: 3554, size: 128, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__v", scope: !51, file: !37, line: 3555, baseType: !54, size: 128, align: 8)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__m128i_u", file: !37, line: 23, baseType: !38, align: 8)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2du", file: !37, line: 32, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, flags: DIFlagVector, elements: !40)
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__v2di", file: !37, line: 27, baseType: !38)
!59 = !{!0, !60}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "XXH3_kSecret", scope: !2, file: !20, line: 3042, type: !62, isLocal: true, isDefinition: true, align: 512)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1536, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "hash_func", file: !6, line: 4, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!13, !69, !71}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !31)
!72 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{!"/home/xuheng/blackbox/llvm-test/memcached/hash.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/hash.gcda", !2}
!78 = !{!"clang version 14.0.0"}
!79 = distinct !DISubprogram(name: "hash_init", scope: !3, file: !3, line: 15, type: !80, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{!34, !5}
!82 = !{!83}
!83 = !DILocalVariable(name: "type", arg: 1, scope: !79, file: !3, line: 15, type: !5)
!84 = !DILocation(line: 0, scope: !79)
!85 = !DILocation(line: 16, column: 5, scope: !79)
!86 = !DILocation(line: 18, column: 18, scope: !87)
!87 = distinct !DILexicalBlock(scope: !79, file: !3, line: 16, column: 18)
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !DILocation(line: 19, column: 37, scope: !87)
!93 = !{!94, !89, i64 184}
!94 = !{!"settings", !95, i64 0, !96, i64 8, !96, i64 12, !96, i64 16, !89, i64 24, !96, i64 32, !96, i64 36, !95, i64 40, !96, i64 48, !89, i64 56, !89, i64 64, !96, i64 72, !97, i64 80, !96, i64 88, !96, i64 92, !96, i64 96, !90, i64 100, !96, i64 104, !96, i64 108, !98, i64 112, !90, i64 116, !96, i64 120, !96, i64 124, !96, i64 128, !96, i64 132, !96, i64 136, !98, i64 140, !98, i64 141, !98, i64 142, !98, i64 143, !98, i64 144, !98, i64 145, !96, i64 148, !97, i64 152, !96, i64 160, !96, i64 164, !98, i64 168, !96, i64 172, !98, i64 176, !98, i64 177, !89, i64 184, !96, i64 192, !96, i64 196, !96, i64 200, !96, i64 204, !97, i64 208, !97, i64 216, !96, i64 224, !98, i64 228, !96, i64 232, !96, i64 236, !96, i64 240, !96, i64 244, !96, i64 248, !98, i64 252, !98, i64 253, !98, i64 254, !98, i64 255, !96, i64 256, !96, i64 260, !96, i64 264, !96, i64 268, !96, i64 272, !96, i64 276, !96, i64 280, !96, i64 284, !96, i64 288, !96, i64 292, !97, i64 296, !97, i64 304, !98, i64 312, !96, i64 316, !96, i64 320, !89, i64 328, !96, i64 336}
!95 = !{!"long", !90, i64 0}
!96 = !{!"int", !90, i64 0}
!97 = !{!"double", !90, i64 0}
!98 = !{!"_Bool", !90, i64 0}
!99 = !DILocation(line: 20, column: 13, scope: !87)
!100 = !DILocation(line: 22, column: 18, scope: !87)
!101 = !DILocation(line: 23, column: 37, scope: !87)
!102 = !DILocation(line: 24, column: 13, scope: !87)
!103 = !DILocation(line: 26, column: 18, scope: !87)
!104 = !DILocation(line: 27, column: 37, scope: !87)
!105 = !DILocation(line: 28, column: 13, scope: !87)
!106 = !DILocation(line: 30, column: 13, scope: !87)
!107 = !DILocation(line: 33, column: 1, scope: !79)
!108 = distinct !DISubprogram(name: "XXH3_hash", scope: !3, file: !3, line: 11, type: !67, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!109 = !{!110, !111}
!110 = !DILocalVariable(name: "key", arg: 1, scope: !108, file: !3, line: 11, type: !69)
!111 = !DILocalVariable(name: "length", arg: 2, scope: !108, file: !3, line: 11, type: !71)
!112 = !DILocation(line: 0, scope: !108)
!113 = !DILocation(line: 12, column: 22, scope: !108)
!114 = !DILocation(line: 12, column: 12, scope: !108)
!115 = !DILocation(line: 12, column: 5, scope: !108)
!116 = distinct !DISubprogram(name: "XXH_INLINE_XXH3_64bits", scope: !20, file: !20, line: 4404, type: !117, scopeLine: 4405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!28, !69, !71}
!119 = !{!120, !121}
!120 = !DILocalVariable(name: "input", arg: 1, scope: !116, file: !20, line: 4404, type: !69)
!121 = !DILocalVariable(name: "len", arg: 2, scope: !116, file: !20, line: 4404, type: !71)
!122 = !DILocation(line: 0, scope: !116)
!123 = !DILocalVariable(name: "input", arg: 1, scope: !124, file: !20, line: 4379, type: !127)
!124 = distinct !DISubprogram(name: "XXH3_64bits_internal", scope: !20, file: !20, line: 4379, type: !125, scopeLine: 4382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!125 = !DISubroutineType(types: !126)
!126 = !{!28, !127, !71, !28, !127, !71, !128}
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH3_hashLong64_f", file: !20, line: 4375, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!28, !127, !71, !28, !132, !71}
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!133 = !{!123, !134, !135, !136, !137, !138}
!134 = !DILocalVariable(name: "len", arg: 2, scope: !124, file: !20, line: 4379, type: !71)
!135 = !DILocalVariable(name: "seed64", arg: 3, scope: !124, file: !20, line: 4380, type: !28)
!136 = !DILocalVariable(name: "secret", arg: 4, scope: !124, file: !20, line: 4380, type: !127)
!137 = !DILocalVariable(name: "secretLen", arg: 5, scope: !124, file: !20, line: 4380, type: !71)
!138 = !DILocalVariable(name: "f_hashLong", arg: 6, scope: !124, file: !20, line: 4381, type: !128)
!139 = !DILocation(line: 0, scope: !124, inlinedAt: !140)
!140 = distinct !DILocation(line: 4406, column: 12, scope: !116)
!141 = !DILocation(line: 4391, column: 13, scope: !142, inlinedAt: !140)
!142 = distinct !DILexicalBlock(scope: !124, file: !20, line: 4391, column: 9)
!143 = !DILocation(line: 4391, column: 9, scope: !124, inlinedAt: !140)
!144 = !DILocation(line: 4392, column: 50, scope: !142, inlinedAt: !140)
!145 = !DILocalVariable(name: "input", arg: 1, scope: !146, file: !20, line: 3357, type: !17)
!146 = distinct !DISubprogram(name: "XXH3_len_0to16_64b", scope: !20, file: !20, line: 3357, type: !147, scopeLine: 3358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !149)
!147 = !DISubroutineType(types: !148)
!148 = !{!28, !17, !71, !17, !28}
!149 = !{!145, !150, !151, !152}
!150 = !DILocalVariable(name: "len", arg: 2, scope: !146, file: !20, line: 3357, type: !71)
!151 = !DILocalVariable(name: "secret", arg: 3, scope: !146, file: !20, line: 3357, type: !17)
!152 = !DILocalVariable(name: "seed", arg: 4, scope: !146, file: !20, line: 3357, type: !28)
!153 = !DILocation(line: 0, scope: !146, inlinedAt: !154)
!154 = distinct !DILocation(line: 4392, column: 16, scope: !142, inlinedAt: !140)
!155 = !DILocation(line: 3360, column: 13, scope: !156, inlinedAt: !154)
!156 = distinct !DILexicalBlock(scope: !157, file: !20, line: 3360, column: 13)
!157 = distinct !DILexicalBlock(scope: !146, file: !20, line: 3360, column: 5)
!158 = !DILocation(line: 3360, column: 13, scope: !157, inlinedAt: !154)
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !DILocation(line: 3360, column: 61, scope: !156, inlinedAt: !154)
!161 = !DILocalVariable(name: "input", arg: 1, scope: !162, file: !20, line: 3340, type: !17)
!162 = distinct !DISubprogram(name: "XXH3_len_9to16_64b", scope: !20, file: !20, line: 3340, type: !147, scopeLine: 3341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!163 = !{!161, !164, !165, !166, !167, !170, !171, !172, !173}
!164 = !DILocalVariable(name: "len", arg: 2, scope: !162, file: !20, line: 3340, type: !71)
!165 = !DILocalVariable(name: "secret", arg: 3, scope: !162, file: !20, line: 3340, type: !17)
!166 = !DILocalVariable(name: "seed", arg: 4, scope: !162, file: !20, line: 3340, type: !28)
!167 = !DILocalVariable(name: "bitflip1", scope: !168, file: !20, line: 3345, type: !169)
!168 = distinct !DILexicalBlock(scope: !162, file: !20, line: 3345, column: 5)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!170 = !DILocalVariable(name: "bitflip2", scope: !168, file: !20, line: 3346, type: !169)
!171 = !DILocalVariable(name: "input_lo", scope: !168, file: !20, line: 3347, type: !169)
!172 = !DILocalVariable(name: "input_hi", scope: !168, file: !20, line: 3348, type: !169)
!173 = !DILocalVariable(name: "acc", scope: !168, file: !20, line: 3349, type: !169)
!174 = !DILocation(line: 0, scope: !162, inlinedAt: !175)
!175 = distinct !DILocation(line: 3360, column: 42, scope: !156, inlinedAt: !154)
!176 = !DILocalVariable(name: "ptr", arg: 1, scope: !177, file: !20, line: 2241, type: !69)
!177 = distinct !DISubprogram(name: "XXH_readLE64", scope: !20, file: !20, line: 2241, type: !178, scopeLine: 2242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!27, !69}
!180 = !{!176}
!181 = !DILocation(line: 0, scope: !177, inlinedAt: !182)
!182 = distinct !DILocation(line: 3345, column: 35, scope: !168, inlinedAt: !175)
!183 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !182)
!184 = !DILocation(line: 0, scope: !177, inlinedAt: !185)
!185 = distinct !DILocation(line: 3345, column: 61, scope: !168, inlinedAt: !175)
!186 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !185)
!187 = !DILocation(line: 3345, column: 59, scope: !168, inlinedAt: !175)
!188 = !DILocation(line: 0, scope: !168, inlinedAt: !175)
!189 = !DILocation(line: 0, scope: !177, inlinedAt: !190)
!190 = distinct !DILocation(line: 3346, column: 35, scope: !168, inlinedAt: !175)
!191 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !190)
!192 = !DILocation(line: 0, scope: !177, inlinedAt: !193)
!193 = distinct !DILocation(line: 3346, column: 61, scope: !168, inlinedAt: !175)
!194 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !193)
!195 = !DILocation(line: 3346, column: 59, scope: !168, inlinedAt: !175)
!196 = !DILocation(line: 0, scope: !177, inlinedAt: !197)
!197 = distinct !DILocation(line: 3347, column: 34, scope: !168, inlinedAt: !175)
!198 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !197)
!199 = !DILocation(line: 3347, column: 64, scope: !168, inlinedAt: !175)
!200 = !DILocation(line: 3348, column: 53, scope: !168, inlinedAt: !175)
!201 = !DILocation(line: 3348, column: 59, scope: !168, inlinedAt: !175)
!202 = !DILocation(line: 0, scope: !177, inlinedAt: !203)
!203 = distinct !DILocation(line: 3348, column: 34, scope: !168, inlinedAt: !175)
!204 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !203)
!205 = !DILocation(line: 3348, column: 64, scope: !168, inlinedAt: !175)
!206 = !DILocation(line: 3350, column: 29, scope: !168, inlinedAt: !175)
!207 = !DILocation(line: 3350, column: 27, scope: !168, inlinedAt: !175)
!208 = !DILocation(line: 3350, column: 50, scope: !168, inlinedAt: !175)
!209 = !DILocation(line: 3351, column: 29, scope: !168, inlinedAt: !175)
!210 = !DILocation(line: 3351, column: 27, scope: !168, inlinedAt: !175)
!211 = !DILocation(line: 3352, column: 16, scope: !168, inlinedAt: !175)
!212 = !DILocation(line: 3360, column: 35, scope: !156, inlinedAt: !154)
!213 = !DILocation(line: 3361, column: 13, scope: !214, inlinedAt: !154)
!214 = distinct !DILexicalBlock(scope: !157, file: !20, line: 3361, column: 13)
!215 = !DILocation(line: 3361, column: 13, scope: !157, inlinedAt: !154)
!216 = !DILocation(line: 3361, column: 60, scope: !214, inlinedAt: !154)
!217 = !DILocalVariable(name: "input", arg: 1, scope: !218, file: !20, line: 3324, type: !17)
!218 = distinct !DISubprogram(name: "XXH3_len_4to8_64b", scope: !20, file: !20, line: 3324, type: !147, scopeLine: 3325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!219 = !{!217, !220, !221, !222, !223, !226, !227, !228, !229}
!220 = !DILocalVariable(name: "len", arg: 2, scope: !218, file: !20, line: 3324, type: !71)
!221 = !DILocalVariable(name: "secret", arg: 3, scope: !218, file: !20, line: 3324, type: !17)
!222 = !DILocalVariable(name: "seed", arg: 4, scope: !218, file: !20, line: 3324, type: !28)
!223 = !DILocalVariable(name: "input1", scope: !224, file: !20, line: 3330, type: !225)
!224 = distinct !DILexicalBlock(scope: !218, file: !20, line: 3330, column: 5)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!226 = !DILocalVariable(name: "input2", scope: !224, file: !20, line: 3331, type: !225)
!227 = !DILocalVariable(name: "bitflip", scope: !224, file: !20, line: 3332, type: !169)
!228 = !DILocalVariable(name: "input64", scope: !224, file: !20, line: 3333, type: !169)
!229 = !DILocalVariable(name: "keyed", scope: !224, file: !20, line: 3334, type: !169)
!230 = !DILocation(line: 0, scope: !218, inlinedAt: !231)
!231 = distinct !DILocation(line: 3361, column: 42, scope: !214, inlinedAt: !154)
!232 = !DILocation(line: 3329, column: 22, scope: !218, inlinedAt: !231)
!233 = !DILocalVariable(name: "ptr", arg: 1, scope: !234, file: !20, line: 1689, type: !69)
!234 = distinct !DISubprogram(name: "XXH_readLE32", scope: !20, file: !20, line: 1689, type: !235, scopeLine: 1690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!32, !69}
!237 = !{!233}
!238 = !DILocation(line: 0, scope: !234, inlinedAt: !239)
!239 = distinct !DILocation(line: 3330, column: 32, scope: !224, inlinedAt: !231)
!240 = !DILocation(line: 1691, column: 36, scope: !234, inlinedAt: !239)
!241 = !DILocation(line: 0, scope: !224, inlinedAt: !231)
!242 = !DILocation(line: 3331, column: 51, scope: !224, inlinedAt: !231)
!243 = !DILocation(line: 3331, column: 57, scope: !224, inlinedAt: !231)
!244 = !DILocation(line: 0, scope: !234, inlinedAt: !245)
!245 = distinct !DILocation(line: 3331, column: 32, scope: !224, inlinedAt: !231)
!246 = !DILocation(line: 1691, column: 36, scope: !234, inlinedAt: !245)
!247 = !DILocation(line: 0, scope: !177, inlinedAt: !248)
!248 = distinct !DILocation(line: 3332, column: 34, scope: !224, inlinedAt: !231)
!249 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !248)
!250 = !DILocation(line: 0, scope: !177, inlinedAt: !251)
!251 = distinct !DILocation(line: 3332, column: 59, scope: !224, inlinedAt: !231)
!252 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !251)
!253 = !DILocation(line: 3333, column: 33, scope: !224, inlinedAt: !231)
!254 = !DILocation(line: 3333, column: 44, scope: !224, inlinedAt: !231)
!255 = !DILocation(line: 3333, column: 61, scope: !224, inlinedAt: !231)
!256 = !DILocation(line: 3333, column: 40, scope: !224, inlinedAt: !231)
!257 = !DILocation(line: 3332, column: 57, scope: !224, inlinedAt: !231)
!258 = !DILocation(line: 3334, column: 39, scope: !224, inlinedAt: !231)
!259 = !DILocation(line: 3335, column: 16, scope: !224, inlinedAt: !231)
!260 = !DILocation(line: 3361, column: 35, scope: !214, inlinedAt: !154)
!261 = !DILocation(line: 3362, column: 13, scope: !262, inlinedAt: !154)
!262 = distinct !DILexicalBlock(scope: !157, file: !20, line: 3362, column: 13)
!263 = !DILocation(line: 3362, column: 13, scope: !157, inlinedAt: !154)
!264 = !DILocation(line: 3362, column: 43, scope: !262, inlinedAt: !154)
!265 = !DILocalVariable(name: "input", arg: 1, scope: !266, file: !20, line: 3302, type: !17)
!266 = distinct !DISubprogram(name: "XXH3_len_1to3_64b", scope: !20, file: !20, line: 3302, type: !147, scopeLine: 3303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!267 = !{!265, !268, !269, !270, !271, !273, !274, !275, !276, !277}
!268 = !DILocalVariable(name: "len", arg: 2, scope: !266, file: !20, line: 3302, type: !71)
!269 = !DILocalVariable(name: "secret", arg: 3, scope: !266, file: !20, line: 3302, type: !17)
!270 = !DILocalVariable(name: "seed", arg: 4, scope: !266, file: !20, line: 3302, type: !28)
!271 = !DILocalVariable(name: "c1", scope: !272, file: !20, line: 3312, type: !18)
!272 = distinct !DILexicalBlock(scope: !266, file: !20, line: 3312, column: 5)
!273 = !DILocalVariable(name: "c2", scope: !272, file: !20, line: 3313, type: !18)
!274 = !DILocalVariable(name: "c3", scope: !272, file: !20, line: 3314, type: !18)
!275 = !DILocalVariable(name: "combined", scope: !272, file: !20, line: 3315, type: !225)
!276 = !DILocalVariable(name: "bitflip", scope: !272, file: !20, line: 3317, type: !169)
!277 = !DILocalVariable(name: "keyed", scope: !272, file: !20, line: 3318, type: !169)
!278 = !DILocation(line: 0, scope: !266, inlinedAt: !279)
!279 = distinct !DILocation(line: 3362, column: 25, scope: !262, inlinedAt: !154)
!280 = !DILocation(line: 3312, column: 28, scope: !272, inlinedAt: !279)
!281 = !{!90, !90, i64 0}
!282 = !{!283}
!283 = distinct !{!283, !284, !"XXH3_64bits_internal: %input"}
!284 = distinct !{!284, !"XXH3_64bits_internal"}
!285 = !DILocation(line: 0, scope: !272, inlinedAt: !279)
!286 = !DILocation(line: 3313, column: 38, scope: !272, inlinedAt: !279)
!287 = !DILocation(line: 3313, column: 28, scope: !272, inlinedAt: !279)
!288 = !DILocation(line: 3314, column: 38, scope: !272, inlinedAt: !279)
!289 = !DILocation(line: 3314, column: 28, scope: !272, inlinedAt: !279)
!290 = !DILocation(line: 3315, column: 35, scope: !272, inlinedAt: !279)
!291 = !DILocation(line: 3315, column: 47, scope: !272, inlinedAt: !279)
!292 = !DILocation(line: 3315, column: 57, scope: !272, inlinedAt: !279)
!293 = !DILocation(line: 3315, column: 70, scope: !272, inlinedAt: !279)
!294 = !DILocation(line: 3316, column: 35, scope: !272, inlinedAt: !279)
!295 = !DILocation(line: 3316, column: 70, scope: !272, inlinedAt: !279)
!296 = !DILocation(line: 0, scope: !234, inlinedAt: !297)
!297 = distinct !DILocation(line: 3317, column: 34, scope: !272, inlinedAt: !279)
!298 = !DILocation(line: 1691, column: 36, scope: !234, inlinedAt: !297)
!299 = !DILocation(line: 0, scope: !234, inlinedAt: !300)
!300 = distinct !DILocation(line: 3317, column: 57, scope: !272, inlinedAt: !279)
!301 = !DILocation(line: 1691, column: 36, scope: !234, inlinedAt: !300)
!302 = !DILocation(line: 3317, column: 55, scope: !272, inlinedAt: !279)
!303 = !DILocation(line: 3317, column: 33, scope: !272, inlinedAt: !279)
!304 = !DILocation(line: 3318, column: 31, scope: !272, inlinedAt: !279)
!305 = !DILocation(line: 3315, column: 54, scope: !272, inlinedAt: !279)
!306 = !DILocation(line: 3316, column: 32, scope: !272, inlinedAt: !279)
!307 = !DILocation(line: 3318, column: 49, scope: !272, inlinedAt: !279)
!308 = !DILocation(line: 3319, column: 16, scope: !272, inlinedAt: !279)
!309 = !DILocation(line: 3362, column: 18, scope: !262, inlinedAt: !154)
!310 = !DILocation(line: 3363, column: 32, scope: !157, inlinedAt: !154)
!311 = !DILocation(line: 0, scope: !177, inlinedAt: !312)
!312 = distinct !DILocation(line: 3363, column: 40, scope: !157, inlinedAt: !154)
!313 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !312)
!314 = !DILocation(line: 0, scope: !177, inlinedAt: !315)
!315 = distinct !DILocation(line: 3363, column: 66, scope: !157, inlinedAt: !154)
!316 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !315)
!317 = !DILocation(line: 3363, column: 64, scope: !157, inlinedAt: !154)
!318 = !DILocation(line: 3363, column: 16, scope: !157, inlinedAt: !154)
!319 = !DILocation(line: 3363, column: 9, scope: !157, inlinedAt: !154)
!320 = !DILocation(line: 4393, column: 13, scope: !321, inlinedAt: !140)
!321 = distinct !DILexicalBlock(scope: !124, file: !20, line: 4393, column: 9)
!322 = !DILocation(line: 4393, column: 9, scope: !124, inlinedAt: !140)
!323 = !DILocation(line: 4394, column: 52, scope: !321, inlinedAt: !140)
!324 = !{!325}
!325 = distinct !{!325, !326, !"XXH3_len_17to128_64b: %input"}
!326 = distinct !{!326, !"XXH3_len_17to128_64b"}
!327 = !DILocalVariable(name: "input", arg: 1, scope: !328, file: !20, line: 3427, type: !132)
!328 = distinct !DISubprogram(name: "XXH3_len_17to128_64b", scope: !20, file: !20, line: 3427, type: !329, scopeLine: 3430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!28, !132, !71, !132, !71, !28}
!331 = !{!327, !332, !333, !334, !335, !336}
!332 = !DILocalVariable(name: "len", arg: 2, scope: !328, file: !20, line: 3427, type: !71)
!333 = !DILocalVariable(name: "secret", arg: 3, scope: !328, file: !20, line: 3428, type: !132)
!334 = !DILocalVariable(name: "secretSize", arg: 4, scope: !328, file: !20, line: 3428, type: !71)
!335 = !DILocalVariable(name: "seed", arg: 5, scope: !328, file: !20, line: 3429, type: !28)
!336 = !DILocalVariable(name: "acc", scope: !337, file: !20, line: 3434, type: !27)
!337 = distinct !DILexicalBlock(scope: !328, file: !20, line: 3434, column: 5)
!338 = !DILocation(line: 0, scope: !328, inlinedAt: !339)
!339 = distinct !DILocation(line: 4394, column: 16, scope: !321, inlinedAt: !140)
!340 = !DILocation(line: 3434, column: 27, scope: !337, inlinedAt: !339)
!341 = !DILocation(line: 0, scope: !337, inlinedAt: !339)
!342 = !DILocation(line: 3435, column: 17, scope: !343, inlinedAt: !339)
!343 = distinct !DILexicalBlock(scope: !337, file: !20, line: 3435, column: 13)
!344 = !DILocation(line: 3435, column: 13, scope: !337, inlinedAt: !339)
!345 = !DILocation(line: 3436, column: 21, scope: !346, inlinedAt: !339)
!346 = distinct !DILexicalBlock(scope: !347, file: !20, line: 3436, column: 17)
!347 = distinct !DILexicalBlock(scope: !343, file: !20, line: 3435, column: 23)
!348 = !DILocation(line: 3436, column: 17, scope: !347, inlinedAt: !339)
!349 = !DILocation(line: 3437, column: 25, scope: !350, inlinedAt: !339)
!350 = distinct !DILexicalBlock(scope: !351, file: !20, line: 3437, column: 21)
!351 = distinct !DILexicalBlock(scope: !346, file: !20, line: 3436, column: 27)
!352 = !DILocation(line: 3437, column: 21, scope: !351, inlinedAt: !339)
!353 = !DILocation(line: 3438, column: 40, scope: !354, inlinedAt: !339)
!354 = distinct !DILexicalBlock(scope: !350, file: !20, line: 3437, column: 31)
!355 = !DILocation(line: 3438, column: 45, scope: !354, inlinedAt: !339)
!356 = !{!357, !359, !325}
!357 = distinct !{!357, !358, !"XXH3_mix16B: %input"}
!358 = distinct !{!358, !"XXH3_mix16B"}
!359 = distinct !{!359, !358, !"XXH3_mix16B: %secret"}
!360 = !DILocalVariable(name: "input", arg: 1, scope: !361, file: !20, line: 3393, type: !132)
!361 = distinct !DISubprogram(name: "XXH3_mix16B", scope: !20, file: !20, line: 3393, type: !362, scopeLine: 3395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!27, !132, !132, !27}
!364 = !{!360, !365, !366, !367, !369}
!365 = !DILocalVariable(name: "secret", arg: 2, scope: !361, file: !20, line: 3394, type: !132)
!366 = !DILocalVariable(name: "seed64", arg: 3, scope: !361, file: !20, line: 3394, type: !27)
!367 = !DILocalVariable(name: "input_lo", scope: !368, file: !20, line: 3416, type: !169)
!368 = distinct !DILexicalBlock(scope: !361, file: !20, line: 3416, column: 5)
!369 = !DILocalVariable(name: "input_hi", scope: !368, file: !20, line: 3417, type: !169)
!370 = !DILocation(line: 0, scope: !361, inlinedAt: !371)
!371 = distinct !DILocation(line: 3438, column: 28, scope: !354, inlinedAt: !339)
!372 = !DILocation(line: 0, scope: !177, inlinedAt: !373)
!373 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !371)
!374 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !373)
!375 = !{!359}
!376 = !DILocation(line: 0, scope: !368, inlinedAt: !371)
!377 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !371)
!378 = !DILocation(line: 0, scope: !177, inlinedAt: !379)
!379 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !371)
!380 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !379)
!381 = !DILocation(line: 0, scope: !177, inlinedAt: !382)
!382 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !371)
!383 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !382)
!384 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !371)
!385 = !DILocation(line: 0, scope: !177, inlinedAt: !386)
!386 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !371)
!387 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !386)
!388 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !371)
!389 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !371)
!390 = !DILocation(line: 3438, column: 25, scope: !354, inlinedAt: !339)
!391 = !DILocation(line: 3439, column: 45, scope: !354, inlinedAt: !339)
!392 = !DILocation(line: 3439, column: 49, scope: !354, inlinedAt: !339)
!393 = !{!394, !396}
!394 = distinct !{!394, !395, !"XXH3_mix16B: %input"}
!395 = distinct !{!395, !"XXH3_mix16B"}
!396 = distinct !{!396, !395, !"XXH3_mix16B: %secret"}
!397 = !DILocation(line: 0, scope: !361, inlinedAt: !398)
!398 = distinct !DILocation(line: 3439, column: 28, scope: !354, inlinedAt: !339)
!399 = !DILocation(line: 0, scope: !177, inlinedAt: !400)
!400 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !398)
!401 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !400)
!402 = !{!396}
!403 = !DILocation(line: 0, scope: !368, inlinedAt: !398)
!404 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !398)
!405 = !DILocation(line: 0, scope: !177, inlinedAt: !406)
!406 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !398)
!407 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !406)
!408 = !DILocation(line: 0, scope: !177, inlinedAt: !409)
!409 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !398)
!410 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !409)
!411 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !398)
!412 = !DILocation(line: 0, scope: !177, inlinedAt: !413)
!413 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !398)
!414 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !413)
!415 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !398)
!416 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !398)
!417 = !DILocation(line: 3439, column: 25, scope: !354, inlinedAt: !339)
!418 = !DILocation(line: 3440, column: 17, scope: !354, inlinedAt: !339)
!419 = !DILocation(line: 3441, column: 36, scope: !351, inlinedAt: !339)
!420 = !DILocation(line: 3441, column: 41, scope: !351, inlinedAt: !339)
!421 = !{!422, !424}
!422 = distinct !{!422, !423, !"XXH3_mix16B: %input"}
!423 = distinct !{!423, !"XXH3_mix16B"}
!424 = distinct !{!424, !423, !"XXH3_mix16B: %secret"}
!425 = !DILocation(line: 0, scope: !361, inlinedAt: !426)
!426 = distinct !DILocation(line: 3441, column: 24, scope: !351, inlinedAt: !339)
!427 = !DILocation(line: 0, scope: !177, inlinedAt: !428)
!428 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !426)
!429 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !428)
!430 = !{!424}
!431 = !DILocation(line: 0, scope: !368, inlinedAt: !426)
!432 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !426)
!433 = !DILocation(line: 0, scope: !177, inlinedAt: !434)
!434 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !426)
!435 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !434)
!436 = !DILocation(line: 0, scope: !177, inlinedAt: !437)
!437 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !426)
!438 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !437)
!439 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !426)
!440 = !DILocation(line: 0, scope: !177, inlinedAt: !441)
!441 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !426)
!442 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !441)
!443 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !426)
!444 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !426)
!445 = !DILocation(line: 3441, column: 21, scope: !351, inlinedAt: !339)
!446 = !DILocation(line: 3442, column: 41, scope: !351, inlinedAt: !339)
!447 = !DILocation(line: 3442, column: 45, scope: !351, inlinedAt: !339)
!448 = !{!449, !451}
!449 = distinct !{!449, !450, !"XXH3_mix16B: %input"}
!450 = distinct !{!450, !"XXH3_mix16B"}
!451 = distinct !{!451, !450, !"XXH3_mix16B: %secret"}
!452 = !DILocation(line: 0, scope: !361, inlinedAt: !453)
!453 = distinct !DILocation(line: 3442, column: 24, scope: !351, inlinedAt: !339)
!454 = !DILocation(line: 0, scope: !177, inlinedAt: !455)
!455 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !453)
!456 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !455)
!457 = !{!451}
!458 = !DILocation(line: 0, scope: !368, inlinedAt: !453)
!459 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !453)
!460 = !DILocation(line: 0, scope: !177, inlinedAt: !461)
!461 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !453)
!462 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !461)
!463 = !DILocation(line: 0, scope: !177, inlinedAt: !464)
!464 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !453)
!465 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !464)
!466 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !453)
!467 = !DILocation(line: 0, scope: !177, inlinedAt: !468)
!468 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !453)
!469 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !468)
!470 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !453)
!471 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !453)
!472 = !DILocation(line: 3442, column: 21, scope: !351, inlinedAt: !339)
!473 = !DILocation(line: 3443, column: 13, scope: !351, inlinedAt: !339)
!474 = !DILocation(line: 3444, column: 32, scope: !347, inlinedAt: !339)
!475 = !DILocation(line: 3444, column: 37, scope: !347, inlinedAt: !339)
!476 = !{!477, !479}
!477 = distinct !{!477, !478, !"XXH3_mix16B: %input"}
!478 = distinct !{!478, !"XXH3_mix16B"}
!479 = distinct !{!479, !478, !"XXH3_mix16B: %secret"}
!480 = !DILocation(line: 0, scope: !361, inlinedAt: !481)
!481 = distinct !DILocation(line: 3444, column: 20, scope: !347, inlinedAt: !339)
!482 = !DILocation(line: 0, scope: !177, inlinedAt: !483)
!483 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !481)
!484 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !483)
!485 = !{!479}
!486 = !DILocation(line: 0, scope: !368, inlinedAt: !481)
!487 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !481)
!488 = !DILocation(line: 0, scope: !177, inlinedAt: !489)
!489 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !481)
!490 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !489)
!491 = !DILocation(line: 0, scope: !177, inlinedAt: !492)
!492 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !481)
!493 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !492)
!494 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !481)
!495 = !DILocation(line: 0, scope: !177, inlinedAt: !496)
!496 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !481)
!497 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !496)
!498 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !481)
!499 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !481)
!500 = !DILocation(line: 3444, column: 17, scope: !347, inlinedAt: !339)
!501 = !DILocation(line: 3445, column: 37, scope: !347, inlinedAt: !339)
!502 = !DILocation(line: 3445, column: 41, scope: !347, inlinedAt: !339)
!503 = !{!504, !506}
!504 = distinct !{!504, !505, !"XXH3_mix16B: %input"}
!505 = distinct !{!505, !"XXH3_mix16B"}
!506 = distinct !{!506, !505, !"XXH3_mix16B: %secret"}
!507 = !DILocation(line: 0, scope: !361, inlinedAt: !508)
!508 = distinct !DILocation(line: 3445, column: 20, scope: !347, inlinedAt: !339)
!509 = !DILocation(line: 0, scope: !177, inlinedAt: !510)
!510 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !508)
!511 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !510)
!512 = !{!506}
!513 = !DILocation(line: 0, scope: !368, inlinedAt: !508)
!514 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !508)
!515 = !DILocation(line: 0, scope: !177, inlinedAt: !516)
!516 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !508)
!517 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !516)
!518 = !DILocation(line: 0, scope: !177, inlinedAt: !519)
!519 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !508)
!520 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !519)
!521 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !508)
!522 = !DILocation(line: 0, scope: !177, inlinedAt: !523)
!523 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !508)
!524 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !523)
!525 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !508)
!526 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !508)
!527 = !DILocation(line: 3445, column: 17, scope: !347, inlinedAt: !339)
!528 = !DILocation(line: 3446, column: 9, scope: !347, inlinedAt: !339)
!529 = !{!530, !532}
!530 = distinct !{!530, !531, !"XXH3_mix16B: %input"}
!531 = distinct !{!531, !"XXH3_mix16B"}
!532 = distinct !{!532, !531, !"XXH3_mix16B: %secret"}
!533 = !DILocation(line: 0, scope: !361, inlinedAt: !534)
!534 = distinct !DILocation(line: 3447, column: 16, scope: !337, inlinedAt: !339)
!535 = !DILocation(line: 0, scope: !177, inlinedAt: !536)
!536 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !534)
!537 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !536)
!538 = !{!532}
!539 = !DILocation(line: 0, scope: !368, inlinedAt: !534)
!540 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !534)
!541 = !DILocation(line: 0, scope: !177, inlinedAt: !542)
!542 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !534)
!543 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !542)
!544 = !DILocation(line: 0, scope: !177, inlinedAt: !545)
!545 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !534)
!546 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !545)
!547 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !534)
!548 = !DILocation(line: 0, scope: !177, inlinedAt: !549)
!549 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !534)
!550 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !549)
!551 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !534)
!552 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !534)
!553 = !DILocation(line: 3447, column: 13, scope: !337, inlinedAt: !339)
!554 = !DILocation(line: 3448, column: 33, scope: !337, inlinedAt: !339)
!555 = !DILocation(line: 3448, column: 37, scope: !337, inlinedAt: !339)
!556 = !{!557, !559}
!557 = distinct !{!557, !558, !"XXH3_mix16B: %input"}
!558 = distinct !{!558, !"XXH3_mix16B"}
!559 = distinct !{!559, !558, !"XXH3_mix16B: %secret"}
!560 = !DILocation(line: 0, scope: !361, inlinedAt: !561)
!561 = distinct !DILocation(line: 3448, column: 16, scope: !337, inlinedAt: !339)
!562 = !DILocation(line: 0, scope: !177, inlinedAt: !563)
!563 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !561)
!564 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !563)
!565 = !{!559}
!566 = !DILocation(line: 0, scope: !368, inlinedAt: !561)
!567 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !561)
!568 = !DILocation(line: 0, scope: !177, inlinedAt: !569)
!569 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !561)
!570 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !569)
!571 = !DILocation(line: 0, scope: !177, inlinedAt: !572)
!572 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !561)
!573 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !572)
!574 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !561)
!575 = !DILocation(line: 0, scope: !177, inlinedAt: !576)
!576 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !561)
!577 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !576)
!578 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !561)
!579 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !561)
!580 = !DILocation(line: 3448, column: 13, scope: !337, inlinedAt: !339)
!581 = !DILocation(line: 3450, column: 16, scope: !337, inlinedAt: !339)
!582 = !DILocation(line: 4394, column: 9, scope: !321, inlinedAt: !140)
!583 = !DILocation(line: 4395, column: 13, scope: !584, inlinedAt: !140)
!584 = distinct !DILexicalBlock(scope: !124, file: !20, line: 4395, column: 9)
!585 = !DILocation(line: 4395, column: 9, scope: !124, inlinedAt: !140)
!586 = !DILocation(line: 4396, column: 53, scope: !584, inlinedAt: !140)
!587 = !DILocation(line: 4396, column: 16, scope: !584, inlinedAt: !140)
!588 = !DILocation(line: 4396, column: 9, scope: !584, inlinedAt: !140)
!589 = !DILocation(line: 4397, column: 12, scope: !124, inlinedAt: !140)
!590 = !DILocation(line: 4397, column: 5, scope: !124, inlinedAt: !140)
!591 = !DILocation(line: 4406, column: 5, scope: !116)
!592 = distinct !DISubprogram(name: "XXH3_hashLong_64b_default", scope: !20, file: !20, line: 4326, type: !130, scopeLine: 4328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!593 = !{!594, !595, !596, !597, !598}
!594 = !DILocalVariable(name: "input", arg: 1, scope: !592, file: !20, line: 4326, type: !127)
!595 = !DILocalVariable(name: "len", arg: 2, scope: !592, file: !20, line: 4326, type: !71)
!596 = !DILocalVariable(name: "seed64", arg: 3, scope: !592, file: !20, line: 4327, type: !28)
!597 = !DILocalVariable(name: "secret", arg: 4, scope: !592, file: !20, line: 4327, type: !132)
!598 = !DILocalVariable(name: "secretLen", arg: 5, scope: !592, file: !20, line: 4327, type: !71)
!599 = !DILocation(line: 0, scope: !592)
!600 = !{!601}
!601 = distinct !{!601, !602, !"XXH3_hashLong_64b_internal: %input"}
!602 = distinct !{!602, !"XXH3_hashLong_64b_internal"}
!603 = !DILocation(line: 4330, column: 12, scope: !592)
!604 = !DILocalVariable(name: "input", arg: 1, scope: !605, file: !20, line: 4290, type: !127)
!605 = distinct !DISubprogram(name: "XXH3_hashLong_64b_internal", scope: !20, file: !20, line: 4290, type: !606, scopeLine: 4294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!606 = !DISubroutineType(types: !607)
!607 = !{!28, !127, !71, !127, !71, !608, !614}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH3_f_accumulate_512", file: !20, line: 4139, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612, !69, !69}
!612 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH3_f_scrambleAcc", file: !20, line: 4140, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !612, !69}
!618 = !{!604, !619, !620, !621, !622, !623, !624}
!619 = !DILocalVariable(name: "len", arg: 2, scope: !605, file: !20, line: 4290, type: !71)
!620 = !DILocalVariable(name: "secret", arg: 3, scope: !605, file: !20, line: 4291, type: !127)
!621 = !DILocalVariable(name: "secretSize", arg: 4, scope: !605, file: !20, line: 4291, type: !71)
!622 = !DILocalVariable(name: "f_acc512", arg: 5, scope: !605, file: !20, line: 4292, type: !608)
!623 = !DILocalVariable(name: "f_scramble", arg: 6, scope: !605, file: !20, line: 4293, type: !614)
!624 = !DILocalVariable(name: "acc", scope: !605, file: !20, line: 4295, type: !625, align: 128)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 512, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 8)
!628 = !DILocation(line: 0, scope: !605, inlinedAt: !629)
!629 = distinct !DILocation(line: 4330, column: 12, scope: !592)
!630 = !DILocation(line: 4295, column: 5, scope: !605, inlinedAt: !629)
!631 = !DILocation(line: 4295, column: 38, scope: !605, inlinedAt: !629)
!632 = !{!633}
!633 = distinct !{!633, !634, !"XXH3_hashLong_internal_loop: %acc"}
!634 = distinct !{!634, !"XXH3_hashLong_internal_loop"}
!635 = !DILocation(line: 4297, column: 5, scope: !605, inlinedAt: !629)
!636 = !{!637}
!637 = distinct !{!637, !634, !"XXH3_hashLong_internal_loop: %input"}
!638 = !{!633, !637, !601}
!639 = !DILocalVariable(name: "acc", arg: 1, scope: !640, file: !20, line: 4219, type: !643)
!640 = distinct !DISubprogram(name: "XXH3_hashLong_internal_loop", scope: !20, file: !20, line: 4219, type: !641, scopeLine: 4224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !643, !132, !71, !132, !71, !608, !614}
!643 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!645 = !{!639, !646, !647, !648, !649, !650, !651, !652, !654, !655, !656, !657, !659}
!646 = !DILocalVariable(name: "input", arg: 2, scope: !640, file: !20, line: 4220, type: !132)
!647 = !DILocalVariable(name: "len", arg: 3, scope: !640, file: !20, line: 4220, type: !71)
!648 = !DILocalVariable(name: "secret", arg: 4, scope: !640, file: !20, line: 4221, type: !132)
!649 = !DILocalVariable(name: "secretSize", arg: 5, scope: !640, file: !20, line: 4221, type: !71)
!650 = !DILocalVariable(name: "f_acc512", arg: 6, scope: !640, file: !20, line: 4222, type: !608)
!651 = !DILocalVariable(name: "f_scramble", arg: 7, scope: !640, file: !20, line: 4223, type: !614)
!652 = !DILocalVariable(name: "nbStripesPerBlock", scope: !640, file: !20, line: 4225, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!654 = !DILocalVariable(name: "block_len", scope: !640, file: !20, line: 4226, type: !653)
!655 = !DILocalVariable(name: "nb_blocks", scope: !640, file: !20, line: 4227, type: !653)
!656 = !DILocalVariable(name: "n", scope: !640, file: !20, line: 4229, type: !71)
!657 = !DILocalVariable(name: "nbStripes", scope: !658, file: !20, line: 4240, type: !653)
!658 = distinct !DILexicalBlock(scope: !640, file: !20, line: 4240, column: 5)
!659 = !DILocalVariable(name: "p", scope: !660, file: !20, line: 4245, type: !661)
!660 = distinct !DILexicalBlock(scope: !658, file: !20, line: 4245, column: 9)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!662 = !DILocation(line: 0, scope: !640, inlinedAt: !663)
!663 = distinct !DILocation(line: 4297, column: 5, scope: !605, inlinedAt: !629)
!664 = !DILocation(line: 4227, column: 35, scope: !640, inlinedAt: !663)
!665 = !DILocation(line: 4233, column: 19, scope: !666, inlinedAt: !663)
!666 = distinct !DILexicalBlock(scope: !667, file: !20, line: 4233, column: 5)
!667 = distinct !DILexicalBlock(scope: !640, file: !20, line: 4233, column: 5)
!668 = !DILocation(line: 4233, column: 5, scope: !667, inlinedAt: !663)
!669 = !{!670, !672, !633, !637, !601}
!670 = distinct !{!670, !671, !"XXH3_accumulate: %acc"}
!671 = distinct !{!671, !"XXH3_accumulate"}
!672 = distinct !{!672, !671, !"XXH3_accumulate: %input"}
!673 = !DILocation(line: 4227, column: 40, scope: !640, inlinedAt: !663)
!674 = !{!675, !677, !633, !637, !601}
!675 = distinct !{!675, !676, !"XXH3_scrambleAcc_sse2: %acc"}
!676 = distinct !{!676, !"XXH3_scrambleAcc_sse2"}
!677 = distinct !{!677, !676, !"XXH3_scrambleAcc_sse2: %secret"}
!678 = !{!679, !681, !682, !683, !685, !633, !637, !601}
!679 = distinct !{!679, !680, !"XXH3_accumulate_512_sse2: %acc"}
!680 = distinct !{!680, !"XXH3_accumulate_512_sse2"}
!681 = distinct !{!681, !680, !"XXH3_accumulate_512_sse2: %input"}
!682 = distinct !{!682, !680, !"XXH3_accumulate_512_sse2: %secret"}
!683 = distinct !{!683, !684, !"XXH3_accumulate: %acc"}
!684 = distinct !{!684, !"XXH3_accumulate"}
!685 = distinct !{!685, !684, !"XXH3_accumulate: %input"}
!686 = !{!683, !685, !633, !637, !601}
!687 = !DILocation(line: 4234, column: 39, scope: !688, inlinedAt: !663)
!688 = distinct !DILexicalBlock(scope: !666, file: !20, line: 4233, column: 37)
!689 = !DILocation(line: 4234, column: 36, scope: !688, inlinedAt: !663)
!690 = !{!685}
!691 = !DILocation(line: 4234, column: 9, scope: !688, inlinedAt: !663)
!692 = !DILocalVariable(name: "acc", arg: 1, scope: !693, file: !20, line: 4202, type: !643)
!693 = distinct !DISubprogram(name: "XXH3_accumulate", scope: !20, file: !20, line: 4202, type: !694, scopeLine: 4207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !643, !132, !132, !71, !608}
!696 = !{!692, !697, !698, !699, !700, !701, !702}
!697 = !DILocalVariable(name: "input", arg: 2, scope: !693, file: !20, line: 4203, type: !132)
!698 = !DILocalVariable(name: "secret", arg: 3, scope: !693, file: !20, line: 4204, type: !132)
!699 = !DILocalVariable(name: "nbStripes", arg: 4, scope: !693, file: !20, line: 4205, type: !71)
!700 = !DILocalVariable(name: "f_acc512", arg: 5, scope: !693, file: !20, line: 4206, type: !608)
!701 = !DILocalVariable(name: "n", scope: !693, file: !20, line: 4208, type: !71)
!702 = !DILocalVariable(name: "in", scope: !703, file: !20, line: 4210, type: !661)
!703 = distinct !DILexicalBlock(scope: !704, file: !20, line: 4209, column: 38)
!704 = distinct !DILexicalBlock(scope: !705, file: !20, line: 4209, column: 5)
!705 = distinct !DILexicalBlock(scope: !693, file: !20, line: 4209, column: 5)
!706 = !DILocation(line: 0, scope: !693, inlinedAt: !707)
!707 = distinct !DILocation(line: 4234, column: 9, scope: !688, inlinedAt: !663)
!708 = !DILocation(line: 4209, column: 5, scope: !705, inlinedAt: !707)
!709 = !DILocation(line: 4210, column: 43, scope: !703, inlinedAt: !707)
!710 = !DILocation(line: 4210, column: 40, scope: !703, inlinedAt: !707)
!711 = !DILocation(line: 0, scope: !703, inlinedAt: !707)
!712 = !DILocation(line: 4211, column: 9, scope: !703, inlinedAt: !707)
!713 = !{!683, !633}
!714 = !DILocation(line: 4214, column: 28, scope: !703, inlinedAt: !707)
!715 = !DILocation(line: 4214, column: 25, scope: !703, inlinedAt: !707)
!716 = !{!681}
!717 = !DILocation(line: 4212, column: 9, scope: !703, inlinedAt: !707)
!718 = !{!682}
!719 = !DILocalVariable(name: "acc", arg: 1, scope: !720, file: !20, line: 3782, type: !612)
!720 = distinct !DISubprogram(name: "XXH3_accumulate_512_sse2", scope: !20, file: !20, line: 3782, type: !721, scopeLine: 3785, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !612, !127, !127}
!723 = !{!719, !724, !725, !726, !729, !731, !732, !733, !737, !738, !739, !740, !741, !742}
!724 = !DILocalVariable(name: "input", arg: 2, scope: !720, file: !20, line: 3783, type: !127)
!725 = !DILocalVariable(name: "secret", arg: 3, scope: !720, file: !20, line: 3784, type: !127)
!726 = !DILocalVariable(name: "xacc", scope: !727, file: !20, line: 3788, type: !728, align: 128)
!727 = distinct !DILexicalBlock(scope: !720, file: !20, line: 3788, column: 5)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!729 = !DILocalVariable(name: "xinput", scope: !727, file: !20, line: 3791, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!731 = !DILocalVariable(name: "xsecret", scope: !727, file: !20, line: 3794, type: !730)
!732 = !DILocalVariable(name: "i", scope: !727, file: !20, line: 3796, type: !71)
!733 = !DILocalVariable(name: "data_vec", scope: !734, file: !20, line: 3799, type: !43)
!734 = distinct !DILexicalBlock(scope: !735, file: !20, line: 3797, column: 60)
!735 = distinct !DILexicalBlock(scope: !736, file: !20, line: 3797, column: 9)
!736 = distinct !DILexicalBlock(scope: !727, file: !20, line: 3797, column: 9)
!737 = !DILocalVariable(name: "key_vec", scope: !734, file: !20, line: 3801, type: !43)
!738 = !DILocalVariable(name: "data_key", scope: !734, file: !20, line: 3803, type: !43)
!739 = !DILocalVariable(name: "data_key_lo", scope: !734, file: !20, line: 3805, type: !43)
!740 = !DILocalVariable(name: "product", scope: !734, file: !20, line: 3807, type: !43)
!741 = !DILocalVariable(name: "data_swap", scope: !734, file: !20, line: 3809, type: !43)
!742 = !DILocalVariable(name: "sum", scope: !734, file: !20, line: 3810, type: !43)
!743 = !DILocation(line: 0, scope: !720, inlinedAt: !744)
!744 = distinct !DILocation(line: 4212, column: 9, scope: !703, inlinedAt: !707)
!745 = !DILocation(line: 0, scope: !727, inlinedAt: !744)
!746 = !DILocation(line: 3791, column: 48, scope: !727, inlinedAt: !744)
!747 = !DILocation(line: 3794, column: 48, scope: !727, inlinedAt: !744)
!748 = !DILocation(line: 3799, column: 41, scope: !734, inlinedAt: !744)
!749 = !{!681, !685, !637, !601}
!750 = !{!679, !682, !683, !633}
!751 = !DILocation(line: 0, scope: !734, inlinedAt: !744)
!752 = !DILocation(line: 3801, column: 41, scope: !734, inlinedAt: !744)
!753 = !{!679, !681, !683, !685, !633, !637, !601}
!754 = !DILocation(line: 3803, column: 41, scope: !734, inlinedAt: !744)
!755 = !DILocation(line: 3805, column: 41, scope: !734, inlinedAt: !744)
!756 = !DILocation(line: 3807, column: 41, scope: !734, inlinedAt: !744)
!757 = !DILocation(line: 3809, column: 39, scope: !734, inlinedAt: !744)
!758 = !DILocation(line: 3810, column: 39, scope: !734, inlinedAt: !744)
!759 = !DILocation(line: 3812, column: 23, scope: !734, inlinedAt: !744)
!760 = !DILocation(line: 3799, column: 66, scope: !734, inlinedAt: !744)
!761 = !DILocation(line: 3801, column: 67, scope: !734, inlinedAt: !744)
!762 = !DILocation(line: 4209, column: 33, scope: !704, inlinedAt: !707)
!763 = !DILocation(line: 4209, column: 19, scope: !704, inlinedAt: !707)
!764 = distinct !{!764, !708, !765, !766}
!765 = !DILocation(line: 4215, column: 5, scope: !705, inlinedAt: !707)
!766 = !{!"llvm.loop.mustprogress"}
!767 = !DILocalVariable(name: "acc", arg: 1, scope: !768, file: !20, line: 3817, type: !612)
!768 = distinct !DISubprogram(name: "XXH3_scrambleAcc_sse2", scope: !20, file: !20, line: 3817, type: !769, scopeLine: 3818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !612, !127}
!771 = !{!767, !772, !773, !775, !776, !777, !778, !782, !783, !784, !785, !786, !787, !788}
!772 = !DILocalVariable(name: "secret", arg: 2, scope: !768, file: !20, line: 3817, type: !127)
!773 = !DILocalVariable(name: "xacc", scope: !774, file: !20, line: 3820, type: !728, align: 128)
!774 = distinct !DILexicalBlock(scope: !768, file: !20, line: 3820, column: 5)
!775 = !DILocalVariable(name: "xsecret", scope: !774, file: !20, line: 3823, type: !730)
!776 = !DILocalVariable(name: "prime32", scope: !774, file: !20, line: 3824, type: !43)
!777 = !DILocalVariable(name: "i", scope: !774, file: !20, line: 3826, type: !71)
!778 = !DILocalVariable(name: "acc_vec", scope: !779, file: !20, line: 3829, type: !43)
!779 = distinct !DILexicalBlock(scope: !780, file: !20, line: 3827, column: 60)
!780 = distinct !DILexicalBlock(scope: !781, file: !20, line: 3827, column: 9)
!781 = distinct !DILexicalBlock(scope: !774, file: !20, line: 3827, column: 9)
!782 = !DILocalVariable(name: "shifted", scope: !779, file: !20, line: 3830, type: !43)
!783 = !DILocalVariable(name: "data_vec", scope: !779, file: !20, line: 3831, type: !43)
!784 = !DILocalVariable(name: "key_vec", scope: !779, file: !20, line: 3833, type: !43)
!785 = !DILocalVariable(name: "data_key", scope: !779, file: !20, line: 3834, type: !43)
!786 = !DILocalVariable(name: "data_key_hi", scope: !779, file: !20, line: 3837, type: !43)
!787 = !DILocalVariable(name: "prod_lo", scope: !779, file: !20, line: 3838, type: !43)
!788 = !DILocalVariable(name: "prod_hi", scope: !779, file: !20, line: 3839, type: !43)
!789 = !DILocation(line: 0, scope: !768, inlinedAt: !790)
!790 = distinct !DILocation(line: 4235, column: 9, scope: !688, inlinedAt: !663)
!791 = !DILocation(line: 0, scope: !774, inlinedAt: !790)
!792 = !DILocation(line: 0, scope: !779, inlinedAt: !790)
!793 = !DILocation(line: 3830, column: 41, scope: !779, inlinedAt: !790)
!794 = !DILocation(line: 3834, column: 41, scope: !779, inlinedAt: !790)
!795 = !DILocation(line: 3837, column: 41, scope: !779, inlinedAt: !790)
!796 = !DILocation(line: 3838, column: 41, scope: !779, inlinedAt: !790)
!797 = !DILocation(line: 3839, column: 41, scope: !779, inlinedAt: !790)
!798 = !DILocation(line: 3840, column: 46, scope: !779, inlinedAt: !790)
!799 = !DILocation(line: 3840, column: 23, scope: !779, inlinedAt: !790)
!800 = !DILocation(line: 4233, column: 33, scope: !666, inlinedAt: !663)
!801 = distinct !{!801, !668, !802, !766}
!802 = !DILocation(line: 4236, column: 5, scope: !667, inlinedAt: !663)
!803 = !DILocation(line: 3797, column: 56, scope: !735, inlinedAt: !744)
!804 = !DILocation(line: 3827, column: 56, scope: !780, inlinedAt: !790)
!805 = !DILocation(line: 4240, column: 58, scope: !658, inlinedAt: !663)
!806 = !DILocation(line: 4240, column: 72, scope: !658, inlinedAt: !663)
!807 = !DILocation(line: 0, scope: !658, inlinedAt: !663)
!808 = !DILocation(line: 4242, column: 36, scope: !658, inlinedAt: !663)
!809 = !{!672}
!810 = !DILocation(line: 4242, column: 9, scope: !658, inlinedAt: !663)
!811 = !DILocation(line: 0, scope: !693, inlinedAt: !812)
!812 = distinct !DILocation(line: 4242, column: 9, scope: !658, inlinedAt: !663)
!813 = !DILocation(line: 4209, column: 19, scope: !704, inlinedAt: !812)
!814 = !DILocation(line: 4209, column: 5, scope: !705, inlinedAt: !812)
!815 = !{!816, !818, !819, !633, !637, !601}
!816 = distinct !{!816, !817, !"XXH3_accumulate_512_sse2: %acc"}
!817 = distinct !{!817, !"XXH3_accumulate_512_sse2"}
!818 = distinct !{!818, !817, !"XXH3_accumulate_512_sse2: %input"}
!819 = distinct !{!819, !817, !"XXH3_accumulate_512_sse2: %secret"}
!820 = !{!821, !823, !824, !670, !672, !633, !637, !601}
!821 = distinct !{!821, !822, !"XXH3_accumulate_512_sse2: %acc"}
!822 = distinct !{!822, !"XXH3_accumulate_512_sse2"}
!823 = distinct !{!823, !822, !"XXH3_accumulate_512_sse2: %input"}
!824 = distinct !{!824, !822, !"XXH3_accumulate_512_sse2: %secret"}
!825 = !DILocation(line: 4210, column: 43, scope: !703, inlinedAt: !812)
!826 = !DILocation(line: 4210, column: 40, scope: !703, inlinedAt: !812)
!827 = !DILocation(line: 0, scope: !703, inlinedAt: !812)
!828 = !DILocation(line: 4211, column: 9, scope: !703, inlinedAt: !812)
!829 = !{!670, !633}
!830 = !DILocation(line: 4214, column: 28, scope: !703, inlinedAt: !812)
!831 = !DILocation(line: 4214, column: 25, scope: !703, inlinedAt: !812)
!832 = !{!823}
!833 = !DILocation(line: 4212, column: 9, scope: !703, inlinedAt: !812)
!834 = !{!824}
!835 = !DILocation(line: 0, scope: !720, inlinedAt: !836)
!836 = distinct !DILocation(line: 4212, column: 9, scope: !703, inlinedAt: !812)
!837 = !DILocation(line: 0, scope: !727, inlinedAt: !836)
!838 = !DILocation(line: 3791, column: 48, scope: !727, inlinedAt: !836)
!839 = !DILocation(line: 3794, column: 48, scope: !727, inlinedAt: !836)
!840 = !DILocation(line: 3799, column: 41, scope: !734, inlinedAt: !836)
!841 = !{!823, !672, !637, !601}
!842 = !{!821, !824, !670, !633}
!843 = !DILocation(line: 0, scope: !734, inlinedAt: !836)
!844 = !DILocation(line: 3801, column: 41, scope: !734, inlinedAt: !836)
!845 = !{!821, !823, !670, !672, !633, !637, !601}
!846 = !DILocation(line: 3803, column: 41, scope: !734, inlinedAt: !836)
!847 = !DILocation(line: 3805, column: 41, scope: !734, inlinedAt: !836)
!848 = !DILocation(line: 3807, column: 41, scope: !734, inlinedAt: !836)
!849 = !DILocation(line: 3809, column: 39, scope: !734, inlinedAt: !836)
!850 = !DILocation(line: 3810, column: 39, scope: !734, inlinedAt: !836)
!851 = !DILocation(line: 3812, column: 23, scope: !734, inlinedAt: !836)
!852 = !DILocation(line: 3799, column: 66, scope: !734, inlinedAt: !836)
!853 = !DILocation(line: 3801, column: 67, scope: !734, inlinedAt: !836)
!854 = !DILocation(line: 4209, column: 33, scope: !704, inlinedAt: !812)
!855 = distinct !{!855, !814, !856, !766}
!856 = !DILocation(line: 4215, column: 5, scope: !705, inlinedAt: !812)
!857 = !DILocation(line: 3810, column: 53, scope: !734, inlinedAt: !858)
!858 = distinct !DILocation(line: 4247, column: 13, scope: !660, inlinedAt: !663)
!859 = !DILocation(line: 3788, column: 54, scope: !727, inlinedAt: !858)
!860 = !DILocation(line: 4297, column: 33, scope: !605, inlinedAt: !629)
!861 = !DILocation(line: 4245, column: 43, scope: !660, inlinedAt: !663)
!862 = !DILocation(line: 4245, column: 49, scope: !660, inlinedAt: !663)
!863 = !DILocation(line: 0, scope: !660, inlinedAt: !663)
!864 = !{!816}
!865 = !DILocation(line: 4247, column: 13, scope: !660, inlinedAt: !663)
!866 = !{!818}
!867 = !DILocation(line: 0, scope: !720, inlinedAt: !858)
!868 = !DILocation(line: 0, scope: !727, inlinedAt: !858)
!869 = !DILocation(line: 3791, column: 48, scope: !727, inlinedAt: !858)
!870 = !DILocation(line: 3799, column: 41, scope: !734, inlinedAt: !858)
!871 = !{!818, !637, !601}
!872 = !{!816, !819, !633}
!873 = !DILocation(line: 0, scope: !734, inlinedAt: !858)
!874 = !DILocation(line: 3803, column: 41, scope: !734, inlinedAt: !858)
!875 = !DILocation(line: 3805, column: 41, scope: !734, inlinedAt: !858)
!876 = !DILocation(line: 3807, column: 41, scope: !734, inlinedAt: !858)
!877 = !DILocation(line: 3809, column: 39, scope: !734, inlinedAt: !858)
!878 = !DILocation(line: 3810, column: 39, scope: !734, inlinedAt: !858)
!879 = !DILocation(line: 3812, column: 23, scope: !734, inlinedAt: !858)
!880 = !DILocation(line: 3812, column: 21, scope: !734, inlinedAt: !858)
!881 = !{!816, !633}
!882 = !{!818, !819, !637, !601}
!883 = !DILocation(line: 3799, column: 66, scope: !734, inlinedAt: !858)
!884 = !DILocation(line: 4300, column: 5, scope: !885, inlinedAt: !629)
!885 = distinct !DILexicalBlock(scope: !605, file: !20, line: 4300, column: 5)
!886 = !DILocation(line: 4304, column: 97, scope: !605, inlinedAt: !629)
!887 = !DILocation(line: 4304, column: 12, scope: !605, inlinedAt: !629)
!888 = !DILocation(line: 4305, column: 1, scope: !605, inlinedAt: !629)
!889 = !DILocation(line: 4330, column: 5, scope: !592)
!890 = distinct !DISubprogram(name: "XXH3_len_129to240_64b", scope: !20, file: !20, line: 3457, type: !329, scopeLine: 3460, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892, !893, !894, !895, !896, !897, !899, !901}
!892 = !DILocalVariable(name: "input", arg: 1, scope: !890, file: !20, line: 3457, type: !132)
!893 = !DILocalVariable(name: "len", arg: 2, scope: !890, file: !20, line: 3457, type: !71)
!894 = !DILocalVariable(name: "secret", arg: 3, scope: !890, file: !20, line: 3458, type: !132)
!895 = !DILocalVariable(name: "secretSize", arg: 4, scope: !890, file: !20, line: 3458, type: !71)
!896 = !DILocalVariable(name: "seed", arg: 5, scope: !890, file: !20, line: 3459, type: !28)
!897 = !DILocalVariable(name: "acc", scope: !898, file: !20, line: 3467, type: !27)
!898 = distinct !DILexicalBlock(scope: !890, file: !20, line: 3467, column: 5)
!899 = !DILocalVariable(name: "nbRounds", scope: !898, file: !20, line: 3468, type: !900)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!901 = !DILocalVariable(name: "i", scope: !898, file: !20, line: 3469, type: !34)
!902 = !DILocation(line: 0, scope: !890)
!903 = !DILocation(line: 3467, column: 27, scope: !898)
!904 = !DILocation(line: 0, scope: !898)
!905 = !DILocation(line: 3468, column: 30, scope: !898)
!906 = !DILocation(line: 3470, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !898, file: !20, line: 3470, column: 9)
!908 = !DILocation(line: 3471, column: 41, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !20, line: 3470, column: 29)
!910 = distinct !DILexicalBlock(scope: !907, file: !20, line: 3470, column: 9)
!911 = !DILocation(line: 3471, column: 37, scope: !909)
!912 = !DILocation(line: 3471, column: 52, scope: !909)
!913 = !{!914, !916}
!914 = distinct !{!914, !915, !"XXH3_mix16B: %input"}
!915 = distinct !{!915, !"XXH3_mix16B"}
!916 = distinct !{!916, !915, !"XXH3_mix16B: %secret"}
!917 = !DILocation(line: 0, scope: !361, inlinedAt: !918)
!918 = distinct !DILocation(line: 3471, column: 20, scope: !909)
!919 = !DILocation(line: 0, scope: !177, inlinedAt: !920)
!920 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !918)
!921 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !920)
!922 = !{!916}
!923 = !DILocation(line: 0, scope: !368, inlinedAt: !918)
!924 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !918)
!925 = !DILocation(line: 0, scope: !177, inlinedAt: !926)
!926 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !918)
!927 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !926)
!928 = !DILocation(line: 0, scope: !177, inlinedAt: !929)
!929 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !918)
!930 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !929)
!931 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !918)
!932 = !DILocation(line: 3420, column: 44, scope: !368, inlinedAt: !918)
!933 = !DILocation(line: 0, scope: !177, inlinedAt: !934)
!934 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !918)
!935 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !934)
!936 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !918)
!937 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !918)
!938 = !DILocation(line: 3471, column: 17, scope: !909)
!939 = !DILocation(line: 3470, column: 25, scope: !910)
!940 = !DILocation(line: 3470, column: 20, scope: !910)
!941 = distinct !{!941, !906, !942, !766}
!942 = !DILocation(line: 3472, column: 9, scope: !907)
!943 = !DILocation(line: 3473, column: 30, scope: !898)
!944 = !DILocation(line: 3473, column: 15, scope: !898)
!945 = !DILocation(line: 3500, column: 22, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !20, line: 3500, column: 9)
!947 = distinct !DILexicalBlock(scope: !898, file: !20, line: 3500, column: 9)
!948 = !DILocation(line: 3500, column: 9, scope: !947)
!949 = !DILocation(line: 3468, column: 39, scope: !898)
!950 = !DILocation(line: 3501, column: 41, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !20, line: 3500, column: 39)
!952 = !DILocation(line: 3501, column: 37, scope: !951)
!953 = !DILocation(line: 3501, column: 56, scope: !951)
!954 = !DILocation(line: 3501, column: 52, scope: !951)
!955 = !DILocation(line: 3501, column: 64, scope: !951)
!956 = !{!957, !959}
!957 = distinct !{!957, !958, !"XXH3_mix16B: %input"}
!958 = distinct !{!958, !"XXH3_mix16B"}
!959 = distinct !{!959, !958, !"XXH3_mix16B: %secret"}
!960 = !DILocation(line: 0, scope: !361, inlinedAt: !961)
!961 = distinct !DILocation(line: 3501, column: 20, scope: !951)
!962 = !DILocation(line: 0, scope: !177, inlinedAt: !963)
!963 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !961)
!964 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !963)
!965 = !{!959}
!966 = !DILocation(line: 0, scope: !368, inlinedAt: !961)
!967 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !961)
!968 = !DILocation(line: 0, scope: !177, inlinedAt: !969)
!969 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !961)
!970 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !969)
!971 = !DILocation(line: 0, scope: !177, inlinedAt: !972)
!972 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !961)
!973 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !972)
!974 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !961)
!975 = !DILocation(line: 3420, column: 44, scope: !368, inlinedAt: !961)
!976 = !DILocation(line: 0, scope: !177, inlinedAt: !977)
!977 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !961)
!978 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !977)
!979 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !961)
!980 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !961)
!981 = !DILocation(line: 3501, column: 17, scope: !951)
!982 = !DILocation(line: 3500, column: 35, scope: !946)
!983 = distinct !{!983, !948, !984, !766}
!984 = !DILocation(line: 3502, column: 9, scope: !947)
!985 = !DILocation(line: 3504, column: 34, scope: !898)
!986 = !DILocation(line: 3504, column: 40, scope: !898)
!987 = !{!988, !990}
!988 = distinct !{!988, !989, !"XXH3_mix16B: %input"}
!989 = distinct !{!989, !"XXH3_mix16B"}
!990 = distinct !{!990, !989, !"XXH3_mix16B: %secret"}
!991 = !DILocation(line: 0, scope: !361, inlinedAt: !992)
!992 = distinct !DILocation(line: 3504, column: 16, scope: !898)
!993 = !DILocation(line: 0, scope: !177, inlinedAt: !994)
!994 = distinct !DILocation(line: 3416, column: 34, scope: !368, inlinedAt: !992)
!995 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !994)
!996 = !{!990}
!997 = !DILocation(line: 0, scope: !368, inlinedAt: !992)
!998 = !DILocation(line: 3417, column: 52, scope: !368, inlinedAt: !992)
!999 = !DILocation(line: 0, scope: !177, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 3417, column: 34, scope: !368, inlinedAt: !992)
!1001 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !1000)
!1002 = !DILocation(line: 0, scope: !177, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 3419, column: 25, scope: !368, inlinedAt: !992)
!1004 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !1003)
!1005 = !DILocation(line: 3419, column: 22, scope: !368, inlinedAt: !992)
!1006 = !DILocation(line: 0, scope: !177, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 3420, column: 25, scope: !368, inlinedAt: !992)
!1008 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !1007)
!1009 = !DILocation(line: 3420, column: 22, scope: !368, inlinedAt: !992)
!1010 = !DILocation(line: 3418, column: 16, scope: !368, inlinedAt: !992)
!1011 = !DILocation(line: 3504, column: 13, scope: !898)
!1012 = !DILocation(line: 3505, column: 16, scope: !898)
!1013 = !DILocation(line: 3505, column: 9, scope: !898)
!1014 = distinct !DISubprogram(name: "XXH64_avalanche", scope: !20, file: !20, line: 2300, type: !1015, scopeLine: 2301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!27, !27}
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "h64", arg: 1, scope: !1014, file: !20, line: 2300, type: !27)
!1019 = !DILocation(line: 0, scope: !1014)
!1020 = !DILocation(line: 2302, column: 16, scope: !1014)
!1021 = !DILocation(line: 2302, column: 9, scope: !1014)
!1022 = !DILocation(line: 2303, column: 9, scope: !1014)
!1023 = !DILocation(line: 2304, column: 16, scope: !1014)
!1024 = !DILocation(line: 2304, column: 9, scope: !1014)
!1025 = !DILocation(line: 2305, column: 9, scope: !1014)
!1026 = !DILocation(line: 2306, column: 16, scope: !1014)
!1027 = !DILocation(line: 2306, column: 9, scope: !1014)
!1028 = !DILocation(line: 2307, column: 5, scope: !1014)
!1029 = distinct !DISubprogram(name: "XXH_swap64", scope: !20, file: !20, line: 2197, type: !1015, scopeLine: 2198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "x", arg: 1, scope: !1029, file: !20, line: 2197, type: !27)
!1032 = !DILocation(line: 0, scope: !1029)
!1033 = !DILocation(line: 2205, column: 49, scope: !1029)
!1034 = !DILocation(line: 2199, column: 5, scope: !1029)
!1035 = distinct !DISubprogram(name: "XXH3_mul128_fold64", scope: !20, file: !20, line: 3227, type: !1036, scopeLine: 3228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!27, !27, !27}
!1038 = !{!1039, !1040, !1041}
!1039 = !DILocalVariable(name: "lhs", arg: 1, scope: !1035, file: !20, line: 3227, type: !27)
!1040 = !DILocalVariable(name: "rhs", arg: 2, scope: !1035, file: !20, line: 3227, type: !27)
!1041 = !DILocalVariable(name: "product", scope: !1035, file: !20, line: 3229, type: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH_INLINE_XXH128_hash_t", file: !20, line: 788, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 785, size: 128, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "low64", scope: !1043, file: !20, line: 786, baseType: !28, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "high64", scope: !1043, file: !20, line: 787, baseType: !28, size: 64, offset: 64)
!1047 = !DILocation(line: 0, scope: !1035)
!1048 = !DILocation(line: 3229, column: 29, scope: !1035)
!1049 = !DILocation(line: 3230, column: 26, scope: !1035)
!1050 = !DILocation(line: 3230, column: 5, scope: !1035)
!1051 = distinct !DISubprogram(name: "XXH3_avalanche", scope: !20, file: !20, line: 3244, type: !1052, scopeLine: 3245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!28, !27}
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "h64", arg: 1, scope: !1051, file: !20, line: 3244, type: !27)
!1056 = !DILocation(line: 0, scope: !1051)
!1057 = !DILocalVariable(name: "v64", arg: 1, scope: !1058, file: !20, line: 3234, type: !27)
!1058 = distinct !DISubprogram(name: "XXH_xorshift64", scope: !20, file: !20, line: 3234, type: !1059, scopeLine: 3235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!27, !27, !34}
!1061 = !{!1057, !1062}
!1062 = !DILocalVariable(name: "shift", arg: 2, scope: !1058, file: !20, line: 3234, type: !34)
!1063 = !DILocation(line: 0, scope: !1058, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 3246, column: 11, scope: !1051)
!1065 = !DILocation(line: 3237, column: 23, scope: !1058, inlinedAt: !1064)
!1066 = !DILocation(line: 3237, column: 16, scope: !1058, inlinedAt: !1064)
!1067 = !DILocation(line: 3247, column: 9, scope: !1051)
!1068 = !DILocation(line: 0, scope: !1058, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 3248, column: 11, scope: !1051)
!1070 = !DILocation(line: 3237, column: 23, scope: !1058, inlinedAt: !1069)
!1071 = !DILocation(line: 3237, column: 16, scope: !1058, inlinedAt: !1069)
!1072 = !DILocation(line: 3249, column: 5, scope: !1051)
!1073 = distinct !DISubprogram(name: "XXH_mult64to128", scope: !20, file: !20, line: 3108, type: !1074, scopeLine: 3109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1042, !27, !27}
!1076 = !{!1077, !1078, !1079, !1081}
!1077 = !DILocalVariable(name: "lhs", arg: 1, scope: !1073, file: !20, line: 3108, type: !27)
!1078 = !DILocalVariable(name: "rhs", arg: 2, scope: !1073, file: !20, line: 3108, type: !27)
!1079 = !DILocalVariable(name: "product", scope: !1073, file: !20, line: 3129, type: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!1081 = !DILocalVariable(name: "r128", scope: !1073, file: !20, line: 3130, type: !1042)
!1082 = !DILocation(line: 0, scope: !1073)
!1083 = !DILocation(line: 3129, column: 33, scope: !1073)
!1084 = !DILocation(line: 3129, column: 52, scope: !1073)
!1085 = !DILocation(line: 3129, column: 50, scope: !1073)
!1086 = !DILocation(line: 3131, column: 19, scope: !1073)
!1087 = !DILocation(line: 3132, column: 37, scope: !1073)
!1088 = !DILocation(line: 3132, column: 19, scope: !1073)
!1089 = !DILocation(line: 3214, column: 1, scope: !1073)
!1090 = distinct !DISubprogram(name: "XXH_swap32", scope: !20, file: !20, line: 1640, type: !1091, scopeLine: 1641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!32, !32}
!1093 = !{!1094}
!1094 = !DILocalVariable(name: "x", arg: 1, scope: !1090, file: !20, line: 1640, type: !32)
!1095 = !DILocation(line: 0, scope: !1090)
!1096 = !DILocation(line: 1642, column: 5, scope: !1090)
!1097 = distinct !DISubprogram(name: "XXH3_rrmxmx", scope: !20, file: !20, line: 3257, type: !1098, scopeLine: 3258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!28, !27, !27}
!1100 = !{!1101, !1102}
!1101 = !DILocalVariable(name: "h64", arg: 1, scope: !1097, file: !20, line: 3257, type: !27)
!1102 = !DILocalVariable(name: "len", arg: 2, scope: !1097, file: !20, line: 3257, type: !27)
!1103 = !DILocation(line: 0, scope: !1097)
!1104 = !DILocation(line: 3260, column: 12, scope: !1097)
!1105 = !DILocation(line: 3260, column: 34, scope: !1097)
!1106 = !DILocation(line: 3260, column: 32, scope: !1097)
!1107 = !DILocation(line: 3260, column: 9, scope: !1097)
!1108 = !DILocation(line: 3261, column: 9, scope: !1097)
!1109 = !DILocation(line: 3262, column: 17, scope: !1097)
!1110 = !DILocation(line: 3262, column: 24, scope: !1097)
!1111 = !DILocation(line: 3262, column: 9, scope: !1097)
!1112 = !DILocation(line: 3263, column: 9, scope: !1097)
!1113 = !DILocation(line: 0, scope: !1058, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 3264, column: 12, scope: !1097)
!1115 = !DILocation(line: 3237, column: 23, scope: !1058, inlinedAt: !1114)
!1116 = !DILocation(line: 3237, column: 16, scope: !1058, inlinedAt: !1114)
!1117 = !DILocation(line: 3264, column: 5, scope: !1097)
!1118 = distinct !DISubprogram(name: "XXH_read32", scope: !20, file: !20, line: 1526, type: !235, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1119)
!1119 = !{!1120, !1121}
!1120 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1118, file: !20, line: 1526, type: !69)
!1121 = !DILocalVariable(name: "val", scope: !1118, file: !20, line: 1528, type: !32)
!1122 = !DILocation(line: 0, scope: !1118)
!1123 = !DILocation(line: 1528, column: 5, scope: !1118)
!1124 = !DILocation(line: 1529, column: 5, scope: !1118)
!1125 = !DILocation(line: 1530, column: 12, scope: !1118)
!1126 = !{!96, !96, i64 0}
!1127 = !DILocation(line: 1531, column: 1, scope: !1118)
!1128 = !DILocation(line: 1530, column: 5, scope: !1118)
!1129 = !DISubprogram(name: "memcpy", scope: !1130, file: !1130, line: 43, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1133)
!1130 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!613, !612, !127, !71}
!1133 = !{}
!1134 = distinct !DISubprogram(name: "XXH_read64", scope: !20, file: !20, line: 2183, type: !178, scopeLine: 2184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1135 = !{!1136, !1137}
!1136 = !DILocalVariable(name: "memPtr", arg: 1, scope: !1134, file: !20, line: 2183, type: !69)
!1137 = !DILocalVariable(name: "val", scope: !1134, file: !20, line: 2185, type: !27)
!1138 = !DILocation(line: 0, scope: !1134)
!1139 = !DILocation(line: 2185, column: 5, scope: !1134)
!1140 = !DILocation(line: 2186, column: 5, scope: !1134)
!1141 = !DILocation(line: 2187, column: 12, scope: !1134)
!1142 = !{!95, !95, i64 0}
!1143 = !DILocation(line: 2188, column: 1, scope: !1134)
!1144 = !DILocation(line: 2187, column: 5, scope: !1134)
!1145 = distinct !DISubprogram(name: "XXH3_mergeAccs", scope: !20, file: !20, line: 4260, type: !1146, scopeLine: 4261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!28, !1148, !132, !27}
!1148 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1150 = !{!1151, !1152, !1153, !1154, !1155}
!1151 = !DILocalVariable(name: "acc", arg: 1, scope: !1145, file: !20, line: 4260, type: !1148)
!1152 = !DILocalVariable(name: "secret", arg: 2, scope: !1145, file: !20, line: 4260, type: !132)
!1153 = !DILocalVariable(name: "start", arg: 3, scope: !1145, file: !20, line: 4260, type: !27)
!1154 = !DILocalVariable(name: "result64", scope: !1145, file: !20, line: 4262, type: !27)
!1155 = !DILocalVariable(name: "i", scope: !1145, file: !20, line: 4263, type: !71)
!1156 = !DILocation(line: 0, scope: !1145)
!1157 = !{!1158}
!1158 = distinct !{!1158, !1159, !"XXH3_mix2Accs: %acc"}
!1159 = distinct !{!1159, !"XXH3_mix2Accs"}
!1160 = !DILocation(line: 4266, column: 21, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !20, line: 4265, column: 29)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !20, line: 4265, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1145, file: !20, line: 4265, column: 5)
!1164 = !{!1158, !1165}
!1165 = distinct !{!1165, !1159, !"XXH3_mix2Accs: %secret"}
!1166 = !DILocalVariable(name: "acc", arg: 1, scope: !1167, file: !20, line: 4252, type: !1148)
!1167 = distinct !DISubprogram(name: "XXH3_mix2Accs", scope: !20, file: !20, line: 4252, type: !1168, scopeLine: 4253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!27, !1148, !132}
!1170 = !{!1166, !1171}
!1171 = !DILocalVariable(name: "secret", arg: 2, scope: !1167, file: !20, line: 4252, type: !132)
!1172 = !DILocation(line: 0, scope: !1167, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 4266, column: 21, scope: !1161)
!1174 = !DILocation(line: 4255, column: 16, scope: !1167, inlinedAt: !1173)
!1175 = !{!1165}
!1176 = !DILocation(line: 0, scope: !177, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 4255, column: 25, scope: !1167, inlinedAt: !1173)
!1178 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !1177)
!1179 = !DILocation(line: 4255, column: 23, scope: !1167, inlinedAt: !1173)
!1180 = !DILocation(line: 4256, column: 16, scope: !1167, inlinedAt: !1173)
!1181 = !DILocation(line: 0, scope: !177, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 4256, column: 25, scope: !1167, inlinedAt: !1173)
!1183 = !DILocation(line: 2243, column: 36, scope: !177, inlinedAt: !1182)
!1184 = !DILocation(line: 4256, column: 23, scope: !1167, inlinedAt: !1173)
!1185 = !DILocation(line: 4254, column: 12, scope: !1167, inlinedAt: !1173)
!1186 = !DILocation(line: 4266, column: 18, scope: !1161)
!1187 = !DILocation(line: 4265, column: 25, scope: !1162)
!1188 = !DILocation(line: 4266, column: 38, scope: !1161)
!1189 = !{!1190}
!1190 = distinct !{!1190, !1159, !"XXH3_mix2Accs: %acc:It1"}
!1191 = !{!1190, !1165}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1159, !"XXH3_mix2Accs: %acc:It2"}
!1194 = !{!1193, !1165}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1159, !"XXH3_mix2Accs: %acc:It3"}
!1197 = !{!1196, !1165}
!1198 = !DILocation(line: 4283, column: 12, scope: !1145)
!1199 = !DILocation(line: 4283, column: 5, scope: !1145)
