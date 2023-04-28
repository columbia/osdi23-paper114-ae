; ModuleID = 'crypto/mem_sec.c'
source_filename = "crypto/mem_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_st = type { i8*, i64, i8*, i64, i8**, i64, i64, i8*, i8*, i64 }
%struct.sh_list_st = type { %struct.sh_list_st*, %struct.sh_list_st** }

@secure_mem_initialized = internal unnamed_addr global i1 false, align 4
@sec_malloc_lock = internal unnamed_addr global i8* null, align 8
@secure_mem_used = internal unnamed_addr global i64 0, align 8
@sh = internal global %struct.sh_st zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"assertion failed: size > 0\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"crypto/mem_sec.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"assertion failed: (size & (size - 1)) == 0\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"assertion failed: (minsize & (minsize - 1)) == 0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"assertion failed: sh.freelist != NULL\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"assertion failed: sh.bittable != NULL\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"assertion failed: sh.bitmalloc != NULL\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"assertion failed: list >= 0 && list < sh.freelist_size\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"assertion failed: ((ptr - sh.arena) & ((sh.arena_size >> list) - 1)) == 0\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"assertion failed: bit > 0 && bit < sh.bittable_size\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"assertion failed: !TESTBIT(table, bit)\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"assertion failed: WITHIN_FREELIST(list)\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"assertion failed: WITHIN_ARENA(ptr)\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"assertion failed: temp->next == NULL || WITHIN_ARENA(temp->next)\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"assertion failed: (char **)temp->next->p_next == list\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"assertion failed: !sh_testbit(temp, slist, sh.bitmalloc)\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"assertion failed: temp != sh.freelist[slist]\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"assertion failed: sh.freelist[slist] == temp\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"assertion failed: temp-(sh.arena_size >> slist) == sh_find_my_buddy(temp, slist)\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"assertion failed: sh_testbit(chunk, list, sh.bittable)\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"assertion failed: WITHIN_ARENA(chunk)\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"assertion failed: TESTBIT(table, bit)\00", align 1
@.str.22 = private unnamed_addr constant [80 x i8] c"assertion failed: WITHIN_FREELIST(temp2->p_next) || WITHIN_ARENA(temp2->p_next)\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"assertion failed: sh_testbit(ptr, list, sh.bittable)\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"assertion failed: ptr == sh_find_my_buddy(buddy, list)\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"assertion failed: !sh_testbit(ptr, list, sh.bitmalloc)\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"assertion failed: sh.freelist[list] == ptr\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"assertion failed: (bit & 1) == 0\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_secure_malloc_init(i64 noundef %size, i64 noundef %minsize) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @secure_mem_initialized, align 4
  br i1 %.b, label %cleanup, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #7
  store i8* %call, i8** @sec_malloc_lock, align 8, !tbaa !4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call2 = tail call fastcc i32 @sh_init(i64 noundef %size, i64 noundef %minsize) #8
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  store i1 true, i1* @secure_mem_initialized, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %0 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #7
  store i8* null, i8** @sec_malloc_lock, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.else, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %entry ], [ %call2, %if.then4 ], [ 0, %if.else ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sh_init(i64 noundef %size, i64 noundef %minsize) unnamed_addr #0 {
entry:
  %call = tail call i8* @memset(i8* noundef bitcast (%struct.sh_st* @sh to i8*), i32 noundef 0, i64 noundef 80) #7
  %cmp.not = icmp eq i64 %size, 0
  br i1 %cmp.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 403) #9
  unreachable

cond.end:                                         ; preds = %entry
  %0 = tail call i64 @llvm.ctpop.i64(i64 %size), !range !8
  %cmp1 = icmp ult i64 %0, 2
  br i1 %cmp1, label %if.end, label %cond.false3

cond.false3:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 404) #9
  unreachable

if.end:                                           ; preds = %cond.end
  %cmp10 = icmp ult i64 %minsize, 17
  br i1 %cmp10, label %if.end26, label %if.else

if.else:                                          ; preds = %if.end
  %1 = tail call i64 @llvm.ctpop.i64(i64 %minsize), !range !8
  %cmp16 = icmp ult i64 %1, 2
  br i1 %cmp16, label %if.end26, label %cond.false18

cond.false18:                                     ; preds = %if.else
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 425) #9
  unreachable

if.end26:                                         ; preds = %if.else, %if.end
  %minsize.addr.0 = phi i64 [ 16, %if.end ], [ %minsize, %if.else ]
  store i64 %size, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  store i64 %minsize.addr.0, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 6), align 8, !tbaa !12
  %div = udiv i64 %size, %minsize.addr.0
  %mul = shl nuw nsw i64 %div, 1
  store i64 %mul, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8, !tbaa !13
  %cmp28 = icmp ult i64 %div, 4
  br i1 %cmp28, label %err, label %for.body

for.body:                                         ; preds = %if.end26, %for.body
  %i.0142 = phi i64 [ %shr32, %for.body ], [ %mul, %if.end26 ]
  %inc31139141 = phi i64 [ %inc31, %for.body ], [ -1, %if.end26 ]
  %inc31 = add nsw i64 %inc31139141, 1
  %shr32 = lshr i64 %i.0142, 1
  %tobool.not = icmp ult i64 %i.0142, 2
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body
  store i64 %inc31, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8, !tbaa !16
  %mul33 = shl i64 %inc31, 3
  %call34 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul33, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 442) #7
  store i8* %call34, i8** bitcast (i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4) to i8**), align 8, !tbaa !17
  %cmp35.not = icmp eq i8* %call34, null
  br i1 %cmp35.not, label %cond.false37, label %if.end42

