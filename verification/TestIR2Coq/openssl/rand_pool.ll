; ModuleID = 'crypto/rand/rand_pool.c'
source_filename = "crypto/rand/rand_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_pool_st = type { i8*, i64, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"crypto/rand/rand_pool.c\00", align 1
@__func__.ossl_rand_pool_new = private unnamed_addr constant [19 x i8] c"ossl_rand_pool_new\00", align 1
@__func__.ossl_rand_pool_attach = private unnamed_addr constant [22 x i8] c"ossl_rand_pool_attach\00", align 1
@__func__.ossl_rand_pool_bytes_needed = private unnamed_addr constant [28 x i8] c"ossl_rand_pool_bytes_needed\00", align 1
@__func__.ossl_rand_pool_add = private unnamed_addr constant [19 x i8] c"ossl_rand_pool_add\00", align 1
@__func__.ossl_rand_pool_add_begin = private unnamed_addr constant [25 x i8] c"ossl_rand_pool_add_begin\00", align 1
@__func__.ossl_rand_pool_add_end = private unnamed_addr constant [23 x i8] c"ossl_rand_pool_add_end\00", align 1
@__func__.rand_pool_grow = private unnamed_addr constant [15 x i8] c"rand_pool_grow\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.rand_pool_st* @ossl_rand_pool_new(i32 noundef %entropy_requested, i32 noundef %secure, i64 noundef %min_len, i64 noundef %max_len) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 25) #6
  %0 = bitcast i8* %call to %struct.rand_pool_st*
  %tobool.not = icmp eq i32 %secure, 0
  %cond = select i1 %tobool.not, i64 48, i64 16
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_rand_pool_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %min_len2 = getelementptr inbounds i8, i8* %call, i64 24
  %1 = bitcast i8* %min_len2 to i64*
  store i64 %min_len, i64* %1, align 8, !tbaa !4
  %2 = icmp ult i64 %max_len, 12288
  %cond5 = select i1 %2, i64 %max_len, i64 12288
  %max_len6 = getelementptr inbounds i8, i8* %call, i64 32
  %3 = bitcast i8* %max_len6 to i64*
  store i64 %cond5, i64* %3, align 8, !tbaa !11
  %cmp7 = icmp ugt i64 %cond, %min_len
  %cond12 = select i1 %cmp7, i64 %cond, i64 %min_len
  %alloc_len = getelementptr inbounds i8, i8* %call, i64 40
  %4 = bitcast i8* %alloc_len to i64*
  %cmp15 = icmp ugt i64 %cond12, %cond5
  %spec.select = select i1 %cmp15, i64 %cond5, i64 %cond12
  store i64 %spec.select, i64* %4, align 8, !tbaa !12
  br i1 %tobool.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  %call24 = tail call i8* @CRYPTO_secure_zalloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #6
  br label %if.end28

if.else:                                          ; preds = %if.end
  %call26 = tail call i8* @CRYPTO_zalloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 43) #6
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %call26.sink = phi i8* [ %call26, %if.else ], [ %call24, %if.then22 ]
  %buffer27 = bitcast i8* %call to i8**
  store i8* %call26.sink, i8** %buffer27, align 8, !tbaa !13
  %cmp30 = icmp eq i8* %call26.sink, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_rand_pool_new, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 55) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %conv34 = sext i32 %entropy_requested to i64
  %entropy_requested35 = getelementptr inbounds i8, i8* %call, i64 56
  %5 = bitcast i8* %entropy_requested35 to i64*
  store i64 %conv34, i64* %5, align 8, !tbaa !14
  %secure36 = getelementptr inbounds i8, i8* %call, i64 20
  %6 = bitcast i8* %secure36 to i32*
  store i32 %secure, i32* %6, align 4, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end33, %if.then
  %retval.0 = phi %struct.rand_pool_st* [ null, %if.then ], [ null, %if.then32 ], [ %0, %if.end33 ]
  ret %struct.rand_pool_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.rand_pool_st* @ossl_rand_pool_attach(i8* noundef %buffer, i64 noundef %len, i64 noundef %entropy) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 64, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 68) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_rand_pool_attach, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.rand_pool_st*
  %buffer1 = bitcast i8* %call to i8**
  store i8* %buffer, i8** %buffer1, align 8, !tbaa !13
  %len2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %len2 to i64*
  store i64 %len, i64* %1, align 8, !tbaa !16
  %attached = getelementptr inbounds i8, i8* %call, i64 16
  %2 = bitcast i8* %attached to i32*
  store i32 1, i32* %2, align 8, !tbaa !17
  %alloc_len = getelementptr inbounds i8, i8* %call, i64 40
  %3 = bitcast i8* %alloc_len to i64*
  store i64 %len, i64* %3, align 8, !tbaa !12
  %max_len = getelementptr inbounds i8, i8* %call, i64 32
  %4 = bitcast i8* %max_len to i64*
  store i64 %len, i64* %4, align 8, !tbaa !11
  %min_len = getelementptr inbounds i8, i8* %call, i64 24
  %5 = bitcast i8* %min_len to i64*
  store i64 %len, i64* %5, align 8, !tbaa !4
  %entropy4 = getelementptr inbounds i8, i8* %call, i64 48
  %6 = bitcast i8* %entropy4 to i64*
  store i64 %entropy, i64* %6, align 8, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.rand_pool_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.rand_pool_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_rand_pool_free(%struct.rand_pool_st* noundef %pool) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.rand_pool_st* %pool, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %attached = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 2
  %0 = load i32, i32* %attached, align 8, !tbaa !17
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %secure = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 3
  %1 = load i32, i32* %secure, align 4, !tbaa !15
  %tobool2.not = icmp eq i32 %1, 0
  %buffer4 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %2 = load i8*, i8** %buffer4, align 8, !tbaa !13
  %alloc_len5 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 6
  %3 = load i64, i64* %alloc_len5, align 8, !tbaa !12
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  tail call void @CRYPTO_secure_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #6
  br label %if.end7

