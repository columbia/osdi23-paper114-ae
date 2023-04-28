; ModuleID = 'bipbuffer.c'
source_filename = "bipbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, i64* }
%struct.bipbuf_t = type { i64, i32, i32, i32, i32, [0 x i8] }

@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.1 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [5 x i64] zeroinitializer
@0 = private unnamed_addr constant [57 x i8] c"/home/xuheng/blackbox/llvm-test/memcached/bipbuffer.gcda\00", align 1
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [15 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1866217898, i32 651042138 }, %emit_function_args_ty { i32 1, i32 1532717635, i32 651042138 }, %emit_function_args_ty { i32 2, i32 311113636, i32 651042138 }, %emit_function_args_ty { i32 3, i32 -1933372326, i32 651042138 }, %emit_function_args_ty { i32 4, i32 -1199986599, i32 651042138 }, %emit_function_args_ty { i32 5, i32 -74393181, i32 651042138 }, %emit_function_args_ty { i32 6, i32 -257651791, i32 651042138 }, %emit_function_args_ty { i32 7, i32 -1115856313, i32 651042138 }, %emit_function_args_ty { i32 8, i32 -561545205, i32 651042138 }, %emit_function_args_ty { i32 9, i32 2063871532, i32 651042138 }, %emit_function_args_ty { i32 10, i32 -482991622, i32 651042138 }, %emit_function_args_ty { i32 11, i32 2128190118, i32 651042138 }, %emit_function_args_ty { i32 12, i32 -167377636, i32 651042138 }, %emit_function_args_ty { i32 13, i32 1274064116, i32 651042138 }, %emit_function_args_ty { i32 14, i32 -1093065417, i32 651042138 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [15 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.2, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i32 0, i32 0) }, %emit_arcs_args_ty { i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.10, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i32 0, i32 0) }, %emit_arcs_args_ty { i32 3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i32 0, i32 0) }, %emit_arcs_args_ty { i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.13, i32 0, i32 0) }, %emit_arcs_args_ty { i32 5, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i32 0, i32 0) }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__llvm_gcov_init, i8* null }]

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bipbuf_unused(%struct.bipbuf_t* nocapture noundef readonly %me) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !33, metadata !DIExpression()), !dbg !34
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !35
  %0 = load i32, i32* %b_inuse, align 4, !dbg !35, !tbaa !37
  %cmp = icmp eq i32 %0, 1, !dbg !41
  br i1 %cmp, label %if.then, label %if.else, !dbg !42

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !43
  %1 = add i64 %gcov_ctr, 1, !dbg !43
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0), align 8, !dbg !43
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !44
  %2 = load i32, i32* %a_start, align 8, !dbg !44, !tbaa !37
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !45
  %3 = load i32, i32* %b_end, align 8, !dbg !45, !tbaa !37
  %sub = sub i32 %2, %3, !dbg !46
  br label %return, !dbg !47

if.else:                                          ; preds = %entry
  %gcov_ctr3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !48
  %4 = add i64 %gcov_ctr3, 1, !dbg !48
  store i64 %4, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 1), align 8, !dbg !48
  %size = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !49
  %5 = load i64, i64* %size, align 8, !dbg !49, !tbaa !50
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !52
  %6 = load i32, i32* %a_end, align 4, !dbg !52, !tbaa !37
  %7 = trunc i64 %5 to i32, !dbg !48
  %conv2 = sub i32 %7, %6, !dbg !48
  br label %return, !dbg !53

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %conv2, %if.else ], !dbg !54
  ret i32 %retval.0, !dbg !55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bipbuf_size(%struct.bipbuf_t* nocapture noundef readonly %me) local_unnamed_addr #0 !dbg !56 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !58, metadata !DIExpression()), !dbg !59
  %size = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !60
  %1 = load i64, i64* %size, align 8, !dbg !60, !tbaa !50
  %conv = trunc i64 %1 to i32, !dbg !61
  ret i32 %conv, !dbg !62
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bipbuf_used(%struct.bipbuf_t* nocapture noundef readonly %me) local_unnamed_addr #0 !dbg !63 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !65, metadata !DIExpression()), !dbg !66
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !67
  %1 = load i32, i32* %a_end, align 4, !dbg !67, !tbaa !37
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !68
  %2 = load i32, i32* %a_start, align 8, !dbg !68, !tbaa !37
  %sub = sub i32 %1, %2, !dbg !69
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !70
  %3 = load i32, i32* %b_end, align 8, !dbg !70, !tbaa !37
  %add = add i32 %sub, %3, !dbg !71
  ret i32 %add, !dbg !72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bipbuf_init(%struct.bipbuf_t* nocapture noundef writeonly %me, i32 noundef %size) local_unnamed_addr #0 !dbg !73 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 %size, metadata !80, metadata !DIExpression()), !dbg !81
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !82
  %conv = zext i32 %size to i64, !dbg !83
  %size1 = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !84
  store i64 %conv, i64* %size1, align 8, !dbg !85, !tbaa !50
  %1 = bitcast i32* %a_start to <4 x i32>*, !dbg !86
  store <4 x i32> zeroinitializer, <4 x i32>* %1, align 8, !dbg !86, !tbaa !37
  ret void, !dbg !87
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.bipbuf_t* @bipbuf_new(i32 noundef %size) local_unnamed_addr #1 !dbg !88 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !92, metadata !DIExpression()), !dbg !94
  %call = tail call fastcc i64 @bipbuf_sizeof(i32 noundef %size) #7, !dbg !95, !range !96
  %call1 = tail call noalias i8* @malloc(i64 noundef %call) #8, !dbg !97
  %0 = bitcast i8* %call1 to %struct.bipbuf_t*, !dbg !97
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %0, metadata !93, metadata !DIExpression()), !dbg !94
  %tobool.not = icmp eq i8* %call1, null, !dbg !98
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8, !dbg !101
  %1 = add i64 %gcov_ctr, 1, !dbg !101
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 0), align 8, !dbg !101
  br label %cleanup, !dbg !101

