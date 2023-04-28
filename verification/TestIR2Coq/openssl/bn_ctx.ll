; ModuleID = 'crypto/bn/bn_ctx.c'
source_filename = "crypto/bn/bn_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_ctx = type { %struct.bignum_pool, %struct.bignum_ctx_stack, i32, i32, i32, i32, %struct.ossl_lib_ctx_st* }
%struct.bignum_pool = type { %struct.bignum_pool_item*, %struct.bignum_pool_item*, %struct.bignum_pool_item*, i32, i32 }
%struct.bignum_pool_item = type { [16 x %struct.bignum_st], %struct.bignum_pool_item*, %struct.bignum_pool_item* }
%struct.bignum_st = type { i64*, i32, i32, i32, i32 }
%struct.bignum_ctx_stack = type { i32*, i32, i32 }
%struct.ossl_lib_ctx_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_ctx.c\00", align 1
@__func__.BN_CTX_new_ex = private unnamed_addr constant [14 x i8] c"BN_CTX_new_ex\00", align 1
@__func__.BN_CTX_start = private unnamed_addr constant [13 x i8] c"BN_CTX_start\00", align 1
@__func__.BN_CTX_get = private unnamed_addr constant [11 x i8] c"BN_CTX_get\00", align 1
@__func__.BN_STACK_push = private unnamed_addr constant [14 x i8] c"BN_STACK_push\00", align 1
@__func__.BN_POOL_get = private unnamed_addr constant [12 x i8] c"BN_POOL_get\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 72, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 122) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BN_CTX_new_ex, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.bignum_ctx*
  %pool = bitcast i8* %call to %struct.bignum_pool*
  tail call fastcc void @BN_POOL_init(%struct.bignum_pool* noundef nonnull %pool) #8
  %stack = getelementptr inbounds i8, i8* %call, i64 32
  %1 = bitcast i8* %stack to %struct.bignum_ctx_stack*
  tail call fastcc void @BN_STACK_init(%struct.bignum_ctx_stack* noundef nonnull %1) #8
  %libctx = getelementptr inbounds i8, i8* %call, i64 64
  %2 = bitcast i8* %libctx to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %ctx, %struct.ossl_lib_ctx_st** %2, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bignum_ctx* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bignum_ctx* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @BN_POOL_init(%struct.bignum_pool* nocapture noundef writeonly %p) unnamed_addr #2 {
entry:
  %tail = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 2
  store %struct.bignum_pool_item* null, %struct.bignum_pool_item** %tail, align 8, !tbaa !12
  %0 = bitcast %struct.bignum_pool* %p to <2 x %struct.bignum_pool_item*>*
  store <2 x %struct.bignum_pool_item*> zeroinitializer, <2 x %struct.bignum_pool_item*>* %0, align 8, !tbaa !13
  %size = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 4
  store i32 0, i32* %size, align 4, !tbaa !14
  %used = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 3
  store i32 0, i32* %used, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @BN_STACK_init(%struct.bignum_ctx_stack* nocapture noundef writeonly %st) unnamed_addr #2 {
entry:
  %indexes = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 0
  store i32* null, i32** %indexes, align 8, !tbaa !16
  %size = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 2
  store i32 0, i32* %size, align 4, !tbaa !17
  %depth = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 1
  store i32 0, i32* %depth, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef null) #8
  ret %struct.bignum_ctx* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %ctx) #8
  %cmp.not = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %call, i64 0, i32 5
  store i32 8, i32* %flags, align 4, !tbaa !19
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.bignum_ctx* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_ctx* @BN_CTX_secure_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_ctx* @BN_CTX_secure_new_ex(%struct.ossl_lib_ctx_st* noundef null) #8
  ret %struct.bignum_ctx* %call
}

; Function Attrs: noinline nounwind uwtable
define void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %return, label %do.body

do.body:                                          ; preds = %entry
  %stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 1
  tail call fastcc void @BN_STACK_finish(%struct.bignum_ctx_stack* noundef nonnull %stack) #8
  %pool = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 0
  tail call fastcc void @BN_POOL_finish(%struct.bignum_pool* noundef nonnull %pool) #8
  %0 = bitcast %struct.bignum_ctx* %ctx to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 178) #7
  br label %return

