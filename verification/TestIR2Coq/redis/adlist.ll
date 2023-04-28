; ModuleID = 'adlist.c'
source_filename = "adlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i32 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list* @listCreate() local_unnamed_addr #0 !dbg !9 {
entry:
  %call = tail call i8* @zmalloc(i64 noundef 48) #5, !dbg !45
  call void @llvm.dbg.value(metadata i8* %call, metadata !43, metadata !DIExpression()), !dbg !47
  %cmp = icmp eq i8* %call, null, !dbg !48
  br i1 %cmp, label %cleanup, label %if.end, !dbg !49

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.list*, !dbg !45
  call void @llvm.dbg.value(metadata %struct.list* %0, metadata !43, metadata !DIExpression()), !dbg !47
  %1 = bitcast i8* %call to <2 x %struct.listNode*>*, !dbg !50
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %1, align 8, !dbg !50, !tbaa !51
  %len = getelementptr inbounds i8, i8* %call, i64 40, !dbg !55
  %2 = bitcast i8* %len to i32*, !dbg !55
  store i32 0, i32* %2, align 8, !dbg !56, !tbaa !57
  %dup = getelementptr inbounds i8, i8* %call, i64 16, !dbg !60
  %3 = bitcast i8* %dup to i8* (i8*)**, !dbg !60
  store i8* (i8*)* null, i8* (i8*)** %3, align 8, !dbg !61, !tbaa !62
  %free = getelementptr inbounds i8, i8* %call, i64 24, !dbg !63
  %4 = bitcast i8* %free to void (i8*)**, !dbg !63
  store void (i8*)* null, void (i8*)** %4, align 8, !dbg !64, !tbaa !65
  %match = getelementptr inbounds i8, i8* %call, i64 32, !dbg !66
  %5 = bitcast i8* %match to i32 (i8*, i8*)**, !dbg !66
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %5, align 8, !dbg !67, !tbaa !68
  br label %cleanup, !dbg !69

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.list* [ %0, %if.end ], [ null, %entry ], !dbg !47
  ret %struct.list* %retval.0, !dbg !70
}

declare !dbg !71 dso_local i8* @zmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @listRelease(%struct.list* noundef %list) local_unnamed_addr #0 !dbg !79 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !83, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !85, metadata !DIExpression()), !dbg !87
  %len1 = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 5, !dbg !88
  %0 = load i32, i32* %len1, align 8, !dbg !88, !tbaa !57
  call void @llvm.dbg.value(metadata i32 %0, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32 %0, metadata !84, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !87
  %tobool.not15 = icmp eq i32 %0, 0, !dbg !89
  br i1 %tobool.not15, label %while.end, label %while.body.lr.ph, !dbg !89

while.body.lr.ph:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %0, metadata !84, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !87
  %head = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !90
  %1 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !90, !tbaa !91
  call void @llvm.dbg.value(metadata %struct.listNode* %1, metadata !85, metadata !DIExpression()), !dbg !87
  %free = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 3
  br label %while.body, !dbg !89

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %dec17.in = phi i32 [ %0, %while.body.lr.ph ], [ %dec17, %if.end ]
  %current.016 = phi %struct.listNode* [ %1, %while.body.lr.ph ], [ %2, %if.end ]
  %dec17 = add i32 %dec17.in, -1, !dbg !92
  call void @llvm.dbg.value(metadata %struct.listNode* %current.016, metadata !85, metadata !DIExpression()), !dbg !87
  %next2 = getelementptr inbounds %struct.listNode, %struct.listNode* %current.016, i64 0, i32 1, !dbg !93
  %2 = load %struct.listNode*, %struct.listNode** %next2, align 8, !dbg !93, !tbaa !95
  call void @llvm.dbg.value(metadata %struct.listNode* %2, metadata !86, metadata !DIExpression()), !dbg !87
  %3 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !97, !tbaa !65
  %tobool3.not = icmp eq void (i8*)* %3, null, !dbg !99
  br i1 %tobool3.not, label %if.end, label %if.then, !dbg !100

if.then:                                          ; preds = %while.body
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %current.016, i64 0, i32 2, !dbg !101
  %4 = load i8*, i8** %value, align 8, !dbg !101, !tbaa !102
  tail call void %3(i8* noundef %4) #5, !dbg !103
  br label %if.end, !dbg !103

if.end:                                           ; preds = %if.then, %while.body
  %5 = bitcast %struct.listNode* %current.016 to i8*, !dbg !104
  tail call void @zfree(i8* noundef %5) #5, !dbg !105
  call void @llvm.dbg.value(metadata i32 %dec17, metadata !84, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata %struct.listNode* %2, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32 %dec17, metadata !84, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !87
  %tobool.not = icmp eq i32 %dec17, 0, !dbg !89
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !89, !llvm.loop !106

while.end:                                        ; preds = %if.end, %entry
  %6 = bitcast %struct.list* %list to i8*, !dbg !108
  tail call void @zfree(i8* noundef %6) #5, !dbg !109
  ret void, !dbg !110
}

declare !dbg !111 dso_local void @zfree(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list* @listAddNodeHead(%struct.list* noundef %list, i8* noundef %value) local_unnamed_addr #0 !dbg !112 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !116, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i8* %value, metadata !117, metadata !DIExpression()), !dbg !119
  %call = tail call i8* @zmalloc(i64 noundef 24) #5, !dbg !120
  call void @llvm.dbg.value(metadata i8* %call, metadata !118, metadata !DIExpression()), !dbg !119
  %cmp = icmp eq i8* %call, null, !dbg !122
  br i1 %cmp, label %cleanup, label %if.end, !dbg !123

if.end:                                           ; preds = %entry
  %value1 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !124
  %0 = bitcast i8* %value1 to i8**, !dbg !124
  store i8* %value, i8** %0, align 8, !dbg !125, !tbaa !102
  %len = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 5, !dbg !126
  %1 = load i32, i32* %len, align 8, !dbg !126, !tbaa !57
  %cmp2 = icmp eq i32 %1, 0, !dbg !128
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !129

if.then3:                                         ; preds = %if.end
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !130
  %2 = bitcast %struct.listNode** %tail to i8**, !dbg !132
  store i8* %call, i8** %2, align 8, !dbg !132, !tbaa !133
  %3 = bitcast %struct.list* %list to i8**, !dbg !134
  store i8* %call, i8** %3, align 8, !dbg !134, !tbaa !91
  %4 = bitcast i8* %call to <2 x %struct.listNode*>*, !dbg !135
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %4, align 8, !dbg !135, !tbaa !51
  br label %if.end10, !dbg !136

if.else:                                          ; preds = %if.end
  %prev4 = bitcast i8* %call to %struct.listNode**, !dbg !137
  store %struct.listNode* null, %struct.listNode** %prev4, align 8, !dbg !139, !tbaa !140
  %head5 = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !141
  %5 = load %struct.listNode*, %struct.listNode** %head5, align 8, !dbg !141, !tbaa !91
  %next6 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !142
  %6 = bitcast i8* %next6 to %struct.listNode**, !dbg !142
  store %struct.listNode* %5, %struct.listNode** %6, align 8, !dbg !143, !tbaa !95
  %7 = bitcast %struct.listNode* %5 to i8**, !dbg !144
  store i8* %call, i8** %7, align 8, !dbg !144, !tbaa !140
  %8 = bitcast %struct.list* %list to i8**, !dbg !145
  store i8* %call, i8** %8, align 8, !dbg !145, !tbaa !91
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %inc = add i32 %1, 1, !dbg !146
  store i32 %inc, i32* %len, align 8, !dbg !146, !tbaa !57
  br label %cleanup, !dbg !147

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi %struct.list* [ %list, %if.end10 ], [ null, %entry ], !dbg !119
  ret %struct.list* %retval.0, !dbg !148
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list* @listAddNodeTail(%struct.list* noundef %list, i8* noundef %value) local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !151, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8* %value, metadata !152, metadata !DIExpression()), !dbg !154
  %call = tail call i8* @zmalloc(i64 noundef 24) #5, !dbg !155
  call void @llvm.dbg.value(metadata i8* %call, metadata !153, metadata !DIExpression()), !dbg !154
  %cmp = icmp eq i8* %call, null, !dbg !157
  br i1 %cmp, label %cleanup, label %if.end, !dbg !158

if.end:                                           ; preds = %entry
  %value1 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !159
  %0 = bitcast i8* %value1 to i8**, !dbg !159
  store i8* %value, i8** %0, align 8, !dbg !160, !tbaa !102
  %len = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 5, !dbg !161
  %1 = load i32, i32* %len, align 8, !dbg !161, !tbaa !57
  %cmp2 = icmp eq i32 %1, 0, !dbg !163
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !164
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !165

if.then3:                                         ; preds = %if.end
  %2 = bitcast %struct.listNode** %tail to i8**, !dbg !166
  store i8* %call, i8** %2, align 8, !dbg !166, !tbaa !133
  %3 = bitcast %struct.list* %list to i8**, !dbg !168
  store i8* %call, i8** %3, align 8, !dbg !168, !tbaa !91
  %4 = bitcast i8* %call to <2 x %struct.listNode*>*, !dbg !169
  store <2 x %struct.listNode*> zeroinitializer, <2 x %struct.listNode*>* %4, align 8, !dbg !169, !tbaa !51
  br label %if.end10, !dbg !170

if.else:                                          ; preds = %if.end
  %5 = load %struct.listNode*, %struct.listNode** %tail, align 8, !dbg !171, !tbaa !133
  %prev5 = bitcast i8* %call to %struct.listNode**, !dbg !173
  store %struct.listNode* %5, %struct.listNode** %prev5, align 8, !dbg !174, !tbaa !140
  %next6 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !175
  %6 = bitcast i8* %next6 to %struct.listNode**, !dbg !175
  store %struct.listNode* null, %struct.listNode** %6, align 8, !dbg !176, !tbaa !95
  %next8 = getelementptr inbounds %struct.listNode, %struct.listNode* %5, i64 0, i32 1, !dbg !177
  %7 = bitcast %struct.listNode** %next8 to i8**, !dbg !178
  store i8* %call, i8** %7, align 8, !dbg !178, !tbaa !95
  %8 = bitcast %struct.listNode** %tail to i8**, !dbg !179
  store i8* %call, i8** %8, align 8, !dbg !179, !tbaa !133
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %inc = add i32 %1, 1, !dbg !180
  store i32 %inc, i32* %len, align 8, !dbg !180, !tbaa !57
  br label %cleanup, !dbg !181

cleanup:                                          ; preds = %entry, %if.end10
  %retval.0 = phi %struct.list* [ %list, %if.end10 ], [ null, %entry ], !dbg !154
  ret %struct.list* %retval.0, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @listDelNode(%struct.list* nocapture noundef %list, %struct.listNode* noundef %node) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !187, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata %struct.listNode* %node, metadata !188, metadata !DIExpression()), !dbg !189
  %prev = getelementptr inbounds %struct.listNode, %struct.listNode* %node, i64 0, i32 0, !dbg !190
  %0 = load %struct.listNode*, %struct.listNode** %prev, align 8, !dbg !190, !tbaa !140
  %tobool.not = icmp eq %struct.listNode* %0, null, !dbg !192
  %next3 = getelementptr inbounds %struct.listNode, %struct.listNode* %node, i64 0, i32 1, !dbg !193
  %1 = load %struct.listNode*, %struct.listNode** %next3, align 8, !dbg !193, !tbaa !95
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !194