if.end:                                           ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !102
  %2 = add i64 %gcov_ctr2, 1, !dbg !102
  store i64 %2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.4, i64 0, i64 1), align 8, !dbg !102
  tail call void @bipbuf_init(%struct.bipbuf_t* noundef nonnull %0, i32 noundef %size) #7, !dbg !103
  br label %cleanup, !dbg !104

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bipbuf_t* [ %0, %if.end ], [ null, %if.then ], !dbg !94
  ret %struct.bipbuf_t* %retval.0, !dbg !105
}

; Function Attrs: nounwind
declare !dbg !106 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i64 @bipbuf_sizeof(i32 noundef %size) unnamed_addr #0 !dbg !114 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata i32 %size, metadata !118, metadata !DIExpression()), !dbg !119
  %conv = zext i32 %size to i64, !dbg !120
  %add = add nuw nsw i64 %conv, 24, !dbg !121
  ret i64 %add, !dbg !122
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bipbuf_free(%struct.bipbuf_t* noundef %me) local_unnamed_addr #1 !dbg !123 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !127, metadata !DIExpression()), !dbg !128
  %1 = bitcast %struct.bipbuf_t* %me to i8*, !dbg !129
  tail call void @free(i8* noundef %1) #8, !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nounwind
declare !dbg !132 dso_local void @free(i8* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bipbuf_is_empty(%struct.bipbuf_t* nocapture noundef readonly %me) local_unnamed_addr #0 !dbg !135 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !137, metadata !DIExpression()), !dbg !138
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !139
  %1 = load i32, i32* %a_start, align 8, !dbg !139, !tbaa !37
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !140
  %2 = load i32, i32* %a_end, align 4, !dbg !140, !tbaa !37
  %cmp = icmp eq i32 %1, %2, !dbg !141
  %conv = zext i1 %cmp to i32, !dbg !141
  ret i32 %conv, !dbg !142
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @bipbuf_request(%struct.bipbuf_t* noundef readonly %me, i32 noundef %size) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !148, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %size, metadata !149, metadata !DIExpression()), !dbg !150
  %call = tail call i32 @bipbuf_unused(%struct.bipbuf_t* noundef %me) #7, !dbg !151
  %cmp = icmp slt i32 %call, %size, !dbg !153
  br i1 %cmp, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16, !dbg !155
  %0 = add i64 %gcov_ctr, 1, !dbg !155
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 0), align 16, !dbg !155
  br label %return, !dbg !155

if.end:                                           ; preds = %entry
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !156
  %1 = load i32, i32* %b_inuse, align 4, !dbg !156, !tbaa !37
  %cmp1 = icmp eq i32 %1, 1, !dbg !158
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !159

if.then2:                                         ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !160
  %2 = add i64 %gcov_ctr7, 1, !dbg !160
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 1), align 8, !dbg !160
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !162
  %3 = load i32, i32* %b_end, align 8, !dbg !162, !tbaa !37
  %idx.ext = zext i32 %3 to i64, !dbg !163
  %add.ptr = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext, !dbg !163
  br label %return, !dbg !164

if.else:                                          ; preds = %if.end
  %gcov_ctr8 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !165
  %4 = add i64 %gcov_ctr8, 1, !dbg !165
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.8, i64 0, i64 2), align 16, !dbg !165
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !167
  %5 = load i32, i32* %a_end, align 4, !dbg !167, !tbaa !37
  %idx.ext5 = zext i32 %5 to i64, !dbg !168
  %add.ptr6 = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext5, !dbg !168
  br label %return, !dbg !169

return:                                           ; preds = %if.else, %if.then2, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %add.ptr, %if.then2 ], [ %add.ptr6, %if.else ], !dbg !150
  ret i8* %retval.0, !dbg !170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bipbuf_push(%struct.bipbuf_t* nocapture noundef %me, i32 noundef %size) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !175, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.value(metadata i32 %size, metadata !176, metadata !DIExpression()), !dbg !177
  %call = tail call i32 @bipbuf_unused(%struct.bipbuf_t* noundef %me) #7, !dbg !178
  %cmp = icmp slt i32 %call, %size, !dbg !180
  br i1 %cmp, label %if.then, label %if.end, !dbg !181

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !182
  %0 = add i64 %gcov_ctr, 1, !dbg !182
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 0), align 16, !dbg !182
  br label %return, !dbg !182

if.end:                                           ; preds = %entry
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !183
  %1 = load i32, i32* %b_inuse, align 4, !dbg !183, !tbaa !37
  %cmp1 = icmp eq i32 %1, 1, !dbg !185
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !186

if.then2:                                         ; preds = %if.end
  %gcov_ctr5 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !187
  %2 = add i64 %gcov_ctr5, 1, !dbg !187
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 1), align 8, !dbg !187
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !189
  %3 = load i32, i32* %b_end, align 8, !dbg !190, !tbaa !37
  %add = add i32 %3, %size, !dbg !190
  store i32 %add, i32* %b_end, align 8, !dbg !190, !tbaa !37
  br label %if.end4, !dbg !191

if.else:                                          ; preds = %if.end
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !192
  %4 = add i64 %gcov_ctr6, 1, !dbg !192
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.9, i64 0, i64 2), align 16, !dbg !192
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !194
  %5 = load i32, i32* %a_end, align 4, !dbg !195, !tbaa !37
  %add3 = add i32 %5, %size, !dbg !195
  store i32 %add3, i32* %a_end, align 4, !dbg !195, !tbaa !37
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2
  tail call fastcc void @__check_for_switch_to_b(%struct.bipbuf_t* noundef nonnull %me) #7, !dbg !196
  br label %return, !dbg !197