return:                                           ; preds = %entry, %do.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BN_STACK_finish(%struct.bignum_ctx_stack* nocapture noundef %st) unnamed_addr #0 {
entry:
  %indexes = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 0
  %0 = bitcast %struct.bignum_ctx_stack* %st to i8**
  %1 = load i8*, i8** %0, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 258) #7
  store i32* null, i32** %indexes, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BN_POOL_finish(%struct.bignum_pool* nocapture noundef %p) unnamed_addr #0 {
entry:
  %head = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 0
  %0 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %head, align 8, !tbaa !20
  %tobool.not19 = icmp eq %struct.bignum_pool_item* %0, null
  br i1 %tobool.not19, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %current = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.inc.15
  %1 = phi %struct.bignum_pool_item* [ %0, %while.body.lr.ph ], [ %20, %for.inc.15 ]
  %d = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 0, i32 0
  %2 = load i64*, i64** %d, align 8, !tbaa !21
  %tobool2.not = icmp eq i64* %2, null
  br i1 %tobool2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %while.body
  %arraydecay = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 0
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %arraydecay) #7
  br label %for.inc

for.inc:                                          ; preds = %while.body, %if.then
  %incdec.ptr = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 1
  %d.1 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr, i64 0, i32 0
  %3 = load i64*, i64** %d.1, align 8, !tbaa !21
  %tobool2.not.1 = icmp eq i64* %3, null
  br i1 %tobool2.not.1, label %for.inc.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc
  %incdec.ptr.1 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 2
  %d.2 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.1, i64 0, i32 0
  %4 = load i64*, i64** %d.2, align 8, !tbaa !21
  %tobool2.not.2 = icmp eq i64* %4, null
  br i1 %tobool2.not.2, label %for.inc.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.1) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1
  %incdec.ptr.2 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 3
  %d.3 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.2, i64 0, i32 0
  %5 = load i64*, i64** %d.3, align 8, !tbaa !21
  %tobool2.not.3 = icmp eq i64* %5, null
  br i1 %tobool2.not.3, label %for.inc.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.2) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2
  %incdec.ptr.3 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 4
  %d.4 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.3, i64 0, i32 0
  %6 = load i64*, i64** %d.4, align 8, !tbaa !21
  %tobool2.not.4 = icmp eq i64* %6, null
  br i1 %tobool2.not.4, label %for.inc.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.3) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3
  %incdec.ptr.4 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 5
  %d.5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.4, i64 0, i32 0
  %7 = load i64*, i64** %d.5, align 8, !tbaa !21
  %tobool2.not.5 = icmp eq i64* %7, null
  br i1 %tobool2.not.5, label %for.inc.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.4) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4
  %incdec.ptr.5 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 6
  %d.6 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.5, i64 0, i32 0
  %8 = load i64*, i64** %d.6, align 8, !tbaa !21
  %tobool2.not.6 = icmp eq i64* %8, null
  br i1 %tobool2.not.6, label %for.inc.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.5) #7
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5
  %incdec.ptr.6 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 7
  %d.7 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.6, i64 0, i32 0
  %9 = load i64*, i64** %d.7, align 8, !tbaa !21
  %tobool2.not.7 = icmp eq i64* %9, null
  br i1 %tobool2.not.7, label %for.inc.7, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.6) #7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6
  %incdec.ptr.7 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 8
  %d.8 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.7, i64 0, i32 0
  %10 = load i64*, i64** %d.8, align 8, !tbaa !21
  %tobool2.not.8 = icmp eq i64* %10, null
  br i1 %tobool2.not.8, label %for.inc.8, label %if.then.8

if.then.8:                                        ; preds = %for.inc.7
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.7) #7
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then.8, %for.inc.7
  %incdec.ptr.8 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 9
  %d.9 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.8, i64 0, i32 0
  %11 = load i64*, i64** %d.9, align 8, !tbaa !21
  %tobool2.not.9 = icmp eq i64* %11, null
  br i1 %tobool2.not.9, label %for.inc.9, label %if.then.9

if.then.9:                                        ; preds = %for.inc.8
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.8) #7
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then.9, %for.inc.8
  %incdec.ptr.9 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 10
  %d.10 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.9, i64 0, i32 0
  %12 = load i64*, i64** %d.10, align 8, !tbaa !21
  %tobool2.not.10 = icmp eq i64* %12, null
  br i1 %tobool2.not.10, label %for.inc.10, label %if.then.10