if.then:                                          ; preds = %entry
  %next2 = getelementptr inbounds %struct.listNode, %struct.listNode* %0, i64 0, i32 1, !dbg !195
  store %struct.listNode* %1, %struct.listNode** %next2, align 8, !dbg !196, !tbaa !95
  %.pre = load %struct.listNode*, %struct.listNode** %next3, align 8, !dbg !197, !tbaa !95
  br label %if.end, !dbg !199

if.else:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !200
  store %struct.listNode* %1, %struct.listNode** %head, align 8, !dbg !201, !tbaa !91
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = phi %struct.listNode* [ %1, %if.else ], [ %.pre, %if.then ], !dbg !197
  %tobool5.not = icmp eq %struct.listNode* %2, null, !dbg !202
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !203
  %prev9 = getelementptr inbounds %struct.listNode, %struct.listNode* %2, i64 0, i32 0, !dbg !203
  %tail.sink = select i1 %tobool5.not, %struct.listNode** %tail, %struct.listNode** %prev9, !dbg !203
  store %struct.listNode* %0, %struct.listNode** %tail.sink, align 8, !dbg !204, !tbaa !51
  %free = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 3, !dbg !205
  %3 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !205, !tbaa !65
  %tobool13.not = icmp eq void (i8*)* %3, null, !dbg !207
  br i1 %tobool13.not, label %if.end16, label %if.then14, !dbg !208

if.then14:                                        ; preds = %if.end
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %node, i64 0, i32 2, !dbg !209
  %4 = load i8*, i8** %value, align 8, !dbg !209, !tbaa !102
  tail call void %3(i8* noundef %4) #5, !dbg !210
  br label %if.end16, !dbg !210

