; ModuleID = 'crypto/bio/bio_lib.c'
source_filename = "crypto/bio/bio_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }

@.str = private unnamed_addr constant [21 x i8] c"crypto/bio/bio_lib.c\00", align 1
@__func__.BIO_new_ex = private unnamed_addr constant [11 x i8] c"BIO_new_ex\00", align 1
@__func__.BIO_puts = private unnamed_addr constant [9 x i8] c"BIO_puts\00", align 1
@__func__.BIO_gets = private unnamed_addr constant [9 x i8] c"BIO_gets\00", align 1
@__func__.BIO_get_line = private unnamed_addr constant [13 x i8] c"BIO_get_line\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.BIO_ctrl = private unnamed_addr constant [9 x i8] c"BIO_ctrl\00", align 1
@__func__.BIO_callback_ctrl = private unnamed_addr constant [18 x i8] c"BIO_callback_ctrl\00", align 1
@__func__.BIO_pop = private unnamed_addr constant [8 x i8] c"BIO_pop\00", align 1
@__func__.BIO_find_type = private unnamed_addr constant [14 x i8] c"BIO_find_type\00", align 1
@__func__.BIO_next = private unnamed_addr constant [9 x i8] c"BIO_next\00", align 1
@bio_lookup_lock = external local_unnamed_addr global i8*, align 8
@bio_type_lock = external local_unnamed_addr global i8*, align 8
@__func__.BIO_wait = private unnamed_addr constant [9 x i8] c"BIO_wait\00", align 1
@__func__.BIO_do_connect_retry = private unnamed_addr constant [21 x i8] c"BIO_do_connect_retry\00", align 1
@__func__.bio_read_intern = private unnamed_addr constant [16 x i8] c"bio_read_intern\00", align 1
@__func__.bio_write_intern = private unnamed_addr constant [17 x i8] c"bio_write_intern\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, %struct.bio_method_st* noundef %method) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 136, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 82) #11
  %0 = bitcast i8* %call to %struct.bio_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_new_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %libctx1 = bitcast i8* %call to %struct.ossl_lib_ctx_st**
  store %struct.ossl_lib_ctx_st* %libctx, %struct.ossl_lib_ctx_st** %libctx1, align 8, !tbaa !4
  %method2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %method2 to %struct.bio_method_st**
  store %struct.bio_method_st* %method, %struct.bio_method_st** %1, align 8, !tbaa !12
  %shutdown = getelementptr inbounds i8, i8* %call, i64 44
  %2 = bitcast i8* %shutdown to i32*
  store i32 1, i32* %2, align 4, !tbaa !13
  %references = getelementptr inbounds i8, i8* %call, i64 88
  %3 = bitcast i8* %references to i32*
  store atomic i32 1, i32* %3 seq_cst, align 4, !tbaa !14
  %ex_data = getelementptr inbounds i8, i8* %call, i64 112
  %4 = bitcast i8* %ex_data to %struct.crypto_ex_data_st*
  %call3 = tail call i32 @CRYPTO_new_ex_data(i32 noundef 12, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %4) #11
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i8* @CRYPTO_THREAD_lock_new() #11
  %lock = getelementptr inbounds i8, i8* %call, i64 128
  %5 = bitcast i8* %lock to i8**
  store i8* %call6, i8** %5, align 8, !tbaa !15
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_new_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #11
  tail call void @CRYPTO_free_ex_data(i32 noundef 12, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %4) #11
  br label %err

if.end11:                                         ; preds = %if.end5
  %create = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %method, i64 0, i32 9
  %6 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %create, align 8, !tbaa !16
  %cmp12.not = icmp eq i32 (%struct.bio_st*)* %6, null
  br i1 %cmp12.not, label %if.then22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %call14 = tail call i32 %6(%struct.bio_st* noundef nonnull %0) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_new_ex, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786693, i8* noundef null) #11
  tail call void @CRYPTO_free_ex_data(i32 noundef 12, i8* noundef nonnull %call, %struct.crypto_ex_data_st* noundef nonnull %4) #11
  %7 = load i8*, i8** %5, align 8, !tbaa !15
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #11
  br label %err

if.end19:                                         ; preds = %land.lhs.true
  %.pr = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %create, align 8, !tbaa !16
  %cmp21 = icmp eq i32 (%struct.bio_st*)* %.pr, null
  br i1 %cmp21, label %if.then22, label %cleanup

if.then22:                                        ; preds = %if.end11, %if.end19
  %init = getelementptr inbounds i8, i8* %call, i64 40
  %8 = bitcast i8* %init to i32*
  store i32 1, i32* %8, align 8, !tbaa !18
  br label %cleanup

