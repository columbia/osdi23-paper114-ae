; ModuleID = 'cache.c'
source_filename = "cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_t = type { %union.pthread_mutex_t, i8*, %struct.cache_head, i64, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.cache_head = type { %struct.cache_free_s*, %struct.cache_free_s** }
%struct.cache_free_s = type { %struct.anon }
%struct.anon = type { %struct.cache_free_s* }
%union.pthread_mutexattr_t = type { i32 }

@redzone_pattern = dso_local constant i64 -2401053089206444307, align 8, !dbg !0
@cache_error = dso_local local_unnamed_addr global i32 0, align 4, !dbg !17
@.str = private unnamed_addr constant [44 x i8] c"ret->bufsize >= sizeof(struct cache_free_s)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cache.c\00", align 1
@__PRETTY_FUNCTION__.cache_create = private unnamed_addr constant [52 x i8] c"cache_t *cache_create(const char *, size_t, size_t)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.cache_t* @cache_create(i8* noundef %name, i64 noundef %bufsize, i64 noundef %align) local_unnamed_addr #0 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %bufsize, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %align, metadata !89, metadata !DIExpression()), !dbg !92
  %call = tail call noalias i8* @calloc(i64 noundef 1, i64 noundef 88) #6, !dbg !93
  %0 = bitcast i8* %call to %struct.cache_t*, !dbg !93
  call void @llvm.dbg.value(metadata %struct.cache_t* %0, metadata !90, metadata !DIExpression()), !dbg !92
  %call1 = tail call noalias i8* @strdup(i8* noundef %name) #6, !dbg !94
  call void @llvm.dbg.value(metadata i8* %call1, metadata !91, metadata !DIExpression()), !dbg !92
  %cmp = icmp eq i8* %call, null, !dbg !95
  %cmp2 = icmp eq i8* %call1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2, !dbg !97
  br i1 %or.cond, label %if.then, label %lor.lhs.false3, !dbg !97

lor.lhs.false3:                                   ; preds = %entry
  %mutex = bitcast i8* %call to %union.pthread_mutex_t*, !dbg !98
  %call4 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef %mutex, %union.pthread_mutexattr_t* noundef null) #6, !dbg !99
  %cmp5 = icmp eq i32 %call4, -1, !dbg !100
  br i1 %cmp5, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %lor.lhs.false3, %entry
  tail call void @free(i8* noundef %call) #6, !dbg !102
  tail call void @free(i8* noundef %call1) #6, !dbg !104
  br label %cleanup, !dbg !105

if.end:                                           ; preds = %lor.lhs.false3
  %name6 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !106
  %1 = bitcast i8* %name6 to i8**, !dbg !106
  store i8* %call1, i8** %1, align 8, !dbg !107, !tbaa !108
  %head = getelementptr inbounds i8, i8* %call, i64 48, !dbg !116
  %stqh_first = bitcast i8* %head to %struct.cache_free_s**, !dbg !116
  store %struct.cache_free_s* null, %struct.cache_free_s** %stqh_first, align 8, !dbg !116, !tbaa !118
  %stqh_last = getelementptr inbounds i8, i8* %call, i64 56, !dbg !116
  %2 = bitcast i8* %stqh_last to i8**, !dbg !116
  store i8* %head, i8** %2, align 8, !dbg !116, !tbaa !119
  %add = add i64 %bufsize, 16, !dbg !120
  %bufsize10 = getelementptr inbounds i8, i8* %call, i64 64, !dbg !121
  %3 = bitcast i8* %bufsize10 to i64*, !dbg !121
  store i64 %add, i64* %3, align 8, !dbg !122, !tbaa !123
  %cmp12 = icmp ugt i64 %add, 7, !dbg !124
  br i1 %cmp12, label %cleanup, label %if.else, !dbg !127

if.else:                                          ; preds = %if.end
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.cache_create, i64 0, i64 0)) #7, !dbg !124
  unreachable, !dbg !124

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.cache_t* [ null, %if.then ], [ %0, %if.end ], !dbg !92
  ret %struct.cache_t* %retval.0, !dbg !128
}

; Function Attrs: nounwind
declare !dbg !129 dso_local noalias i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !134 dso_local noalias i8* @strdup(i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !138 dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t* noundef, %union.pthread_mutexattr_t* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !153 dso_local void @free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cache_set_limit(%struct.cache_t* noundef %cache, i32 noundef %limit) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %limit, metadata !161, metadata !DIExpression()), !dbg !162
  %mutex = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 0, !dbg !163
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !164
  %limit1 = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 7, !dbg !165
  store i32 %limit, i32* %limit1, align 4, !dbg !166, !tbaa !167
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nounwind
declare !dbg !170 dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !173 dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cache_destroy(%struct.cache_t* noundef %cache) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !178, metadata !DIExpression()), !dbg !181
  %stqh_first = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, i32 0
  %0 = load %struct.cache_free_s*, %struct.cache_free_s** %stqh_first, align 8, !dbg !182, !tbaa !118
  %cmp.not20 = icmp eq %struct.cache_free_s* %0, null, !dbg !182
  br i1 %cmp.not20, label %while.end, label %while.body.lr.ph, !dbg !183