if.end16:                                         ; preds = %if.then14, %if.end
  %5 = bitcast %struct.listNode* %node to i8*, !dbg !211
  tail call void @zfree(i8* noundef %5) #5, !dbg !212
  %len = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 5, !dbg !213
  %6 = load i32, i32* %len, align 8, !dbg !214, !tbaa !57
  %dec = add i32 %6, -1, !dbg !214
  store i32 %dec, i32* %len, align 8, !dbg !214, !tbaa !57
  ret void, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.listIter* @listGetIterator(%struct.list* nocapture noundef readonly %list, i32 noundef %direction) local_unnamed_addr #0 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %direction, metadata !227, metadata !DIExpression()), !dbg !229
  %call = tail call i8* @zmalloc(i64 noundef 16) #5, !dbg !230
  call void @llvm.dbg.value(metadata i8* %call, metadata !228, metadata !DIExpression()), !dbg !229
  %cmp = icmp eq i8* %call, null, !dbg !232
  br i1 %cmp, label %cleanup, label %if.end, !dbg !233

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.listIter*, !dbg !230
  call void @llvm.dbg.value(metadata %struct.listIter* %0, metadata !228, metadata !DIExpression()), !dbg !229
  %cmp1 = icmp eq i32 %direction, 0, !dbg !234
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !236
  %head = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !236
  %tail.sink = select i1 %cmp1, %struct.listNode** %head, %struct.listNode** %tail, !dbg !236
  %1 = load %struct.listNode*, %struct.listNode** %tail.sink, align 8, !dbg !237, !tbaa !51
  %next3 = bitcast i8* %call to %struct.listNode**, !dbg !237
  store %struct.listNode* %1, %struct.listNode** %next3, align 8, !dbg !237, !tbaa !238
  %direction5 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !240
  %2 = bitcast i8* %direction5 to i32*, !dbg !240
  store i32 %direction, i32* %2, align 8, !dbg !241, !tbaa !242
  br label %cleanup, !dbg !243

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.listIter* [ %0, %if.end ], [ null, %entry ], !dbg !229
  ret %struct.listIter* %retval.0, !dbg !244
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @listReleaseIterator(%struct.listIter* noundef %iter) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata %struct.listIter* %iter, metadata !249, metadata !DIExpression()), !dbg !250
  %0 = bitcast %struct.listIter* %iter to i8*, !dbg !251
  tail call void @zfree(i8* noundef %0) #5, !dbg !252
  ret void, !dbg !253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @listRewind(%struct.list* nocapture noundef readonly %list, %struct.listIter* nocapture noundef writeonly %li) local_unnamed_addr #2 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata %struct.listIter* %li, metadata !259, metadata !DIExpression()), !dbg !260
  %head = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !261
  %0 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !261, !tbaa !91
  %next = getelementptr inbounds %struct.listIter, %struct.listIter* %li, i64 0, i32 0, !dbg !262
  store %struct.listNode* %0, %struct.listNode** %next, align 8, !dbg !263, !tbaa !238
  %direction = getelementptr inbounds %struct.listIter, %struct.listIter* %li, i64 0, i32 1, !dbg !264
  store i32 0, i32* %direction, align 8, !dbg !265, !tbaa !242
  ret void, !dbg !266
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @listRewindTail(%struct.list* nocapture noundef readonly %list, %struct.listIter* nocapture noundef writeonly %li) local_unnamed_addr #2 !dbg !267 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata %struct.listIter* %li, metadata !270, metadata !DIExpression()), !dbg !271
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !272
  %0 = load %struct.listNode*, %struct.listNode** %tail, align 8, !dbg !272, !tbaa !133
  %next = getelementptr inbounds %struct.listIter, %struct.listIter* %li, i64 0, i32 0, !dbg !273
  store %struct.listNode* %0, %struct.listNode** %next, align 8, !dbg !274, !tbaa !238
  %direction = getelementptr inbounds %struct.listIter, %struct.listIter* %li, i64 0, i32 1, !dbg !275
  store i32 1, i32* %direction, align 8, !dbg !276, !tbaa !242
  ret void, !dbg !277
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.listNode* @listNext(%struct.listIter* nocapture noundef %iter) local_unnamed_addr #2 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata %struct.listIter* %iter, metadata !282, metadata !DIExpression()), !dbg !284
  %next = getelementptr inbounds %struct.listIter, %struct.listIter* %iter, i64 0, i32 0, !dbg !285
  %0 = load %struct.listNode*, %struct.listNode** %next, align 8, !dbg !285, !tbaa !238
  call void @llvm.dbg.value(metadata %struct.listNode* %0, metadata !283, metadata !DIExpression()), !dbg !284
  %cmp.not = icmp eq %struct.listNode* %0, null, !dbg !286
  br i1 %cmp.not, label %if.end6, label %if.then, !dbg !288

if.then:                                          ; preds = %entry
  %direction = getelementptr inbounds %struct.listIter, %struct.listIter* %iter, i64 0, i32 1, !dbg !289
  %1 = load i32, i32* %direction, align 8, !dbg !289, !tbaa !242
  %cmp1 = icmp eq i32 %1, 0, !dbg !292
  %next3 = getelementptr inbounds %struct.listNode, %struct.listNode* %0, i64 0, i32 1, !dbg !293
  %prev = getelementptr inbounds %struct.listNode, %struct.listNode* %0, i64 0, i32 0, !dbg !293
  %next3.sink = select i1 %cmp1, %struct.listNode** %next3, %struct.listNode** %prev, !dbg !293
  %2 = load %struct.listNode*, %struct.listNode** %next3.sink, align 8, !dbg !294, !tbaa !51
  store %struct.listNode* %2, %struct.listNode** %next, align 8, !dbg !294, !tbaa !238
  br label %if.end6, !dbg !295

if.end6:                                          ; preds = %if.then, %entry
  ret %struct.listNode* %0, !dbg !295
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list* @listDup(%struct.list* nocapture noundef readonly %orig) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %orig, metadata !300, metadata !DIExpression()), !dbg !306
  %call = tail call %struct.list* @listCreate() #6, !dbg !307
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !301, metadata !DIExpression()), !dbg !306
  %cmp = icmp eq %struct.list* %call, null, !dbg !309
  br i1 %cmp, label %cleanup21, label %if.end, !dbg !310

if.end:                                           ; preds = %entry
  %dup = getelementptr inbounds %struct.list, %struct.list* %orig, i64 0, i32 2, !dbg !311
  %0 = load i8* (i8*)*, i8* (i8*)** %dup, align 8, !dbg !311, !tbaa !62
  %dup1 = getelementptr inbounds %struct.list, %struct.list* %call, i64 0, i32 2, !dbg !312
  store i8* (i8*)* %0, i8* (i8*)** %dup1, align 8, !dbg !313, !tbaa !62
  %free = getelementptr inbounds %struct.list, %struct.list* %orig, i64 0, i32 3, !dbg !314
  %1 = load void (i8*)*, void (i8*)** %free, align 8, !dbg !314, !tbaa !65
  %free2 = getelementptr inbounds %struct.list, %struct.list* %call, i64 0, i32 3, !dbg !315
  store void (i8*)* %1, void (i8*)** %free2, align 8, !dbg !316, !tbaa !65
  %match = getelementptr inbounds %struct.list, %struct.list* %orig, i64 0, i32 4, !dbg !317
  %2 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %match, align 8, !dbg !317, !tbaa !68
  %match3 = getelementptr inbounds %struct.list, %struct.list* %call, i64 0, i32 4, !dbg !318
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %match3, align 8, !dbg !319, !tbaa !68
  %call4 = tail call %struct.listIter* @listGetIterator(%struct.list* noundef %orig, i32 noundef 0) #6, !dbg !320
  call void @llvm.dbg.value(metadata %struct.listIter* %call4, metadata !302, metadata !DIExpression()), !dbg !306
  br label %while.cond, !dbg !321