if.then.10:                                       ; preds = %for.inc.9
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.9) #7
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then.10, %for.inc.9
  %incdec.ptr.10 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 11
  %d.11 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.10, i64 0, i32 0
  %13 = load i64*, i64** %d.11, align 8, !tbaa !21
  %tobool2.not.11 = icmp eq i64* %13, null
  br i1 %tobool2.not.11, label %for.inc.11, label %if.then.11

if.then.11:                                       ; preds = %for.inc.10
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.10) #7
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then.11, %for.inc.10
  %incdec.ptr.11 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 12
  %d.12 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.11, i64 0, i32 0
  %14 = load i64*, i64** %d.12, align 8, !tbaa !21
  %tobool2.not.12 = icmp eq i64* %14, null
  br i1 %tobool2.not.12, label %for.inc.12, label %if.then.12

if.then.12:                                       ; preds = %for.inc.11
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.11) #7
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then.12, %for.inc.11
  %incdec.ptr.12 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 13
  %d.13 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.12, i64 0, i32 0
  %15 = load i64*, i64** %d.13, align 8, !tbaa !21
  %tobool2.not.13 = icmp eq i64* %15, null
  br i1 %tobool2.not.13, label %for.inc.13, label %if.then.13

if.then.13:                                       ; preds = %for.inc.12
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.12) #7
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then.13, %for.inc.12
  %incdec.ptr.13 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 14
  %d.14 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.13, i64 0, i32 0
  %16 = load i64*, i64** %d.14, align 8, !tbaa !21
  %tobool2.not.14 = icmp eq i64* %16, null
  br i1 %tobool2.not.14, label %for.inc.14, label %if.then.14

if.then.14:                                       ; preds = %for.inc.13
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.13) #7
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then.14, %for.inc.13
  %incdec.ptr.14 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 0, i64 15
  %d.15 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %incdec.ptr.14, i64 0, i32 0
  %17 = load i64*, i64** %d.15, align 8, !tbaa !21
  %tobool2.not.15 = icmp eq i64* %17, null
  br i1 %tobool2.not.15, label %for.inc.15, label %if.then.15

if.then.15:                                       ; preds = %for.inc.14
  tail call void @BN_clear_free(%struct.bignum_st* noundef nonnull %incdec.ptr.14) #7
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then.15, %for.inc.14
  %18 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %head, align 8, !tbaa !20
  %next = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %18, i64 0, i32 2
  %19 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %next, align 8, !tbaa !23
  store %struct.bignum_pool_item* %19, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  %.cast = bitcast %struct.bignum_pool_item* %18 to i8*
  tail call void @CRYPTO_free(i8* noundef %.cast, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 310) #7
  %20 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  store %struct.bignum_pool_item* %20, %struct.bignum_pool_item** %head, align 8, !tbaa !20
  %tobool.not = icmp eq %struct.bignum_pool_item* %20, null
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !26

while.end:                                        ; preds = %for.inc.15, %entry
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @BN_CTX_start(%struct.bignum_ctx* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  %err_stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 3
  %0 = load i32, i32* %err_stack, align 4, !tbaa !28
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body8.sink.split

lor.lhs.false:                                    ; preds = %entry
  %too_many = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 4
  %1 = load i32, i32* %too_many, align 8, !tbaa !29
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.else, label %do.body8.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 1
  %used = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 2
  %2 = load i32, i32* %used, align 8, !tbaa !30
  %call = tail call fastcc i32 @BN_STACK_push(%struct.bignum_ctx_stack* noundef nonnull %stack, i32 noundef %2) #8
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then4, label %do.body8

if.then4:                                         ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BN_CTX_start, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 109, i8* noundef null) #7
  %3 = load i32, i32* %err_stack, align 4, !tbaa !28
  br label %do.body8.sink.split

do.body8.sink.split:                              ; preds = %entry, %lor.lhs.false, %if.then4
  %.sink = phi i32 [ %3, %if.then4 ], [ %0, %lor.lhs.false ], [ %0, %entry ]
  %inc = add nsw i32 %.sink, 1
  store i32 %inc, i32* %err_stack, align 4, !tbaa !28
  br label %do.body8