cond.false37:                                     ; preds = %for.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 443) #9
  unreachable

if.end42:                                         ; preds = %for.end
  %2 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8, !tbaa !13
  %shr43 = lshr i64 %2, 3
  %call44 = tail call i8* @CRYPTO_zalloc(i64 noundef %shr43, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 447) #7
  store i8* %call44, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  %cmp45.not = icmp eq i8* %call44, null
  br i1 %cmp45.not, label %cond.false47, label %if.end52

cond.false47:                                     ; preds = %if.end42
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 448) #9
  unreachable

if.end52:                                         ; preds = %if.end42
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8, !tbaa !13
  %shr53 = lshr i64 %3, 3
  %call54 = tail call i8* @CRYPTO_zalloc(i64 noundef %shr53, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 452) #7
  store i8* %call54, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %cmp55.not = icmp eq i8* %call54, null
  br i1 %cmp55.not, label %cond.false57, label %if.end62

cond.false57:                                     ; preds = %if.end52
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 453) #9
  unreachable

if.end62:                                         ; preds = %if.end52
  %call63 = tail call i64 @sysconf(i32 noundef 30) #7
  %cmp64 = icmp slt i64 %call63, 1
  %.call63 = select i1 %cmp64, i64 4096, i64 %call63
  %4 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %reass.add = shl nuw i64 %.call63, 1
  %add68 = add i64 %reass.add, %4
  store i64 %add68, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 1), align 8, !tbaa !20
  %call69 = tail call i8* @mmap(i8* noundef null, i64 noundef %add68, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #7
  store i8* %call69, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 0), align 8, !tbaa !21
  %cmp70 = icmp eq i8* %call69, inttoptr (i64 -1 to i8*)
  br i1 %cmp70, label %err, label %if.end72

if.end72:                                         ; preds = %if.end62
  %add.ptr = getelementptr inbounds i8, i8* %call69, i64 %.call63
  store i8* %add.ptr, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %5 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_setbit(i8* noundef nonnull %add.ptr, i32 noundef 0, i8* noundef %5) #8
  %6 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %7 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  tail call fastcc void @sh_add_to_list(i8** noundef %6, i8* noundef %7) #8
  %8 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 0), align 8, !tbaa !21
  %call73 = tail call i32 @mprotect(i8* noundef %8, i64 noundef %.call63, i32 noundef 0) #7
  %cmp74 = icmp slt i32 %call73, 0
  %9 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %sub78 = add i64 %reass.add, -1
  %add79 = add i64 %sub78, %9
  %neg = sub nsw i64 0, %.call63
  %and81 = and i64 %add79, %neg
  %10 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 0), align 8, !tbaa !21
  %add.ptr82 = getelementptr inbounds i8, i8* %10, i64 %and81
  %call83 = tail call i32 @mprotect(i8* noundef %add.ptr82, i64 noundef %.call63, i32 noundef 0) #7
  %cmp84 = icmp slt i32 %call83, 0
  %11 = select i1 %cmp84, i1 true, i1 %cmp74
  %ret.1 = select i1 %11, i32 2, i32 1
  %12 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %13 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %call87 = tail call i64 (i64, ...) @syscall(i64 noundef 325, i8* noundef %12, i64 noundef %13, i32 noundef 1) #7
  %cmp88 = icmp slt i64 %call87, 0
  br i1 %cmp88, label %if.then89, label %if.end99

if.then89:                                        ; preds = %if.end72
  %call90 = tail call i32* @__errno_location() #10
  %14 = load i32, i32* %call90, align 4, !tbaa !23
  %cmp91 = icmp eq i32 %14, 38
  br i1 %cmp91, label %if.then92, label %if.end99

if.then92:                                        ; preds = %if.then89
  %15 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %16 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %call93 = tail call i32 @mlock(i8* noundef %15, i64 noundef %16) #7
  %cmp94 = icmp slt i32 %call93, 0
  %spec.select137 = select i1 %cmp94, i32 2, i32 %ret.1
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.then89, %if.end72
  %ret.2 = phi i32 [ %ret.1, %if.end72 ], [ %spec.select137, %if.then92 ], [ 2, %if.then89 ]
  %17 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %18 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %call100 = tail call i32 @madvise(i8* noundef %17, i64 noundef %18, i32 noundef 16) #7
  %cmp101 = icmp slt i32 %call100, 0
  %spec.select138 = select i1 %cmp101, i32 2, i32 %ret.2
  br label %cleanup

err:                                              ; preds = %if.end62, %if.end26
  tail call fastcc void @sh_done() #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end99
  %retval.0 = phi i32 [ 0, %err ], [ %spec.select138, %if.end99 ]
  ret i32 %retval.0
}

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @CRYPTO_secure_malloc_done() local_unnamed_addr #0 {
entry:
  %0 = load i64, i64* @secure_mem_used, align 8, !tbaa !25
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  tail call fastcc void @sh_done() #8
  store i1 false, i1* @secure_mem_initialized, align 4
  %1 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #7
  store i8* null, i8** @sec_malloc_lock, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_done() unnamed_addr #0 {