while.body.lr.ph:                                 ; preds = %entry
  %stqh_last = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, i32 1
  br label %while.body, !dbg !183

while.body:                                       ; preds = %while.body.lr.ph, %do.end
  %1 = phi %struct.cache_free_s* [ %0, %while.body.lr.ph ], [ %4, %do.end ]
  call void @llvm.dbg.value(metadata %struct.cache_free_s* %1, metadata !179, metadata !DIExpression()), !dbg !184
  %stqe_next = getelementptr inbounds %struct.cache_free_s, %struct.cache_free_s* %1, i64 0, i32 0, i32 0, !dbg !185
  %2 = load %struct.cache_free_s*, %struct.cache_free_s** %stqe_next, align 8, !dbg !185, !tbaa !188
  store %struct.cache_free_s* %2, %struct.cache_free_s** %stqh_first, align 8, !dbg !185, !tbaa !118
  %cmp7 = icmp eq %struct.cache_free_s* %2, null, !dbg !185
  br i1 %cmp7, label %if.then, label %do.end, !dbg !191

if.then:                                          ; preds = %while.body
  store %struct.cache_free_s** %stqh_first, %struct.cache_free_s*** %stqh_last, align 8, !dbg !185, !tbaa !119
  br label %do.end, !dbg !185

do.end:                                           ; preds = %if.then, %while.body
  %3 = bitcast %struct.cache_free_s* %1 to i8*, !dbg !192
  tail call void @free(i8* noundef nonnull %3) #6, !dbg !193
  %4 = load %struct.cache_free_s*, %struct.cache_free_s** %stqh_first, align 8, !dbg !182, !tbaa !118
  %cmp.not = icmp eq %struct.cache_free_s* %4, null, !dbg !182
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !183, !llvm.loop !194

while.end:                                        ; preds = %do.end, %entry
  %name = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 1, !dbg !197
  %5 = load i8*, i8** %name, align 8, !dbg !197, !tbaa !108
  tail call void @free(i8* noundef %5) #6, !dbg !198
  %mutex = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 0, !dbg !199
  %call = tail call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !200
  %6 = bitcast %struct.cache_t* %cache to i8*, !dbg !201
  tail call void @free(i8* noundef %6) #6, !dbg !202
  ret void, !dbg !203
}

; Function Attrs: nounwind
declare !dbg !204 dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @cache_alloc(%struct.cache_t* noundef %cache) local_unnamed_addr #0 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !209, metadata !DIExpression()), !dbg !211
  %mutex = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 0, !dbg !212
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !213
  %call1 = tail call i8* @do_cache_alloc(%struct.cache_t* noundef %cache) #8, !dbg !214
  call void @llvm.dbg.value(metadata i8* %call1, metadata !210, metadata !DIExpression()), !dbg !211
  %call3 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !215
  ret i8* %call1, !dbg !216
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @do_cache_alloc(%struct.cache_t* noundef %cache) local_unnamed_addr #0 !dbg !217 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !219, metadata !DIExpression()), !dbg !226
  %freecurr = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 6, !dbg !227
  %0 = load i32, i32* %freecurr, align 8, !dbg !227, !tbaa !229
  %cmp = icmp sgt i32 %0, 0, !dbg !230
  br i1 %cmp, label %if.then, label %if.else, !dbg !231

if.then:                                          ; preds = %entry
  %stqh_first = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, i32 0, !dbg !232
  %1 = load %struct.cache_free_s*, %struct.cache_free_s** %stqh_first, align 8, !dbg !232, !tbaa !118
  %2 = bitcast %struct.cache_free_s* %1 to i8*, !dbg !232
  call void @llvm.dbg.value(metadata i8* %2, metadata !220, metadata !DIExpression()), !dbg !226
  %stqe_next = getelementptr inbounds %struct.cache_free_s, %struct.cache_free_s* %1, i64 0, i32 0, i32 0, !dbg !234
  %3 = load %struct.cache_free_s*, %struct.cache_free_s** %stqe_next, align 8, !dbg !234, !tbaa !188
  store %struct.cache_free_s* %3, %struct.cache_free_s** %stqh_first, align 8, !dbg !234, !tbaa !118
  %cmp5 = icmp eq %struct.cache_free_s* %3, null, !dbg !234
  br i1 %cmp5, label %if.then6, label %do.end, !dbg !237

