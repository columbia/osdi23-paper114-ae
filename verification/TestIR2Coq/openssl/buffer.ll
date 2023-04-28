; ModuleID = 'crypto/buffer/buffer.c'
source_filename = "crypto/buffer/buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_mem_st = type { i64, i8*, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"crypto/buffer/buffer.c\00", align 1
@__func__.BUF_MEM_new = private unnamed_addr constant [12 x i8] c"BUF_MEM_new\00", align 1
@__func__.BUF_MEM_grow = private unnamed_addr constant [13 x i8] c"BUF_MEM_grow\00", align 1
@__func__.BUF_MEM_grow_clean = private unnamed_addr constant [19 x i8] c"BUF_MEM_grow_clean\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.buf_mem_st* @BUF_MEM_new_ex(i64 noundef %flags) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #4
  %cmp.not = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags1 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 3
  store i64 %flags, i64* %flags1, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.buf_mem_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BUF_MEM_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 7, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.buf_mem_st*
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.buf_mem_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.buf_mem_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @BUF_MEM_free(%struct.buf_mem_st* noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.buf_mem_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %a, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8, !tbaa !10
  %cmp1.not = icmp eq i8* %0, null
  br i1 %cmp1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %a, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !4
  %and = and i64 %1, 1
  %tobool.not = icmp eq i64 %and, 0
  %max6 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %a, i64 0, i32 2
  %2 = load i64, i64* %max6, align 8, !tbaa !11
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then2
  tail call void @CRYPTO_secure_clear_free(i8* noundef nonnull %0, i64 noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #5
  br label %if.end8

if.else:                                          ; preds = %if.then2
  tail call void @CRYPTO_clear_free(i8* noundef nonnull %0, i64 noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 51) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.else, %if.end
  %3 = bitcast %struct.buf_mem_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #5
  br label %return

return:                                           ; preds = %entry, %if.end8
  ret void
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @BUF_MEM_grow(%struct.buf_mem_st* nocapture noundef %str, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 0
  %0 = load i64, i64* %length, align 8, !tbaa !12
  %cmp.not = icmp ult i64 %0, %len
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

if.end:                                           ; preds = %entry
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 2
  %1 = load i64, i64* %max, align 8, !tbaa !11
  %cmp2.not = icmp ult i64 %1, %len
  br i1 %cmp2.not, label %if.end11, label %if.then3

if.then3:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !10
  %cmp4.not = icmp eq i8* %2, null
  br i1 %cmp4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.then3
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %0
  %sub = sub i64 %len, %0
  %call = tail call i8* @memset(i8* noundef nonnull %arrayidx, i32 noundef 0, i64 noundef %sub) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.then3
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %cmp12 = icmp ugt i64 %len, 1610612732
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BUF_MEM_grow, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 7, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %3 = trunc i64 %len to i32
  %div.lhs.trunc = add nuw nsw i32 %3, 3
  %div67 = udiv i32 %div.lhs.trunc, 3
  %div.zext = zext i32 %div67 to i64
  %mul = shl nuw nsw i64 %div.zext, 2
  %flags = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 3
  %4 = load i64, i64* %flags, align 8, !tbaa !4
  %and = and i64 %4, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end14
  %call16 = tail call fastcc i8* @sec_alloc_realloc(%struct.buf_mem_st* noundef nonnull %str, i64 noundef %mul) #4
  br label %if.end19

if.else:                                          ; preds = %if.end14
  %data17 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %5 = load i8*, i8** %data17, align 8, !tbaa !10
  %call18 = tail call i8* @CRYPTO_realloc(i8* noundef %5, i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 97) #5
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15
  %ret.0 = phi i8* [ %call16, %if.then15 ], [ %call18, %if.else ]
  %cmp20 = icmp eq i8* %ret.0, null
  br i1 %cmp20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.end19
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BUF_MEM_grow, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 7, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.else22:                                        ; preds = %if.end19
  %data23 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  store i8* %ret.0, i8** %data23, align 8, !tbaa !10
  store i64 %mul, i64* %max, align 8, !tbaa !11
  %6 = load i64, i64* %length, align 8, !tbaa !12
  %arrayidx27 = getelementptr inbounds i8, i8* %ret.0, i64 %6
  %sub29 = sub i64 %len, %6
  %call30 = tail call i8* @memset(i8* noundef nonnull %arrayidx27, i32 noundef 0, i64 noundef %sub29) #5
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else22, %if.then13, %if.end9, %if.then
  %retval.0 = phi i64 [ %len, %if.then ], [ %len, %if.end9 ], [ 0, %if.then13 ], [ 0, %if.then21 ], [ %len, %if.else22 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sec_alloc_realloc(%struct.buf_mem_st* nocapture noundef %str, i64 noundef %len) unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_secure_malloc(i64 noundef %len, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 62) #5
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %0 = load i8*, i8** %data, align 8, !tbaa !10
  %cmp = icmp ne i8* %0, null
  %cmp1 = icmp ne i8* %call, null
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then2, label %if.end8

if.then2:                                         ; preds = %entry
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 0
  %1 = load i64, i64* %length, align 8, !tbaa !12
  %call4 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef nonnull %0, i64 noundef %1) #5
  %2 = load i8*, i8** %data, align 8, !tbaa !10
  %3 = load i64, i64* %length, align 8, !tbaa !12
  tail call void @CRYPTO_secure_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 66) #5
  store i8* null, i8** %data, align 8, !tbaa !10
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %entry
  ret i8* %call
}

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* nocapture noundef %str, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 0
  %0 = load i64, i64* %length, align 8, !tbaa !12
  %cmp.not = icmp ult i64 %0, %len
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %1 = load i8*, i8** %data, align 8, !tbaa !10
  %cmp1.not = icmp eq i8* %1, null
  br i1 %cmp1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %len
  %sub = sub i64 %0, %len
  %call = tail call i8* @memset(i8* noundef nonnull %arrayidx, i32 noundef 0, i64 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 2
  %2 = load i64, i64* %max, align 8, !tbaa !11
  %cmp7.not = icmp ult i64 %2, %len
  br i1 %cmp7.not, label %if.end16, label %if.then8

if.then8:                                         ; preds = %if.end6
  %data9 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %3 = load i8*, i8** %data9, align 8, !tbaa !10
  %arrayidx11 = getelementptr inbounds i8, i8* %3, i64 %0
  %sub13 = sub i64 %len, %0
  %call14 = tail call i8* @memset(i8* noundef %arrayidx11, i32 noundef 0, i64 noundef %sub13) #5
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %cmp17 = icmp ugt i64 %len, 1610612732
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BUF_MEM_grow_clean, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 7, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %4 = trunc i64 %len to i32
  %div.lhs.trunc = add nuw nsw i32 %4, 3
  %div79 = udiv i32 %div.lhs.trunc, 3
  %div.zext = zext i32 %div79 to i64
  %mul = shl nuw nsw i64 %div.zext, 2
  %flags = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 3
  %5 = load i64, i64* %flags, align 8, !tbaa !4
  %and = and i64 %5, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end19
  %call21 = tail call fastcc i8* @sec_alloc_realloc(%struct.buf_mem_st* noundef nonnull %str, i64 noundef %mul) #4
  br label %if.end25

if.else:                                          ; preds = %if.end19
  %data22 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  %6 = load i8*, i8** %data22, align 8, !tbaa !10
  %call24 = tail call i8* @CRYPTO_clear_realloc(i8* noundef %6, i64 noundef %2, i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 135) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %ret.0 = phi i8* [ %call21, %if.then20 ], [ %call24, %if.else ]
  %cmp26 = icmp eq i8* %ret.0, null
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end25
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.BUF_MEM_grow_clean, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 7, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.else28:                                        ; preds = %if.end25
  %data29 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %str, i64 0, i32 1
  store i8* %ret.0, i8** %data29, align 8, !tbaa !10
  store i64 %mul, i64* %max, align 8, !tbaa !11
  %7 = load i64, i64* %length, align 8, !tbaa !12
  %arrayidx33 = getelementptr inbounds i8, i8* %ret.0, i64 %7
  %sub35 = sub i64 %len, %7
  %call36 = tail call i8* @memset(i8* noundef nonnull %arrayidx33, i32 noundef 0, i64 noundef %sub35) #5
  store i64 %len, i64* %length, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.else28, %if.then18, %if.then8, %if.end
  %retval.0 = phi i64 [ %len, %if.end ], [ %len, %if.then8 ], [ 0, %if.then18 ], [ 0, %if.then27 ], [ %len, %if.else28 ]
  ret i64 %retval.0
}

declare i8* @CRYPTO_clear_realloc(i8* noundef, i64 noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @BUF_reverse(i8* nocapture noundef %out, i8* noundef readonly %in, i64 noundef %size) local_unnamed_addr #3 {
entry:
  %tobool.not = icmp eq i8* %in, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cmp27.not = icmp eq i64 %size, 0
  br i1 %cmp27.not, label %if.end, label %iter.check

iter.check:                                       ; preds = %if.then
  %sub = add i64 %size, -1
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %sub
  %min.iters.check = icmp ult i64 %size, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, i8* %out, i64 %size
  %scevgep40 = getelementptr i8, i8* %in, i64 %size
  %bound0 = icmp ugt i8* %scevgep40, %out
  %bound1 = icmp ugt i8* %scevgep, %in
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %size, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %size, -32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = sub i64 0, %index
  %next.gep = getelementptr i8, i8* %add.ptr, i64 %0
  %next.gep43 = getelementptr i8, i8* %in, i64 %index
  %1 = bitcast i8* %next.gep43 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %1, align 1, !tbaa !13, !alias.scope !14
  %2 = getelementptr i8, i8* %next.gep43, i64 16
  %3 = bitcast i8* %2 to <16 x i8>*
  %wide.load45 = load <16 x i8>, <16 x i8>* %3, align 1, !tbaa !13, !alias.scope !14
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %4 = getelementptr i8, i8* %next.gep, i64 -15
  %5 = bitcast i8* %4 to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %5, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %reverse46 = shufflevector <16 x i8> %wide.load45, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %6 = getelementptr i8, i8* %next.gep, i64 -16
  %7 = getelementptr i8, i8* %6, i64 -15
  %8 = bitcast i8* %7 to <16 x i8>*
  store <16 x i8> %reverse46, <16 x i8>* %8, align 1, !tbaa !13, !alias.scope !17, !noalias !14
  %index.next = add nuw i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %size
  br i1 %cmp.n, label %if.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end53 = getelementptr i8, i8* %in, i64 %n.vec
  %10 = sub i64 0, %n.vec
  %ind.end49 = getelementptr i8, i8* %add.ptr, i64 %10
  %n.vec.remaining = and i64 %size, 24
  %min.epilog.iters.check = icmp eq i64 %n.vec.remaining, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %size, -8
  %11 = sub i64 0, %n.vec48
  %ind.end = getelementptr i8, i8* %add.ptr, i64 %11
  %ind.end52 = getelementptr i8, i8* %in, i64 %n.vec48
  %next.gep56 = getelementptr i8, i8* %add.ptr, i64 -7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ]
  %12 = sub i64 0, %index55
  %next.gep57 = getelementptr i8, i8* %in, i64 %index55
  %13 = bitcast i8* %next.gep57 to <8 x i8>*
  %wide.load58 = load <8 x i8>, <8 x i8>* %13, align 1, !tbaa !13
  %reverse59 = shufflevector <8 x i8> %wide.load58, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %14 = getelementptr i8, i8* %next.gep56, i64 %12
  %15 = bitcast i8* %14 to <8 x i8>*
  store <8 x i8> %reverse59, <8 x i8>* %15, align 1, !tbaa !13
  %index.next60 = add nuw i64 %index55, 8
  %16 = icmp eq i64 %index.next60, %n.vec48
  br i1 %16, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec48, %size
  br i1 %cmp.n54, label %if.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %out.addr.030.ph = phi i8* [ %add.ptr, %iter.check ], [ %add.ptr, %vector.memcheck ], [ %ind.end49, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.middle.block ]
  %i.029.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %in.addr.028.ph = phi i8* [ %in, %iter.check ], [ %in, %vector.memcheck ], [ %ind.end53, %vec.epilog.iter.check ], [ %ind.end52, %vec.epilog.middle.block ]
  %17 = xor i64 %i.029.ph, -1
  %18 = add i64 %17, %size
  %xtraiter = and i64 %size, 7
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %out.addr.030.prol = phi i8* [ %incdec.ptr1.prol, %for.body.prol ], [ %out.addr.030.ph, %for.body.preheader ]
  %i.029.prol = phi i64 [ %inc.prol, %for.body.prol ], [ %i.029.ph, %for.body.preheader ]
  %in.addr.028.prol = phi i8* [ %incdec.ptr.prol, %for.body.prol ], [ %in.addr.028.ph, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %in.addr.028.prol, i64 1
  %19 = load i8, i8* %in.addr.028.prol, align 1, !tbaa !13
  %incdec.ptr1.prol = getelementptr inbounds i8, i8* %out.addr.030.prol, i64 -1
  store i8 %19, i8* %out.addr.030.prol, align 1, !tbaa !13
  %inc.prol = add nuw i64 %i.029.prol, 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !24

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %out.addr.030.unr = phi i8* [ %out.addr.030.ph, %for.body.preheader ], [ %incdec.ptr1.prol, %for.body.prol ]
  %i.029.unr = phi i64 [ %i.029.ph, %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %in.addr.028.unr = phi i8* [ %in.addr.028.ph, %for.body.preheader ], [ %incdec.ptr.prol, %for.body.prol ]
  %20 = icmp ult i64 %18, 7
  br i1 %20, label %if.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %out.addr.030 = phi i8* [ %incdec.ptr1.7, %for.body ], [ %out.addr.030.unr, %for.body.prol.loopexit ]
  %i.029 = phi i64 [ %inc.7, %for.body ], [ %i.029.unr, %for.body.prol.loopexit ]
  %in.addr.028 = phi i8* [ %incdec.ptr.7, %for.body ], [ %in.addr.028.unr, %for.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, i8* %in.addr.028, i64 1
  %21 = load i8, i8* %in.addr.028, align 1, !tbaa !13
  %incdec.ptr1 = getelementptr inbounds i8, i8* %out.addr.030, i64 -1
  store i8 %21, i8* %out.addr.030, align 1, !tbaa !13
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %in.addr.028, i64 2
  %22 = load i8, i8* %incdec.ptr, align 1, !tbaa !13
  %incdec.ptr1.1 = getelementptr inbounds i8, i8* %out.addr.030, i64 -2
  store i8 %22, i8* %incdec.ptr1, align 1, !tbaa !13
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %in.addr.028, i64 3
  %23 = load i8, i8* %incdec.ptr.1, align 1, !tbaa !13
  %incdec.ptr1.2 = getelementptr inbounds i8, i8* %out.addr.030, i64 -3
  store i8 %23, i8* %incdec.ptr1.1, align 1, !tbaa !13
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %in.addr.028, i64 4
  %24 = load i8, i8* %incdec.ptr.2, align 1, !tbaa !13
  %incdec.ptr1.3 = getelementptr inbounds i8, i8* %out.addr.030, i64 -4
  store i8 %24, i8* %incdec.ptr1.2, align 1, !tbaa !13
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %in.addr.028, i64 5
  %25 = load i8, i8* %incdec.ptr.3, align 1, !tbaa !13
  %incdec.ptr1.4 = getelementptr inbounds i8, i8* %out.addr.030, i64 -5
  store i8 %25, i8* %incdec.ptr1.3, align 1, !tbaa !13
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %in.addr.028, i64 6
  %26 = load i8, i8* %incdec.ptr.4, align 1, !tbaa !13
  %incdec.ptr1.5 = getelementptr inbounds i8, i8* %out.addr.030, i64 -6
  store i8 %26, i8* %incdec.ptr1.4, align 1, !tbaa !13
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %in.addr.028, i64 7
  %27 = load i8, i8* %incdec.ptr.5, align 1, !tbaa !13
  %incdec.ptr1.6 = getelementptr inbounds i8, i8* %out.addr.030, i64 -7
  store i8 %27, i8* %incdec.ptr1.5, align 1, !tbaa !13
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %in.addr.028, i64 8
  %28 = load i8, i8* %incdec.ptr.6, align 1, !tbaa !13
  %incdec.ptr1.7 = getelementptr inbounds i8, i8* %out.addr.030, i64 -8
  store i8 %28, i8* %incdec.ptr1.6, align 1, !tbaa !13
  %inc.7 = add nuw i64 %i.029, 8
  %exitcond.not.7 = icmp eq i64 %inc.7, %size
  br i1 %exitcond.not.7, label %if.end, label %for.body, !llvm.loop !26

if.else:                                          ; preds = %entry
  %cmp532.not = icmp ult i64 %size, 2
  br i1 %cmp532.not, label %if.end, label %for.body6.preheader

for.body6.preheader:                              ; preds = %if.else
  %div = lshr i64 %size, 1
  %add.ptr2 = getelementptr inbounds i8, i8* %out, i64 %size
  %29 = add nsw i64 %div, -1
  %xtraiter62 = and i64 %div, 3
  %30 = icmp ult i64 %29, 3
  br i1 %30, label %if.end.loopexit.unr-lcssa, label %for.body6.preheader.new

for.body6.preheader.new:                          ; preds = %for.body6.preheader
  %unroll_iter = and i64 %div, 9223372036854775804
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.preheader.new
  %q.035.pn = phi i8* [ %add.ptr2, %for.body6.preheader.new ], [ %q.035.3, %for.body6 ]
  %out.addr.134 = phi i8* [ %out, %for.body6.preheader.new ], [ %incdec.ptr8.3, %for.body6 ]
  %niter = phi i64 [ 0, %for.body6.preheader.new ], [ %niter.next.3, %for.body6 ]
  %q.035 = getelementptr inbounds i8, i8* %q.035.pn, i64 -1
  %31 = load i8, i8* %q.035, align 1, !tbaa !13
  %32 = load i8, i8* %out.addr.134, align 1, !tbaa !13
  store i8 %32, i8* %q.035, align 1, !tbaa !13
  %incdec.ptr8 = getelementptr inbounds i8, i8* %out.addr.134, i64 1
  store i8 %31, i8* %out.addr.134, align 1, !tbaa !13
  %q.035.1 = getelementptr inbounds i8, i8* %q.035.pn, i64 -2
  %33 = load i8, i8* %q.035.1, align 1, !tbaa !13
  %34 = load i8, i8* %incdec.ptr8, align 1, !tbaa !13
  store i8 %34, i8* %q.035.1, align 1, !tbaa !13
  %incdec.ptr8.1 = getelementptr inbounds i8, i8* %out.addr.134, i64 2
  store i8 %33, i8* %incdec.ptr8, align 1, !tbaa !13
  %q.035.2 = getelementptr inbounds i8, i8* %q.035.pn, i64 -3
  %35 = load i8, i8* %q.035.2, align 1, !tbaa !13
  %36 = load i8, i8* %incdec.ptr8.1, align 1, !tbaa !13
  store i8 %36, i8* %q.035.2, align 1, !tbaa !13
  %incdec.ptr8.2 = getelementptr inbounds i8, i8* %out.addr.134, i64 3
  store i8 %35, i8* %incdec.ptr8.1, align 1, !tbaa !13
  %q.035.3 = getelementptr inbounds i8, i8* %q.035.pn, i64 -4
  %37 = load i8, i8* %q.035.3, align 1, !tbaa !13
  %38 = load i8, i8* %incdec.ptr8.2, align 1, !tbaa !13
  store i8 %38, i8* %q.035.3, align 1, !tbaa !13
  %incdec.ptr8.3 = getelementptr inbounds i8, i8* %out.addr.134, i64 4
  store i8 %37, i8* %incdec.ptr8.2, align 1, !tbaa !13
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %if.end.loopexit.unr-lcssa, label %for.body6, !llvm.loop !27

if.end.loopexit.unr-lcssa:                        ; preds = %for.body6, %for.body6.preheader
  %q.035.pn.unr = phi i8* [ %add.ptr2, %for.body6.preheader ], [ %q.035.3, %for.body6 ]
  %out.addr.134.unr = phi i8* [ %out, %for.body6.preheader ], [ %incdec.ptr8.3, %for.body6 ]
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %if.end, label %for.body6.epil

for.body6.epil:                                   ; preds = %if.end.loopexit.unr-lcssa, %for.body6.epil
  %q.035.pn.epil = phi i8* [ %q.035.epil, %for.body6.epil ], [ %q.035.pn.unr, %if.end.loopexit.unr-lcssa ]
  %out.addr.134.epil = phi i8* [ %incdec.ptr8.epil, %for.body6.epil ], [ %out.addr.134.unr, %if.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body6.epil ], [ 0, %if.end.loopexit.unr-lcssa ]
  %q.035.epil = getelementptr inbounds i8, i8* %q.035.pn.epil, i64 -1
  %39 = load i8, i8* %q.035.epil, align 1, !tbaa !13
  %40 = load i8, i8* %out.addr.134.epil, align 1, !tbaa !13
  store i8 %40, i8* %q.035.epil, align 1, !tbaa !13
  %incdec.ptr8.epil = getelementptr inbounds i8, i8* %out.addr.134.epil, i64 1
  store i8 %39, i8* %out.addr.134.epil, align 1, !tbaa !13
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter62
  br i1 %epil.iter.cmp.not, label %if.end, label %for.body6.epil, !llvm.loop !28

if.end:                                           ; preds = %for.body.prol.loopexit, %for.body, %if.end.loopexit.unr-lcssa, %for.body6.epil, %middle.block, %vec.epilog.middle.block, %if.then, %if.else
  ret void
}

declare i8* @CRYPTO_secure_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 24}
!5 = !{!"buf_mem_st", !6, i64 0, !9, i64 8, !6, i64 16, !6, i64 24}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!5, !9, i64 8}
!11 = !{!5, !6, i64 16}
!12 = !{!5, !6, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = distinct !{!22, !20, !21, !23}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !20, !21}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !25}