return:                                           ; preds = %if.end4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %size, %if.end4 ], !dbg !177
  ret i32 %retval.0, !dbg !198
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @__check_for_switch_to_b(%struct.bipbuf_t* nocapture noundef %me) unnamed_addr #0 !dbg !199 {
entry:
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 0), align 8
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !201, metadata !DIExpression()), !dbg !202
  %size = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !203
  %1 = load i64, i64* %size, align 8, !dbg !203, !tbaa !50
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !205
  %2 = load i32, i32* %a_end, align 4, !dbg !205, !tbaa !37
  %conv = zext i32 %2 to i64, !dbg !206
  %sub = sub i64 %1, %conv, !dbg !207
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !208
  %3 = load i32, i32* %a_start, align 8, !dbg !208, !tbaa !37
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !209
  %4 = load i32, i32* %b_end, align 8, !dbg !209, !tbaa !37
  %sub1 = sub i32 %3, %4, !dbg !210
  %conv2 = zext i32 %sub1 to i64, !dbg !211
  %cmp = icmp ult i64 %sub, %conv2, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  %gcov_ctr4 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 1), align 8, !dbg !214
  %5 = add i64 %gcov_ctr4, 1, !dbg !214
  store i64 %5, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.10, i64 0, i64 1), align 8, !dbg !214
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !215
  store i32 1, i32* %b_inuse, align 4, !dbg !216, !tbaa !37
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bipbuf_offer(%struct.bipbuf_t* noundef %me, i8* noundef %data, i32 noundef %size) local_unnamed_addr #1 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !224, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i8* %data, metadata !225, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %size, metadata !226, metadata !DIExpression()), !dbg !227
  %call = tail call i32 @bipbuf_unused(%struct.bipbuf_t* noundef %me) #7, !dbg !228
  %cmp = icmp slt i32 %call, %size, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 16, !dbg !232
  %0 = add i64 %gcov_ctr, 1, !dbg !232
  store i64 %0, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 0), align 16, !dbg !232
  br label %return, !dbg !232

if.end:                                           ; preds = %entry
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !233
  %1 = load i32, i32* %b_inuse, align 4, !dbg !233, !tbaa !37
  %cmp1 = icmp eq i32 %1, 1, !dbg !235
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !236

if.then2:                                         ; preds = %if.end
  %gcov_ctr15 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 1), align 8, !dbg !237
  %2 = add i64 %gcov_ctr15, 1, !dbg !237
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 1), align 8, !dbg !237
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !239
  %3 = load i32, i32* %b_end, align 8, !dbg !239, !tbaa !37
  %idx.ext = zext i32 %3 to i64, !dbg !240
  %add.ptr = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext, !dbg !240
  %conv = sext i32 %size to i64, !dbg !241
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr, i8* noundef %data, i64 noundef %conv) #8, !dbg !242
  %4 = load i32, i32* %b_end, align 8, !dbg !243, !tbaa !37
  %add = add i32 %4, %size, !dbg !243
  store i32 %add, i32* %b_end, align 8, !dbg !243, !tbaa !37
  br label %if.end14, !dbg !244

if.else:                                          ; preds = %if.end
  %gcov_ctr16 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 2), align 16, !dbg !245
  %5 = add i64 %gcov_ctr16, 1, !dbg !245
  store i64 %5, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.11, i64 0, i64 2), align 16, !dbg !245
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !247
  %6 = load i32, i32* %a_end, align 4, !dbg !247, !tbaa !37
  %idx.ext8 = zext i32 %6 to i64, !dbg !248
  %add.ptr9 = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext8, !dbg !248
  %conv10 = sext i32 %size to i64, !dbg !249
  %call11 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr9, i8* noundef %data, i64 noundef %conv10) #8, !dbg !250
  %7 = load i32, i32* %a_end, align 4, !dbg !251, !tbaa !37
  %add13 = add i32 %7, %size, !dbg !251
  store i32 %add13, i32* %a_end, align 4, !dbg !251, !tbaa !37
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then2
  tail call fastcc void @__check_for_switch_to_b(%struct.bipbuf_t* noundef nonnull %me) #7, !dbg !252
  br label %return, !dbg !253

return:                                           ; preds = %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %size, %if.end14 ], !dbg !227
  ret i32 %retval.0, !dbg !254
}

; Function Attrs: nounwind
declare !dbg !255 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @bipbuf_peek(%struct.bipbuf_t* noundef readonly %me, i32 noundef %size) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i32 %size, metadata !268, metadata !DIExpression()), !dbg !269
  %size1 = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !270
  %0 = load i64, i64* %size1, align 8, !dbg !270, !tbaa !50
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !272
  %1 = load i32, i32* %a_start, align 8, !dbg !272, !tbaa !37
  %add = add i32 %1, %size, !dbg !273
  %conv = zext i32 %add to i64, !dbg !274
  %cmp = icmp ult i64 %0, %conv, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 16, !dbg !277
  %2 = add i64 %gcov_ctr, 1, !dbg !277
  store i64 %2, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 0), align 16, !dbg !277
  br label %return, !dbg !277

if.end:                                           ; preds = %entry
  %call = tail call i32 @bipbuf_is_empty(%struct.bipbuf_t* noundef nonnull %me) #7, !dbg !278
  %tobool.not = icmp eq i32 %call, 0, !dbg !278
  br i1 %tobool.not, label %if.end4, label %if.then3, !dbg !280

if.then3:                                         ; preds = %if.end
  %gcov_ctr7 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 2), align 16, !dbg !281
  %3 = add i64 %gcov_ctr7, 1, !dbg !281
  store i64 %3, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 2), align 16, !dbg !281
  br label %return, !dbg !281