if.else:                                          ; preds = %if.then1
  tail call void @CRYPTO_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else, %if.end
  %4 = bitcast %struct.rand_pool_st* %pool to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 112) #6
  br label %return

return:                                           ; preds = %entry, %if.end7
  ret void
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ossl_rand_pool_buffer(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %buffer = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %0 = load i8*, i8** %buffer, align 8, !tbaa !13
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_rand_pool_entropy(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %entropy = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  %0 = load i64, i64* %entropy, align 8, !tbaa !18
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_rand_pool_length(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %0 = load i64, i64* %len, align 8, !tbaa !16
  ret i64 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i8* @ossl_rand_pool_detach(%struct.rand_pool_st* nocapture noundef %pool) local_unnamed_addr #3 {
entry:
  %buffer = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %0 = load i8*, i8** %buffer, align 8, !tbaa !13
  store i8* null, i8** %buffer, align 8, !tbaa !13
  %entropy = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  store i64 0, i64* %entropy, align 8, !tbaa !18
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ossl_rand_pool_reattach(%struct.rand_pool_st* nocapture noundef %pool, i8* noundef %buffer) local_unnamed_addr #0 {
entry:
  %buffer1 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  store i8* %buffer, i8** %buffer1, align 8, !tbaa !13
  %len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %0 = load i64, i64* %len, align 8, !tbaa !16
  tail call void @OPENSSL_cleanse(i8* noundef %buffer, i64 noundef %0) #6
  store i64 0, i64* %len, align 8, !tbaa !16
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_rand_pool_entropy_available(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %entropy = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  %0 = load i64, i64* %entropy, align 8, !tbaa !18
  %entropy_requested = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 8
  %1 = load i64, i64* %entropy_requested, align 8, !tbaa !14
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %2 = load i64, i64* %len, align 8, !tbaa !16
  %min_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 4
  %3 = load i64, i64* %min_len, align 8, !tbaa !4
  %cmp1 = icmp ult i64 %2, %3
  %. = select i1 %cmp1, i64 0, i64 %0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %., %if.end ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_rand_pool_entropy_needed(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %entropy = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  %0 = load i64, i64* %entropy, align 8, !tbaa !18
  %entropy_requested = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 8
  %1 = load i64, i64* %entropy_requested, align 8, !tbaa !14
  %2 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  ret i64 %2
}

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_rand_pool_bytes_needed(%struct.rand_pool_st* nocapture noundef %pool, i32 noundef %entropy_factor) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %entropy_factor, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 252, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_rand_pool_bytes_needed, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 105, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i64 @ossl_rand_pool_entropy_needed(%struct.rand_pool_st* noundef %pool) #7
  %conv = zext i32 %entropy_factor to i64
  %mul = mul i64 %call, %conv
  %add = add i64 %mul, 7
  %div = lshr i64 %add, 3
  %max_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 5
  %0 = load i64, i64* %max_len, align 8, !tbaa !11
  %len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  %cmp1 = icmp ugt i64 %div, %sub
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.ossl_rand_pool_bytes_needed, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 125, i8* noundef null) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %min_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 4
  %2 = load i64, i64* %min_len, align 8, !tbaa !4
  %cmp6 = icmp ugt i64 %2, %1
  %sub10 = sub i64 %2, %1
  %cmp11 = icmp ult i64 %div, %sub10
  %3 = select i1 %cmp6, i1 %cmp11, i1 false
  %bytes_needed.0 = select i1 %3, i64 %sub10, i64 %div
  %call18 = tail call fastcc i32 @rand_pool_grow(%struct.rand_pool_st* noundef nonnull %pool, i64 noundef %bytes_needed.0) #7
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then19, label %cleanup

if.then19:                                        ; preds = %if.end4
  store i64 0, i64* %len, align 8, !tbaa !16
  store i64 0, i64* %max_len, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then19, %if.then3, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then19 ], [ %bytes_needed.0, %if.end4 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @rand_pool_grow(%struct.rand_pool_st* nocapture noundef %pool, i64 noundef %len) unnamed_addr #0 {
entry:
  %alloc_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 6
  %0 = load i64, i64* %alloc_len, align 8, !tbaa !12
  %len1 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len1, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  %cmp = icmp ult i64 %sub, %len
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %max_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 5
  %2 = load i64, i64* %max_len, align 8, !tbaa !11
  %div = lshr i64 %2, 1
  %attached = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 2
  %3 = load i32, i32* %attached, align 8, !tbaa !17
  %tobool.not = icmp ne i32 %3, 0
  %sub5 = sub i64 %2, %1
  %cmp6 = icmp ult i64 %sub5, %len
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.then
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rand_pool_grow, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786691, i8* noundef null) #6
  br label %return

do.body:                                          ; preds = %if.then, %do.body
  %newlen.0 = phi i64 [ %spec.select, %do.body ], [ %0, %if.then ]
  %cmp8 = icmp ult i64 %newlen.0, %div
  %mul = shl i64 %newlen.0, 1
  %spec.select = select i1 %cmp8, i64 %mul, i64 %2
  %sub11 = sub i64 %spec.select, %1
  %cmp12 = icmp ult i64 %sub11, %len
  br i1 %cmp12, label %do.body, label %do.end, !llvm.loop !19

do.end:                                           ; preds = %do.body
  %secure = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 3
  %4 = load i32, i32* %secure, align 4, !tbaa !15
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end
  %call = tail call i8* @CRYPTO_secure_zalloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 222) #6
  br label %if.end16

if.else:                                          ; preds = %do.end
  %call15 = tail call i8* @CRYPTO_zalloc(i64 noundef %spec.select, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 224) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %p.0 = phi i8* [ %call, %if.then14 ], [ %call15, %if.else ]
  %cmp17 = icmp eq i8* %p.0, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rand_pool_grow, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786688, i8* noundef null) #6
  br label %return