if.then6:                                         ; preds = %if.then
  %stqh_last = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, i32 1, !dbg !234
  store %struct.cache_free_s** %stqh_first, %struct.cache_free_s*** %stqh_last, align 8, !dbg !234, !tbaa !119
  br label %do.end, !dbg !234

do.end:                                           ; preds = %if.then6, %if.then
  %call = tail call fastcc i8* @get_object(i8* noundef nonnull %2) #8, !dbg !238
  call void @llvm.dbg.value(metadata i8* %call, metadata !221, metadata !DIExpression()), !dbg !226
  %dec = add nsw i32 %0, -1, !dbg !239
  store i32 %dec, i32* %freecurr, align 8, !dbg !239, !tbaa !229
  br label %if.then25, !dbg !240

if.else:                                          ; preds = %entry
  %limit = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 7, !dbg !241
  %4 = load i32, i32* %limit, align 4, !dbg !241, !tbaa !167
  %cmp11 = icmp eq i32 %4, 0, !dbg !243
  br i1 %cmp11, label %if.then14, label %lor.lhs.false, !dbg !244

lor.lhs.false:                                    ; preds = %if.else
  %total = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 5, !dbg !245
  %5 = load i32, i32* %total, align 4, !dbg !245, !tbaa !246
  %cmp13 = icmp slt i32 %5, %4, !dbg !247
  br i1 %cmp13, label %if.then14, label %if.end30, !dbg !248

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  %bufsize = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 3, !dbg !249
  %6 = load i64, i64* %bufsize, align 8, !dbg !249, !tbaa !123
  %call15 = tail call noalias i8* @malloc(i64 noundef %6) #6, !dbg !251
  call void @llvm.dbg.value(metadata i8* %call15, metadata !220, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i8* %call15, metadata !221, metadata !DIExpression()), !dbg !226
  %cmp16.not = icmp eq i8* %call15, null, !dbg !252
  br i1 %cmp16.not, label %if.end30, label %if.then17, !dbg !254

if.then17:                                        ; preds = %if.then14
  %call18 = tail call fastcc i8* @get_object(i8* noundef nonnull %call15) #8, !dbg !255
  call void @llvm.dbg.value(metadata i8* %call18, metadata !221, metadata !DIExpression()), !dbg !226
  %total19 = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 5, !dbg !257
  %7 = load i32, i32* %total19, align 4, !dbg !258, !tbaa !246
  %inc = add nsw i32 %7, 1, !dbg !258
  store i32 %inc, i32* %total19, align 4, !dbg !258, !tbaa !246
  br label %if.then25, !dbg !259

if.then25:                                        ; preds = %do.end, %if.then17
  %object.0 = phi i8* [ %call, %do.end ], [ %call18, %if.then17 ], !dbg !260
  %ret.0 = phi i8* [ %2, %do.end ], [ %call15, %if.then17 ]
  call void @llvm.dbg.value(metadata i8* %ret.0, metadata !220, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata i8* %object.0, metadata !221, metadata !DIExpression()), !dbg !226
  %8 = bitcast i8* %ret.0 to i64*, !dbg !261
  call void @llvm.dbg.value(metadata i64* %8, metadata !222, metadata !DIExpression()), !dbg !262
  store i64 -2401053089206444307, i64* %8, align 8, !dbg !263, !tbaa !264
  %add.ptr = getelementptr inbounds i8, i8* %ret.0, i64 8, !dbg !265
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !220, metadata !DIExpression()), !dbg !226
  %bufsize26 = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 3, !dbg !266
  %9 = load i64, i64* %bufsize26, align 8, !dbg !266, !tbaa !123
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr, i64 %9, !dbg !267
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr27, i64 -16, !dbg !268
  %call29 = tail call i8* @memcpy(i8* noundef nonnull %add.ptr28, i8* noundef bitcast (i64* @redzone_pattern to i8*), i64 noundef 8) #6, !dbg !269
  br label %if.end30, !dbg !270

if.end30:                                         ; preds = %lor.lhs.false, %if.then14, %if.then25
  %object.055 = phi i8* [ %object.0, %if.then25 ], [ null, %if.then14 ], [ null, %lor.lhs.false ]
  ret i8* %object.055, !dbg !271
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc nonnull i8* @get_object(i8* noundef readnone %ptr) unnamed_addr #3 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !276, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !277, metadata !DIExpression()), !dbg !278
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 8, !dbg !279
  ret i8* %add.ptr, !dbg !280
}