if.end4:                                          ; preds = %if.end
  %gcov_ctr6 = load i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 1), align 8, !dbg !282
  %4 = add i64 %gcov_ctr6, 1, !dbg !282
  store i64 %4, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @__llvm_gcov_ctr.12, i64 0, i64 1), align 8, !dbg !282
  %5 = load i32, i32* %a_start, align 8, !dbg !283, !tbaa !37
  %idx.ext = zext i32 %5 to i64, !dbg !284
  %add.ptr = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext, !dbg !284
  br label %return, !dbg !285

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ %add.ptr, %if.end4 ], !dbg !269
  ret i8* %retval.0, !dbg !286
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @bipbuf_peek_all(%struct.bipbuf_t* noundef readonly %me, i32* nocapture noundef writeonly %size) local_unnamed_addr #0 !dbg !287 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !292, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32* %size, metadata !293, metadata !DIExpression()), !dbg !294
  %call = tail call i32 @bipbuf_is_empty(%struct.bipbuf_t* noundef %me) #7, !dbg !295
  %tobool.not = icmp eq i32 %call, 0, !dbg !295
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !297

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8, !dbg !298
  %0 = add i64 %gcov_ctr, 1, !dbg !298
  store i64 %0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 0), align 8, !dbg !298
  br label %return, !dbg !298

if.end:                                           ; preds = %entry
  %gcov_ctr2 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 1), align 8, !dbg !299
  %1 = add i64 %gcov_ctr2, 1, !dbg !299
  store i64 %1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr.13, i64 0, i64 1), align 8, !dbg !299
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !300
  %2 = load i32, i32* %a_end, align 4, !dbg !300, !tbaa !37
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !301
  %3 = load i32, i32* %a_start, align 8, !dbg !301, !tbaa !37
  %sub = sub i32 %2, %3, !dbg !302
  store i32 %sub, i32* %size, align 4, !dbg !303, !tbaa !37
  %4 = load i32, i32* %a_start, align 8, !dbg !304, !tbaa !37
  %idx.ext = zext i32 %4 to i64, !dbg !305
  %add.ptr = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext, !dbg !305
  br label %return, !dbg !306

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %add.ptr, %if.end ], !dbg !294
  ret i8* %retval.0, !dbg !307
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i8* @bipbuf_poll(%struct.bipbuf_t* noundef %me, i32 noundef %size) local_unnamed_addr #0 !dbg !308 {
entry:
  call void @llvm.dbg.value(metadata %struct.bipbuf_t* %me, metadata !312, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i32 %size, metadata !313, metadata !DIExpression()), !dbg !315
  %call = tail call i32 @bipbuf_is_empty(%struct.bipbuf_t* noundef %me) #7, !dbg !316
  %tobool.not = icmp eq i32 %call, 0, !dbg !316
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !318

if.then:                                          ; preds = %entry
  %gcov_ctr = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 16, !dbg !319
  %0 = add i64 %gcov_ctr, 1, !dbg !319
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 0), align 16, !dbg !319
  br label %return, !dbg !319

if.end:                                           ; preds = %entry
  %size1 = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 0, !dbg !320
  %1 = load i64, i64* %size1, align 8, !dbg !320, !tbaa !50
  %a_start = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 1, !dbg !322
  %2 = load i32, i32* %a_start, align 8, !dbg !322, !tbaa !37
  %add = add i32 %2, %size, !dbg !323
  %conv = zext i32 %add to i64, !dbg !324
  %cmp = icmp ult i64 %1, %conv, !dbg !325
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !326

if.then3:                                         ; preds = %if.end
  %gcov_ctr23 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 1), align 8, !dbg !327
  %3 = add i64 %gcov_ctr23, 1, !dbg !327
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 1), align 8, !dbg !327
  br label %return, !dbg !327

if.end4:                                          ; preds = %if.end
  %idx.ext = zext i32 %2 to i64, !dbg !328
  %add.ptr = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 5, i64 %idx.ext, !dbg !328
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !314, metadata !DIExpression()), !dbg !315
  store i32 %add, i32* %a_start, align 8, !dbg !329, !tbaa !37
  %a_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 2, !dbg !330
  %4 = load i32, i32* %a_end, align 4, !dbg !330, !tbaa !37
  %cmp9 = icmp eq i32 %add, %4, !dbg !332
  br i1 %cmp9, label %if.then11, label %if.end22, !dbg !333

if.then11:                                        ; preds = %if.end4
  %b_inuse = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 4, !dbg !334
  %5 = load i32, i32* %b_inuse, align 4, !dbg !334, !tbaa !37
  %cmp12 = icmp eq i32 %5, 1, !dbg !337
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !338

if.then14:                                        ; preds = %if.then11
  %gcov_ctr24 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 2), align 16, !dbg !339
  %6 = add i64 %gcov_ctr24, 1, !dbg !339
  store i64 %6, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 2), align 16, !dbg !339
  store i32 0, i32* %a_start, align 8, !dbg !341, !tbaa !37
  %b_end = getelementptr inbounds %struct.bipbuf_t, %struct.bipbuf_t* %me, i64 0, i32 3, !dbg !342
  %7 = load i32, i32* %b_end, align 8, !dbg !342, !tbaa !37
  store i32 %7, i32* %a_end, align 4, !dbg !343, !tbaa !37
  br label %if.end22.sink.split, !dbg !344

if.else:                                          ; preds = %if.then11
  %gcov_ctr25 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 3), align 8, !dbg !345
  %8 = add i64 %gcov_ctr25, 1, !dbg !345
  store i64 %8, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 3), align 8, !dbg !345
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else, %if.then14
  %b_inuse.sink = phi i32* [ %b_inuse, %if.then14 ], [ %a_end, %if.else ]
  %b_end.sink = phi i32* [ %b_end, %if.then14 ], [ %a_start, %if.else ]
  store i32 0, i32* %b_inuse.sink, align 4, !dbg !346, !tbaa !37
  store i32 0, i32* %b_end.sink, align 8, !dbg !346, !tbaa !37
  br label %if.end22, !dbg !347