err:                                              ; preds = %if.end, %if.then16, %if.then9
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 116) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then22, %err, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %err ], [ %0, %if.then22 ], [ %0, %if.end19 ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @CRYPTO_new_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

declare void @CRYPTO_free_ex_data(i32 noundef, i8* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %method) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_ex(%struct.ossl_lib_ctx_st* noundef null, %struct.bio_method_st* noundef %method) #12
  ret %struct.bio_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_free(%struct.bio_st* noundef %a) local_unnamed_addr #0 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 13
  %lock = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 17
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %references, i32* noundef nonnull %ret) #12
  %1 = load i32, i32* %ret, align 4, !tbaa !19
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 2
  %2 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp7.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2, null
  br i1 %cmp7.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end6
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 3
  %3 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp8.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %3, null
  br i1 %cmp8.not, label %if.end15, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  %call10 = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %a, i32 noundef 1, i8* noundef null, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %conv = trunc i64 %call10 to i32
  %cmp11 = icmp slt i32 %conv, 1
  br i1 %cmp11, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then9, %lor.lhs.false
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 1
  %4 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp16.not = icmp eq %struct.bio_method_st* %4, null
  br i1 %cmp16.not, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %destroy = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %4, i64 0, i32 10
  %5 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %destroy, align 8, !tbaa !22
  %cmp19.not = icmp eq i32 (%struct.bio_st*)* %5, null
  br i1 %cmp19.not, label %if.end25, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  %call24 = tail call i32 %5(%struct.bio_st* noundef nonnull %a) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true, %if.end15
  %6 = bitcast %struct.bio_st* %a to i8*
  %ex_data = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 16
  tail call void @CRYPTO_free_ex_data(i32 noundef 12, i8* noundef nonnull %6, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #11
  %7 = load i8*, i8** %lock, align 8, !tbaa !15
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %7) #11
  tail call void @CRYPTO_free(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %entry, %if.end25
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %entry ], [ 1, %if.end ], [ %conv, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !19
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bio_call_callback(%struct.bio_st* noundef %b, i32 noundef %oper, i8* noundef %argp, i64 noundef %len, i32 noundef %argi, i64 noundef %argl, i64 noundef %inret, i64* noundef %processed) unnamed_addr #0 {
entry:
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %0 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i64 %inret to i32
  %call = tail call i64 %0(%struct.bio_st* noundef nonnull %b, i32 noundef %oper, i8* noundef %argp, i64 noundef %len, i32 noundef %argi, i64 noundef %argl, i32 noundef %conv, i64* noundef %processed) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %oper, -129
  %1 = and i32 %oper, -130
  %2 = icmp eq i32 %1, 2
  %cmp7 = icmp eq i32 %and, 5
  %or.cond40 = or i1 %2, %cmp7
  br i1 %or.cond40, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end
  %cmp10 = icmp ugt i64 %len, 2147483647
  br i1 %cmp10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %if.then9
  %conv14 = trunc i64 %len to i32
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.end13
  %argi.addr.0 = phi i32 [ %conv14, %if.end13 ], [ %argi, %if.end ]
  %cmp16 = icmp sgt i64 %inret, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end15
  %and18 = and i32 %oper, 128
  %tobool = icmp ne i32 %and18, 0
  %cmp20 = icmp ne i32 %and, 6
  %or.cond41 = and i1 %tobool, %cmp20
  br i1 %or.cond41, label %if.then22, label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  %3 = load i64, i64* %processed, align 8, !tbaa !23
  %cmp23 = icmp ugt i64 %3, 2147483647
  br i1 %cmp23, label %cleanup, label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true, %if.end15
  %inret.addr.0 = phi i64 [ %inret, %land.lhs.true ], [ %inret, %if.end15 ], [ %3, %if.then22 ]
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %4 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %call28 = tail call i64 %4(%struct.bio_st* noundef nonnull %b, i32 noundef %oper, i8* noundef %argp, i32 noundef %argi.addr.0, i64 noundef %argl, i64 noundef %inret.addr.0) #11
  %cmp29 = icmp sgt i64 %call28, 0
  br i1 %cmp29, label %land.lhs.true31, label %cleanup

land.lhs.true31:                                  ; preds = %if.end27
  %and32 = and i32 %oper, 128
  %tobool33 = icmp ne i32 %and32, 0
  %cmp35 = icmp ne i32 %and, 6
  %or.cond42 = and i1 %tobool33, %cmp35
  br i1 %or.cond42, label %if.then37, label %cleanup

if.then37:                                        ; preds = %land.lhs.true31
  store i64 %call28, i64* %processed, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true31, %if.then37, %if.then22, %if.then9, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -1, %if.then9 ], [ -1, %if.then22 ], [ 1, %if.then37 ], [ %call28, %land.lhs.true31 ], [ %call28, %if.end27 ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_data(%struct.bio_st* nocapture noundef writeonly %a, i8* noundef %ptr) local_unnamed_addr #4 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  store i8* %ptr, i8** %ptr1, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @BIO_get_data(%struct.bio_st* nocapture noundef readonly %a) local_unnamed_addr #5 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = load i8*, i8** %ptr, align 8, !tbaa !24
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_init(%struct.bio_st* nocapture noundef writeonly %a, i32 noundef %init) local_unnamed_addr #4 {
entry:
  %init1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 %init, i32* %init1, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_get_init(%struct.bio_st* nocapture noundef readonly %a) local_unnamed_addr #5 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !18
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_shutdown(%struct.bio_st* nocapture noundef writeonly %a, i32 noundef %shut) local_unnamed_addr #4 {
entry:
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  store i32 %shut, i32* %shutdown, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_get_shutdown(%struct.bio_st* nocapture noundef readonly %a) local_unnamed_addr #5 {
entry:
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !13
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define void @BIO_vfree(%struct.bio_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef %a) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @BIO_up_ref(%struct.bio_st* nocapture noundef %a) local_unnamed_addr #6 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %references = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 13
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %references, i32* noundef nonnull %i) #12
  %1 = load i32, i32* %i, align 4, !tbaa !19
  %cmp1 = icmp sgt i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %conv
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BIO_clear_flags(%struct.bio_st* nocapture noundef %b, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %neg = xor i32 %flags, -1
  %flags1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %0 = load i32, i32* %flags1, align 8, !tbaa !25
  %and = and i32 %0, %neg
  store i32 %and, i32* %flags1, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_test_flags(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %flags) local_unnamed_addr #5 {
entry:
  %flags1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %0 = load i32, i32* %flags1, align 8, !tbaa !25
  %and = and i32 %0, %flags
  ret i32 %and
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BIO_set_flags(%struct.bio_st* nocapture noundef %b, i32 noundef %flags) local_unnamed_addr #7 {
entry:
  %flags1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %0 = load i32, i32* %flags1, align 8, !tbaa !25
  %or = or i32 %0, %flags
  store i32 %or, i32* %flags1, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* @BIO_get_callback(%struct.bio_st* nocapture noundef readonly %b) local_unnamed_addr #5 {
entry:
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %0 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  ret i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_callback(%struct.bio_st* nocapture noundef writeonly %b, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* noundef %cb) local_unnamed_addr #4 {
entry:
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %cb, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* @BIO_get_callback_ex(%struct.bio_st* nocapture noundef readonly %b) local_unnamed_addr #5 {
entry:
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %0 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  ret i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_callback_ex(%struct.bio_st* nocapture noundef writeonly %b, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* noundef %cb) local_unnamed_addr #4 {
entry:
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  store i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %cb, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_callback_arg(%struct.bio_st* nocapture noundef writeonly %b, i8* noundef %arg) local_unnamed_addr #4 {
entry:
  %cb_arg = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 4
  store i8* %arg, i8** %cb_arg, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @BIO_get_callback_arg(%struct.bio_st* nocapture noundef readonly %b) local_unnamed_addr #5 {
entry:
  %cb_arg = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 4
  %0 = load i8*, i8** %cb_arg, align 8, !tbaa !26
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @BIO_method_name(%struct.bio_st* nocapture noundef readonly %b) local_unnamed_addr #5 {
entry:
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %name = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 1
  %1 = load i8*, i8** %name, align 8, !tbaa !27
  ret i8* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_method_type(%struct.bio_st* nocapture noundef readonly %b) local_unnamed_addr #5 {
entry:
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %type = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type, align 8, !tbaa !28
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_read(%struct.bio_st* noundef %b, i8* noundef %data, i32 noundef %dlen) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp = icmp slt i32 %dlen, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv10 = zext i32 %dlen to i64
  %call = call fastcc i32 @bio_read_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %conv10, i64* noundef nonnull %readbytes) #12
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i64, i64* %readbytes, align 8
  %conv4 = trunc i64 %1 to i32
  %ret.0 = select i1 %cmp1, i32 %conv4, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bio_read_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %cleanup.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp1, label %cleanup.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %bread = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 4
  %1 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bread, align 8, !tbaa !29
  %cmp3 = icmp eq i32 (%struct.bio_st*, i8*, i64, i64*)* %1, null
  br i1 %cmp3, label %cleanup.sink.split, label %if.end5

if.end5:                                          ; preds = %lor.lhs.false
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %2 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp6.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2, null
  br i1 %cmp6.not, label %lor.lhs.false7, label %land.lhs.true

lor.lhs.false7:                                   ; preds = %if.end5
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %3 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp8.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %3, null
  br i1 %cmp8.not, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false7, %if.end5
  %call = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 2, i8* noundef %data, i64 noundef %dlen, i32 noundef 0, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %conv = trunc i64 %call to i32
  %cmp9 = icmp slt i32 %conv, 1
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %4 = load i32, i32* %init, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end14