do.body8:                                         ; preds = %do.body8.sink.split, %if.else
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @BN_STACK_push(%struct.bignum_ctx_stack* nocapture noundef %st, i32 noundef %idx) unnamed_addr #0 {
entry:
  %depth = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 1
  %0 = load i32, i32* %depth, align 8, !tbaa !18
  %size = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 2
  %1 = load i32, i32* %size, align 4, !tbaa !17
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  %indexes20.phi.trans.insert = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 0
  %.pre = load i32*, i32** %indexes20.phi.trans.insert, align 8, !tbaa !16
  br label %if.end19

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %0, 0
  %mul = mul i32 %0, 3
  %div = lshr i32 %mul, 1
  %cond = select i1 %tobool.not, i32 32, i32 %div
  %conv = zext i32 %cond to i64
  %mul3 = shl nuw nsw i64 %conv, 2
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %mul3, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 271) #7
  %cmp4 = icmp eq i8* %call, null
  br i1 %cmp4, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %2 = load i32, i32* %depth, align 8, !tbaa !18
  %tobool8.not = icmp eq i32 %2, 0
  br i1 %tobool8.not, label %cleanup.thread, label %if.then9

if.then9:                                         ; preds = %if.end
  %3 = bitcast %struct.bignum_ctx_stack* %st to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !16
  %conv11 = zext i32 %2 to i64
  %mul12 = shl nuw nsw i64 %conv11, 2
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %call, i8* noundef %4, i64 noundef %mul12) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end, %if.then9
  %.pre-phi = bitcast %struct.bignum_ctx_stack* %st to i8**
  %5 = load i8*, i8** %.pre-phi, align 8, !tbaa !16
  tail call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 277) #7
  store i8* %call, i8** %.pre-phi, align 8, !tbaa !16
  store i32 %cond, i32* %size, align 4, !tbaa !17
  %6 = bitcast i8* %call to i32*
  %.pre40 = load i32, i32* %depth, align 8, !tbaa !18
  br label %if.end19

cleanup:                                          ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BN_STACK_push, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #7
  br label %return

if.end19:                                         ; preds = %entry.if.end19_crit_edge, %cleanup.thread
  %7 = phi i32 [ %0, %entry.if.end19_crit_edge ], [ %.pre40, %cleanup.thread ]
  %8 = phi i32* [ %.pre, %entry.if.end19_crit_edge ], [ %6, %cleanup.thread ]
  %inc = add i32 %7, 1
  store i32 %inc, i32* %depth, align 8, !tbaa !18
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %idx, i32* %arrayidx, align 4, !tbaa !31
  br label %return

return:                                           ; preds = %cleanup, %if.end19
  %retval.1 = phi i32 [ 0, %cleanup ], [ 1, %if.end19 ]
  ret i32 %retval.1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define void @BN_CTX_end(%struct.bignum_ctx* noundef %ctx) local_unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %do.end11, label %do.body

do.body:                                          ; preds = %entry
  %err_stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 3
  %0 = load i32, i32* %err_stack, align 4, !tbaa !28
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %do.body
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %err_stack, align 4, !tbaa !28
  br label %do.end11

if.else:                                          ; preds = %do.body
  %stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 1
  %call = tail call fastcc i32 @BN_STACK_pop(%struct.bignum_ctx_stack* noundef nonnull %stack) #8
  %used = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 2
  %1 = load i32, i32* %used, align 8, !tbaa !30
  %cmp3 = icmp ugt i32 %1, %call
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  %pool = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 0
  %sub = sub i32 %1, %call
  tail call fastcc void @BN_POOL_release(%struct.bignum_pool* noundef nonnull %pool, i32 noundef %sub) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else
  store i32 %call, i32* %used, align 8, !tbaa !30
  %too_many = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 4
  store i32 0, i32* %too_many, align 8, !tbaa !29
  br label %do.end11