entry:
  %0 = load i8*, i8** bitcast (i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4) to i8**), align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 559) #7
  %1 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 560) #7
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 561) #7
  %3 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 0), align 8, !tbaa !21
  %cmp = icmp ne i8* %3, inttoptr (i64 -1 to i8*)
  %4 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 1), align 8
  %tobool = icmp ne i64 %4, 0
  %or.cond = select i1 %cmp, i1 %tobool, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @munmap(i8* noundef %3, i64 noundef %4) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i8* @memset(i8* noundef bitcast (%struct.sh_st* @sh to i8*), i32 noundef 0, i64 noundef 80) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @CRYPTO_secure_malloc_initialized() local_unnamed_addr #2 {
entry:
  %.b = load i1, i1* @secure_mem_initialized, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_secure_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @secure_mem_initialized, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call1 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #7
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i8* @sh_malloc(i64 noundef %num) #8
  %tobool6.not = icmp eq i8* %call5, null
  br i1 %tobool6.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.end4
  %call7 = tail call fastcc i64 @sh_actual_size(i8* noundef nonnull %call5) #8
  br label %cond.end

cond.end:                                         ; preds = %if.end4, %cond.true
  %cond = phi i64 [ %call7, %cond.true ], [ 0, %if.end4 ]
  %1 = load i64, i64* @secure_mem_used, align 8, !tbaa !25
  %add = add i64 %1, %cond
  store i64 %add, i64* @secure_mem_used, align 8, !tbaa !25
  %2 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call8 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end, %if.then
  %retval.0 = phi i8* [ %call5, %cond.end ], [ %call, %if.then ], [ null, %if.end ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_write_lock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8* @sh_malloc(i64 noundef %size) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %cmp = icmp ult i64 %0, %size
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8, !tbaa !16
  %2 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 6), align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %if.end
  %list.0.in = phi i64 [ %1, %if.end ], [ %list.0, %for.cond ]
  %i.0 = phi i64 [ %2, %if.end ], [ %shl, %for.cond ]
  %list.0 = add nsw i64 %list.0.in, -1
  %cmp1 = icmp ult i64 %i.0, %size
  %shl = shl i64 %i.0, 1
  br i1 %cmp1, label %for.cond, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %cmp2 = icmp sgt i64 %list.0.in, 0
  br i1 %cmp2, label %for.body7.lr.ph, label %cleanup

for.body7.lr.ph:                                  ; preds = %for.end
  %3 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc11
  %slist.0149 = phi i64 [ %list.0, %for.body7.lr.ph ], [ %dec12, %for.inc11 ]
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %slist.0149
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !4
  %cmp8.not = icmp eq i8* %4, null
  br i1 %cmp8.not, label %for.inc11, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body7
  %cmp17.not172 = icmp eq i64 %slist.0149, %list.0
  br i1 %cmp17.not172, label %while.end, label %while.body

for.inc11:                                        ; preds = %for.body7
  %dec12 = add nsw i64 %slist.0149, -1
  %cmp6 = icmp sgt i64 %slist.0149, 0
  br i1 %cmp6, label %for.body7, label %cleanup, !llvm.loop !27

while.cond:                                       ; preds = %cond.end57
  %cmp17.not = icmp eq i64 %inc, %list.0
  br i1 %cmp17.not, label %while.end, label %while.body, !llvm.loop !28

while.body:                                       ; preds = %while.cond.preheader, %while.cond
  %slist.1173 = phi i64 [ %inc, %while.cond ], [ %slist.0149, %while.cond.preheader ]
  %5 = phi i8* [ %add.ptr, %while.cond ], [ %4, %while.cond.preheader ]
  %conv = trunc i64 %slist.1173 to i32
  %6 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call = tail call fastcc i32 @sh_testbit(i8* noundef %5, i32 noundef %conv, i8* noundef %6) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end, label %cond.false

cond.false:                                       ; preds = %while.body
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 618) #9
  unreachable

cond.end:                                         ; preds = %while.body
  %7 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_clearbit(i8* noundef %5, i32 noundef %conv, i8* noundef %7) #8
  tail call fastcc void @sh_remove_from_list(i8* noundef %5) #8
  %8 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx20 = getelementptr inbounds i8*, i8** %8, i64 %slist.1173
  %9 = load i8*, i8** %arrayidx20, align 8, !tbaa !4
  %cmp21.not = icmp eq i8* %5, %9
  br i1 %cmp21.not, label %cond.false24, label %cond.end25

cond.false24:                                     ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 621) #9
  unreachable

cond.end25:                                       ; preds = %cond.end
  %inc = add nsw i64 %slist.1173, 1
  %conv27 = trunc i64 %inc to i32
  %10 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call28 = tail call fastcc i32 @sh_testbit(i8* noundef %5, i32 noundef %conv27, i8* noundef %10) #8
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %cond.end32, label %cond.false31

cond.false31:                                     ; preds = %cond.end25
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 627) #9
  unreachable

cond.end32:                                       ; preds = %cond.end25
  %11 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_setbit(i8* noundef %5, i32 noundef %conv27, i8* noundef %11) #8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx35 = getelementptr inbounds i8*, i8** %12, i64 %inc
  tail call fastcc void @sh_add_to_list(i8** noundef %arrayidx35, i8* noundef %5) #8
  %13 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx36 = getelementptr inbounds i8*, i8** %13, i64 %inc
  %14 = load i8*, i8** %arrayidx36, align 8, !tbaa !4
  %cmp37 = icmp eq i8* %14, %5
  br i1 %cmp37, label %cond.end41, label %cond.false40