if.end14:                                         ; preds = %if.end12
  %5 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %bread16 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %5, i64 0, i32 4
  %6 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bread16, align 8, !tbaa !29
  %call17 = tail call i32 %6(%struct.bio_st* noundef nonnull %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) #11
  %cmp18 = icmp sgt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  %7 = load i64, i64* %readbytes, align 8, !tbaa !23
  %num_read = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 14
  %8 = load i64, i64* %num_read, align 8, !tbaa !30
  %add = add i64 %8, %7
  store i64 %add, i64* %num_read, align 8, !tbaa !30
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14
  %9 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp23.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %9, null
  br i1 %cmp23.not, label %lor.lhs.false25, label %if.then29

lor.lhs.false25:                                  ; preds = %if.end21
  %callback_ex26 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %10 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex26, align 8, !tbaa !21
  %cmp27.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %10, null
  br i1 %cmp27.not, label %if.end33, label %if.then29

if.then29:                                        ; preds = %lor.lhs.false25, %if.end21
  %conv30 = sext i32 %call17 to i64
  %call31 = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 130, i8* noundef %data, i64 noundef %dlen, i32 noundef 0, i64 noundef 0, i64 noundef %conv30, i64* noundef %readbytes) #12
  %conv32 = trunc i64 %call31 to i32
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %lor.lhs.false25
  %ret.0 = phi i32 [ %conv32, %if.then29 ], [ %call17, %lor.lhs.false25 ]
  %cmp34 = icmp sgt i32 %ret.0, 0
  br i1 %cmp34, label %land.lhs.true36, label %cleanup

land.lhs.true36:                                  ; preds = %if.end33
  %11 = load i64, i64* %readbytes, align 8, !tbaa !23
  %cmp37 = icmp ugt i64 %11, %dlen
  br i1 %cmp37, label %cleanup.sink.split, label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true36, %if.end12, %if.end, %lor.lhs.false, %entry
  %.sink66 = phi i32 [ 273, %entry ], [ 277, %lor.lhs.false ], [ 277, %if.end ], [ 287, %if.end12 ], [ 302, %land.lhs.true36 ]
  %.sink = phi i32 [ 786690, %entry ], [ 121, %lor.lhs.false ], [ 121, %if.end ], [ 120, %if.end12 ], [ 786691, %land.lhs.true36 ]
  %retval.0.ph = phi i32 [ -1, %entry ], [ -2, %lor.lhs.false ], [ -2, %if.end ], [ -1, %if.end12 ], [ -1, %land.lhs.true36 ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink66, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.bio_read_intern, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef %.sink, i8* noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33, %land.lhs.true36, %land.lhs.true
  %retval.0 = phi i32 [ %conv, %land.lhs.true ], [ %ret.0, %land.lhs.true36 ], [ %ret.0, %if.end33 ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_read_ex(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bio_read_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) #12
  %cmp = icmp sgt i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_write(%struct.bio_st* noundef %b, i8* noundef %data, i32 noundef %dlen) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp = icmp slt i32 %dlen, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv10 = zext i32 %dlen to i64
  %call = call fastcc i32 @bio_write_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %conv10, i64* noundef nonnull %written) #12
  %cmp1 = icmp sgt i32 %call, 0
  %1 = load i64, i64* %written, align 8
  %conv4 = trunc i64 %1 to i32
  %ret.0 = select i1 %cmp1, i32 %conv4, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %ret.0, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bio_write_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef writeonly %written) unnamed_addr #0 {
entry:
  %local_written = alloca i64, align 8
  %0 = bitcast i64* %local_written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  %cmp.not = icmp eq i64* %written, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %written, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq %struct.bio_st* %b, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp4 = icmp eq %struct.bio_method_st* %1, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %bwrite = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %1, i64 0, i32 2
  %2 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bwrite, align 8, !tbaa !31
  %cmp6 = icmp eq i32 (%struct.bio_st*, i8*, i64, i64*)* %2, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.bio_write_intern, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 121, i8* noundef null) #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %3 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp9.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %3, null
  br i1 %cmp9.not, label %lor.lhs.false10, label %land.lhs.true

lor.lhs.false10:                                  ; preds = %if.end8
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %4 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp11.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %4, null
  br i1 %cmp11.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false10, %if.end8
  %call = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 3, i8* noundef %data, i64 noundef %dlen, i32 noundef 0, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %conv = trunc i64 %call to i32
  %cmp12 = icmp slt i32 %conv, 1
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %lor.lhs.false10
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %5 = load i32, i32* %init, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end15
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.bio_write_intern, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %bwrite19 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %6, i64 0, i32 2
  %7 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bwrite19, align 8, !tbaa !31
  %call20 = call i32 %7(%struct.bio_st* noundef nonnull %b, i8* noundef %data, i64 noundef %dlen, i64* noundef nonnull %local_written) #11
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  %8 = load i64, i64* %local_written, align 8, !tbaa !23
  %num_write = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 15
  %9 = load i64, i64* %num_write, align 8, !tbaa !32
  %add = add i64 %9, %8
  store i64 %add, i64* %num_write, align 8, !tbaa !32
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end17
  %10 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp26.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %10, null
  br i1 %cmp26.not, label %lor.lhs.false28, label %if.then32

lor.lhs.false28:                                  ; preds = %if.end24
  %callback_ex29 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %11 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex29, align 8, !tbaa !21
  %cmp30.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %11, null
  br i1 %cmp30.not, label %if.end36, label %if.then32

if.then32:                                        ; preds = %lor.lhs.false28, %if.end24
  %conv33 = sext i32 %call20 to i64
  %call34 = call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 131, i8* noundef %data, i64 noundef %dlen, i32 noundef 0, i64 noundef 0, i64 noundef %conv33, i64* noundef nonnull %local_written) #12
  %conv35 = trunc i64 %call34 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %lor.lhs.false28
  %ret.0 = phi i32 [ %conv35, %if.then32 ], [ %call20, %lor.lhs.false28 ]
  br i1 %cmp.not, label %cleanup, label %if.then39