do.end11:                                         ; preds = %if.end6, %if.then1, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @BN_STACK_pop(%struct.bignum_ctx_stack* nocapture noundef %st) unnamed_addr #4 {
entry:
  %indexes = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 0
  %0 = load i32*, i32** %indexes, align 8, !tbaa !16
  %depth = getelementptr inbounds %struct.bignum_ctx_stack, %struct.bignum_ctx_stack* %st, i64 0, i32 1
  %1 = load i32, i32* %depth, align 8, !tbaa !18
  %dec = add i32 %1, -1
  store i32 %dec, i32* %depth, align 8, !tbaa !18
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !31
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @BN_POOL_release(%struct.bignum_pool* nocapture noundef %p, i32 noundef %num) unnamed_addr #3 {
entry:
  %used = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 3
  %0 = load i32, i32* %used, align 8, !tbaa !15
  %sub2 = sub i32 %0, %num
  store i32 %sub2, i32* %used, align 8, !tbaa !15
  %tobool.not12 = icmp eq i32 %num, 0
  br i1 %tobool.not12, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %sub = add i32 %0, 15
  %rem = and i32 %sub, 15
  %current = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  %xtraiter = and i32 %num, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.lr.ph
  %dec14.prol = add i32 %num, -1
  %cmp.prol = icmp eq i32 %rem, 0
  br i1 %cmp.prol, label %if.then.prol, label %if.else.prol

if.else.prol:                                     ; preds = %while.body.prol
  %dec4.prol = add nsw i32 %rem, -1
  br label %while.body.prol.loopexit

if.then.prol:                                     ; preds = %while.body.prol
  %1 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  %prev.prol = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %1, i64 0, i32 1
  %2 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %prev.prol, align 8, !tbaa !32
  store %struct.bignum_pool_item* %2, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %if.else.prol, %if.then.prol, %while.body.lr.ph
  %dec14.in.unr = phi i32 [ %num, %while.body.lr.ph ], [ %dec14.prol, %if.then.prol ], [ %dec14.prol, %if.else.prol ]
  %offset.013.unr = phi i32 [ %rem, %while.body.lr.ph ], [ 15, %if.then.prol ], [ %dec4.prol, %if.else.prol ]
  %3 = icmp eq i32 %num, 1
  br i1 %3, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %if.end.1
  %dec14.in = phi i32 [ %dec14.1, %if.end.1 ], [ %dec14.in.unr, %while.body.prol.loopexit ]
  %offset.013 = phi i32 [ %offset.1.1, %if.end.1 ], [ %offset.013.unr, %while.body.prol.loopexit ]
  %cmp = icmp eq i32 %offset.013, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  %prev = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %4, i64 0, i32 1
  %5 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %prev, align 8, !tbaa !32
  store %struct.bignum_pool_item* %5, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  br label %if.end

if.else:                                          ; preds = %while.body
  %dec4 = add i32 %offset.013, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %offset.1 = phi i32 [ 15, %if.then ], [ %dec4, %if.else ]
  %dec14.1 = add i32 %dec14.in, -2
  %cmp.1 = icmp eq i32 %offset.1, 0
  br i1 %cmp.1, label %if.then.1, label %if.else.1

if.else.1:                                        ; preds = %if.end
  %dec4.1 = add i32 %offset.1, -1
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  %6 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  %prev.1 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %6, i64 0, i32 1
  %7 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %prev.1, align 8, !tbaa !32
  store %struct.bignum_pool_item* %7, %struct.bignum_pool_item** %current, align 8, !tbaa !25
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %offset.1.1 = phi i32 [ 15, %if.then.1 ], [ %dec4.1, %if.else.1 ]
  %tobool.not.1 = icmp eq i32 %dec14.1, 0
  br i1 %tobool.not.1, label %while.end, label %while.body, !llvm.loop !33

while.end:                                        ; preds = %while.body.prol.loopexit, %if.end.1, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* nocapture noundef %ctx) local_unnamed_addr #0 {
entry:
  %err_stack = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 3
  %0 = load i32, i32* %err_stack, align 4, !tbaa !28
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %too_many = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 4
  %1 = load i32, i32* %too_many, align 8, !tbaa !29
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pool = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 0
  %flags = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 5
  %2 = load i32, i32* %flags, align 4, !tbaa !19
  %call = tail call fastcc %struct.bignum_st* @BN_POOL_get(%struct.bignum_pool* noundef %pool, i32 noundef %2) #8
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %too_many, align 8, !tbaa !29
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BN_CTX_get, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 109, i8* noundef null) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @BN_zero_ex(%struct.bignum_st* noundef nonnull %call) #7
  %flags5 = getelementptr inbounds %struct.bignum_st, %struct.bignum_st* %call, i64 0, i32 4
  %3 = load i32, i32* %flags5, align 4, !tbaa !34
  %and = and i32 %3, -5
  store i32 %and, i32* %flags5, align 4, !tbaa !34
  %used = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 2
  %4 = load i32, i32* %used, align 8, !tbaa !30
  %inc = add i32 %4, 1
  store i32 %inc, i32* %used, align 8, !tbaa !30
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end4, %if.then2
  %retval.0 = phi %struct.bignum_st* [ null, %if.then2 ], [ %call, %if.end4 ], [ null, %lor.lhs.false ], [ null, %entry ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @BN_POOL_get(%struct.bignum_pool* nocapture noundef %p, i32 noundef %flag) unnamed_addr #0 {
entry:
  %used = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 3
  %0 = load i32, i32* %used, align 8, !tbaa !15
  %size = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 4
  %1 = load i32, i32* %size, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 400, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 325) #7
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BN_POOL_get, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup41