if.end22:                                         ; preds = %if.end22.sink.split, %if.end4
  %gcov_ctr26 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 4), align 16, !dbg !347
  %9 = add i64 %gcov_ctr26, 1, !dbg !347
  store i64 %9, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @__llvm_gcov_ctr.14, i64 0, i64 4), align 16, !dbg !347
  tail call fastcc void @__check_for_switch_to_b(%struct.bipbuf_t* noundef nonnull %me) #7, !dbg !348
  br label %return

return:                                           ; preds = %if.end22, %if.then3, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then3 ], [ %add.ptr, %if.end22 ], !dbg !315
  ret i8* %retval.0, !dbg !349
}

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_writeout() unnamed_addr #3 {
entry:
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @0, i64 0, i64 0), i32 875575338, i32 651042138) #9
  br label %counter.loop.header

counter.loop.header:                              ; preds = %entry, %counter.loop.header
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %counter.loop.header ]
  %0 = getelementptr inbounds [15 x %emit_function_args_ty], [15 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 0
  %ident = load i32, i32* %0, align 4
  %1 = getelementptr inbounds [15 x %emit_function_args_ty], [15 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 1
  %func_checkssum = load i32, i32* %1, align 4
  %2 = getelementptr inbounds [15 x %emit_function_args_ty], [15 x %emit_function_args_ty]* @__llvm_internal_gcov_emit_function_args.0, i64 0, i64 %indvars.iv, i32 2
  %cfg_checksum = load i32, i32* %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #9
  %3 = getelementptr inbounds [15 x %emit_arcs_args_ty], [15 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 0
  %num_counters = load i32, i32* %3, align 16
  %4 = getelementptr inbounds [15 x %emit_arcs_args_ty], [15 x %emit_arcs_args_ty]* @__llvm_internal_gcov_emit_arcs_args.0, i64 0, i64 %indvars.iv, i32 1
  %counters = load i64*, i64** %4, align 8
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, i64* %counters) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  tail call void @llvm_gcda_summary_info() #9
  tail call void @llvm_gcda_end_file() #9
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
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.1, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.2, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.3, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.4 to i8*), i8 0, i64 16, i1 false)
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.5, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.6, i64 0, i64 0), align 8
  store i64 0, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @__llvm_gcov_ctr.7, i64 0, i64 0), align 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.8 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.9 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.10 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.11 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([3 x i64]* @__llvm_gcov_ctr.12 to i8*), i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast ([2 x i64]* @__llvm_gcov_ctr.13 to i8*), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) bitcast ([5 x i64]* @__llvm_gcov_ctr.14 to i8*), i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal void @__llvm_gcov_init() unnamed_addr #3 {