if.then39:                                        ; preds = %if.end36
  %12 = load i64, i64* %local_written, align 8, !tbaa !23
  store i64 %12, i64* %written, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then39, %land.lhs.true, %if.end, %if.then16, %if.then7
  %retval.0 = phi i32 [ -2, %if.then7 ], [ -1, %if.then16 ], [ 0, %if.end ], [ %conv, %land.lhs.true ], [ %ret.0, %if.then39 ], [ %ret.0, %if.end36 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_write_ex(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %written) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bio_write_intern(%struct.bio_st* noundef %b, i8* noundef %data, i64 noundef %dlen, i64* noundef %written) #12
  %cmp1 = icmp ne %struct.bio_st* %b, null
  %cmp2 = icmp eq i64 %dlen, 0
  %0 = and i1 %cmp1, %cmp2
  %cmp.inv = icmp sgt i32 %call, 0
  %narrow = or i1 %0, %cmp.inv
  %1 = zext i1 %narrow to i32
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_puts(%struct.bio_st* noundef %b, i8* noundef %buf) local_unnamed_addr #0 {
entry:
  %written = alloca i64, align 8
  %0 = bitcast i64* %written to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %written, align 8, !tbaa !23
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_puts, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_method_st* %1, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %bputs = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %1, i64 0, i32 6
  %2 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %bputs, align 8, !tbaa !33
  %cmp3 = icmp eq i32 (%struct.bio_st*, i8*)* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_puts, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 121, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %3 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp6.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %3, null
  br i1 %cmp6.not, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %if.end5
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %4 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp8.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %4, null
  br i1 %cmp8.not, label %if.end14, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7, %if.end5
  %call = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 4, i8* noundef %buf, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %conv = trunc i64 %call to i32
  %cmp10 = icmp slt i32 %conv, 1
  br i1 %cmp10, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then9, %lor.lhs.false7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %5 = load i32, i32* %init, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end14
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_puts, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %bputs18 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %6, i64 0, i32 6
  %7 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %bputs18, align 8, !tbaa !33
  %call19 = tail call i32 %7(%struct.bio_st* noundef nonnull %b, i8* noundef %buf) #11
  %cmp20 = icmp sgt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end16
  %conv2371 = zext i32 %call19 to i64
  %num_write = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 15
  %8 = load i64, i64* %num_write, align 8, !tbaa !32
  %add = add i64 %8, %conv2371
  store i64 %add, i64* %num_write, align 8, !tbaa !32
  store i64 %conv2371, i64* %written, align 8, !tbaa !23
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end16
  %ret.0 = phi i32 [ 1, %if.then22 ], [ %call19, %if.end16 ]
  %9 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp27.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %9, null
  br i1 %cmp27.not, label %lor.lhs.false29, label %if.then33

lor.lhs.false29:                                  ; preds = %if.end25
  %callback_ex30 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %10 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex30, align 8, !tbaa !21
  %cmp31.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %10, null
  br i1 %cmp31.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false29, %if.end25
  %conv34 = sext i32 %ret.0 to i64
  %call35 = call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 132, i8* noundef %buf, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef %conv34, i64* noundef nonnull %written) #12
  %conv36 = trunc i64 %call35 to i32
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %lor.lhs.false29
  %ret.1 = phi i32 [ %conv36, %if.then33 ], [ %ret.0, %lor.lhs.false29 ]
  %cmp38 = icmp sgt i32 %ret.1, 0
  br i1 %cmp38, label %if.then40, label %cleanup

if.then40:                                        ; preds = %if.end37
  %11 = load i64, i64* %written, align 8, !tbaa !23
  %cmp41 = icmp ugt i64 %11, 2147483647
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then40
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 439, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_puts, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 102, i8* noundef null) #11
  br label %cleanup

if.else:                                          ; preds = %if.then40
  %conv44 = trunc i64 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.else, %if.then43, %if.then9, %if.then15, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -1, %if.then15 ], [ %conv, %if.then9 ], [ -1, %if.then43 ], [ %conv44, %if.else ], [ %ret.1, %if.end37 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_gets(%struct.bio_st* noundef %b, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %readbytes = alloca i64, align 8
  %0 = bitcast i64* %readbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i64 0, i64* %readbytes, align 8, !tbaa !23
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_gets, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_method_st* %1, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %bgets = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %1, i64 0, i32 7
  %2 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bgets, align 8, !tbaa !34
  %cmp3 = icmp eq i32 (%struct.bio_st*, i8*, i32)* %2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_gets, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 121, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %cmp6 = icmp slt i32 %size, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_gets, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 125, i8* noundef null) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %3 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp9.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %3, null
  br i1 %cmp9.not, label %lor.lhs.false10, label %if.then12

lor.lhs.false10:                                  ; preds = %if.end8
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %4 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp11.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %4, null
  br i1 %cmp11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false10, %if.end8
  %conv81 = zext i32 %size to i64
  %call = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 5, i8* noundef %buf, i64 noundef %conv81, i32 noundef 0, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %conv13 = trunc i64 %call to i32
  %cmp14 = icmp slt i32 %conv13, 1
  br i1 %cmp14, label %cleanup, label %if.end18

if.end18:                                         ; preds = %if.then12, %lor.lhs.false10
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %5 = load i32, i32* %init, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end18
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_gets, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end18
  %6 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %bgets22 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %6, i64 0, i32 7
  %7 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bgets22, align 8, !tbaa !34
  %call23 = tail call i32 %7(%struct.bio_st* noundef nonnull %b, i8* noundef %buf, i32 noundef %size) #11
  %cmp24 = icmp sgt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end20
  %conv2778 = zext i32 %call23 to i64
  store i64 %conv2778, i64* %readbytes, align 8, !tbaa !23
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end20
  %ret.0 = phi i32 [ 1, %if.then26 ], [ %call23, %if.end20 ]
  %8 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp30.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %8, null
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.then36

lor.lhs.false32:                                  ; preds = %if.end28
  %callback_ex33 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %9 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex33, align 8, !tbaa !21
  %cmp34.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %9, null
  br i1 %cmp34.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32, %if.end28
  %conv3780 = zext i32 %size to i64
  %conv38 = sext i32 %ret.0 to i64
  %call39 = call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 133, i8* noundef %buf, i64 noundef %conv3780, i32 noundef 0, i64 noundef 0, i64 noundef %conv38, i64* noundef nonnull %readbytes) #12
  %conv40 = trunc i64 %call39 to i32
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %lor.lhs.false32
  %ret.1 = phi i32 [ %conv40, %if.then36 ], [ %ret.0, %lor.lhs.false32 ]
  %cmp42 = icmp sgt i32 %ret.1, 0
  br i1 %cmp42, label %if.then44, label %cleanup

if.then44:                                        ; preds = %if.end41
  %10 = load i64, i64* %readbytes, align 8, !tbaa !23
  %conv4579 = zext i32 %size to i64
  %cmp46 = icmp ugt i64 %10, %conv4579
  %conv49 = trunc i64 %10 to i32
  %spec.select = select i1 %cmp46, i32 -1, i32 %conv49
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end41, %if.then12, %if.then19, %if.then7, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then4 ], [ -1, %if.then7 ], [ -1, %if.then19 ], [ %conv13, %if.then12 ], [ %ret.1, %if.end41 ], [ %spec.select, %if.then44 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_get_line(%struct.bio_st* noundef %bio, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_line, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %size, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_line, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 125, i8* noundef null) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i8 0, i8* %buf, align 1, !tbaa !35
  %cmp4 = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_line, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !18
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then7, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end6
  %cmp953 = icmp ugt i32 %size, 1
  br i1 %cmp953, label %land.rhs, label %lor.lhs.false

if.then7:                                         ; preds = %if.end6
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_get_line, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #11
  br label %cleanup

while.cond:                                       ; preds = %while.body
  %dec55 = add nsw i32 %dec55.in, -1
  %cmp9 = icmp sgt i32 %dec55.in, 2
  br i1 %cmp9, label %land.rhs, label %while.end, !llvm.loop !36

land.rhs:                                         ; preds = %while.cond.preheader, %while.cond
  %dec55.in = phi i32 [ %dec55, %while.cond ], [ %size, %while.cond.preheader ]
  %ptr.054 = phi i8* [ %incdec.ptr, %while.cond ], [ %buf, %while.cond.preheader ]
  %call = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %bio, i8* noundef nonnull %ptr.054, i32 noundef 1) #12
  %cmp10 = icmp sgt i32 %call, 0
  br i1 %cmp10, label %while.body, label %while.end.thread40

while.end.thread40:                               ; preds = %land.rhs
  store i8 0, i8* %ptr.054, align 1, !tbaa !35
  %phi.cast62 = zext i32 %call to i64
  br label %lor.lhs.false

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %ptr.054, i64 1
  %1 = load i8, i8* %ptr.054, align 1, !tbaa !35
  %cmp11 = icmp eq i8 %1, 10
  br i1 %cmp11, label %while.end.thread, label %while.cond, !llvm.loop !36