cond.false40:                                     ; preds = %cond.end32
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 630) #9
  unreachable

cond.end41:                                       ; preds = %cond.end32
  %15 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr = lshr i64 %15, %inc
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %shr
  %16 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call44 = tail call fastcc i32 @sh_testbit(i8* noundef %add.ptr, i32 noundef %conv27, i8* noundef %16) #8
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %cond.end48, label %cond.false47

cond.false47:                                     ; preds = %cond.end41
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 634) #9
  unreachable

cond.end48:                                       ; preds = %cond.end41
  %17 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_setbit(i8* noundef %add.ptr, i32 noundef %conv27, i8* noundef %17) #8
  %18 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx51 = getelementptr inbounds i8*, i8** %18, i64 %inc
  tail call fastcc void @sh_add_to_list(i8** noundef %arrayidx51, i8* noundef %add.ptr) #8
  %19 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx52 = getelementptr inbounds i8*, i8** %19, i64 %inc
  %20 = load i8*, i8** %arrayidx52, align 8, !tbaa !4
  %cmp53 = icmp eq i8* %20, %add.ptr
  br i1 %cmp53, label %cond.end57, label %cond.false56

cond.false56:                                     ; preds = %cond.end48
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 637) #9
  unreachable

cond.end57:                                       ; preds = %cond.end48
  %21 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr59 = lshr i64 %21, %inc
  %idx.neg = sub i64 0, %shr59
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call62 = tail call fastcc i8* @sh_find_my_buddy(i8* noundef %add.ptr, i32 noundef %conv27) #8
  %cmp63 = icmp eq i8* %add.ptr60, %call62
  br i1 %cmp63, label %while.cond, label %cond.false66, !llvm.loop !28

cond.false66:                                     ; preds = %cond.end57
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 639) #9
  unreachable

while.end:                                        ; preds = %while.cond, %while.cond.preheader
  %.lcssa = phi i8** [ %3, %while.cond.preheader ], [ %19, %while.cond ]
  %arrayidx69 = getelementptr inbounds i8*, i8** %.lcssa, i64 %list.0
  %22 = load i8*, i8** %arrayidx69, align 8, !tbaa !4
  %conv70 = trunc i64 %list.0 to i32
  %23 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  %call71 = tail call fastcc i32 @sh_testbit(i8* noundef %22, i32 noundef %conv70, i8* noundef %23) #8
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cond.false74, label %cond.end75

cond.false74:                                     ; preds = %while.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 644) #9
  unreachable

cond.end75:                                       ; preds = %while.end
  %24 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  tail call fastcc void @sh_setbit(i8* noundef %22, i32 noundef %conv70, i8* noundef %24) #8
  tail call fastcc void @sh_remove_from_list(i8* noundef %22) #8
  %25 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp78.not = icmp uge i8* %22, %25
  %26 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %25, i64 %26
  %cmp81 = icmp ult i8* %22, %arrayidx80
  %or.cond = select i1 %cmp78.not, i1 %cmp81, i1 false
  br i1 %or.cond, label %cond.end85, label %cond.false84

cond.false84:                                     ; preds = %cond.end75
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 648) #9
  unreachable

cond.end85:                                       ; preds = %cond.end75
  %call87 = tail call i8* @memset(i8* noundef %22, i32 noundef 0, i64 noundef 16) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc11, %for.end, %entry, %cond.end85
  %retval.0 = phi i8* [ %22, %cond.end85 ], [ null, %entry ], [ null, %for.end ], [ null, %for.inc11 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @sh_actual_size(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp.not = icmp ule i8* %0, %ptr
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %cmp1 = icmp ugt i8* %arrayidx, %ptr
  %or.cond = select i1 %cmp.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 701) #9
  unreachable

if.end:                                           ; preds = %entry
  %call = tail call fastcc i64 @sh_getlist(i8* noundef %ptr) #8
  %conv = trunc i64 %call to i32
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  %call6 = tail call fastcc i32 @sh_testbit(i8* noundef %ptr, i32 noundef %conv, i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %cond.false8, label %cleanup

cond.false8:                                      ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 705) #9
  unreachable

cleanup:                                          ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %sh_prom = and i64 %call, 4294967295
  %div = lshr i64 %3, %sh_prom
  ret i64 %div
}

declare i32 @CRYPTO_THREAD_unlock(i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i8* @CRYPTO_secure_zalloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %.b = load i1, i1* @secure_mem_initialized, align 4
  br i1 %.b, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_secure_malloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef %num, i8* noundef %file, i32 noundef %line) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %call1, %if.end ]
  ret i8* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_secure_free(i8* noundef %ptr, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @CRYPTO_secure_allocated(i8* noundef nonnull %ptr) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %ptr, i8* noundef %file, i32 noundef %line) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call3 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = tail call fastcc i64 @sh_actual_size(i8* noundef nonnull %ptr) #8
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %ptr, i64 noundef %call7) #7
  %1 = load i64, i64* @secure_mem_used, align 8, !tbaa !25
  %sub = sub i64 %1, %call7
  store i64 %sub, i64* @secure_mem_used, align 8, !tbaa !25
  tail call fastcc void @sh_free(i8* noundef nonnull %ptr) #8
  %2 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call8 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.end6, %if.then1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @CRYPTO_secure_allocated(i8* noundef readnone %ptr) local_unnamed_addr #2 {