if.end19:                                         ; preds = %if.end16
  %buffer = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %5 = load i8*, i8** %buffer, align 8, !tbaa !13
  %6 = load i64, i64* %len1, align 8, !tbaa !16
  %call21 = tail call i8* @memcpy(i8* noundef nonnull %p.0, i8* noundef %5, i64 noundef %6) #6
  %7 = load i32, i32* %secure, align 4, !tbaa !15
  %tobool23.not = icmp eq i32 %7, 0
  %8 = load i8*, i8** %buffer, align 8, !tbaa !13
  %9 = load i64, i64* %alloc_len, align 8, !tbaa !12
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.end19
  tail call void @CRYPTO_secure_clear_free(i8* noundef %8, i64 noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 231) #6
  br label %cleanup

if.else27:                                        ; preds = %if.end19
  tail call void @CRYPTO_clear_free(i8* noundef %8, i64 noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 233) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else27
  store i8* %p.0, i8** %buffer, align 8, !tbaa !13
  store i64 %spec.select, i64* %alloc_len, align 8, !tbaa !12
  br label %return

return:                                           ; preds = %if.then18, %if.then7, %entry, %cleanup
  %retval.1 = phi i32 [ 1, %cleanup ], [ 1, %entry ], [ 0, %if.then7 ], [ 0, %if.then18 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @ossl_rand_pool_bytes_remaining(%struct.rand_pool_st* nocapture noundef readonly %pool) local_unnamed_addr #2 {
entry:
  %max_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 5
  %0 = load i64, i64* %max_len, align 8, !tbaa !11
  %len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  ret i64 %sub
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rand_pool_add(%struct.rand_pool_st* nocapture noundef %pool, i8* noundef %buffer, i64 noundef %len, i64 noundef %entropy) local_unnamed_addr #0 {
entry:
  %max_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 5
  %0 = load i64, i64* %max_len, align 8, !tbaa !11
  %len1 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len1, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  %cmp = icmp ult i64 %sub, %len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_rand_pool_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 106, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %buffer2 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %2 = load i8*, i8** %buffer2, align 8, !tbaa !13
  %cmp3 = icmp eq i8* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_rand_pool_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786691, i8* noundef null) #6
  br label %return