while.end.thread:                                 ; preds = %while.body
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !35
  br label %cond.true

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !35
  br i1 %cmp953, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond.preheader, %while.end.thread40, %while.end
  %ptr.048 = phi i8* [ %ptr.054, %while.end.thread40 ], [ %incdec.ptr, %while.end ], [ %buf, %while.cond.preheader ]
  %ret.144 = phi i64 [ %phi.cast62, %while.end.thread40 ], [ 0, %while.end ], [ 0, %while.cond.preheader ]
  %call17 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 2, i64 noundef 0, i8* noundef null) #12
  %conv18 = trunc i64 %call17 to i32
  %tobool19.not = icmp eq i32 %conv18, 0
  br i1 %tobool19.not, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.end.thread, %lor.lhs.false, %while.end
  %ptr.139 = phi i8* [ %incdec.ptr, %while.end.thread ], [ %ptr.048, %lor.lhs.false ], [ %incdec.ptr, %while.end ]
  %sub.ptr.lhs.cast = ptrtoint i8* %ptr.139 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %ret.144, %lor.lhs.false ]
  %conv21 = trunc i64 %cond to i32
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then7, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ -1, %if.then5 ], [ %conv21, %cond.end ], [ -1, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 567, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %ctrl = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 8
  %1 = load i64 (%struct.bio_st*, i32, i64, i8*)*, i64 (%struct.bio_st*, i32, i64, i8*)** %ctrl, align 8, !tbaa !38
  %cmp3 = icmp eq i64 (%struct.bio_st*, i32, i64, i8*)* %1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 571, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 121, i8* noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %2 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp6.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2, null
  br i1 %cmp6.not, label %lor.lhs.false7, label %if.then9

lor.lhs.false7:                                   ; preds = %if.end5
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %3 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp8.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %3, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false7, %if.end5
  %call = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 6, i8* noundef %parg, i64 noundef 0, i32 noundef %cmd, i64 noundef %larg, i64 noundef 1, i64* noundef null) #12
  %cmp10 = icmp slt i64 %call, 1
  br i1 %cmp10, label %cleanup, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %ctrl15.phi.trans.insert = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %.pre, i64 0, i32 8
  %.pre45 = load i64 (%struct.bio_st*, i32, i64, i8*)*, i64 (%struct.bio_st*, i32, i64, i8*)** %ctrl15.phi.trans.insert, align 8, !tbaa !38
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %lor.lhs.false7
  %4 = phi i64 (%struct.bio_st*, i32, i64, i8*)* [ %.pre45, %if.then9.if.end13_crit_edge ], [ %1, %lor.lhs.false7 ]
  %call16 = tail call i64 %4(%struct.bio_st* noundef nonnull %b, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #11
  %5 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp18.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %5, null
  br i1 %cmp18.not, label %lor.lhs.false19, label %if.then22

lor.lhs.false19:                                  ; preds = %if.end13
  %callback_ex20 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %6 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex20, align 8, !tbaa !21
  %cmp21.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %6, null
  br i1 %cmp21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19, %if.end13
  %call23 = tail call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 134, i8* noundef %parg, i64 noundef 0, i32 noundef %cmd, i64 noundef %larg, i64 noundef %call16, i64* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false19, %if.then22, %if.then9, %if.then4, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -2, %if.then4 ], [ %call, %if.then9 ], [ %call23, %if.then22 ], [ %call16, %lor.lhs.false19 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_indent(%struct.bio_st* noundef %b, i32 noundef %indent, i32 noundef %max) local_unnamed_addr #0 {
entry:
  %0 = icmp sgt i32 %indent, 0
  %spec.store.select = select i1 %0, i32 %indent, i32 0
  %cmp1 = icmp sgt i32 %spec.store.select, %max
  %spec.select = select i1 %cmp1, i32 %max, i32 %spec.store.select
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indent.addr.1 = phi i32 [ %spec.select, %entry ], [ %dec, %while.body ]
  %tobool.not = icmp eq i32 %indent.addr.1, 0
  br i1 %tobool.not, label %return, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %indent.addr.1, -1
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %b, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #12
  %cmp4.not = icmp eq i32 %call, 1
  br i1 %cmp4.not, label %while.cond, label %return, !llvm.loop !39

return:                                           ; preds = %while.cond, %while.body
  %retval.0 = phi i32 [ 0, %while.body ], [ 1, %while.cond ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_int_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %larg, i32 noundef %iarg) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  store i32 %iarg, i32* %i, align 4, !tbaa !19
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %larg, i8* noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @BIO_ptr_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %larg) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #13
  store i8* null, i8** %p, align 8, !tbaa !40
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %larg, i8* noundef nonnull %0) #12
  %cmp = icmp slt i64 %call, 1
  %1 = load i8*, i8** %p, align 8
  %retval.0 = select i1 %cmp, i8* null, i8* %1
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #13
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) local_unnamed_addr #0 {
entry:
  %fp.addr = alloca i32 (%struct.bio_st*, i32, i32)*, align 8
  store i32 (%struct.bio_st*, i32, i32)* %fp, i32 (%struct.bio_st*, i32, i32)** %fp.addr, align 8, !tbaa !40
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 595, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BIO_callback_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp1, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %callback_ctrl = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 11
  %1 = load i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)** %callback_ctrl, align 8, !tbaa !41
  %cmp3 = icmp eq i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* %1, null
  %cmp5 = icmp ne i32 %cmd, 14
  %or.cond = or i1 %cmp5, %cmp3
  br i1 %or.cond, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 600, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BIO_callback_ctrl, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 121, i8* noundef null) #11
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 2
  %2 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp8.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %2, null
  br i1 %cmp8.not, label %lor.lhs.false9, label %if.then11

lor.lhs.false9:                                   ; preds = %if.end7
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %3 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %cmp10.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %3, null
  br i1 %cmp10.not, label %if.end15, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false9, %if.end7
  %4 = bitcast i32 (%struct.bio_st*, i32, i32)** %fp.addr to i8*
  %call = call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 6, i8* noundef nonnull %4, i64 noundef 0, i32 noundef 14, i64 noundef 0, i64 noundef 1, i64* noundef null) #12
  %cmp12 = icmp slt i64 %call, 1
  br i1 %cmp12, label %cleanup, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  %.pre = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %callback_ctrl17.phi.trans.insert = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %.pre, i64 0, i32 11
  %.pre44 = load i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)** %callback_ctrl17.phi.trans.insert, align 8, !tbaa !41
  %.pre45 = load i32 (%struct.bio_st*, i32, i32)*, i32 (%struct.bio_st*, i32, i32)** %fp.addr, align 8, !tbaa !40
  br label %if.end15

if.end15:                                         ; preds = %if.then11.if.end15_crit_edge, %lor.lhs.false9
  %5 = phi i32 (%struct.bio_st*, i32, i32)* [ %.pre45, %if.then11.if.end15_crit_edge ], [ %fp, %lor.lhs.false9 ]
  %6 = phi i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* [ %.pre44, %if.then11.if.end15_crit_edge ], [ %1, %lor.lhs.false9 ]
  %call18 = call i64 %6(%struct.bio_st* noundef nonnull %b, i32 noundef 14, i32 (%struct.bio_st*, i32, i32)* noundef %5) #11
  %7 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %cmp20.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %7, null
  br i1 %cmp20.not, label %lor.lhs.false21, label %if.then24