; Function Attrs: nounwind
declare !dbg !281 dso_local noalias i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !284 dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @cache_free(%struct.cache_t* noundef %cache, i8* noundef %ptr) local_unnamed_addr #0 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !295, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !296, metadata !DIExpression()), !dbg !297
  %mutex = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 0, !dbg !298
  %call = tail call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !299
  tail call void @do_cache_free(%struct.cache_t* noundef %cache, i8* noundef %ptr) #8, !dbg !300
  %call2 = tail call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %mutex) #6, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_cache_free(%struct.cache_t* nocapture noundef %cache, i8* noundef %ptr) local_unnamed_addr #0 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata %struct.cache_t* %cache, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !306, metadata !DIExpression()), !dbg !308
  %bufsize = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 3, !dbg !309
  %0 = load i64, i64* %bufsize, align 8, !dbg !309, !tbaa !123
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 %0, !dbg !311
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16, !dbg !312
  %call = tail call i32 @memcmp(i8* noundef nonnull %add.ptr1, i8* noundef bitcast (i64* @redzone_pattern to i8*), i64 noundef 8) #9, !dbg !313
  %cmp.not = icmp eq i32 %call, 0, !dbg !314
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !315

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @raise(i32 noundef 6) #6, !dbg !316
  store i32 1, i32* @cache_error, align 4, !dbg !318, !tbaa !319
  br label %cleanup.cont, !dbg !320

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !307, metadata !DIExpression()), !dbg !308
  %incdec.ptr = getelementptr inbounds i8, i8* %ptr, i64 -8, !dbg !321
  %1 = bitcast i8* %incdec.ptr to i64*, !dbg !321
  call void @llvm.dbg.value(metadata i64* %1, metadata !307, metadata !DIExpression()), !dbg !308
  %2 = load i64, i64* %1, align 8, !dbg !322, !tbaa !264
  %cmp3.not = icmp eq i64 %2, -2401053089206444307, !dbg !324
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !325

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @raise(i32 noundef 6) #6, !dbg !326
  store i32 -1, i32* @cache_error, align 4, !dbg !328, !tbaa !319
  br label %cleanup.cont, !dbg !329

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !306, metadata !DIExpression()), !dbg !308
  %limit = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 7, !dbg !330
  %3 = load i32, i32* %limit, align 4, !dbg !330, !tbaa !167
  %cmp7.not = icmp eq i32 %3, 0, !dbg !332
  br i1 %cmp7.not, label %do.body, label %land.lhs.true, !dbg !333

land.lhs.true:                                    ; preds = %if.end6
  %total = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 5, !dbg !334
  %4 = load i32, i32* %total, align 4, !dbg !334, !tbaa !246
  %cmp9 = icmp slt i32 %3, %4, !dbg !335
  br i1 %cmp9, label %if.then10, label %do.body, !dbg !336

if.then10:                                        ; preds = %land.lhs.true
  tail call void @free(i8* noundef nonnull %incdec.ptr) #6, !dbg !337
  %5 = load i32, i32* %total, align 4, !dbg !339, !tbaa !246
  %dec = add nsw i32 %5, -1, !dbg !339
  store i32 %dec, i32* %total, align 4, !dbg !339, !tbaa !246
  br label %cleanup.cont, !dbg !340

do.body:                                          ; preds = %if.end6, %land.lhs.true
  %head = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, !dbg !341
  %stqh_first = getelementptr inbounds %struct.cache_head, %struct.cache_head* %head, i64 0, i32 0, !dbg !341
  %6 = load %struct.cache_free_s*, %struct.cache_free_s** %stqh_first, align 8, !dbg !341, !tbaa !118
  %stqe_next = bitcast i8* %incdec.ptr to %struct.cache_free_s**, !dbg !341
  store %struct.cache_free_s* %6, %struct.cache_free_s** %stqe_next, align 8, !dbg !341, !tbaa !188
  %cmp12 = icmp eq %struct.cache_free_s* %6, null, !dbg !341
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !345

if.then13:                                        ; preds = %do.body
  %stqh_last = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 2, i32 1, !dbg !341
  %7 = bitcast %struct.cache_free_s*** %stqh_last to i8**, !dbg !341
  store i8* %incdec.ptr, i8** %7, align 8, !dbg !341, !tbaa !119
  br label %if.end17, !dbg !341