if.end:                                           ; preds = %if.then
  %arraydecay = bitcast i8* %call to %struct.bignum_st*
  %and = and i32 %flag, 8
  %cmp4.not = icmp eq i32 %and, 0
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %arraydecay) #7
  br i1 %cmp4.not, label %for.inc.14.thread, label %if.then5.15

for.inc.14.thread:                                ; preds = %if.end
  %incdec.ptr78 = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %incdec.ptr78 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %2) #7
  %incdec.ptr.179 = getelementptr inbounds i8, i8* %call, i64 48
  %3 = bitcast i8* %incdec.ptr.179 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %3) #7
  %incdec.ptr.280 = getelementptr inbounds i8, i8* %call, i64 72
  %4 = bitcast i8* %incdec.ptr.280 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %4) #7
  %incdec.ptr.381 = getelementptr inbounds i8, i8* %call, i64 96
  %5 = bitcast i8* %incdec.ptr.381 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %5) #7
  %incdec.ptr.482 = getelementptr inbounds i8, i8* %call, i64 120
  %6 = bitcast i8* %incdec.ptr.482 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %6) #7
  %incdec.ptr.583 = getelementptr inbounds i8, i8* %call, i64 144
  %7 = bitcast i8* %incdec.ptr.583 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %7) #7
  %incdec.ptr.684 = getelementptr inbounds i8, i8* %call, i64 168
  %8 = bitcast i8* %incdec.ptr.684 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %8) #7
  %incdec.ptr.785 = getelementptr inbounds i8, i8* %call, i64 192
  %9 = bitcast i8* %incdec.ptr.785 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %9) #7
  %incdec.ptr.886 = getelementptr inbounds i8, i8* %call, i64 216
  %10 = bitcast i8* %incdec.ptr.886 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %10) #7
  %incdec.ptr.987 = getelementptr inbounds i8, i8* %call, i64 240
  %11 = bitcast i8* %incdec.ptr.987 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %11) #7
  %incdec.ptr.1088 = getelementptr inbounds i8, i8* %call, i64 264
  %12 = bitcast i8* %incdec.ptr.1088 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %12) #7
  %incdec.ptr.1189 = getelementptr inbounds i8, i8* %call, i64 288
  %13 = bitcast i8* %incdec.ptr.1189 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %13) #7
  %incdec.ptr.1290 = getelementptr inbounds i8, i8* %call, i64 312
  %14 = bitcast i8* %incdec.ptr.1290 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %14) #7
  %incdec.ptr.1391 = getelementptr inbounds i8, i8* %call, i64 336
  %15 = bitcast i8* %incdec.ptr.1391 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %15) #7
  %incdec.ptr.1492 = getelementptr inbounds i8, i8* %call, i64 360
  %16 = bitcast i8* %incdec.ptr.1492 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %16) #7
  br label %for.inc.15