entry:
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_reset) #9
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8}
!llvm.gcov = !{!9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bipbuffer.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "9d757a632775992bd4e9047d1de68029")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"/home/xuheng/blackbox/llvm-test/memcached/bipbuffer.gcno", !"/home/xuheng/blackbox/llvm-test/memcached/bipbuffer.gcda", !0}
!10 = !{!"clang version 14.0.0"}
!11 = distinct !DISubprogram(name: "bipbuf_unused", scope: !1, file: !1, line: 23, type: !12, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "bipbuf_t", file: !18, line: 18, baseType: !19)
!18 = !DIFile(filename: "./bipbuffer.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "99606bcb8393045e6bc9eef40115066f")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 4, size: 192, elements: !20)
!20 = !{!21, !23, !25, !26, !27, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !19, file: !18, line: 6, baseType: !22, size: 64)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "a_start", scope: !19, file: !18, line: 9, baseType: !24, size: 32, offset: 64)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "a_end", scope: !19, file: !18, line: 9, baseType: !24, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "b_end", scope: !19, file: !18, line: 12, baseType: !24, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "b_inuse", scope: !19, file: !18, line: 15, baseType: !14, size: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !18, line: 17, baseType: !29, offset: 192)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: -1)
!32 = !{!33}
!33 = !DILocalVariable(name: "me", arg: 1, scope: !11, file: !1, line: 23, type: !15)
!34 = !DILocation(line: 0, scope: !11)
!35 = !DILocation(line: 25, column: 18, scope: !36)
!36 = distinct !DILexicalBlock(scope: !11, file: !1, line: 25, column: 9)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 25, column: 11, scope: !36)
!42 = !DILocation(line: 25, column: 9, scope: !11)
!43 = !DILocation(line: 27, column: 16, scope: !36)
!44 = !DILocation(line: 27, column: 20, scope: !36)
!45 = !DILocation(line: 27, column: 34, scope: !36)
!46 = !DILocation(line: 27, column: 28, scope: !36)
!47 = !DILocation(line: 27, column: 9, scope: !36)
!48 = !DILocation(line: 29, column: 16, scope: !36)
!49 = !DILocation(line: 29, column: 20, scope: !36)
!50 = !{!51, !51, i64 0}
!51 = !{!"long", !39, i64 0}
!52 = !DILocation(line: 29, column: 31, scope: !36)
!53 = !DILocation(line: 29, column: 9, scope: !36)
!54 = !DILocation(line: 0, scope: !36)
!55 = !DILocation(line: 30, column: 1, scope: !11)
!56 = distinct !DISubprogram(name: "bipbuf_size", scope: !1, file: !1, line: 32, type: !12, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!57 = !{!58}
!58 = !DILocalVariable(name: "me", arg: 1, scope: !56, file: !1, line: 32, type: !15)
!59 = !DILocation(line: 0, scope: !56)
!60 = !DILocation(line: 34, column: 16, scope: !56)
!61 = !DILocation(line: 34, column: 12, scope: !56)
!62 = !DILocation(line: 34, column: 5, scope: !56)
!63 = distinct !DISubprogram(name: "bipbuf_used", scope: !1, file: !1, line: 37, type: !12, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!64 = !{!65}
!65 = !DILocalVariable(name: "me", arg: 1, scope: !63, file: !1, line: 37, type: !15)
!66 = !DILocation(line: 0, scope: !63)
!67 = !DILocation(line: 39, column: 17, scope: !63)
!68 = !DILocation(line: 39, column: 29, scope: !63)
!69 = !DILocation(line: 39, column: 23, scope: !63)
!70 = !DILocation(line: 39, column: 44, scope: !63)
!71 = !DILocation(line: 39, column: 38, scope: !63)
!72 = !DILocation(line: 39, column: 5, scope: !63)
!73 = distinct !DISubprogram(name: "bipbuf_init", scope: !1, file: !1, line: 42, type: !74, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !77}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "me", arg: 1, scope: !73, file: !1, line: 42, type: !76)
!80 = !DILocalVariable(name: "size", arg: 2, scope: !73, file: !1, line: 42, type: !77)
!81 = !DILocation(line: 0, scope: !73)
!82 = !DILocation(line: 44, column: 9, scope: !73)
!83 = !DILocation(line: 45, column: 16, scope: !73)
!84 = !DILocation(line: 45, column: 9, scope: !73)
!85 = !DILocation(line: 45, column: 14, scope: !73)
!86 = !DILocation(line: 44, column: 17, scope: !73)
!87 = !DILocation(line: 47, column: 1, scope: !73)
!88 = distinct !DISubprogram(name: "bipbuf_new", scope: !1, file: !1, line: 49, type: !89, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!76, !77}
!91 = !{!92, !93}
!92 = !DILocalVariable(name: "size", arg: 1, scope: !88, file: !1, line: 49, type: !77)
!93 = !DILocalVariable(name: "me", scope: !88, file: !1, line: 51, type: !76)
!94 = !DILocation(line: 0, scope: !88)
!95 = !DILocation(line: 51, column: 27, scope: !88)
!96 = !{i64 24, i64 4294967320}
!97 = !DILocation(line: 51, column: 20, scope: !88)
!98 = !DILocation(line: 52, column: 10, scope: !99)
!99 = distinct !DILexicalBlock(scope: !88, file: !1, line: 52, column: 9)
!100 = !DILocation(line: 52, column: 9, scope: !88)
!101 = !DILocation(line: 53, column: 9, scope: !99)
!102 = !DILocation(line: 54, column: 17, scope: !88)
!103 = !DILocation(line: 54, column: 5, scope: !88)
!104 = !DILocation(line: 55, column: 5, scope: !88)
!105 = !DILocation(line: 56, column: 1, scope: !88)
!106 = !DISubprogram(name: "malloc", scope: !107, file: !107, line: 539, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !113)
!107 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !22)
!112 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !{}
!114 = distinct !DISubprogram(name: "bipbuf_sizeof", scope: !1, file: !1, line: 18, type: !115, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!111, !77}
!117 = !{!118}
!118 = !DILocalVariable(name: "size", arg: 1, scope: !114, file: !1, line: 18, type: !77)
!119 = !DILocation(line: 0, scope: !114)
!120 = !DILocation(line: 20, column: 31, scope: !114)
!121 = !DILocation(line: 20, column: 29, scope: !114)
!122 = !DILocation(line: 20, column: 5, scope: !114)
!123 = distinct !DISubprogram(name: "bipbuf_free", scope: !1, file: !1, line: 58, type: !124, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !76}
!126 = !{!127}
!127 = !DILocalVariable(name: "me", arg: 1, scope: !123, file: !1, line: 58, type: !76)
!128 = !DILocation(line: 0, scope: !123)
!129 = !DILocation(line: 60, column: 10, scope: !123)
!130 = !DILocation(line: 60, column: 5, scope: !123)
!131 = !DILocation(line: 61, column: 1, scope: !123)
!132 = !DISubprogram(name: "free", scope: !107, file: !107, line: 565, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !113)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !110}
!135 = distinct !DISubprogram(name: "bipbuf_is_empty", scope: !1, file: !1, line: 63, type: !12, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!136 = !{!137}
!137 = !DILocalVariable(name: "me", arg: 1, scope: !135, file: !1, line: 63, type: !15)
!138 = !DILocation(line: 0, scope: !135)
!139 = !DILocation(line: 65, column: 16, scope: !135)
!140 = !DILocation(line: 65, column: 31, scope: !135)
!141 = !DILocation(line: 65, column: 24, scope: !135)
!142 = !DILocation(line: 65, column: 5, scope: !135)
!143 = distinct !DISubprogram(name: "bipbuf_request", scope: !1, file: !1, line: 77, type: !144, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!3, !76, !146}
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "me", arg: 1, scope: !143, file: !1, line: 77, type: !76)
!149 = !DILocalVariable(name: "size", arg: 2, scope: !143, file: !1, line: 77, type: !146)
!150 = !DILocation(line: 0, scope: !143)
!151 = !DILocation(line: 79, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !143, file: !1, line: 79, column: 9)
!153 = !DILocation(line: 79, column: 27, scope: !152)
!154 = !DILocation(line: 79, column: 9, scope: !143)
!155 = !DILocation(line: 80, column: 9, scope: !152)
!156 = !DILocation(line: 81, column: 18, scope: !157)
!157 = distinct !DILexicalBlock(scope: !143, file: !1, line: 81, column: 9)
!158 = !DILocation(line: 81, column: 11, scope: !157)
!159 = !DILocation(line: 81, column: 9, scope: !143)
!160 = !DILocation(line: 83, column: 33, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 82, column: 5)
!162 = !DILocation(line: 83, column: 48, scope: !161)
!163 = !DILocation(line: 83, column: 42, scope: !161)
!164 = !DILocation(line: 83, column: 9, scope: !161)
!165 = !DILocation(line: 87, column: 33, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !1, line: 86, column: 5)
!167 = !DILocation(line: 87, column: 48, scope: !166)
!168 = !DILocation(line: 87, column: 42, scope: !166)
!169 = !DILocation(line: 87, column: 9, scope: !166)
!170 = !DILocation(line: 89, column: 1, scope: !143)
!171 = distinct !DISubprogram(name: "bipbuf_push", scope: !1, file: !1, line: 91, type: !172, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{!14, !76, !146}
!174 = !{!175, !176}
!175 = !DILocalVariable(name: "me", arg: 1, scope: !171, file: !1, line: 91, type: !76)
!176 = !DILocalVariable(name: "size", arg: 2, scope: !171, file: !1, line: 91, type: !146)
!177 = !DILocation(line: 0, scope: !171)
!178 = !DILocation(line: 93, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 93, column: 9)
!180 = !DILocation(line: 93, column: 27, scope: !179)
!181 = !DILocation(line: 93, column: 9, scope: !171)
!182 = !DILocation(line: 94, column: 9, scope: !179)
!183 = !DILocation(line: 96, column: 18, scope: !184)
!184 = distinct !DILexicalBlock(scope: !171, file: !1, line: 96, column: 9)
!185 = !DILocation(line: 96, column: 11, scope: !184)
!186 = !DILocation(line: 96, column: 9, scope: !171)
!187 = !DILocation(line: 98, column: 22, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 97, column: 5)
!189 = !DILocation(line: 98, column: 13, scope: !188)
!190 = !DILocation(line: 98, column: 19, scope: !188)
!191 = !DILocation(line: 99, column: 5, scope: !188)
!192 = !DILocation(line: 102, column: 22, scope: !193)
!193 = distinct !DILexicalBlock(scope: !184, file: !1, line: 101, column: 5)
!194 = !DILocation(line: 102, column: 13, scope: !193)
!195 = !DILocation(line: 102, column: 19, scope: !193)
!196 = !DILocation(line: 105, column: 5, scope: !171)
!197 = !DILocation(line: 106, column: 5, scope: !171)
!198 = !DILocation(line: 107, column: 1, scope: !171)
!199 = distinct !DISubprogram(name: "__check_for_switch_to_b", scope: !1, file: !1, line: 70, type: !124, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!200 = !{!201}
!201 = !DILocalVariable(name: "me", arg: 1, scope: !199, file: !1, line: 70, type: !76)
!202 = !DILocation(line: 0, scope: !199)
!203 = !DILocation(line: 72, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 72, column: 9)
!205 = !DILocation(line: 72, column: 24, scope: !204)
!206 = !DILocation(line: 72, column: 20, scope: !204)
!207 = !DILocation(line: 72, column: 18, scope: !204)
!208 = !DILocation(line: 72, column: 36, scope: !204)
!209 = !DILocation(line: 72, column: 50, scope: !204)
!210 = !DILocation(line: 72, column: 44, scope: !204)
!211 = !DILocation(line: 72, column: 32, scope: !204)
!212 = !DILocation(line: 72, column: 30, scope: !204)
!213 = !DILocation(line: 72, column: 9, scope: !199)
!214 = !DILocation(line: 73, column: 9, scope: !204)
!215 = !DILocation(line: 73, column: 13, scope: !204)
!216 = !DILocation(line: 73, column: 21, scope: !204)
!217 = !DILocation(line: 74, column: 1, scope: !199)
!218 = distinct !DISubprogram(name: "bipbuf_offer", scope: !1, file: !1, line: 109, type: !219, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !223)
!219 = !DISubroutineType(types: !220)
!220 = !{!14, !76, !221, !146}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!223 = !{!224, !225, !226}
!224 = !DILocalVariable(name: "me", arg: 1, scope: !218, file: !1, line: 109, type: !76)
!225 = !DILocalVariable(name: "data", arg: 2, scope: !218, file: !1, line: 109, type: !221)
!226 = !DILocalVariable(name: "size", arg: 3, scope: !218, file: !1, line: 109, type: !146)
!227 = !DILocation(line: 0, scope: !218)
!228 = !DILocation(line: 112, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !218, file: !1, line: 112, column: 9)
!230 = !DILocation(line: 112, column: 27, scope: !229)
!231 = !DILocation(line: 112, column: 9, scope: !218)
!232 = !DILocation(line: 113, column: 9, scope: !229)
!233 = !DILocation(line: 115, column: 18, scope: !234)
!234 = distinct !DILexicalBlock(scope: !218, file: !1, line: 115, column: 9)
!235 = !DILocation(line: 115, column: 11, scope: !234)
!236 = !DILocation(line: 115, column: 9, scope: !218)
!237 = !DILocation(line: 117, column: 16, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !1, line: 116, column: 5)
!239 = !DILocation(line: 117, column: 31, scope: !238)
!240 = !DILocation(line: 117, column: 25, scope: !238)
!241 = !DILocation(line: 117, column: 44, scope: !238)
!242 = !DILocation(line: 117, column: 9, scope: !238)
!243 = !DILocation(line: 118, column: 19, scope: !238)
!244 = !DILocation(line: 119, column: 5, scope: !238)
!245 = !DILocation(line: 122, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !1, line: 121, column: 5)
!247 = !DILocation(line: 122, column: 31, scope: !246)
!248 = !DILocation(line: 122, column: 25, scope: !246)
!249 = !DILocation(line: 122, column: 44, scope: !246)
!250 = !DILocation(line: 122, column: 9, scope: !246)
!251 = !DILocation(line: 123, column: 19, scope: !246)
!252 = !DILocation(line: 126, column: 5, scope: !218)
!253 = !DILocation(line: 127, column: 5, scope: !218)
!254 = !DILocation(line: 128, column: 1, scope: !218)
!255 = !DISubprogram(name: "memcpy", scope: !256, file: !256, line: 43, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !113)
!256 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!257 = !DISubroutineType(types: !258)
!258 = !{!110, !259, !260, !111}
!259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!260 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!263 = distinct !DISubprogram(name: "bipbuf_peek", scope: !1, file: !1, line: 130, type: !264, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!3, !15, !77}
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "me", arg: 1, scope: !263, file: !1, line: 130, type: !15)
!268 = !DILocalVariable(name: "size", arg: 2, scope: !263, file: !1, line: 130, type: !77)
!269 = !DILocation(line: 0, scope: !263)
!270 = !DILocation(line: 133, column: 13, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !1, line: 133, column: 9)
!272 = !DILocation(line: 133, column: 24, scope: !271)
!273 = !DILocation(line: 133, column: 32, scope: !271)
!274 = !DILocation(line: 133, column: 20, scope: !271)
!275 = !DILocation(line: 133, column: 18, scope: !271)
!276 = !DILocation(line: 133, column: 9, scope: !263)
!277 = !DILocation(line: 134, column: 9, scope: !271)
!278 = !DILocation(line: 136, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !263, file: !1, line: 136, column: 9)
!280 = !DILocation(line: 136, column: 9, scope: !263)
!281 = !DILocation(line: 137, column: 9, scope: !279)
!282 = !DILocation(line: 139, column: 29, scope: !263)
!283 = !DILocation(line: 139, column: 44, scope: !263)
!284 = !DILocation(line: 139, column: 38, scope: !263)
!285 = !DILocation(line: 139, column: 5, scope: !263)
!286 = !DILocation(line: 140, column: 1, scope: !263)
!287 = distinct !DISubprogram(name: "bipbuf_peek_all", scope: !1, file: !1, line: 142, type: !288, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !291)
!288 = !DISubroutineType(types: !289)
!289 = !{!3, !15, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "me", arg: 1, scope: !287, file: !1, line: 142, type: !15)
!293 = !DILocalVariable(name: "size", arg: 2, scope: !287, file: !1, line: 142, type: !290)
!294 = !DILocation(line: 0, scope: !287)
!295 = !DILocation(line: 144, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !287, file: !1, line: 144, column: 9)
!297 = !DILocation(line: 144, column: 9, scope: !287)
!298 = !DILocation(line: 145, column: 9, scope: !296)
!299 = !DILocation(line: 147, column: 13, scope: !287)
!300 = !DILocation(line: 147, column: 17, scope: !287)
!301 = !DILocation(line: 147, column: 29, scope: !287)
!302 = !DILocation(line: 147, column: 23, scope: !287)
!303 = !DILocation(line: 147, column: 11, scope: !287)
!304 = !DILocation(line: 148, column: 43, scope: !287)
!305 = !DILocation(line: 148, column: 37, scope: !287)
!306 = !DILocation(line: 148, column: 5, scope: !287)
!307 = !DILocation(line: 149, column: 1, scope: !287)
!308 = distinct !DISubprogram(name: "bipbuf_poll", scope: !1, file: !1, line: 151, type: !309, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!3, !76, !77}
!311 = !{!312, !313, !314}
!312 = !DILocalVariable(name: "me", arg: 1, scope: !308, file: !1, line: 151, type: !76)
!313 = !DILocalVariable(name: "size", arg: 2, scope: !308, file: !1, line: 151, type: !77)
!314 = !DILocalVariable(name: "end", scope: !308, file: !1, line: 160, type: !110)
!315 = !DILocation(line: 0, scope: !308)
!316 = !DILocation(line: 153, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !308, file: !1, line: 153, column: 9)
!318 = !DILocation(line: 153, column: 9, scope: !308)
!319 = !DILocation(line: 154, column: 9, scope: !317)
!320 = !DILocation(line: 157, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !308, file: !1, line: 157, column: 9)
!322 = !DILocation(line: 157, column: 24, scope: !321)
!323 = !DILocation(line: 157, column: 32, scope: !321)
!324 = !DILocation(line: 157, column: 20, scope: !321)
!325 = !DILocation(line: 157, column: 18, scope: !321)
!326 = !DILocation(line: 157, column: 9, scope: !308)
!327 = !DILocation(line: 158, column: 9, scope: !321)
!328 = !DILocation(line: 160, column: 26, scope: !308)
!329 = !DILocation(line: 161, column: 17, scope: !308)
!330 = !DILocation(line: 164, column: 28, scope: !331)
!331 = distinct !DILexicalBlock(scope: !308, file: !1, line: 164, column: 9)
!332 = !DILocation(line: 164, column: 21, scope: !331)
!333 = !DILocation(line: 164, column: 9, scope: !308)
!334 = !DILocation(line: 167, column: 22, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !1, line: 167, column: 13)
!336 = distinct !DILexicalBlock(scope: !331, file: !1, line: 165, column: 5)
!337 = !DILocation(line: 167, column: 15, scope: !335)
!338 = !DILocation(line: 167, column: 13, scope: !336)
!339 = !DILocation(line: 169, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 168, column: 9)
!341 = !DILocation(line: 169, column: 25, scope: !340)
!342 = !DILocation(line: 170, column: 29, scope: !340)
!343 = !DILocation(line: 170, column: 23, scope: !340)
!344 = !DILocation(line: 172, column: 9, scope: !340)
!345 = !DILocation(line: 175, column: 27, scope: !335)
!346 = !DILocation(line: 0, scope: !335)
!347 = !DILocation(line: 178, column: 29, scope: !308)
!348 = !DILocation(line: 178, column: 5, scope: !308)
!349 = !DILocation(line: 180, column: 1, scope: !308)