lor.lhs.false21:                                  ; preds = %if.end15
  %callback_ex22 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 3
  %8 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex22, align 8, !tbaa !21
  %cmp23.not = icmp eq i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %8, null
  br i1 %cmp23.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %if.end15
  %9 = bitcast i32 (%struct.bio_st*, i32, i32)** %fp.addr to i8*
  %call25 = call fastcc i64 @bio_call_callback(%struct.bio_st* noundef nonnull %b, i32 noundef 134, i8* noundef nonnull %9, i64 noundef 0, i32 noundef 14, i64 noundef 0, i64 noundef %call18, i64* noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false21, %if.then24, %if.then11, %if.then6, %if.then
  %retval.0 = phi i64 [ -2, %if.then ], [ -2, %if.then6 ], [ %call, %if.then11 ], [ %call25, %if.then24 ], [ %call18, %lor.lhs.false21 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_ctrl_pending(%struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 10, i64 noundef 0, i8* noundef null) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_ctrl_wpending(%struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 13, i64 noundef 0, i8* noundef null) #12
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_push(%struct.bio_st* noundef %b, %struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.cond
  %lb.0 = phi %struct.bio_st* [ %0, %while.cond ], [ %b, %entry ]
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %lb.0, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %cmp1.not = icmp eq %struct.bio_st* %0, null
  br i1 %cmp1.not, label %while.end, label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  %next_bio.le = getelementptr inbounds %struct.bio_st, %struct.bio_st* %lb.0, i64 0, i32 11
  store %struct.bio_st* %bio, %struct.bio_st** %next_bio.le, align 8, !tbaa !42
  %cmp4.not = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %while.end
  %prev_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 12
  store %struct.bio_st* %lb.0, %struct.bio_st** %prev_bio, align 8, !tbaa !44
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %while.end
  %1 = bitcast %struct.bio_st* %lb.0 to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %b, i32 noundef 6, i64 noundef 0, i8* noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  %retval.0 = phi %struct.bio_st* [ %b, %if.end6 ], [ %bio, %entry ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_pop(%struct.bio_st* noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 659, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.BIO_pop, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %1 = bitcast %struct.bio_st* %b to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %b, i32 noundef 7, i64 noundef 0, i8* noundef nonnull %1) #12
  %prev_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 12
  %2 = load %struct.bio_st*, %struct.bio_st** %prev_bio, align 8, !tbaa !44
  %cmp1.not = icmp eq %struct.bio_st* %2, null
  br i1 %cmp1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %next_bio5 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %2, i64 0, i32 11
  store %struct.bio_st* %3, %struct.bio_st** %next_bio5, align 8, !tbaa !42
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %4 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %cmp8.not = icmp eq %struct.bio_st* %4, null
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end6
  %prev_bio12 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %4, i64 0, i32 12
  store %struct.bio_st* %2, %struct.bio_st** %prev_bio12, align 8, !tbaa !44
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6
  %5 = bitcast %struct.bio_st** %next_bio to <2 x %struct.bio_st*>*
  store <2 x %struct.bio_st*> zeroinitializer, <2 x %struct.bio_st*>* %5, align 8, !tbaa !40
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %0, %if.end13 ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define %struct.bio_st* @BIO_get_retry_BIO(%struct.bio_st* noundef readonly %bio, i32* noundef writeonly %reason) local_unnamed_addr #8 {
entry:
  %call13 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %bio, i32 noundef 8) #12
  %tobool.not14 = icmp eq i32 %call13, 0
  br i1 %tobool.not14, label %for.end, label %if.end

for.cond:                                         ; preds = %if.end
  %call = tail call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %0, i32 noundef 8) #12
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.end, label %if.end

if.end:                                           ; preds = %entry, %for.cond
  %b.015 = phi %struct.bio_st* [ %0, %for.cond ], [ %bio, %entry ]
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b.015, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %if.end, %entry
  %last.1 = phi %struct.bio_st* [ %bio, %entry ], [ %b.015, %if.end ], [ %b.015, %for.cond ]
  %cmp3.not = icmp eq i32* %reason, null
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.end
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %last.1, i64 0, i32 8
  %1 = load i32, i32* %retry_reason, align 4, !tbaa !45
  store i32 %1, i32* %reason, align 4, !tbaa !19
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end
  ret %struct.bio_st* %last.1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @BIO_get_retry_reason(%struct.bio_st* nocapture noundef readonly %bio) local_unnamed_addr #5 {
entry:
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 8
  %0 = load i32, i32* %retry_reason, align 4, !tbaa !45
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_retry_reason(%struct.bio_st* nocapture noundef writeonly %bio, i32 noundef %reason) local_unnamed_addr #4 {
entry:
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 8
  store i32 %reason, i32* %retry_reason, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_find_type(%struct.bio_st* noundef readonly %bio, i32 noundef %type) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 709, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.BIO_find_type, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %type, 255
  %tobool.not = icmp eq i32 %and, 0
  br label %do.body

do.body:                                          ; preds = %if.end14, %if.end
  %bio.addr.0 = phi %struct.bio_st* [ %bio, %if.end ], [ %2, %if.end14 ]
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.addr.0, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %cmp1.not = icmp eq %struct.bio_method_st* %0, null
  br i1 %cmp1.not, label %if.end14, label %if.then2

if.then2:                                         ; preds = %do.body
  %type4 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %0, i64 0, i32 0
  %1 = load i32, i32* %type4, align 8, !tbaa !28
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  %and6 = and i32 %1, %type
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end14, label %cleanup

if.else:                                          ; preds = %if.then2
  %cmp10 = icmp eq i32 %1, %type
  br i1 %cmp10, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then5, %if.else, %do.body
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.addr.0, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %cmp15.not = icmp eq %struct.bio_st* %2, null
  br i1 %cmp15.not, label %cleanup, label %do.body, !llvm.loop !46

cleanup:                                          ; preds = %if.end14, %if.else, %if.then5, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.end14 ], [ %bio.addr.0, %if.else ], [ %bio.addr.0, %if.then5 ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_next(%struct.bio_st* noundef readonly %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 732, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_next, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %return

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_st* %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @BIO_set_next(%struct.bio_st* nocapture noundef writeonly %b, %struct.bio_st* noundef %next) local_unnamed_addr #4 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  store %struct.bio_st* %next, %struct.bio_st** %next_bio, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @BIO_free_all(%struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %cmp.old.not = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp.old.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %bio.addr.0 = phi %struct.bio_st* [ %0, %while.body ], [ %bio, %entry ]
  %references = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.addr.0, i64 0, i32 13
  %atomic-load = load atomic i32, i32* %references seq_cst, align 4, !tbaa !14
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.addr.0, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %call = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %bio.addr.0) #12
  %cmp1 = icmp slt i32 %atomic-load, 2
  %cmp = icmp ne %struct.bio_st* %0, null
  %or.cond = select i1 %cmp1, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body, label %while.end, !llvm.loop !47

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_dup_chain(%struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %cmp.not63 = icmp eq %struct.bio_st* %in, null
  br i1 %cmp.not63, label %cleanup, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %bio.066 = phi %struct.bio_st* [ %9, %for.inc ], [ %in, %entry ]
  %eoc.065 = phi %struct.bio_st* [ %call, %for.inc ], [ null, %entry ]
  %ret.064 = phi %struct.bio_st* [ %ret.1, %for.inc ], [ null, %entry ]
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 1
  %0 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !12
  %call = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %0) #12
  %cmp1 = icmp eq %struct.bio_st* %call, null
  br i1 %cmp1, label %err, label %if.end

if.end:                                           ; preds = %for.body
  %callback = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 2
  %1 = load i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback, align 8, !tbaa !20
  %callback2 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 2
  store i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)* %1, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)** %callback2, align 8, !tbaa !20
  %callback_ex = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 3
  %2 = load i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex, align 8, !tbaa !21
  %callback_ex3 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 3
  store i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)* %2, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)** %callback_ex3, align 8, !tbaa !21
  %cb_arg = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 4
  %3 = load i8*, i8** %cb_arg, align 8, !tbaa !26
  %cb_arg4 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 4
  store i8* %3, i8** %cb_arg4, align 8, !tbaa !26
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 5
  %4 = load i32, i32* %init, align 8, !tbaa !18
  %init5 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 5
  store i32 %4, i32* %init5, align 8, !tbaa !18
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 6
  %5 = load i32, i32* %shutdown, align 4, !tbaa !13
  %shutdown6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 6
  store i32 %5, i32* %shutdown6, align 4, !tbaa !13
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 7
  %6 = load i32, i32* %flags, align 8, !tbaa !25
  %flags7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 7
  store i32 %6, i32* %flags7, align 8, !tbaa !25
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 9
  %7 = load i32, i32* %num, align 8, !tbaa !48
  %num8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 9
  store i32 %7, i32* %num8, align 8, !tbaa !48
  %8 = bitcast %struct.bio_st* %call to i8*
  %call9 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio.066, i32 noundef 12, i64 noundef 0, i8* noundef nonnull %8) #12
  %tobool.not = icmp eq i64 %call9, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end12