if.then5.15:                                      ; preds = %if.end
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %arraydecay, i32 noundef 8) #7
  %incdec.ptr = getelementptr inbounds i8, i8* %call, i64 24
  %17 = bitcast i8* %incdec.ptr to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %17) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %17, i32 noundef 8) #7
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %call, i64 48
  %18 = bitcast i8* %incdec.ptr.1 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %18) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %18, i32 noundef 8) #7
  %incdec.ptr.2 = getelementptr inbounds i8, i8* %call, i64 72
  %19 = bitcast i8* %incdec.ptr.2 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %19) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %19, i32 noundef 8) #7
  %incdec.ptr.3 = getelementptr inbounds i8, i8* %call, i64 96
  %20 = bitcast i8* %incdec.ptr.3 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %20) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %20, i32 noundef 8) #7
  %incdec.ptr.4 = getelementptr inbounds i8, i8* %call, i64 120
  %21 = bitcast i8* %incdec.ptr.4 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %21) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %21, i32 noundef 8) #7
  %incdec.ptr.5 = getelementptr inbounds i8, i8* %call, i64 144
  %22 = bitcast i8* %incdec.ptr.5 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %22) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %22, i32 noundef 8) #7
  %incdec.ptr.6 = getelementptr inbounds i8, i8* %call, i64 168
  %23 = bitcast i8* %incdec.ptr.6 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %23) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %23, i32 noundef 8) #7
  %incdec.ptr.7 = getelementptr inbounds i8, i8* %call, i64 192
  %24 = bitcast i8* %incdec.ptr.7 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %24) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %24, i32 noundef 8) #7
  %incdec.ptr.8 = getelementptr inbounds i8, i8* %call, i64 216
  %25 = bitcast i8* %incdec.ptr.8 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %25) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %25, i32 noundef 8) #7
  %incdec.ptr.9 = getelementptr inbounds i8, i8* %call, i64 240
  %26 = bitcast i8* %incdec.ptr.9 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %26) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %26, i32 noundef 8) #7
  %incdec.ptr.10 = getelementptr inbounds i8, i8* %call, i64 264
  %27 = bitcast i8* %incdec.ptr.10 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %27) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %27, i32 noundef 8) #7
  %incdec.ptr.11 = getelementptr inbounds i8, i8* %call, i64 288
  %28 = bitcast i8* %incdec.ptr.11 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %28) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %28, i32 noundef 8) #7
  %incdec.ptr.12 = getelementptr inbounds i8, i8* %call, i64 312
  %29 = bitcast i8* %incdec.ptr.12 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %29) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %29, i32 noundef 8) #7
  %incdec.ptr.13 = getelementptr inbounds i8, i8* %call, i64 336
  %30 = bitcast i8* %incdec.ptr.13 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %30) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %30, i32 noundef 8) #7
  %incdec.ptr.14 = getelementptr inbounds i8, i8* %call, i64 360
  %31 = bitcast i8* %incdec.ptr.14 to %struct.bignum_st*
  tail call void @bn_init(%struct.bignum_st* noundef nonnull %31) #7
  tail call void @BN_set_flags(%struct.bignum_st* noundef nonnull %31, i32 noundef 8) #7
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.inc.14.thread, %if.then5.15
  %tail = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 2
  %32 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %tail, align 8, !tbaa !12
  %prev = getelementptr inbounds i8, i8* %call, i64 384
  %33 = bitcast i8* %prev to %struct.bignum_pool_item**
  store %struct.bignum_pool_item* %32, %struct.bignum_pool_item** %33, align 8, !tbaa !32
  %next = getelementptr inbounds i8, i8* %call, i64 392
  %34 = bitcast i8* %next to %struct.bignum_pool_item**
  store %struct.bignum_pool_item* null, %struct.bignum_pool_item** %34, align 8, !tbaa !23
  %head = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 0
  %35 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %head, align 8, !tbaa !20
  %cmp7 = icmp eq %struct.bignum_pool_item* %35, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.inc.15
  %36 = bitcast %struct.bignum_pool_item** %tail to i8**
  store i8* %call, i8** %36, align 8, !tbaa !12
  %current = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  %37 = bitcast %struct.bignum_pool_item** %current to i8**
  store i8* %call, i8** %37, align 8, !tbaa !25
  %38 = bitcast %struct.bignum_pool* %p to i8**
  br label %if.end15

if.else:                                          ; preds = %for.inc.15
  %next12 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %32, i64 0, i32 2
  %39 = bitcast %struct.bignum_pool_item** %next12 to i8**
  store i8* %call, i8** %39, align 8, !tbaa !23
  %40 = bitcast %struct.bignum_pool_item** %tail to i8**
  store i8* %call, i8** %40, align 8, !tbaa !12
  %current14 = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  %41 = bitcast %struct.bignum_pool_item** %current14 to i8**
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %.sink = phi i8** [ %41, %if.else ], [ %38, %if.then8 ]
  store i8* %call, i8** %.sink, align 8, !tbaa !13
  %42 = load i32, i32* %size, align 4, !tbaa !14
  %add = add i32 %42, 16
  store i32 %add, i32* %size, align 4, !tbaa !14
  %43 = load i32, i32* %used, align 8, !tbaa !15
  %inc18 = add i32 %43, 1
  store i32 %inc18, i32* %used, align 8, !tbaa !15
  br label %cleanup41

