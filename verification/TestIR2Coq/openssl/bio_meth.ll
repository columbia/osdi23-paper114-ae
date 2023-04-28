; ModuleID = 'crypto/bio/bio_meth.c'
source_filename = "crypto/bio/bio_meth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@bio_type_lock = local_unnamed_addr global i8* null, align 8
@BIO_get_new_index.bio_count = internal global i32 128, align 4
@bio_type_init = internal global i32 0, align 4
@do_bio_type_init_ossl_ret_ = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"crypto/bio/bio_meth.c\00", align 1
@__func__.BIO_get_new_index = private unnamed_addr constant [18 x i8] c"BIO_get_new_index\00", align 1
@__func__.BIO_meth_new = private unnamed_addr constant [13 x i8] c"BIO_meth_new\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_get_new_index() local_unnamed_addr #0 {
entry:
  %newval = alloca i32, align 4
  %0 = bitcast i32* %newval to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = tail call i32 @CRYPTO_THREAD_run_once(i32* noundef nonnull @bio_type_init, void ()* noundef nonnull @do_bio_type_init_ossl_) #7
  %tobool = icmp ne i32 %call, 0
  %1 = load i32, i32* @do_bio_type_init_ossl_ret_, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.BIO_get_new_index, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @CRYPTO_UP_REF(i32* noundef nonnull %newval) #8
  %2 = load i32, i32* %newval, align 4, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.end ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @CRYPTO_THREAD_run_once(i32* noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal void @do_bio_type_init_ossl_() #0 {
entry:
  %call = tail call fastcc i32 @do_bio_type_init() #8
  store i32 %call, i32* @do_bio_type_init_ossl_ret_, align 4, !tbaa !4
  ret void
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef writeonly %ret) unnamed_addr #3 {
entry:
  %0 = atomicrmw add i32* @BIO_get_new_index.bio_count, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_method_st* @BIO_meth_new(i32 noundef %type, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 96, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 38) #7
  %0 = bitcast i8* %call to %struct.bio_method_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_strdup(i8* noundef %name, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 41) #7
  %name2 = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %name2 to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !8
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 42) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.BIO_meth_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %type4 = bitcast i8* %call to i32*
  store i32 %type, i32* %type4, align 8, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.bio_method_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.bio_method_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define void @BIO_meth_free(%struct.bio_method_st* noundef %biom) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.bio_method_st* %biom, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 1
  %0 = load i8*, i8** %name, align 8, !tbaa !8
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 53) #7
  %1 = bitcast %struct.bio_method_st* %biom to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 54) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*, i32)* @BIO_meth_get_write(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bwrite_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 3
  %0 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bwrite_old, align 8, !tbaa !12
  ret i32 (%struct.bio_st*, i8*, i32)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*, i64, i64*)* @BIO_meth_get_write_ex(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bwrite = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 2
  %0 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bwrite, align 8, !tbaa !13
  ret i32 (%struct.bio_st*, i8*, i64, i64*)* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bwrite_conv(%struct.bio_st* noundef %bio, i8* noundef %data, i64 noundef %datal, i64* nocapture noundef writeonly %written) #0 {
entry:
  %0 = icmp ult i64 %datal, 2147483647
  %spec.store.select = select i1 %0, i64 %datal, i64 2147483647
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !14
  %bwrite_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %1, i64 0, i32 3
  %2 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bwrite_old, align 8, !tbaa !12
  %conv = trunc i64 %spec.store.select to i32
  %call = tail call i32 %2(%struct.bio_st* noundef %bio, i8* noundef %data, i32 noundef %conv) #7
  %cmp1 = icmp slt i32 %call, 1
  %narrow = select i1 %cmp1, i32 0, i32 %call
  %storemerge12 = zext i32 %narrow to i64
  %retval.0 = select i1 %cmp1, i32 %call, i32 1
  store i64 %storemerge12, i64* %written, align 8, !tbaa !18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_write(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*, i32)* noundef %bwrite) local_unnamed_addr #5 {
entry:
  %bwrite_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 3
  store i32 (%struct.bio_st*, i8*, i32)* %bwrite, i32 (%struct.bio_st*, i8*, i32)** %bwrite_old, align 8, !tbaa !12
  %bwrite1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 2
  store i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i64, i64*)** %bwrite1, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_write_ex(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*, i64, i64*)* noundef %bwrite) local_unnamed_addr #5 {
entry:
  %bwrite_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 3
  store i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*, i32)** %bwrite_old, align 8, !tbaa !12
  %bwrite1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 2
  store i32 (%struct.bio_st*, i8*, i64, i64*)* %bwrite, i32 (%struct.bio_st*, i8*, i64, i64*)** %bwrite1, align 8, !tbaa !13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*, i32)* @BIO_meth_get_read(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bread_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 5
  %0 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bread_old, align 8, !tbaa !19
  ret i32 (%struct.bio_st*, i8*, i32)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*, i64, i64*)* @BIO_meth_get_read_ex(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bread = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 4
  %0 = load i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i64, i64*)** %bread, align 8, !tbaa !20
  ret i32 (%struct.bio_st*, i8*, i64, i64*)* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @bread_conv(%struct.bio_st* noundef %bio, i8* noundef %data, i64 noundef %datal, i64* nocapture noundef writeonly %readbytes) #0 {