if.end5:                                          ; preds = %if.end
  %cmp6.not = icmp eq i64 %len, 0
  br i1 %cmp6.not, label %return, label %if.then7

if.then7:                                         ; preds = %if.end5
  %alloc_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 6
  %3 = load i64, i64* %alloc_len, align 8, !tbaa !12
  %cmp9 = icmp ugt i64 %3, %1
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %1
  %cmp12 = icmp eq i8* %add.ptr, %buffer
  %or.cond = select i1 %cmp9, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then7
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ossl_rand_pool_add, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786691, i8* noundef null) #6
  br label %return

if.end14:                                         ; preds = %if.then7
  %call = tail call fastcc i32 @rand_pool_grow(%struct.rand_pool_st* noundef nonnull %pool, i64 noundef %len) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end16

if.end16:                                         ; preds = %if.end14
  %4 = load i8*, i8** %buffer2, align 8, !tbaa !13
  %5 = load i64, i64* %len1, align 8, !tbaa !16
  %add.ptr19 = getelementptr inbounds i8, i8* %4, i64 %5
  %call20 = tail call i8* @memcpy(i8* noundef %add.ptr19, i8* noundef %buffer, i64 noundef %len) #6
  %6 = load i64, i64* %len1, align 8, !tbaa !16
  %add = add i64 %6, %len
  store i64 %add, i64* %len1, align 8, !tbaa !16
  %entropy22 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  %7 = load i64, i64* %entropy22, align 8, !tbaa !18
  %add23 = add i64 %7, %entropy
  store i64 %add23, i64* %entropy22, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end5, %if.end16, %if.end14, %if.then13, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then13 ], [ 0, %if.end14 ], [ 1, %if.end16 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_rand_pool_add_begin(%struct.rand_pool_st* nocapture noundef %pool, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %len, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %max_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 5
  %0 = load i64, i64* %max_len, align 8, !tbaa !11
  %len1 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len1, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  %cmp2 = icmp ult i64 %sub, %len
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_rand_pool_add_begin, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 125, i8* noundef null) #6
  br label %return

if.end4:                                          ; preds = %if.end
  %buffer = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 0
  %2 = load i8*, i8** %buffer, align 8, !tbaa !13
  %cmp5 = icmp eq i8* %2, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.ossl_rand_pool_add_begin, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 786691, i8* noundef null) #6
  br label %return

if.end7:                                          ; preds = %if.end4
  %call = tail call fastcc i32 @rand_pool_grow(%struct.rand_pool_st* noundef nonnull %pool, i64 noundef %len) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end9

if.end9:                                          ; preds = %if.end7
  %3 = load i8*, i8** %buffer, align 8, !tbaa !13
  %4 = load i64, i64* %len1, align 8, !tbaa !16
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  br label %return

return:                                           ; preds = %if.end7, %entry, %if.end9, %if.then6, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ null, %if.then6 ], [ %add.ptr, %if.end9 ], [ null, %entry ], [ null, %if.end7 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_rand_pool_add_end(%struct.rand_pool_st* nocapture noundef %pool, i64 noundef %len, i64 noundef %entropy) local_unnamed_addr #0 {
entry:
  %alloc_len = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 6
  %0 = load i64, i64* %alloc_len, align 8, !tbaa !12
  %len1 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 1
  %1 = load i64, i64* %len1, align 8, !tbaa !16
  %sub = sub i64 %0, %1
  %cmp = icmp ult i64 %sub, %len
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.ossl_rand_pool_add_end, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 36, i32 noundef 125, i8* noundef null) #6
  br label %return

if.end:                                           ; preds = %entry
  %cmp2.not = icmp eq i64 %len, 0
  br i1 %cmp2.not, label %return, label %if.then3

if.then3:                                         ; preds = %if.end
  %add = add i64 %1, %len
  store i64 %add, i64* %len1, align 8, !tbaa !16
  %entropy5 = getelementptr inbounds %struct.rand_pool_st, %struct.rand_pool_st* %pool, i64 0, i32 7
  %2 = load i64, i64* %entropy5, align 8, !tbaa !18
  %add6 = add i64 %2, %entropy
  store i64 %add6, i64* %entropy5, align 8, !tbaa !18
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then3 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !9, i64 24}
!5 = !{!"rand_pool_st", !6, i64 0, !9, i64 8, !10, i64 16, !10, i64 20, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"long", !7, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!5, !9, i64 32}
!12 = !{!5, !9, i64 40}
!13 = !{!5, !6, i64 0}
!14 = !{!5, !9, i64 56}
!15 = !{!5, !10, i64 20}
!16 = !{!5, !9, i64 8}
!17 = !{!5, !10, i64 16}
!18 = !{!5, !9, i64 48}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