entry:
  %.b = load i1, i1* @secure_mem_initialized, align 4
  br i1 %.b, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @sh_allocated(i8* noundef %ptr) #8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_free(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp1.not = icmp ule i8* %0, %ptr
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %cmp2 = icmp ugt i8* %arrayidx, %ptr
  %or.cond = select i1 %cmp1.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.end8, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 663) #9
  unreachable

if.end8:                                          ; preds = %if.end
  %call = tail call fastcc i64 @sh_getlist(i8* noundef nonnull %ptr) #8
  %conv = trunc i64 %call to i32
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  %call9 = tail call fastcc i32 @sh_testbit(i8* noundef nonnull %ptr, i32 noundef %conv, i8* noundef %2) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %cond.false11, label %cond.end12

cond.false11:                                     ; preds = %if.end8
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 668) #9
  unreachable

cond.end12:                                       ; preds = %if.end8
  %3 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  tail call fastcc void @sh_clearbit(i8* noundef nonnull %ptr, i32 noundef %conv, i8* noundef %3) #8
  %4 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx15 = getelementptr inbounds i8*, i8** %4, i64 %call
  tail call fastcc void @sh_add_to_list(i8** noundef %arrayidx15, i8* noundef nonnull %ptr) #8
  br label %while.cond

while.cond:                                       ; preds = %cond.end66, %cond.end12
  %list.0 = phi i64 [ %call, %cond.end12 ], [ %dec, %cond.end66 ]
  %ptr.addr.0 = phi i8* [ %ptr, %cond.end12 ], [ %spec.select, %cond.end66 ]
  %conv16 = trunc i64 %list.0 to i32
  %call17 = tail call fastcc i8* @sh_find_my_buddy(i8* noundef %ptr.addr.0, i32 noundef %conv16) #8
  %cmp18.not = icmp eq i8* %call17, null
  br i1 %cmp18.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %call21 = tail call fastcc i8* @sh_find_my_buddy(i8* noundef nonnull %call17, i32 noundef %conv16) #8
  %cmp22 = icmp eq i8* %ptr.addr.0, %call21
  br i1 %cmp22, label %cond.end32, label %cond.false25

cond.false25:                                     ; preds = %while.body
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 674) #9
  unreachable

cond.end32:                                       ; preds = %while.body
  %5 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call35 = tail call fastcc i32 @sh_testbit(i8* noundef %ptr.addr.0, i32 noundef %conv16, i8* noundef %5) #8
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %cond.end39, label %cond.false38

cond.false38:                                     ; preds = %cond.end32
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 676) #9
  unreachable

cond.end39:                                       ; preds = %cond.end32
  %6 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_clearbit(i8* noundef %ptr.addr.0, i32 noundef %conv16, i8* noundef %6) #8
  tail call fastcc void @sh_remove_from_list(i8* noundef %ptr.addr.0) #8
  %7 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call43 = tail call fastcc i32 @sh_testbit(i8* noundef %ptr.addr.0, i32 noundef %conv16, i8* noundef %7) #8
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cond.end47, label %cond.false46

cond.false46:                                     ; preds = %cond.end39
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 679) #9
  unreachable

cond.end47:                                       ; preds = %cond.end39
  %8 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_clearbit(i8* noundef nonnull %call17, i32 noundef %conv16, i8* noundef %8) #8
  tail call fastcc void @sh_remove_from_list(i8* noundef nonnull %call17) #8
  %dec = add i64 %list.0, -1
  %cmp50 = icmp ugt i8* %ptr.addr.0, %call17
  %cond55 = select i1 %cmp50, i8* %ptr.addr.0, i8* %call17
  %call56 = tail call i8* @memset(i8* noundef %cond55, i32 noundef 0, i64 noundef 16) #7
  %spec.select = select i1 %cmp50, i8* %call17, i8* %ptr.addr.0
  %conv61 = trunc i64 %dec to i32
  %9 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %call62 = tail call fastcc i32 @sh_testbit(i8* noundef %spec.select, i32 noundef %conv61, i8* noundef %9) #8
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cond.end66, label %cond.false65

cond.false65:                                     ; preds = %cond.end47
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 690) #9
  unreachable

cond.end66:                                       ; preds = %cond.end47
  %10 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  tail call fastcc void @sh_setbit(i8* noundef %spec.select, i32 noundef %conv61, i8* noundef %10) #8
  %11 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx69 = getelementptr inbounds i8*, i8** %11, i64 %dec
  tail call fastcc void @sh_add_to_list(i8** noundef %arrayidx69, i8* noundef %spec.select) #8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %arrayidx70 = getelementptr inbounds i8*, i8** %12, i64 %dec
  %13 = load i8*, i8** %arrayidx70, align 8, !tbaa !4
  %cmp71 = icmp eq i8* %13, %spec.select
  br i1 %cmp71, label %while.cond, label %cond.false74, !llvm.loop !29

cond.false74:                                     ; preds = %cond.end66
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 693) #9
  unreachable