if.end17:                                         ; preds = %if.then13, %do.body
  %8 = bitcast %struct.cache_head* %head to i8**, !dbg !345
  store i8* %incdec.ptr, i8** %8, align 8, !dbg !345, !tbaa !118
  %freecurr = getelementptr inbounds %struct.cache_t, %struct.cache_t* %cache, i64 0, i32 6, !dbg !346
  %9 = load i32, i32* %freecurr, align 8, !dbg !347, !tbaa !229
  %inc = add nsw i32 %9, 1, !dbg !347
  store i32 %inc, i32* %freecurr, align 8, !dbg !347, !tbaa !229
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then4, %if.end17, %if.then10, %if.then
  ret void, !dbg !348
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !349 dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !352 dso_local i32 @raise(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "redzone_pattern", scope: !2, file: !3, line: 14, type: !20, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cache.c", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "60b1b5f6bc21bd27dd29da4cd54982da")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_free_s", file: !10, line: 12, size: 64, elements: !11)
!10 = !DIFile(filename: "./cache.h", directory: "/home/xuheng/blackbox/llvm-test/memcached", checksumkind: CSK_MD5, checksum: "d97639c8540587a19d8550d7d7156448")
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "c_next", scope: !9, file: !10, line: 13, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 13, size: 64, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !13, file: !10, line: 13, baseType: !8, size: 64)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "cache_error", scope: !2, file: !3, line: 15, type: !19, isLocal: false, isDefinition: true)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{!"clang version 14.0.0"}
!31 = distinct !DISubprogram(name: "cache_create", scope: !3, file: !3, line: 18, type: !32, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !84, !78, !78}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_t", file: !10, line: 39, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 22, size: 704, elements: !37)
!37 = !{!38, !70, !71, !77, !80, !81, !82, !83}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !36, file: !10, line: 24, baseType: !39, size: 320)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !40, line: 67, size: 320, elements: !42)
!42 = !{!43, !64, !68}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !41, file: !40, line: 69, baseType: !44, size: 320)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !45, line: 22, size: 320, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!46 = !{!47, !48, !50, !51, !52, !53, !55, !56}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !44, file: !45, line: 24, baseType: !19, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !44, file: !45, line: 25, baseType: !49, size: 32, offset: 32)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !44, file: !45, line: 26, baseType: !19, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !44, file: !45, line: 28, baseType: !49, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !44, file: !45, line: 32, baseType: !19, size: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !44, file: !45, line: 34, baseType: !54, size: 16, offset: 160)
!54 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !44, file: !45, line: 35, baseType: !54, size: 16, offset: 176)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !44, file: !45, line: 36, baseType: !57, size: 128, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !58, line: 53, baseType: !59)
!58 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !58, line: 49, size: 128, elements: !60)
!60 = !{!61, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !59, file: !58, line: 51, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !59, file: !58, line: 52, baseType: !62, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !41, file: !40, line: 70, baseType: !65, size: 320)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 40)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !41, file: !40, line: 71, baseType: !69, size: 64)
!69 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !10, line: 26, baseType: !6, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !36, file: !10, line: 28, baseType: !72, size: 128, offset: 384)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !10, line: 28, size: 128, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !72, file: !10, line: 28, baseType: !8, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !72, file: !10, line: 28, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !36, file: !10, line: 30, baseType: !78, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 46, baseType: !25)
!79 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "freetotal", scope: !36, file: !10, line: 32, baseType: !19, size: 32, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !36, file: !10, line: 34, baseType: !19, size: 32, offset: 608)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "freecurr", scope: !36, file: !10, line: 36, baseType: !19, size: 32, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !36, file: !10, line: 38, baseType: !19, size: 32, offset: 672)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DILocalVariable(name: "name", arg: 1, scope: !31, file: !3, line: 18, type: !84)
!88 = !DILocalVariable(name: "bufsize", arg: 2, scope: !31, file: !3, line: 18, type: !78)
!89 = !DILocalVariable(name: "align", arg: 3, scope: !31, file: !3, line: 18, type: !78)
!90 = !DILocalVariable(name: "ret", scope: !31, file: !3, line: 19, type: !34)
!91 = !DILocalVariable(name: "nm", scope: !31, file: !3, line: 20, type: !6)
!92 = !DILocation(line: 0, scope: !31)
!93 = !DILocation(line: 19, column: 20, scope: !31)
!94 = !DILocation(line: 20, column: 16, scope: !31)
!95 = !DILocation(line: 21, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !31, file: !3, line: 21, column: 9)
!97 = !DILocation(line: 21, column: 21, scope: !96)
!98 = !DILocation(line: 22, column: 34, scope: !96)
!99 = !DILocation(line: 22, column: 9, scope: !96)
!100 = !DILocation(line: 22, column: 47, scope: !96)
!101 = !DILocation(line: 21, column: 9, scope: !31)
!102 = !DILocation(line: 23, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !96, file: !3, line: 22, column: 54)
!104 = !DILocation(line: 24, column: 9, scope: !103)
!105 = !DILocation(line: 25, column: 9, scope: !103)
!106 = !DILocation(line: 28, column: 10, scope: !31)
!107 = !DILocation(line: 28, column: 15, scope: !31)
!108 = !{!109, !112, i64 40}
!109 = !{!"", !110, i64 0, !112, i64 40, !113, i64 48, !114, i64 64, !115, i64 72, !115, i64 76, !115, i64 80, !115, i64 84}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!"any pointer", !110, i64 0}
!113 = !{!"cache_head", !112, i64 0, !112, i64 8}
!114 = !{!"long", !110, i64 0}
!115 = !{!"int", !110, i64 0}
!116 = !DILocation(line: 29, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !31, file: !3, line: 29, column: 5)
!118 = !{!109, !112, i64 48}
!119 = !{!109, !112, i64 56}
!120 = !DILocation(line: 32, column: 28, scope: !31)
!121 = !DILocation(line: 32, column: 10, scope: !31)
!122 = !DILocation(line: 32, column: 18, scope: !31)
!123 = !{!109, !114, i64 64}
!124 = !DILocation(line: 36, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 36, column: 5)
!126 = distinct !DILexicalBlock(scope: !31, file: !3, line: 36, column: 5)
!127 = !DILocation(line: 36, column: 5, scope: !126)
!128 = !DILocation(line: 39, column: 1, scope: !31)
!129 = !DISubprogram(name: "calloc", scope: !130, file: !130, line: 542, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!130 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!131 = !DISubroutineType(types: !132)
!132 = !{!5, !78, !78}
!133 = !{}
!134 = !DISubprogram(name: "strdup", scope: !135, file: !135, line: 167, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!135 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "61f60112cf5c0a45c54ea1f595add24c")
!136 = !DISubroutineType(types: !137)
!137 = !{!6, !84}
!138 = !DISubprogram(name: "pthread_mutex_init", scope: !139, file: !139, line: 725, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!139 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!140 = !DISubroutineType(types: !141)
!141 = !{!19, !142, !143}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !40, line: 36, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !40, line: 32, size: 32, elements: !147)
!147 = !{!148, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !146, file: !40, line: 34, baseType: !149, size: 32)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 4)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !146, file: !40, line: 35, baseType: !19, size: 32)
!153 = !DISubprogram(name: "free", scope: !130, file: !130, line: 565, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !5}
!156 = distinct !DISubprogram(name: "cache_set_limit", scope: !3, file: !3, line: 41, type: !157, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !34, !19}
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "cache", arg: 1, scope: !156, file: !3, line: 41, type: !34)
!161 = !DILocalVariable(name: "limit", arg: 2, scope: !156, file: !3, line: 41, type: !19)
!162 = !DILocation(line: 0, scope: !156)
!163 = !DILocation(line: 42, column: 32, scope: !156)
!164 = !DILocation(line: 42, column: 5, scope: !156)
!165 = !DILocation(line: 43, column: 12, scope: !156)
!166 = !DILocation(line: 43, column: 18, scope: !156)
!167 = !{!109, !115, i64 84}
!168 = !DILocation(line: 44, column: 5, scope: !156)
!169 = !DILocation(line: 45, column: 1, scope: !156)
!170 = !DISubprogram(name: "pthread_mutex_lock", scope: !139, file: !139, line: 738, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!171 = !DISubroutineType(types: !172)
!172 = !{!19, !142}
!173 = !DISubprogram(name: "pthread_mutex_unlock", scope: !139, file: !139, line: 756, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!174 = distinct !DISubprogram(name: "cache_destroy", scope: !3, file: !3, line: 56, type: !175, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !34}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "cache", arg: 1, scope: !174, file: !3, line: 56, type: !34)
!179 = !DILocalVariable(name: "o", scope: !180, file: !3, line: 58, type: !8)
!180 = distinct !DILexicalBlock(scope: !174, file: !3, line: 57, column: 41)
!181 = !DILocation(line: 0, scope: !174)
!182 = !DILocation(line: 57, column: 13, scope: !174)
!183 = !DILocation(line: 57, column: 5, scope: !174)
!184 = !DILocation(line: 0, scope: !180)
!185 = !DILocation(line: 59, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 59, column: 9)
!187 = distinct !DILexicalBlock(scope: !180, file: !3, line: 59, column: 9)
!188 = !{!189, !112, i64 0}
!189 = !{!"cache_free_s", !190, i64 0}
!190 = !{!"", !112, i64 0}
!191 = !DILocation(line: 59, column: 9, scope: !187)
!192 = !DILocation(line: 60, column: 14, scope: !180)
!193 = !DILocation(line: 60, column: 9, scope: !180)
!194 = distinct !{!194, !183, !195, !196}
!195 = !DILocation(line: 61, column: 5, scope: !174)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 62, column: 17, scope: !174)
!198 = !DILocation(line: 62, column: 5, scope: !174)
!199 = !DILocation(line: 63, column: 35, scope: !174)
!200 = !DILocation(line: 63, column: 5, scope: !174)
!201 = !DILocation(line: 64, column: 10, scope: !174)
!202 = !DILocation(line: 64, column: 5, scope: !174)
!203 = !DILocation(line: 65, column: 1, scope: !174)
!204 = !DISubprogram(name: "pthread_mutex_destroy", scope: !139, file: !139, line: 730, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!205 = distinct !DISubprogram(name: "cache_alloc", scope: !3, file: !3, line: 67, type: !206, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!5, !34}
!208 = !{!209, !210}
!209 = !DILocalVariable(name: "cache", arg: 1, scope: !205, file: !3, line: 67, type: !34)
!210 = !DILocalVariable(name: "ret", scope: !205, file: !3, line: 68, type: !5)
!211 = !DILocation(line: 0, scope: !205)
!212 = !DILocation(line: 69, column: 32, scope: !205)
!213 = !DILocation(line: 69, column: 5, scope: !205)
!214 = !DILocation(line: 70, column: 11, scope: !205)
!215 = !DILocation(line: 71, column: 5, scope: !205)
!216 = !DILocation(line: 72, column: 5, scope: !205)
!217 = distinct !DISubprogram(name: "do_cache_alloc", scope: !3, file: !3, line: 75, type: !206, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(name: "cache", arg: 1, scope: !217, file: !3, line: 75, type: !34)
!220 = !DILocalVariable(name: "ret", scope: !217, file: !3, line: 76, type: !5)
!221 = !DILocalVariable(name: "object", scope: !217, file: !3, line: 77, type: !5)
!222 = !DILocalVariable(name: "pre", scope: !223, file: !3, line: 97, type: !225)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 95, column: 25)
!224 = distinct !DILexicalBlock(scope: !217, file: !3, line: 95, column: 9)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!226 = !DILocation(line: 0, scope: !217)
!227 = !DILocation(line: 78, column: 16, scope: !228)
!228 = distinct !DILexicalBlock(scope: !217, file: !3, line: 78, column: 9)
!229 = !{!109, !115, i64 80}
!230 = !DILocation(line: 78, column: 25, scope: !228)
!231 = !DILocation(line: 78, column: 9, scope: !217)
!232 = !DILocation(line: 79, column: 15, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 78, column: 30)
!234 = !DILocation(line: 80, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 80, column: 9)
!236 = distinct !DILexicalBlock(scope: !233, file: !3, line: 80, column: 9)
!237 = !DILocation(line: 80, column: 9, scope: !236)
!238 = !DILocation(line: 81, column: 18, scope: !233)
!239 = !DILocation(line: 82, column: 24, scope: !233)
!240 = !DILocation(line: 83, column: 5, scope: !233)
!241 = !DILocation(line: 83, column: 23, scope: !242)
!242 = distinct !DILexicalBlock(scope: !228, file: !3, line: 83, column: 16)
!243 = !DILocation(line: 83, column: 29, scope: !242)
!244 = !DILocation(line: 83, column: 34, scope: !242)
!245 = !DILocation(line: 83, column: 44, scope: !242)
!246 = !{!109, !115, i64 76}
!247 = !DILocation(line: 83, column: 50, scope: !242)
!248 = !DILocation(line: 83, column: 16, scope: !228)
!249 = !DILocation(line: 84, column: 38, scope: !250)
!250 = distinct !DILexicalBlock(scope: !242, file: !3, line: 83, column: 66)
!251 = !DILocation(line: 84, column: 24, scope: !250)
!252 = !DILocation(line: 85, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 85, column: 13)
!254 = !DILocation(line: 85, column: 13, scope: !250)
!255 = !DILocation(line: 86, column: 22, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 85, column: 26)
!257 = !DILocation(line: 88, column: 20, scope: !256)
!258 = !DILocation(line: 88, column: 25, scope: !256)
!259 = !DILocation(line: 89, column: 9, scope: !256)
!260 = !DILocation(line: 0, scope: !228)
!261 = !DILocation(line: 97, column: 25, scope: !223)
!262 = !DILocation(line: 0, scope: !223)
!263 = !DILocation(line: 98, column: 14, scope: !223)
!264 = !{!114, !114, i64 0}
!265 = !DILocation(line: 99, column: 18, scope: !223)
!266 = !DILocation(line: 100, column: 38, scope: !223)
!267 = !DILocation(line: 100, column: 29, scope: !223)
!268 = !DILocation(line: 100, column: 46, scope: !223)
!269 = !DILocation(line: 100, column: 9, scope: !223)
!270 = !DILocation(line: 102, column: 5, scope: !223)
!271 = !DILocation(line: 105, column: 5, scope: !217)
!272 = distinct !DISubprogram(name: "get_object", scope: !3, file: !3, line: 47, type: !273, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!5, !5}
!275 = !{!276, !277}
!276 = !DILocalVariable(name: "ptr", arg: 1, scope: !272, file: !3, line: 47, type: !5)
!277 = !DILocalVariable(name: "pre", scope: !272, file: !3, line: 49, type: !225)
!278 = !DILocation(line: 0, scope: !272)
!279 = !DILocation(line: 50, column: 16, scope: !272)
!280 = !DILocation(line: 50, column: 5, scope: !272)
!281 = !DISubprogram(name: "malloc", scope: !130, file: !130, line: 539, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!282 = !DISubroutineType(types: !283)
!283 = !{!5, !78}
!284 = !DISubprogram(name: "memcpy", scope: !135, file: !135, line: 43, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!285 = !DISubroutineType(types: !286)
!286 = !{!5, !287, !288, !78}
!287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!288 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!291 = distinct !DISubprogram(name: "cache_free", scope: !3, file: !3, line: 108, type: !292, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !34, !5}
!294 = !{!295, !296}
!295 = !DILocalVariable(name: "cache", arg: 1, scope: !291, file: !3, line: 108, type: !34)
!296 = !DILocalVariable(name: "ptr", arg: 2, scope: !291, file: !3, line: 108, type: !5)
!297 = !DILocation(line: 0, scope: !291)
!298 = !DILocation(line: 109, column: 32, scope: !291)
!299 = !DILocation(line: 109, column: 5, scope: !291)
!300 = !DILocation(line: 110, column: 5, scope: !291)
!301 = !DILocation(line: 111, column: 5, scope: !291)
!302 = !DILocation(line: 112, column: 1, scope: !291)
!303 = distinct !DISubprogram(name: "do_cache_free", scope: !3, file: !3, line: 114, type: !292, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "cache", arg: 1, scope: !303, file: !3, line: 114, type: !34)
!306 = !DILocalVariable(name: "ptr", arg: 2, scope: !303, file: !3, line: 114, type: !5)
!307 = !DILocalVariable(name: "pre", scope: !303, file: !3, line: 123, type: !225)
!308 = !DILocation(line: 0, scope: !303)
!309 = !DILocation(line: 117, column: 38, scope: !310)
!310 = distinct !DILexicalBlock(scope: !303, file: !3, line: 117, column: 9)
!311 = !DILocation(line: 117, column: 29, scope: !310)
!312 = !DILocation(line: 117, column: 46, scope: !310)
!313 = !DILocation(line: 117, column: 9, scope: !310)
!314 = !DILocation(line: 118, column: 59, scope: !310)
!315 = !DILocation(line: 117, column: 9, scope: !303)
!316 = !DILocation(line: 119, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !3, line: 118, column: 65)
!318 = !DILocation(line: 120, column: 21, scope: !317)
!319 = !{!115, !115, i64 0}
!320 = !DILocation(line: 121, column: 9, scope: !317)
!321 = !DILocation(line: 124, column: 5, scope: !303)
!322 = !DILocation(line: 125, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !303, file: !3, line: 125, column: 9)
!324 = !DILocation(line: 125, column: 14, scope: !323)
!325 = !DILocation(line: 125, column: 9, scope: !303)
!326 = !DILocation(line: 126, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 125, column: 34)
!328 = !DILocation(line: 127, column: 21, scope: !327)
!329 = !DILocation(line: 128, column: 9, scope: !327)
!330 = !DILocation(line: 132, column: 16, scope: !331)
!331 = distinct !DILexicalBlock(scope: !303, file: !3, line: 132, column: 9)
!332 = !DILocation(line: 132, column: 22, scope: !331)
!333 = !DILocation(line: 132, column: 27, scope: !331)
!334 = !DILocation(line: 132, column: 52, scope: !331)
!335 = !DILocation(line: 132, column: 43, scope: !331)
!336 = !DILocation(line: 132, column: 9, scope: !303)
!337 = !DILocation(line: 133, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !331, file: !3, line: 132, column: 59)
!339 = !DILocation(line: 134, column: 21, scope: !338)
!340 = !DILocation(line: 135, column: 5, scope: !338)
!341 = !DILocation(line: 136, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 136, column: 9)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 136, column: 9)
!344 = distinct !DILexicalBlock(scope: !331, file: !3, line: 135, column: 12)
!345 = !DILocation(line: 136, column: 9, scope: !343)
!346 = !DILocation(line: 137, column: 16, scope: !344)
!347 = !DILocation(line: 137, column: 24, scope: !344)
!348 = !DILocation(line: 139, column: 1, scope: !303)
!349 = !DISubprogram(name: "memcmp", scope: !135, file: !135, line: 64, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!350 = !DISubroutineType(types: !351)
!351 = !{!19, !289, !289, !78}
!352 = !DISubprogram(name: "raise", scope: !353, file: !353, line: 123, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!353 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!354 = !DISubroutineType(types: !355)
!355 = !{!19, !19}