if.end12:                                         ; preds = %if.end
  %ex_data = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call, i64 0, i32 16
  %ex_data13 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 16
  %call14 = tail call i32 @CRYPTO_dup_ex_data(i32 noundef 12, %struct.crypto_ex_data_st* noundef nonnull %ex_data, %struct.crypto_ex_data_st* noundef nonnull %ex_data13) #11
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err.sink.split, label %if.end18

if.end18:                                         ; preds = %if.end12
  %cmp19 = icmp eq %struct.bio_st* %ret.064, null
  br i1 %cmp19, label %for.inc, label %if.else

if.else:                                          ; preds = %if.end18
  %call21 = tail call %struct.bio_st* @BIO_push(%struct.bio_st* noundef %eoc.065, %struct.bio_st* noundef nonnull %call) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end18, %if.else
  %ret.1 = phi %struct.bio_st* [ %ret.064, %if.else ], [ %call, %if.end18 ]
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio.066, i64 0, i32 11
  %9 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %cmp.not = icmp eq %struct.bio_st* %9, null
  br i1 %cmp.not, label %cleanup, label %for.body, !llvm.loop !49

err.sink.split:                                   ; preds = %if.end12, %if.end
  %call17 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call) #12
  br label %err

err:                                              ; preds = %for.body, %err.sink.split
  tail call void @BIO_free_all(%struct.bio_st* noundef %ret.064) #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %entry, %err
  %retval.0 = phi %struct.bio_st* [ null, %err ], [ null, %entry ], [ %ret.1, %for.inc ]
  ret %struct.bio_st* %retval.0
}

declare i32 @CRYPTO_dup_ex_data(i32 noundef, %struct.crypto_ex_data_st* noundef, %struct.crypto_ex_data_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @BIO_copy_next_retry(%struct.bio_st* nocapture noundef %b) local_unnamed_addr #7 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %call = tail call i32 @BIO_test_flags(%struct.bio_st* noundef %0, i32 noundef 15) #12
  tail call void @BIO_set_flags(%struct.bio_st* noundef %b, i32 noundef %call) #12
  %1 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !42
  %retry_reason = getelementptr inbounds %struct.bio_st, %struct.bio_st* %1, i64 0, i32 8
  %2 = load i32, i32* %retry_reason, align 4, !tbaa !45
  %retry_reason2 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 8
  store i32 %2, i32* %retry_reason2, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_set_ex_data(%struct.bio_st* noundef %bio, i32 noundef %idx, i8* noundef %data) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 16
  %call = tail call i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx, i8* noundef %data) #11
  ret i32 %call
}

declare i32 @CRYPTO_set_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @BIO_get_ex_data(%struct.bio_st* noundef %bio, i32 noundef %idx) local_unnamed_addr #0 {
entry:
  %ex_data = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 16
  %call = tail call i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef nonnull %ex_data, i32 noundef %idx) #11
  ret i8* %call
}

declare i8* @CRYPTO_get_ex_data(%struct.crypto_ex_data_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @BIO_number_read(%struct.bio_st* noundef readonly %bio) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.bio_st* %bio, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %num_read = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 14
  %0 = load i64, i64* %num_read, align 8, !tbaa !30
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %0, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 @BIO_number_written(%struct.bio_st* noundef readonly %bio) local_unnamed_addr #5 {
entry:
  %tobool.not = icmp eq %struct.bio_st* %bio, null
  br i1 %tobool.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %num_write = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 15
  %0 = load i64, i64* %num_write, align 8, !tbaa !32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %0, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define void @bio_free_ex_data(%struct.bio_st* noundef %bio) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio_st* %bio to i8*
  %ex_data = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 16
  tail call void @CRYPTO_free_ex_data(i32 noundef 12, i8* noundef %0, %struct.crypto_ex_data_st* noundef nonnull %ex_data) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @bio_cleanup() local_unnamed_addr #0 {
entry:
  tail call void @bio_sock_cleanup_int() #11
  %0 = load i8*, i8** @bio_lookup_lock, align 8, !tbaa !40
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %0) #11
  store i8* null, i8** @bio_lookup_lock, align 8, !tbaa !40
  %1 = load i8*, i8** @bio_type_lock, align 8, !tbaa !40
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %1) #11
  store i8* null, i8** @bio_type_lock, align 8, !tbaa !40
  ret void
}

declare void @bio_sock_cleanup_int() local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_wait(%struct.bio_st* noundef %bio, i64 noundef %max_time, i32 noundef %nap_milliseconds) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @bio_wait(%struct.bio_st* noundef %bio, i64 noundef %max_time, i32 noundef %nap_milliseconds) #12
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 898, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.BIO_wait, i64 0, i64 0)) #11
  %cmp1 = icmp eq i32 %call, 0
  %cond = select i1 %cmp1, i32 105, i32 104
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef %cond, i8* noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bio_wait(%struct.bio_st* noundef %bio, i64 noundef %max_time, i32 noundef %nap_milliseconds) unnamed_addr #0 {
entry:
  %fd = alloca i32, align 4
  %0 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #13
  %cmp = icmp eq i64 %max_time, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 105, i64 noundef 0, i8* noundef nonnull %0) #12
  %cmp1 = icmp sgt i64 %call, 0
  %1 = load i32, i32* %fd, align 4
  %cmp2 = icmp slt i32 %1, 1024
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @BIO_test_flags(%struct.bio_st* noundef %bio, i32 noundef 1) #12
  %call5 = call i32 @BIO_socket_wait(i32 noundef %1, i32 noundef %call4, i64 noundef %max_time) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @time(i64* noundef null) #11
  %sub = sub nsw i64 %max_time, %call7
  %cmp8 = icmp slt i64 %sub, 0
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp eq i64 %sub, 0
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %2 = icmp ult i32 %nap_milliseconds, 1000
  %spec.store.select = select i1 %2, i32 %nap_milliseconds, i32 1000
  br label %if.end22