cleanup:                                          ; preds = %while.cond, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @CRYPTO_secure_clear_free(i8* noundef %ptr, i64 noundef %num, i8* noundef %file, i32 noundef %line) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %ptr, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @CRYPTO_secure_allocated(i8* noundef nonnull %ptr) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %ptr, i64 noundef %num) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %ptr, i8* noundef %file, i32 noundef %line) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call3 = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #7
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end2
  %call7 = tail call fastcc i64 @sh_actual_size(i8* noundef nonnull %ptr) #8
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %ptr, i64 noundef %call7) #7
  %1 = load i64, i64* @secure_mem_used, align 8, !tbaa !25
  %sub = sub i64 %1, %call7
  store i64 %sub, i64* @secure_mem_used, align 8, !tbaa !25
  tail call fastcc void @sh_free(i8* noundef nonnull %ptr) #8
  %2 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call8 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry, %if.end6, %if.then1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i32 @sh_allocated(i8* noundef readnone %ptr) unnamed_addr #2 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp = icmp ule i8* %0, %ptr
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %cmp1 = icmp ugt i8* %arrayidx, %ptr
  %2 = select i1 %cmp, i1 %cmp1, i1 false
  %cond = zext i1 %2 to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @CRYPTO_secure_used() local_unnamed_addr #2 {
entry:
  %0 = load i64, i64* @secure_mem_used, align 8, !tbaa !25
  ret i64 %0
}

; Function Attrs: noinline nounwind uwtable
define i64 @CRYPTO_secure_actual_size(i8* noundef %ptr) local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call = tail call i32 @CRYPTO_THREAD_write_lock(i8* noundef %0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i64 @sh_actual_size(i8* noundef %ptr) #8
  %1 = load i8*, i8** @sec_malloc_lock, align 8, !tbaa !4
  %call2 = tail call i32 @CRYPTO_THREAD_unlock(i8* noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @mmap(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_setbit(i8* noundef %ptr, i32 noundef %list, i8* nocapture noundef %table) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %list, -1
  %conv51 = zext i32 %list to i64
  %0 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8
  %cmp1 = icmp sgt i64 %0, %conv51
  %or.cond52 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond52, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 345) #9
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr = lshr i64 %2, %conv51
  %sub = add i64 %shr, -1
  %and = and i64 %sub, %sub.ptr.sub
  %cmp3 = icmp eq i64 %and, 0
  br i1 %cmp3, label %cond.end7, label %cond.false6

cond.false6:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346) #9
  unreachable

cond.end7:                                        ; preds = %cond.end
  %shl = shl nuw i64 1, %conv51
  %div = udiv i64 %sub.ptr.sub, %shr
  %add = add i64 %div, %shl
  %cmp15.not = icmp ne i64 %add, 0
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8
  %cmp18 = icmp ult i64 %add, %3
  %or.cond = select i1 %cmp15.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %cond.end22, label %cond.false21

cond.false21:                                     ; preds = %cond.end7
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 348) #9
  unreachable

cond.end22:                                       ; preds = %cond.end7
  %shr24 = lshr i64 %add, 3
  %arrayidx = getelementptr inbounds i8, i8* %table, i64 %shr24
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv25 = zext i8 %4 to i64
  %and26 = and i64 %add, 7
  %shl27 = shl nuw nsw i64 1, %and26
  %and28 = and i64 %shl27, %conv25
  %tobool.not = icmp eq i64 %and28, 0
  br i1 %tobool.not, label %cond.end31, label %cond.false30

cond.false30:                                     ; preds = %cond.end22
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 349) #9
  unreachable

cond.end31:                                       ; preds = %cond.end22
  %5 = trunc i64 %shl27 to i8
  %conv38 = or i8 %4, %5
  store i8 %conv38, i8* %arrayidx, align 1, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_add_to_list(i8** noundef %list, i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %cmp.not = icmp ule i8** %0, %list
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %1
  %cmp1 = icmp ugt i8** %arrayidx, %list
  %or.cond = select i1 %cmp.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 357) #9
  unreachable

cond.end:                                         ; preds = %entry
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp2.not = icmp ule i8* %2, %ptr
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %2, i64 %3
  %cmp5 = icmp ugt i8* %arrayidx4, %ptr
  %or.cond56 = select i1 %cmp2.not, i1 %cmp5, i1 false
  br i1 %or.cond56, label %cond.end8, label %cond.false7

cond.false7:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 358) #9
  unreachable

cond.end8:                                        ; preds = %cond.end
  %4 = bitcast i8** %list to %struct.sh_list_st**
  %5 = load %struct.sh_list_st*, %struct.sh_list_st** %4, align 8, !tbaa !4
  %next = bitcast i8* %ptr to %struct.sh_list_st**
  store %struct.sh_list_st* %5, %struct.sh_list_st** %next, align 8, !tbaa !31
  %cmp11 = icmp eq %struct.sh_list_st* %5, null
  br i1 %cmp11, label %cond.end20.thread, label %lor.lhs.false

cond.end20.thread:                                ; preds = %cond.end8
  %p_next58 = getelementptr inbounds i8, i8* %ptr, i64 8
  %6 = bitcast i8* %p_next58 to i8***
  store i8** %list, i8*** %6, align 8, !tbaa !33
  br label %if.end

lor.lhs.false:                                    ; preds = %cond.end8
  %7 = bitcast %struct.sh_list_st* %5 to i8*
  %cmp13.not = icmp ule i8* %2, %7
  %8 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %2, i64 %8
  %cmp17 = icmp ugt i8* %arrayidx16, %7
  %or.cond57 = select i1 %cmp13.not, i1 %cmp17, i1 false
  br i1 %or.cond57, label %if.then, label %cond.false19

cond.false19:                                     ; preds = %lor.lhs.false
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 362) #9
  unreachable