while.cond:                                       ; preds = %if.end16, %if.end
  %call5 = tail call %struct.listNode* @listNext(%struct.listIter* noundef %call4) #6, !dbg !322
  call void @llvm.dbg.value(metadata %struct.listNode* %call5, metadata !303, metadata !DIExpression()), !dbg !306
  %cmp6.not = icmp eq %struct.listNode* %call5, null, !dbg !323
  br i1 %cmp6.not, label %cleanup21.sink.split, label %while.body, !dbg !321

while.body:                                       ; preds = %while.cond
  %3 = load i8* (i8*)*, i8* (i8*)** %dup1, align 8, !dbg !324, !tbaa !62
  %tobool.not = icmp eq i8* (i8*)* %3, null, !dbg !326
  %value15 = getelementptr inbounds %struct.listNode, %struct.listNode* %call5, i64 0, i32 2, !dbg !327
  %4 = load i8*, i8** %value15, align 8, !dbg !327, !tbaa !102
  br i1 %tobool.not, label %if.end16, label %if.then8, !dbg !328

if.then8:                                         ; preds = %while.body
  %call11 = tail call i8* %3(i8* noundef %4) #5, !dbg !329
  call void @llvm.dbg.value(metadata i8* %call11, metadata !304, metadata !DIExpression()), !dbg !331
  %cmp12 = icmp eq i8* %call11, null, !dbg !332
  br i1 %cmp12, label %cleanup21.sink.split.sink.split, label %if.end16, !dbg !334

if.end16:                                         ; preds = %while.body, %if.then8
  %value.0 = phi i8* [ %call11, %if.then8 ], [ %4, %while.body ], !dbg !327
  call void @llvm.dbg.value(metadata i8* %value.0, metadata !304, metadata !DIExpression()), !dbg !331
  %call17 = tail call %struct.list* @listAddNodeTail(%struct.list* noundef nonnull %call, i8* noundef %value.0) #6, !dbg !335
  %cmp18 = icmp eq %struct.list* %call17, null, !dbg !337
  br i1 %cmp18, label %cleanup21.sink.split.sink.split, label %while.cond, !dbg !338, !llvm.loop !339

cleanup21.sink.split.sink.split:                  ; preds = %if.end16, %if.then8
  tail call void @listRelease(%struct.list* noundef nonnull %call) #6, !dbg !331
  br label %cleanup21.sink.split, !dbg !306

cleanup21.sink.split:                             ; preds = %while.cond, %cleanup21.sink.split.sink.split
  %retval.2.ph = phi %struct.list* [ null, %cleanup21.sink.split.sink.split ], [ %call, %while.cond ]
  tail call void @listReleaseIterator(%struct.listIter* noundef %call4) #6, !dbg !306
  br label %cleanup21, !dbg !341

cleanup21:                                        ; preds = %cleanup21.sink.split, %entry
  %retval.2 = phi %struct.list* [ null, %entry ], [ %retval.2.ph, %cleanup21.sink.split ], !dbg !306
  ret %struct.list* %retval.2, !dbg !341
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.listNode* @listSearchKey(%struct.list* nocapture noundef readonly %list, i8* noundef %key) local_unnamed_addr #0 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !346, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata i8* %key, metadata !347, metadata !DIExpression()), !dbg !350
  %call = tail call %struct.listIter* @listGetIterator(%struct.list* noundef %list, i32 noundef 0) #6, !dbg !351
  call void @llvm.dbg.value(metadata %struct.listIter* %call, metadata !348, metadata !DIExpression()), !dbg !350
  %call126 = tail call %struct.listNode* @listNext(%struct.listIter* noundef %call) #6, !dbg !352
  call void @llvm.dbg.value(metadata %struct.listNode* %call126, metadata !349, metadata !DIExpression()), !dbg !350
  %cmp.not27 = icmp eq %struct.listNode* %call126, null, !dbg !353
  br i1 %cmp.not27, label %cleanup, label %while.body.lr.ph, !dbg !354

while.body.lr.ph:                                 ; preds = %entry
  %match = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 4
  br label %while.body, !dbg !354

while.body:                                       ; preds = %while.body.lr.ph, %if.end10
  %call128 = phi %struct.listNode* [ %call126, %while.body.lr.ph ], [ %call1, %if.end10 ]
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %match, align 8, !dbg !355, !tbaa !68
  %tobool.not = icmp eq i32 (i8*, i8*)* %0, null, !dbg !358
  %value6 = getelementptr inbounds %struct.listNode, %struct.listNode* %call128, i64 0, i32 2, !dbg !359
  %1 = load i8*, i8** %value6, align 8, !dbg !359, !tbaa !102
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !360

if.then:                                          ; preds = %while.body
  %call3 = tail call i32 %0(i8* noundef %1, i8* noundef %key) #5, !dbg !361
  %tobool4.not = icmp eq i32 %call3, 0, !dbg !361
  br i1 %tobool4.not, label %if.end10, label %cleanup, !dbg !364

if.else:                                          ; preds = %while.body
  %cmp7 = icmp eq i8* %1, %key, !dbg !365
  br i1 %cmp7, label %cleanup, label %if.end10, !dbg !368

if.end10:                                         ; preds = %if.else, %if.then
  %call1 = tail call %struct.listNode* @listNext(%struct.listIter* noundef %call) #6, !dbg !352
  call void @llvm.dbg.value(metadata %struct.listNode* %call1, metadata !349, metadata !DIExpression()), !dbg !350
  %cmp.not = icmp eq %struct.listNode* %call1, null, !dbg !353
  br i1 %cmp.not, label %cleanup, label %while.body, !dbg !354, !llvm.loop !369