if.else:                                          ; preds = %if.end10
  %mul = mul i64 %sub, 1000
  %conv = zext i32 %nap_milliseconds to i64
  %cmp16 = icmp ult i64 %mul, %conv
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.else
  %conv19 = trunc i64 %sub to i32
  %mul20 = mul i32 %conv19, 1000
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18, %if.then12
  %nap_milliseconds.addr.0 = phi i32 [ %spec.store.select, %if.then12 ], [ %mul20, %if.then18 ], [ %nap_milliseconds, %if.else ]
  %conv23 = zext i32 %nap_milliseconds.addr.0 to i64
  call fastcc void @ossl_sleep(i64 noundef %conv23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry, %if.end22, %if.then3
  %retval.0 = phi i32 [ %call5, %if.then3 ], [ 1, %if.end22 ], [ 1, %entry ], [ 0, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_do_connect_retry(%struct.bio_st* noundef %bio, i32 noundef %timeout, i32 noundef %nap_milliseconds) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %timeout, 0
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %call = tail call i64 @time(i64* noundef null) #11
  %conv381 = zext i32 %timeout to i64
  %add = add nsw i64 %call, %conv381
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %entry ]
  %cmp4 = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 917, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.BIO_do_connect_retry, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #11
  br label %cleanup55

if.end:                                           ; preds = %cond.end
  %cmp6 = icmp slt i32 %nap_milliseconds, 0
  %spec.store.select = select i1 %cmp6, i32 100, i32 %nap_milliseconds
  %0 = zext i1 %cmp to i64
  %call11 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 102, i64 noundef %0, i8* noundef null) #12
  %cmp31 = icmp sgt i32 %timeout, -1
  br label %retry

retry:                                            ; preds = %if.then34, %if.end
  %call12 = tail call i32 @ERR_set_mark() #11
  %call13 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 101, i64 noundef 0, i8* noundef null) #12
  %conv14 = trunc i64 %call13 to i32
  %cmp15 = icmp slt i32 %conv14, 1
  br i1 %cmp15, label %if.then17, label %if.else52

if.then17:                                        ; preds = %retry
  %call18 = tail call i64 @ERR_peek_last_error() #11
  %sext = shl i64 %call18, 32
  %conv20 = ashr exact i64 %sext, 32
  %call22 = tail call i32 @BIO_test_flags(%struct.bio_st* noundef nonnull %bio, i32 noundef 8) #12
  %call24 = tail call fastcc i32 @ERR_GET_LIB(i64 noundef %conv20) #12
  %cmp25 = icmp eq i32 %call24, 32
  br i1 %cmp25, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then17
  %call21 = tail call fastcc i32 @ERR_GET_REASON(i64 noundef %conv20) #12
  switch i32 %call21, label %if.end30 [
    i32 524290, label %sw.bb
    i32 103, label %sw.bb
    i32 110, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then27, %if.then27, %if.then27
  %call28 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 1, i64 noundef 0, i8* noundef null) #12
  br label %if.end30

if.end30:                                         ; preds = %sw.bb, %if.then27, %if.then17
  %do_retry.0 = phi i32 [ %call22, %if.then27 ], [ 1, %sw.bb ], [ %call22, %if.then17 ]
  %tobool33 = icmp ne i32 %do_retry.0, 0
  %or.cond = select i1 %cmp31, i1 %tobool33, i1 false
  br i1 %or.cond, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end30
  %call35 = tail call i32 @ERR_pop_to_mark() #11
  %call36 = tail call fastcc i32 @bio_wait(%struct.bio_st* noundef nonnull %bio, i64 noundef %cond, i32 noundef %spec.store.select) #12
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %retry, label %if.end40

if.end40:                                         ; preds = %if.then34
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 960, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.BIO_do_connect_retry, i64 0, i64 0)) #11
  %cmp41 = icmp eq i32 %call36, 0
  %cond43 = select i1 %cmp41, i32 147, i32 103
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef %cond43, i8* noundef null) #11
  br label %cleanup55

if.else:                                          ; preds = %if.end30
  %conv19.le = trunc i64 %call18 to i32
  %call44 = tail call i32 @ERR_clear_last_mark() #11
  %cmp45 = icmp eq i32 %conv19.le, 0
  br i1 %cmp45, label %if.then47, label %cleanup55

if.then47:                                        ; preds = %if.else
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 966, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.BIO_do_connect_retry, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 103, i8* noundef null) #11
  br label %cleanup55

if.else52:                                        ; preds = %retry
  %conv14.le = trunc i64 %call13 to i32
  %call53 = tail call i32 @ERR_clear_last_mark() #11
  br label %cleanup55

cleanup55:                                        ; preds = %if.end40, %if.then47, %if.else, %if.else52, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %conv14.le, %if.else52 ], [ -1, %if.else ], [ -1, %if.then47 ], [ %call36, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #9

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #10 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_LIB(i64 noundef %errcode) unnamed_addr #10 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %1 = lshr i32 %0, 23
  %conv = and i32 %1, 255
  %retval.0 = select i1 %cmp.not, i32 %conv, i32 2
  ret i32 %retval.0
}

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

declare i32 @BIO_socket_wait(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ossl_sleep(i64 noundef %millis) unnamed_addr #0 {
entry:
  %0 = trunc i64 %millis to i32
  %conv = mul i32 %0, 1000
  %call = tail call i32 @usleep(i32 noundef %conv) #11
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 8}
!13 = !{!5, !9, i64 44}
!14 = !{!5, !7, i64 88}
!15 = !{!5, !6, i64 128}
!16 = !{!17, !6, i64 72}
!17 = !{!"bio_method_st", !9, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!18 = !{!5, !9, i64 40}
!19 = !{!9, !9, i64 0}
!20 = !{!5, !6, i64 16}
!21 = !{!5, !6, i64 24}
!22 = !{!17, !6, i64 80}
!23 = !{!10, !10, i64 0}
!24 = !{!5, !6, i64 64}
!25 = !{!5, !9, i64 48}
!26 = !{!5, !6, i64 32}
!27 = !{!17, !6, i64 8}
!28 = !{!17, !9, i64 0}
!29 = !{!17, !6, i64 32}
!30 = !{!5, !10, i64 96}
!31 = !{!17, !6, i64 16}
!32 = !{!5, !10, i64 104}
!33 = !{!17, !6, i64 48}
!34 = !{!17, !6, i64 56}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!17, !6, i64 64}
!39 = distinct !{!39, !37}
!40 = !{!6, !6, i64 0}
!41 = !{!17, !6, i64 88}
!42 = !{!5, !6, i64 72}
!43 = distinct !{!43, !37}
!44 = !{!5, !6, i64 80}
!45 = !{!5, !9, i64 52}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = !{!5, !9, i64 56}
!49 = distinct !{!49, !37}