if.then:                                          ; preds = %lor.lhs.false
  %p_next = getelementptr inbounds i8, i8* %ptr, i64 8
  %9 = bitcast i8* %p_next to i8***
  store i8** %list, i8*** %9, align 8, !tbaa !33
  %p_next25 = getelementptr inbounds %struct.sh_list_st, %struct.sh_list_st* %5, i64 0, i32 1
  %10 = bitcast %struct.sh_list_st*** %p_next25 to i8***
  %11 = load i8**, i8*** %10, align 8, !tbaa !33
  %cmp26 = icmp eq i8** %11, %list
  br i1 %cmp26, label %cond.end29, label %cond.false28

cond.false28:                                     ; preds = %if.then
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366) #9
  unreachable

cond.end29:                                       ; preds = %if.then
  %12 = bitcast %struct.sh_list_st*** %p_next25 to i8**
  store i8* %ptr, i8** %12, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %cond.end20.thread, %cond.end29
  store i8* %ptr, i8** %list, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare i32 @mprotect(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @mlock(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @madvise(i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sh_testbit(i8* noundef %ptr, i32 noundef %list, i8* nocapture noundef readonly %table) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %list, -1
  %conv39 = zext i32 %list to i64
  %0 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8
  %cmp1 = icmp sgt i64 %0, %conv39
  %or.cond40 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond40, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 322) #9
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr = lshr i64 %2, %conv39
  %sub = add i64 %shr, -1
  %and = and i64 %sub, %sub.ptr.sub
  %cmp3 = icmp eq i64 %and, 0
  br i1 %cmp3, label %cond.end7, label %cond.false6

cond.false6:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323) #9
  unreachable

cond.end7:                                        ; preds = %cond.end
  %shl = shl nuw i64 1, %conv39
  %div = udiv i64 %sub.ptr.sub, %shr
  %add = add i64 %div, %shl
  %cmp15.not = icmp ne i64 %add, 0
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8
  %cmp18 = icmp ult i64 %add, %3
  %or.cond = select i1 %cmp15.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %cond.end22, label %cond.false21

cond.false21:                                     ; preds = %cond.end7
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 325) #9
  unreachable

cond.end22:                                       ; preds = %cond.end7
  %shr24 = lshr i64 %add, 3
  %arrayidx = getelementptr inbounds i8, i8* %table, i64 %shr24
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv25 = zext i8 %4 to i64
  %and26 = and i64 %add, 7
  %shl27 = shl nuw nsw i64 1, %and26
  %and28 = and i64 %shl27, %conv25
  %conv29 = trunc i64 %and28 to i32
  ret i32 %conv29
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_clearbit(i8* noundef %ptr, i32 noundef %list, i8* nocapture noundef %table) unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %list, -1
  %conv53 = zext i32 %list to i64
  %0 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8
  %cmp1 = icmp sgt i64 %0, %conv53
  %or.cond54 = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond54, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 333) #9
  unreachable

cond.end:                                         ; preds = %entry
  %1 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr = lshr i64 %2, %conv53
  %sub = add i64 %shr, -1
  %and = and i64 %sub, %sub.ptr.sub
  %cmp3 = icmp eq i64 %and, 0
  br i1 %cmp3, label %cond.end7, label %cond.false6

cond.false6:                                      ; preds = %cond.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 334) #9
  unreachable

cond.end7:                                        ; preds = %cond.end
  %shl = shl nuw i64 1, %conv53
  %div = udiv i64 %sub.ptr.sub, %shr
  %add = add i64 %div, %shl
  %cmp15.not = icmp ne i64 %add, 0
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 9), align 8
  %cmp18 = icmp ult i64 %add, %3
  %or.cond = select i1 %cmp15.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %cond.end22, label %cond.false21

cond.false21:                                     ; preds = %cond.end7
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 336) #9
  unreachable

cond.end22:                                       ; preds = %cond.end7
  %shr24 = lshr i64 %add, 3
  %arrayidx = getelementptr inbounds i8, i8* %table, i64 %shr24
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv25 = zext i8 %4 to i64
  %and26 = and i64 %add, 7
  %shl27 = shl nuw nsw i64 1, %and26
  %and28 = and i64 %shl27, %conv25
  %tobool.not = icmp eq i64 %and28, 0
  br i1 %tobool.not, label %cond.false30, label %cond.end31

cond.false30:                                     ; preds = %cond.end22
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 337) #9
  unreachable

cond.end31:                                       ; preds = %cond.end22
  %5 = trunc i64 %shl27 to i8
  %6 = xor i8 %5, -1
  %conv40 = and i8 %4, %6
  store i8 %conv40, i8* %arrayidx, align 1, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sh_remove_from_list(i8* nocapture noundef readonly %ptr) unnamed_addr #0 {