entry:
  %0 = icmp ult i64 %datal, 2147483647
  %spec.store.select = select i1 %0, i64 %datal, i64 2147483647
  %method = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 1
  %1 = load %struct.bio_method_st*, %struct.bio_method_st** %method, align 8, !tbaa !14
  %bread_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %1, i64 0, i32 5
  %2 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bread_old, align 8, !tbaa !19
  %conv = trunc i64 %spec.store.select to i32
  %call = tail call i32 %2(%struct.bio_st* noundef %bio, i8* noundef %data, i32 noundef %conv) #7
  %cmp1 = icmp slt i32 %call, 1
  %narrow = select i1 %cmp1, i32 0, i32 %call
  %storemerge12 = zext i32 %narrow to i64
  %retval.0 = select i1 %cmp1, i32 %call, i32 1
  store i64 %storemerge12, i64* %readbytes, align 8, !tbaa !18
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_read(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*, i32)* noundef %bread) local_unnamed_addr #5 {
entry:
  %bread_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 5
  store i32 (%struct.bio_st*, i8*, i32)* %bread, i32 (%struct.bio_st*, i8*, i32)** %bread_old, align 8, !tbaa !19
  %bread1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 4
  store i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i64, i64*)** %bread1, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_read_ex(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*, i64, i64*)* noundef %bread) local_unnamed_addr #5 {
entry:
  %bread_old = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 5
  store i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*, i32)** %bread_old, align 8, !tbaa !19
  %bread1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 4
  store i32 (%struct.bio_st*, i8*, i64, i64*)* %bread, i32 (%struct.bio_st*, i8*, i64, i64*)** %bread1, align 8, !tbaa !20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*)* @BIO_meth_get_puts(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bputs = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 6
  %0 = load i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*)** %bputs, align 8, !tbaa !21
  ret i32 (%struct.bio_st*, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_puts(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*)* noundef %bputs) local_unnamed_addr #5 {
entry:
  %bputs1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 6
  store i32 (%struct.bio_st*, i8*)* %bputs, i32 (%struct.bio_st*, i8*)** %bputs1, align 8, !tbaa !21
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*, i8*, i32)* @BIO_meth_get_gets(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %bgets = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 7
  %0 = load i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i32)** %bgets, align 8, !tbaa !22
  ret i32 (%struct.bio_st*, i8*, i32)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_gets(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*, i8*, i32)* noundef %bgets) local_unnamed_addr #5 {
entry:
  %bgets1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 7
  store i32 (%struct.bio_st*, i8*, i32)* %bgets, i32 (%struct.bio_st*, i8*, i32)** %bgets1, align 8, !tbaa !22
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 (%struct.bio_st*, i32, i64, i8*)* @BIO_meth_get_ctrl(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %ctrl = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 8
  %0 = load i64 (%struct.bio_st*, i32, i64, i8*)*, i64 (%struct.bio_st*, i32, i64, i8*)** %ctrl, align 8, !tbaa !23
  ret i64 (%struct.bio_st*, i32, i64, i8*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_ctrl(%struct.bio_method_st* nocapture noundef writeonly %biom, i64 (%struct.bio_st*, i32, i64, i8*)* noundef %ctrl) local_unnamed_addr #5 {
entry:
  %ctrl1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 8
  store i64 (%struct.bio_st*, i32, i64, i8*)* %ctrl, i64 (%struct.bio_st*, i32, i64, i8*)** %ctrl1, align 8, !tbaa !23
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*)* @BIO_meth_get_create(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %create = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 9
  %0 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %create, align 8, !tbaa !24
  ret i32 (%struct.bio_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_create(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*)* noundef %create) local_unnamed_addr #5 {
entry:
  %create1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 9
  store i32 (%struct.bio_st*)* %create, i32 (%struct.bio_st*)** %create1, align 8, !tbaa !24
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 (%struct.bio_st*)* @BIO_meth_get_destroy(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %destroy = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 10
  %0 = load i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)** %destroy, align 8, !tbaa !25
  ret i32 (%struct.bio_st*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_destroy(%struct.bio_method_st* nocapture noundef writeonly %biom, i32 (%struct.bio_st*)* noundef %destroy) local_unnamed_addr #5 {
entry:
  %destroy1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 10
  store i32 (%struct.bio_st*)* %destroy, i32 (%struct.bio_st*)** %destroy1, align 8, !tbaa !25
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @BIO_meth_get_callback_ctrl(%struct.bio_method_st* nocapture noundef readonly %biom) local_unnamed_addr #4 {
entry:
  %callback_ctrl = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 11
  %0 = load i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)** %callback_ctrl, align 8, !tbaa !26
  ret i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define i32 @BIO_meth_set_callback_ctrl(%struct.bio_method_st* nocapture noundef writeonly %biom, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* noundef %callback_ctrl) local_unnamed_addr #5 {
entry:
  %callback_ctrl1 = getelementptr inbounds %struct.bio_method_st, %struct.bio_method_st* %biom, i64 0, i32 11
  store i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* %callback_ctrl, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)** %callback_ctrl1, align 8, !tbaa !26
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_bio_type_init() unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_THREAD_lock_new() #7
  store i8* %call, i8** @bio_type_lock, align 8, !tbaa !27
  %cmp = icmp ne i8* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"bio_method_st", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !5, i64 0}
!12 = !{!9, !10, i64 24}
!13 = !{!9, !10, i64 16}
!14 = !{!15, !10, i64 8}
!15 = !{!"bio_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !6, i64 88, !16, i64 96, !16, i64 104, !17, i64 112, !10, i64 128}
!16 = !{!"long", !6, i64 0}
!17 = !{!"crypto_ex_data_st", !10, i64 0, !10, i64 8}
!18 = !{!16, !16, i64 0}
!19 = !{!9, !10, i64 40}
!20 = !{!9, !10, i64 32}
!21 = !{!9, !10, i64 48}
!22 = !{!9, !10, i64 56}
!23 = !{!9, !10, i64 64}
!24 = !{!9, !10, i64 72}
!25 = !{!9, !10, i64 80}
!26 = !{!9, !10, i64 88}
!27 = !{!10, !10, i64 0}