cleanup:                                          ; preds = %if.end10, %if.else, %if.then, %entry
  %call125 = phi %struct.listNode* [ null, %entry ], [ %call128, %if.then ], [ %call128, %if.else ], [ null, %if.end10 ]
  tail call void @listReleaseIterator(%struct.listIter* noundef %call) #6, !dbg !350
  ret %struct.listNode* %call125, !dbg !371
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.listNode* @listIndex(%struct.list* nocapture noundef readonly %list, i32 noundef %index) local_unnamed_addr #3 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %list, metadata !376, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression()), !dbg !379
  %cmp = icmp slt i32 %index, 0, !dbg !380
  br i1 %cmp, label %if.then, label %if.else, !dbg !382

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !379
  %tail = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 1, !dbg !383
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !378, metadata !DIExpression()), !dbg !379
  %n.026 = load %struct.listNode*, %struct.listNode** %tail, align 8, !dbg !385, !tbaa !51
  call void @llvm.dbg.value(metadata %struct.listNode* %n.026, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !379
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !379
  %tobool27 = icmp ne i32 %index, -1, !dbg !386
  %tobool228 = icmp ne %struct.listNode* %n.026, null, !dbg !387
  %0 = select i1 %tobool27, i1 %tobool228, i1 false, !dbg !387
  br i1 %0, label %while.body.preheader, label %if.end, !dbg !388

while.body.preheader:                             ; preds = %if.then
  %sub1 = xor i32 %index, -1, !dbg !389
  call void @llvm.dbg.value(metadata i32 %sub1, metadata !377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !379
  br label %while.body, !dbg !388

while.body:                                       ; preds = %while.body.preheader, %while.body
  %n.030 = phi %struct.listNode* [ %n.0, %while.body ], [ %n.026, %while.body.preheader ]
  %index.addr.029 = phi i32 [ %dec, %while.body ], [ %sub1, %while.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %index.addr.029, metadata !377, metadata !DIExpression()), !dbg !379
  %dec = add nsw i32 %index.addr.029, -1, !dbg !386
  call void @llvm.dbg.value(metadata i32 %dec, metadata !377, metadata !DIExpression()), !dbg !379
  %prev = getelementptr inbounds %struct.listNode, %struct.listNode* %n.030, i64 0, i32 0, !dbg !390
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !378, metadata !DIExpression()), !dbg !379
  %n.0 = load %struct.listNode*, %struct.listNode** %prev, align 8, !dbg !385, !tbaa !51
  call void @llvm.dbg.value(metadata %struct.listNode* %n.0, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %dec, metadata !377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !379
  %tobool = icmp ne i32 %dec, 0, !dbg !386
  %tobool2 = icmp ne %struct.listNode* %n.0, null, !dbg !387
  %1 = select i1 %tobool, i1 %tobool2, i1 false, !dbg !387
  br i1 %1, label %while.body, label %if.end, !dbg !388, !llvm.loop !391

if.else:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.list, %struct.list* %list, i64 0, i32 0, !dbg !392
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !378, metadata !DIExpression()), !dbg !379
  %n.121 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !394, !tbaa !51
  call void @llvm.dbg.value(metadata %struct.listNode* %n.121, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %index, metadata !377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !379
  %tobool522 = icmp ne i32 %index, 0, !dbg !395
  %tobool723 = icmp ne %struct.listNode* %n.121, null, !dbg !396
  %2 = select i1 %tobool522, i1 %tobool723, i1 false, !dbg !396
  br i1 %2, label %while.body9, label %if.end, !dbg !397

while.body9:                                      ; preds = %if.else, %while.body9
  %n.125 = phi %struct.listNode* [ %n.1, %while.body9 ], [ %n.121, %if.else ]
  %index.addr.124 = phi i32 [ %dec4, %while.body9 ], [ %index, %if.else ]
  call void @llvm.dbg.value(metadata i32 %index.addr.124, metadata !377, metadata !DIExpression()), !dbg !379
  %dec4 = add nsw i32 %index.addr.124, -1, !dbg !395
  call void @llvm.dbg.value(metadata i32 %dec4, metadata !377, metadata !DIExpression()), !dbg !379
  %next = getelementptr inbounds %struct.listNode, %struct.listNode* %n.125, i64 0, i32 1, !dbg !398
  call void @llvm.dbg.value(metadata %struct.listNode* undef, metadata !378, metadata !DIExpression()), !dbg !379
  %n.1 = load %struct.listNode*, %struct.listNode** %next, align 8, !dbg !394, !tbaa !51
  call void @llvm.dbg.value(metadata %struct.listNode* %n.1, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 %dec4, metadata !377, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !379
  %tobool5 = icmp ne i32 %dec4, 0, !dbg !395
  %tobool7 = icmp ne %struct.listNode* %n.1, null, !dbg !396
  %3 = select i1 %tobool5, i1 %tobool7, i1 false, !dbg !396
  br i1 %3, label %while.body9, label %if.end, !dbg !397, !llvm.loop !399

if.end:                                           ; preds = %while.body9, %while.body, %if.else, %if.then
  %n.2 = phi %struct.listNode* [ %n.026, %if.then ], [ %n.121, %if.else ], [ %n.0, %while.body ], [ %n.1, %while.body9 ], !dbg !400
  call void @llvm.dbg.value(metadata %struct.listNode* %n.2, metadata !378, metadata !DIExpression()), !dbg !379
  ret %struct.listNode* %n.2, !dbg !401
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "adlist.c", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8021e5a3f1b94e4e0f0cfca3eddbdac8")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 14.0.0"}
!9 = distinct !DISubprogram(name: "listCreate", scope: !1, file: !1, line: 41, type: !10, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !14, line: 54, baseType: !15)
!14 = !DIFile(filename: "./adlist.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "0461b55abfa9065d70cc6ca884308362")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !14, line: 47, size: 384, elements: !16)
!16 = !{!17, !26, !27, !31, !35, !40}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !15, file: !14, line: 48, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !14, line: 40, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !14, line: 36, size: 192, elements: !21)
!21 = !{!22, !24, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !20, file: !14, line: 37, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !14, line: 38, baseType: !23, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !20, file: !14, line: 39, baseType: !3, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !15, file: !14, line: 49, baseType: !18, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !15, file: !14, line: 50, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !3}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !15, file: !14, line: 51, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !3}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !15, file: !14, line: 52, baseType: !36, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !3, !3}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !15, file: !14, line: 53, baseType: !41, size: 32, offset: 320)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43}
!43 = !DILocalVariable(name: "list", scope: !9, file: !1, line: 43, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!45 = !DILocation(line: 45, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 9)
!47 = !DILocation(line: 0, scope: !9)
!48 = !DILocation(line: 45, column: 41, scope: !46)
!49 = !DILocation(line: 45, column: 9, scope: !9)
!50 = !DILocation(line: 47, column: 16, scope: !9)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 48, column: 11, scope: !9)
!56 = !DILocation(line: 48, column: 15, scope: !9)
!57 = !{!58, !59, i64 40}
!58 = !{!"list", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !59, i64 40}
!59 = !{!"int", !53, i64 0}
!60 = !DILocation(line: 49, column: 11, scope: !9)
!61 = !DILocation(line: 49, column: 15, scope: !9)
!62 = !{!58, !52, i64 16}
!63 = !DILocation(line: 50, column: 11, scope: !9)
!64 = !DILocation(line: 50, column: 16, scope: !9)
!65 = !{!58, !52, i64 24}
!66 = !DILocation(line: 51, column: 11, scope: !9)
!67 = !DILocation(line: 51, column: 17, scope: !9)
!68 = !{!58, !52, i64 32}
!69 = !DILocation(line: 52, column: 5, scope: !9)
!70 = !DILocation(line: 53, column: 1, scope: !9)
!71 = !DISubprogram(name: "zmalloc", scope: !72, file: !72, line: 34, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !78)
!72 = !DIFile(filename: "./zmalloc.h", directory: "/home/xuheng/blackbox/llvm-test/redis", checksumkind: CSK_MD5, checksum: "8c6e7e80b58457b2728e51e83fedc2bb")
!73 = !DISubroutineType(types: !74)
!74 = !{!3, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "VeriFrame/LLVMUtils/llvm/lib/clang/14.0.0/include/stddef.h", directory: "/home/xuheng", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !{}
!79 = distinct !DISubprogram(name: "listRelease", scope: !1, file: !1, line: 58, type: !80, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !12}
!82 = !{!83, !84, !85, !86}
!83 = !DILocalVariable(name: "list", arg: 1, scope: !79, file: !1, line: 58, type: !12)
!84 = !DILocalVariable(name: "len", scope: !79, file: !1, line: 60, type: !41)
!85 = !DILocalVariable(name: "current", scope: !79, file: !1, line: 61, type: !18)
!86 = !DILocalVariable(name: "next", scope: !79, file: !1, line: 61, type: !18)
!87 = !DILocation(line: 0, scope: !79)
!88 = !DILocation(line: 64, column: 17, scope: !79)
!89 = !DILocation(line: 65, column: 5, scope: !79)
!90 = !DILocation(line: 63, column: 21, scope: !79)
!91 = !{!58, !52, i64 0}
!92 = !DILocation(line: 65, column: 14, scope: !79)
!93 = !DILocation(line: 66, column: 25, scope: !94)
!94 = distinct !DILexicalBlock(scope: !79, file: !1, line: 65, column: 18)
!95 = !{!96, !52, i64 8}
!96 = !{!"listNode", !52, i64 0, !52, i64 8, !52, i64 16}
!97 = !DILocation(line: 67, column: 19, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 67, column: 13)
!99 = !DILocation(line: 67, column: 13, scope: !98)
!100 = !DILocation(line: 67, column: 13, scope: !94)
!101 = !DILocation(line: 67, column: 45, scope: !98)
!102 = !{!96, !52, i64 16}
!103 = !DILocation(line: 67, column: 25, scope: !98)
!104 = !DILocation(line: 68, column: 15, scope: !94)
!105 = !DILocation(line: 68, column: 9, scope: !94)
!106 = distinct !{!106, !89, !107}
!107 = !DILocation(line: 70, column: 5, scope: !79)
!108 = !DILocation(line: 71, column: 11, scope: !79)
!109 = !DILocation(line: 71, column: 5, scope: !79)
!110 = !DILocation(line: 72, column: 1, scope: !79)
!111 = !DISubprogram(name: "zfree", scope: !72, file: !72, line: 36, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !78)
!112 = distinct !DISubprogram(name: "listAddNodeHead", scope: !1, file: !1, line: 80, type: !113, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!12, !12, !3}
!115 = !{!116, !117, !118}
!116 = !DILocalVariable(name: "list", arg: 1, scope: !112, file: !1, line: 80, type: !12)
!117 = !DILocalVariable(name: "value", arg: 2, scope: !112, file: !1, line: 80, type: !3)
!118 = !DILocalVariable(name: "node", scope: !112, file: !1, line: 82, type: !18)
!119 = !DILocation(line: 0, scope: !112)
!120 = !DILocation(line: 84, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !112, file: !1, line: 84, column: 9)
!122 = !DILocation(line: 84, column: 41, scope: !121)
!123 = !DILocation(line: 84, column: 9, scope: !112)
!124 = !DILocation(line: 86, column: 11, scope: !112)
!125 = !DILocation(line: 86, column: 17, scope: !112)
!126 = !DILocation(line: 87, column: 15, scope: !127)
!127 = distinct !DILexicalBlock(scope: !112, file: !1, line: 87, column: 9)
!128 = !DILocation(line: 87, column: 19, scope: !127)
!129 = !DILocation(line: 87, column: 9, scope: !112)
!130 = !DILocation(line: 88, column: 28, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 87, column: 25)
!132 = !DILocation(line: 88, column: 33, scope: !131)
!133 = !{!58, !52, i64 8}
!134 = !DILocation(line: 88, column: 20, scope: !131)
!135 = !DILocation(line: 89, column: 20, scope: !131)
!136 = !DILocation(line: 90, column: 5, scope: !131)
!137 = !DILocation(line: 91, column: 15, scope: !138)
!138 = distinct !DILexicalBlock(scope: !127, file: !1, line: 90, column: 12)
!139 = !DILocation(line: 91, column: 20, scope: !138)
!140 = !{!96, !52, i64 0}
!141 = !DILocation(line: 92, column: 28, scope: !138)
!142 = !DILocation(line: 92, column: 15, scope: !138)
!143 = !DILocation(line: 92, column: 20, scope: !138)
!144 = !DILocation(line: 93, column: 26, scope: !138)
!145 = !DILocation(line: 94, column: 20, scope: !138)
!146 = !DILocation(line: 96, column: 14, scope: !112)
!147 = !DILocation(line: 97, column: 5, scope: !112)
!148 = !DILocation(line: 98, column: 1, scope: !112)
!149 = distinct !DISubprogram(name: "listAddNodeTail", scope: !1, file: !1, line: 106, type: !113, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: "list", arg: 1, scope: !149, file: !1, line: 106, type: !12)
!152 = !DILocalVariable(name: "value", arg: 2, scope: !149, file: !1, line: 106, type: !3)
!153 = !DILocalVariable(name: "node", scope: !149, file: !1, line: 108, type: !18)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocation(line: 110, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !149, file: !1, line: 110, column: 9)
!157 = !DILocation(line: 110, column: 41, scope: !156)
!158 = !DILocation(line: 110, column: 9, scope: !149)
!159 = !DILocation(line: 112, column: 11, scope: !149)
!160 = !DILocation(line: 112, column: 17, scope: !149)
!161 = !DILocation(line: 113, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !149, file: !1, line: 113, column: 9)
!163 = !DILocation(line: 113, column: 19, scope: !162)
!164 = !DILocation(line: 0, scope: !162)
!165 = !DILocation(line: 113, column: 9, scope: !149)
!166 = !DILocation(line: 114, column: 33, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !1, line: 113, column: 25)
!168 = !DILocation(line: 114, column: 20, scope: !167)
!169 = !DILocation(line: 115, column: 20, scope: !167)
!170 = !DILocation(line: 116, column: 5, scope: !167)
!171 = !DILocation(line: 117, column: 28, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !1, line: 116, column: 12)
!173 = !DILocation(line: 117, column: 15, scope: !172)
!174 = !DILocation(line: 117, column: 20, scope: !172)
!175 = !DILocation(line: 118, column: 15, scope: !172)
!176 = !DILocation(line: 118, column: 20, scope: !172)
!177 = !DILocation(line: 119, column: 21, scope: !172)
!178 = !DILocation(line: 119, column: 26, scope: !172)
!179 = !DILocation(line: 120, column: 20, scope: !172)
!180 = !DILocation(line: 122, column: 14, scope: !149)
!181 = !DILocation(line: 123, column: 5, scope: !149)
!182 = !DILocation(line: 124, column: 1, scope: !149)
!183 = distinct !DISubprogram(name: "listDelNode", scope: !1, file: !1, line: 130, type: !184, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !12, !18}
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "list", arg: 1, scope: !183, file: !1, line: 130, type: !12)
!188 = !DILocalVariable(name: "node", arg: 2, scope: !183, file: !1, line: 130, type: !18)
!189 = !DILocation(line: 0, scope: !183)
!190 = !DILocation(line: 132, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !1, line: 132, column: 9)
!192 = !DILocation(line: 132, column: 9, scope: !191)
!193 = !DILocation(line: 0, scope: !191)
!194 = !DILocation(line: 132, column: 9, scope: !183)
!195 = !DILocation(line: 133, column: 21, scope: !191)
!196 = !DILocation(line: 133, column: 26, scope: !191)
!197 = !DILocation(line: 136, column: 15, scope: !198)
!198 = distinct !DILexicalBlock(scope: !183, file: !1, line: 136, column: 9)
!199 = !DILocation(line: 133, column: 9, scope: !191)
!200 = !DILocation(line: 135, column: 15, scope: !191)
!201 = !DILocation(line: 135, column: 20, scope: !191)
!202 = !DILocation(line: 136, column: 9, scope: !198)
!203 = !DILocation(line: 136, column: 9, scope: !183)
!204 = !DILocation(line: 0, scope: !198)
!205 = !DILocation(line: 140, column: 15, scope: !206)
!206 = distinct !DILexicalBlock(scope: !183, file: !1, line: 140, column: 9)
!207 = !DILocation(line: 140, column: 9, scope: !206)
!208 = !DILocation(line: 140, column: 9, scope: !183)
!209 = !DILocation(line: 140, column: 38, scope: !206)
!210 = !DILocation(line: 140, column: 21, scope: !206)
!211 = !DILocation(line: 141, column: 11, scope: !183)
!212 = !DILocation(line: 141, column: 5, scope: !183)
!213 = !DILocation(line: 142, column: 11, scope: !183)
!214 = !DILocation(line: 142, column: 14, scope: !183)
!215 = !DILocation(line: 143, column: 1, scope: !183)
!216 = distinct !DISubprogram(name: "listGetIterator", scope: !1, file: !1, line: 149, type: !217, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !12, !39}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !14, line: 45, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !14, line: 42, size: 128, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !14, line: 43, baseType: !18, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !221, file: !14, line: 44, baseType: !39, size: 32, offset: 64)
!225 = !{!226, !227, !228}
!226 = !DILocalVariable(name: "list", arg: 1, scope: !216, file: !1, line: 149, type: !12)
!227 = !DILocalVariable(name: "direction", arg: 2, scope: !216, file: !1, line: 149, type: !39)
!228 = !DILocalVariable(name: "iter", scope: !216, file: !1, line: 151, type: !219)
!229 = !DILocation(line: 0, scope: !216)
!230 = !DILocation(line: 153, column: 17, scope: !231)
!231 = distinct !DILexicalBlock(scope: !216, file: !1, line: 153, column: 9)
!232 = !DILocation(line: 153, column: 41, scope: !231)
!233 = !DILocation(line: 153, column: 9, scope: !216)
!234 = !DILocation(line: 154, column: 19, scope: !235)
!235 = distinct !DILexicalBlock(scope: !216, file: !1, line: 154, column: 9)
!236 = !DILocation(line: 154, column: 9, scope: !216)
!237 = !DILocation(line: 0, scope: !235)
!238 = !{!239, !52, i64 0}
!239 = !{!"listIter", !52, i64 0, !59, i64 8}
!240 = !DILocation(line: 158, column: 11, scope: !216)
!241 = !DILocation(line: 158, column: 21, scope: !216)
!242 = !{!239, !59, i64 8}
!243 = !DILocation(line: 159, column: 5, scope: !216)
!244 = !DILocation(line: 160, column: 1, scope: !216)
!245 = distinct !DISubprogram(name: "listReleaseIterator", scope: !1, file: !1, line: 163, type: !246, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !219}
!248 = !{!249}
!249 = !DILocalVariable(name: "iter", arg: 1, scope: !245, file: !1, line: 163, type: !219)
!250 = !DILocation(line: 0, scope: !245)
!251 = !DILocation(line: 164, column: 11, scope: !245)
!252 = !DILocation(line: 164, column: 5, scope: !245)
!253 = !DILocation(line: 165, column: 1, scope: !245)
!254 = distinct !DISubprogram(name: "listRewind", scope: !1, file: !1, line: 168, type: !255, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !12, !219}
!257 = !{!258, !259}
!258 = !DILocalVariable(name: "list", arg: 1, scope: !254, file: !1, line: 168, type: !12)
!259 = !DILocalVariable(name: "li", arg: 2, scope: !254, file: !1, line: 168, type: !219)
!260 = !DILocation(line: 0, scope: !254)
!261 = !DILocation(line: 169, column: 22, scope: !254)
!262 = !DILocation(line: 169, column: 9, scope: !254)
!263 = !DILocation(line: 169, column: 14, scope: !254)
!264 = !DILocation(line: 170, column: 9, scope: !254)
!265 = !DILocation(line: 170, column: 19, scope: !254)
!266 = !DILocation(line: 171, column: 1, scope: !254)
!267 = distinct !DISubprogram(name: "listRewindTail", scope: !1, file: !1, line: 173, type: !255, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !268)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "list", arg: 1, scope: !267, file: !1, line: 173, type: !12)
!270 = !DILocalVariable(name: "li", arg: 2, scope: !267, file: !1, line: 173, type: !219)
!271 = !DILocation(line: 0, scope: !267)
!272 = !DILocation(line: 174, column: 22, scope: !267)
!273 = !DILocation(line: 174, column: 9, scope: !267)
!274 = !DILocation(line: 174, column: 14, scope: !267)
!275 = !DILocation(line: 175, column: 9, scope: !267)
!276 = !DILocation(line: 175, column: 19, scope: !267)
!277 = !DILocation(line: 176, column: 1, scope: !267)
!278 = distinct !DISubprogram(name: "listNext", scope: !1, file: !1, line: 192, type: !279, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!18, !219}
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "iter", arg: 1, scope: !278, file: !1, line: 192, type: !219)
!283 = !DILocalVariable(name: "current", scope: !278, file: !1, line: 194, type: !18)
!284 = !DILocation(line: 0, scope: !278)
!285 = !DILocation(line: 194, column: 31, scope: !278)
!286 = !DILocation(line: 196, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !1, line: 196, column: 9)
!288 = !DILocation(line: 196, column: 9, scope: !278)
!289 = !DILocation(line: 197, column: 19, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 197, column: 13)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 196, column: 26)
!292 = !DILocation(line: 197, column: 29, scope: !290)
!293 = !DILocation(line: 197, column: 13, scope: !291)
!294 = !DILocation(line: 0, scope: !290)
!295 = !DILocation(line: 202, column: 5, scope: !278)
!296 = distinct !DISubprogram(name: "listDup", scope: !1, file: !1, line: 213, type: !297, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!12, !12}
!299 = !{!300, !301, !302, !303, !304}
!300 = !DILocalVariable(name: "orig", arg: 1, scope: !296, file: !1, line: 213, type: !12)
!301 = !DILocalVariable(name: "copy", scope: !296, file: !1, line: 215, type: !12)
!302 = !DILocalVariable(name: "iter", scope: !296, file: !1, line: 216, type: !219)
!303 = !DILocalVariable(name: "node", scope: !296, file: !1, line: 217, type: !18)
!304 = !DILocalVariable(name: "value", scope: !305, file: !1, line: 226, type: !3)
!305 = distinct !DILexicalBlock(scope: !296, file: !1, line: 225, column: 44)
!306 = !DILocation(line: 0, scope: !296)
!307 = !DILocation(line: 219, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !296, file: !1, line: 219, column: 9)
!309 = !DILocation(line: 219, column: 31, scope: !308)
!310 = !DILocation(line: 219, column: 9, scope: !296)
!311 = !DILocation(line: 221, column: 23, scope: !296)
!312 = !DILocation(line: 221, column: 11, scope: !296)
!313 = !DILocation(line: 221, column: 15, scope: !296)
!314 = !DILocation(line: 222, column: 24, scope: !296)
!315 = !DILocation(line: 222, column: 11, scope: !296)
!316 = !DILocation(line: 222, column: 16, scope: !296)
!317 = !DILocation(line: 223, column: 25, scope: !296)
!318 = !DILocation(line: 223, column: 11, scope: !296)
!319 = !DILocation(line: 223, column: 17, scope: !296)
!320 = !DILocation(line: 224, column: 12, scope: !296)
!321 = !DILocation(line: 225, column: 5, scope: !296)
!322 = !DILocation(line: 225, column: 19, scope: !296)
!323 = !DILocation(line: 225, column: 35, scope: !296)
!324 = !DILocation(line: 228, column: 19, scope: !325)
!325 = distinct !DILexicalBlock(scope: !305, file: !1, line: 228, column: 13)
!326 = !DILocation(line: 228, column: 13, scope: !325)
!327 = !DILocation(line: 0, scope: !325)
!328 = !DILocation(line: 228, column: 13, scope: !305)
!329 = !DILocation(line: 229, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !1, line: 228, column: 24)
!331 = !DILocation(line: 0, scope: !305)
!332 = !DILocation(line: 230, column: 23, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !1, line: 230, column: 17)
!334 = !DILocation(line: 230, column: 17, scope: !330)
!335 = !DILocation(line: 237, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !305, file: !1, line: 237, column: 13)
!337 = !DILocation(line: 237, column: 42, scope: !336)
!338 = !DILocation(line: 237, column: 13, scope: !305)
!339 = distinct !{!339, !321, !340}
!340 = !DILocation(line: 242, column: 5, scope: !296)
!341 = !DILocation(line: 245, column: 1, scope: !296)
!342 = distinct !DISubprogram(name: "listSearchKey", scope: !1, file: !1, line: 256, type: !343, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!18, !12, !3}
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "list", arg: 1, scope: !342, file: !1, line: 256, type: !12)
!347 = !DILocalVariable(name: "key", arg: 2, scope: !342, file: !1, line: 256, type: !3)
!348 = !DILocalVariable(name: "iter", scope: !342, file: !1, line: 258, type: !219)
!349 = !DILocalVariable(name: "node", scope: !342, file: !1, line: 259, type: !18)
!350 = !DILocation(line: 0, scope: !342)
!351 = !DILocation(line: 261, column: 12, scope: !342)
!352 = !DILocation(line: 262, column: 19, scope: !342)
!353 = !DILocation(line: 262, column: 35, scope: !342)
!354 = !DILocation(line: 262, column: 5, scope: !342)
!355 = !DILocation(line: 263, column: 19, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 263, column: 13)
!357 = distinct !DILexicalBlock(scope: !342, file: !1, line: 262, column: 44)
!358 = !DILocation(line: 263, column: 13, scope: !356)
!359 = !DILocation(line: 0, scope: !356)
!360 = !DILocation(line: 263, column: 13, scope: !357)
!361 = !DILocation(line: 264, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 264, column: 17)
!363 = distinct !DILexicalBlock(scope: !356, file: !1, line: 263, column: 26)
!364 = !DILocation(line: 264, column: 17, scope: !363)
!365 = !DILocation(line: 269, column: 21, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 269, column: 17)
!367 = distinct !DILexicalBlock(scope: !356, file: !1, line: 268, column: 16)
!368 = !DILocation(line: 269, column: 17, scope: !367)
!369 = distinct !{!369, !354, !370}
!370 = !DILocation(line: 274, column: 5, scope: !342)
!371 = !DILocation(line: 277, column: 1, scope: !342)
!372 = distinct !DISubprogram(name: "listIndex", scope: !1, file: !1, line: 284, type: !373, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!18, !12, !39}
!375 = !{!376, !377, !378}
!376 = !DILocalVariable(name: "list", arg: 1, scope: !372, file: !1, line: 284, type: !12)
!377 = !DILocalVariable(name: "index", arg: 2, scope: !372, file: !1, line: 284, type: !39)
!378 = !DILocalVariable(name: "n", scope: !372, file: !1, line: 285, type: !18)
!379 = !DILocation(line: 0, scope: !372)
!380 = !DILocation(line: 287, column: 15, scope: !381)
!381 = distinct !DILexicalBlock(scope: !372, file: !1, line: 287, column: 9)
!382 = !DILocation(line: 287, column: 9, scope: !372)
!383 = !DILocation(line: 289, column: 19, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !1, line: 287, column: 20)
!385 = !DILocation(line: 0, scope: !384)
!386 = !DILocation(line: 290, column: 20, scope: !384)
!387 = !DILocation(line: 290, column: 23, scope: !384)
!388 = !DILocation(line: 290, column: 9, scope: !384)
!389 = !DILocation(line: 288, column: 25, scope: !384)
!390 = !DILocation(line: 290, column: 36, scope: !384)
!391 = distinct !{!391, !388, !390}
!392 = !DILocation(line: 292, column: 19, scope: !393)
!393 = distinct !DILexicalBlock(scope: !381, file: !1, line: 291, column: 12)
!394 = !DILocation(line: 0, scope: !393)
!395 = !DILocation(line: 293, column: 20, scope: !393)
!396 = !DILocation(line: 293, column: 23, scope: !393)
!397 = !DILocation(line: 293, column: 9, scope: !393)
!398 = !DILocation(line: 293, column: 36, scope: !393)
!399 = distinct !{!399, !397, !398}
!400 = !DILocation(line: 0, scope: !381)
!401 = !DILocation(line: 295, column: 5, scope: !372)