entry:
  %next = bitcast i8* %ptr to %struct.sh_list_st**
  %0 = load %struct.sh_list_st*, %struct.sh_list_st** %next, align 8, !tbaa !31
  %cmp.not = icmp eq %struct.sh_list_st* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %p_next = getelementptr inbounds i8, i8* %ptr, i64 8
  %1 = bitcast i8* %p_next to %struct.sh_list_st***
  %2 = load %struct.sh_list_st**, %struct.sh_list_st*** %1, align 8, !tbaa !33
  %p_next2 = getelementptr inbounds %struct.sh_list_st, %struct.sh_list_st* %0, i64 0, i32 1
  store %struct.sh_list_st** %2, %struct.sh_list_st*** %p_next2, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %p_next4 = getelementptr inbounds i8, i8* %ptr, i64 8
  %3 = bitcast i8* %p_next4 to %struct.sh_list_st***
  %4 = load %struct.sh_list_st**, %struct.sh_list_st*** %3, align 8, !tbaa !33
  store %struct.sh_list_st* %0, %struct.sh_list_st** %4, align 8, !tbaa !4
  %5 = load %struct.sh_list_st*, %struct.sh_list_st** %next, align 8, !tbaa !31
  %cmp6 = icmp eq %struct.sh_list_st* %5, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %if.end
  %p_next10 = getelementptr inbounds %struct.sh_list_st, %struct.sh_list_st* %5, i64 0, i32 1
  %6 = bitcast %struct.sh_list_st*** %p_next10 to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !33
  %8 = load i8**, i8*** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 4), align 8, !tbaa !17
  %9 = bitcast i8** %8 to i8*
  %cmp11.not = icmp uge i8* %7, %9
  %10 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %10
  %11 = bitcast i8** %arrayidx to i8*
  %cmp13 = icmp ult i8* %7, %11
  %or.cond = select i1 %cmp11.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %12 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %cmp15.not = icmp uge i8* %7, %12
  %13 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %12, i64 %13
  %cmp19 = icmp ult i8* %7, %arrayidx18
  %or.cond37 = select i1 %cmp15.not, i1 %cmp19, i1 false
  br i1 %or.cond37, label %cleanup, label %cond.false

cond.false:                                       ; preds = %lor.lhs.false
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 385) #9
  unreachable

cleanup:                                          ; preds = %if.end8, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal fastcc i8* @sh_find_my_buddy(i8* noundef %ptr, i32 noundef %list) unnamed_addr #2 {
entry:
  %sh_prom = zext i32 %list to i64
  %shl = shl nuw i64 1, %sh_prom
  %0 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %shr = lshr i64 %1, %sh_prom
  %div = udiv i64 %sub.ptr.sub, %shr
  %add = add i64 %div, %shl
  %xor = xor i64 %add, 1
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  %shr2 = lshr i64 %add, 3
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %shr2
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %3 to i64
  %and = and i64 %xor, 7
  %shl3 = shl nuw nsw i64 1, %and
  %and4 = and i64 %shl3, %conv
  %tobool.not = icmp eq i64 %and4, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 8), align 8, !tbaa !19
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 %shr2
  %5 = load i8, i8* %arrayidx6, align 1, !tbaa !30
  %conv7 = zext i8 %5 to i64
  %and10 = and i64 %shl3, %conv7
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %sub = add i64 %shl, -1
  %and14 = and i64 %xor, %sub
  %mul = mul i64 %and14, %shr
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %mul
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %chunk.0 = phi i8* [ null, %land.lhs.true ], [ %add.ptr, %if.then ], [ null, %entry ]
  ret i8* %chunk.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @sh_getlist(i8* noundef %ptr) unnamed_addr #0 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 5), align 8, !tbaa !16
  %1 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 3), align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 %1
  %2 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 2), align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %3 = load i64, i64* getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 6), align 8, !tbaa !12
  %list.014 = add nsw i64 %0, -1
  %tobool.not15 = icmp ugt i64 %3, %sub.ptr.sub
  br i1 %tobool.not15, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i64 %sub.ptr.sub, %3
  %4 = load i8*, i8** getelementptr inbounds (%struct.sh_st, %struct.sh_st* @sh, i64 0, i32 7), align 8, !tbaa !18
  br label %for.body

for.cond:                                         ; preds = %if.end
  %shr5 = lshr i64 %bit.016, 1
  %list.0 = add nsw i64 %list.017, -1
  %tobool.not = icmp ult i64 %bit.016, 2
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !34

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %list.017 = phi i64 [ %list.014, %for.body.lr.ph ], [ %list.0, %for.cond ]
  %bit.016 = phi i64 [ %div, %for.body.lr.ph ], [ %shr5, %for.cond ]
  %shr = lshr i64 %bit.016, 3
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %shr
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv = zext i8 %5 to i64
  %and = and i64 %bit.016, 7
  %shl = shl nuw nsw i64 1, %and
  %and1 = and i64 %shl, %conv
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.body
  %and3 = and i64 %bit.016, 1
  %cmp = icmp eq i64 %and3, 0
  br i1 %cmp, label %for.cond, label %cond.false

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef 311) #9
  unreachable

for.end:                                          ; preds = %for.cond, %for.body, %entry
  %list.0.lcssa = phi i64 [ %list.014, %entry ], [ %list.017, %for.body ], [ %list.0, %for.cond ]
  ret i64 %list.0.lcssa
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readnone willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 65}
!9 = !{!10, !11, i64 24}
!10 = !{!"sh_st", !5, i64 0, !11, i64 8, !5, i64 16, !11, i64 24, !5, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !5, i64 64, !11, i64 72}
!11 = !{!"long", !6, i64 0}
!12 = !{!10, !11, i64 48}
!13 = !{!10, !11, i64 72}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!10, !11, i64 40}
!17 = !{!10, !5, i64 32}
!18 = !{!10, !5, i64 56}
!19 = !{!10, !5, i64 64}
!20 = !{!10, !11, i64 8}
!21 = !{!10, !5, i64 0}
!22 = !{!10, !5, i64 16}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !6, i64 0}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !5, i64 0}
!32 = !{!"sh_list_st", !5, i64 0, !5, i64 8}
!33 = !{!32, !5, i64 8}
!34 = distinct !{!34, !15}