if.end21:                                         ; preds = %entry
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.end21
  %head24 = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 0
  %44 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %head24, align 8, !tbaa !20
  %current25 = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  store %struct.bignum_pool_item* %44, %struct.bignum_pool_item** %current25, align 8, !tbaa !25
  br label %if.end34

if.else26:                                        ; preds = %if.end21
  %rem = and i32 %0, 15
  %cmp28 = icmp eq i32 %rem, 0
  %current30 = getelementptr inbounds %struct.bignum_pool, %struct.bignum_pool* %p, i64 0, i32 1
  %45 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %current30, align 8, !tbaa !25
  br i1 %cmp28, label %if.then29, label %if.else26.if.end34_crit_edge

if.else26.if.end34_crit_edge:                     ; preds = %if.else26
  %phi.cast = zext i32 %rem to i64
  br label %if.end34

if.then29:                                        ; preds = %if.else26
  %next31 = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %45, i64 0, i32 2
  %46 = load %struct.bignum_pool_item*, %struct.bignum_pool_item** %next31, align 8, !tbaa !23
  store %struct.bignum_pool_item* %46, %struct.bignum_pool_item** %current30, align 8, !tbaa !25
  br label %if.end34

if.end34:                                         ; preds = %if.else26.if.end34_crit_edge, %if.then29, %if.then23
  %rem40.pre-phi = phi i64 [ %phi.cast, %if.else26.if.end34_crit_edge ], [ 0, %if.then29 ], [ 0, %if.then23 ]
  %47 = phi %struct.bignum_pool_item* [ %45, %if.else26.if.end34_crit_edge ], [ %46, %if.then29 ], [ %44, %if.then23 ]
  %inc39 = add i32 %0, 1
  store i32 %inc39, i32* %used, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds %struct.bignum_pool_item, %struct.bignum_pool_item* %47, i64 0, i32 0, i64 %rem40.pre-phi
  br label %cleanup41

cleanup41:                                        ; preds = %if.then2, %if.end15, %if.end34
  %retval.1 = phi %struct.bignum_st* [ %add.ptr, %if.end34 ], [ null, %if.then2 ], [ %arraydecay, %if.end15 ]
  ret %struct.bignum_st* %retval.1
}

declare void @BN_zero_ex(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.ossl_lib_ctx_st* @ossl_bn_get_libctx(%struct.bignum_ctx* noundef readonly %ctx) local_unnamed_addr #5 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %libctx = getelementptr inbounds %struct.bignum_ctx, %struct.bignum_ctx* %ctx, i64 0, i32 6
  %0 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ossl_lib_ctx_st* [ %0, %if.end ], [ null, %entry ]
  ret %struct.ossl_lib_ctx_st* %retval.0
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @bn_init(%struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_set_flags(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !7, i64 64}
!5 = !{!"bignum_ctx", !6, i64 0, !11, i64 32, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !7, i64 64}
!6 = !{!"bignum_pool", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"bignum_ctx_stack", !7, i64 0, !10, i64 8, !10, i64 12}
!12 = !{!6, !7, i64 16}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !10, i64 28}
!15 = !{!6, !10, i64 24}
!16 = !{!11, !7, i64 0}
!17 = !{!11, !10, i64 12}
!18 = !{!11, !10, i64 8}
!19 = !{!5, !10, i64 60}
!20 = !{!6, !7, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"bignum_st", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!23 = !{!24, !7, i64 392}
!24 = !{!"bignum_pool_item", !8, i64 0, !7, i64 384, !7, i64 392}
!25 = !{!6, !7, i64 8}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !10, i64 52}
!29 = !{!5, !10, i64 56}
!30 = !{!5, !10, i64 48}
!31 = !{!10, !10, i64 0}
!32 = !{!24, !7, i64 384}
!33 = distinct !{!33, !27}
!34 = !{!22, !10, i64 20}
