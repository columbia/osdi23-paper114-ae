; ModuleID = 'crypto/bio/bss_bio.c'
source_filename = "crypto/bio/bss_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_bio_st = type { %struct.bio_st*, i32, i64, i64, i64, i8*, i64 }

@methods_biop = internal constant %struct.bio_method_st { i32 1043, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @bio_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @bio_read, i32 (%struct.bio_st*, i8*)* @bio_puts, i32 (%struct.bio_st*, i8*, i32)* null, i64 (%struct.bio_st*, i32, i64, i8*)* @bio_ctrl, i32 (%struct.bio_st*)* @bio_new, i32 (%struct.bio_st*)* @bio_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/bio/bss_bio.c\00", align 1
@__func__.BIO_nread0 = private unnamed_addr constant [11 x i8] c"BIO_nread0\00", align 1
@__func__.BIO_nread = private unnamed_addr constant [10 x i8] c"BIO_nread\00", align 1
@__func__.BIO_nwrite0 = private unnamed_addr constant [12 x i8] c"BIO_nwrite0\00", align 1
@__func__.BIO_nwrite = private unnamed_addr constant [11 x i8] c"BIO_nwrite\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BIO pair\00", align 1
@__func__.bio_write = private unnamed_addr constant [10 x i8] c"bio_write\00", align 1
@__func__.bio_ctrl = private unnamed_addr constant [9 x i8] c"bio_ctrl\00", align 1
@__func__.bio_make_pair = private unnamed_addr constant [14 x i8] c"bio_make_pair\00", align 1
@__func__.bio_nwrite0 = private unnamed_addr constant [12 x i8] c"bio_nwrite0\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_bio() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_biop
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_new_bio_pair(%struct.bio_st** nocapture noundef writeonly %bio1_p, i64 noundef %writebuf1, %struct.bio_st** nocapture noundef writeonly %bio2_p, i64 noundef %writebuf2) local_unnamed_addr #1 {
entry:
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_biop) #7
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then31, label %if.end

if.end:                                           ; preds = %entry
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @methods_biop) #7
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %if.then31, label %if.end6

if.end6:                                          ; preds = %if.end
  %tobool.not = icmp eq i64 %writebuf1, 0
  br i1 %tobool.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end6
  %call8 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 136, i64 noundef %writebuf1, i8* noundef null) #7
  %sext.mask53 = and i64 %call8, 4294967295
  %tobool10.not = icmp eq i64 %sext.mask53, 0
  br i1 %tobool10.not, label %if.then31, label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end6
  %tobool14.not = icmp eq i64 %writebuf2, 0
  br i1 %tobool14.not, label %err, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call3, i32 noundef 136, i64 noundef %writebuf2, i8* noundef null) #7
  %sext.mask52 = and i64 %call16, 4294967295
  %tobool19.not = icmp eq i64 %sext.mask52, 0
  br i1 %tobool19.not, label %if.then31, label %err

err:                                              ; preds = %if.end13, %if.then15
  %0 = bitcast %struct.bio_st* %call3 to i8*
  %call23 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 138, i64 noundef 0, i8* noundef nonnull %0) #7
  %sext.mask = and i64 %call23, 4294967295
  %tobool26.not = icmp eq i64 %sext.mask, 0
  br i1 %tobool26.not, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.then7, %if.then15, %if.end, %entry, %err
  %bio2.058 = phi %struct.bio_st* [ %call3, %err ], [ %call3, %if.then7 ], [ %call3, %if.then15 ], [ null, %if.end ], [ null, %entry ]
  %call32 = tail call i32 @BIO_free(%struct.bio_st* noundef %call1) #7
  %call33 = tail call i32 @BIO_free(%struct.bio_st* noundef %bio2.058) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %err
  %ret.059 = phi i32 [ 0, %if.then31 ], [ 1, %err ]
  %bio1.0 = phi %struct.bio_st* [ null, %if.then31 ], [ %call1, %err ]
  %bio2.1 = phi %struct.bio_st* [ null, %if.then31 ], [ %call3, %err ]
  store %struct.bio_st* %bio1.0, %struct.bio_st** %bio1_p, align 8, !tbaa !4
  store %struct.bio_st* %bio2.1, %struct.bio_st** %bio2_p, align 8, !tbaa !4
  ret i32 %ret.059
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_ctrl_get_write_guarantee(%struct.bio_st* noundef %bio) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 140, i64 noundef 0, i8* noundef null) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @BIO_ctrl_get_read_request(%struct.bio_st* noundef %bio) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 141, i64 noundef 0, i8* noundef null) #7
  ret i64 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_ctrl_reset_read_request(%struct.bio_st* noundef %bio) local_unnamed_addr #1 {
entry:
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %bio, i32 noundef 147, i64 noundef 0, i8* noundef null) #7
  %cmp = icmp ne i64 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_nread0(%struct.bio_st* noundef %bio, i8** noundef %buf) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 751, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_nread0, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast i8** %buf to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 143, i64 noundef 0, i8* noundef %1) #7
  %2 = icmp slt i64 %call, 2147483647
  %spec.select5 = select i1 %2, i64 %call, i64 2147483647
  %3 = trunc i64 %spec.select5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_nread(%struct.bio_st* noundef %bio, i8** noundef %buf, i32 noundef %num) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 767, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.BIO_nread, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %num to i64
  %1 = bitcast i8** %buf to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 144, i64 noundef %conv, i8* noundef %1) #7
  %conv1 = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv1, 0
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %sext = shl i64 %call, 32
  %conv4 = ashr exact i64 %sext, 32
  %num_read = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 14
  %2 = load i64, i64* %num_read, align 8, !tbaa !13
  %add = add i64 %2, %conv4
  store i64 %add, i64* %num_read, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %conv1, %if.then3 ], [ %conv1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_nwrite0(%struct.bio_st* noundef %bio, i8** noundef %buf) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.BIO_nwrite0, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = bitcast i8** %buf to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 145, i64 noundef 0, i8* noundef %1) #7
  %2 = icmp slt i64 %call, 2147483647
  %spec.select5 = select i1 %2, i64 %call, i64 2147483647
  %3 = trunc i64 %spec.select5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_nwrite(%struct.bio_st* noundef %bio, i8** noundef %buf, i32 noundef %num) local_unnamed_addr #1 {
entry:
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 798, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.BIO_nwrite, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = sext i32 %num to i64
  %1 = bitcast i8** %buf to i8*
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %bio, i32 noundef 146, i64 noundef %conv, i8* noundef %1) #7
  %conv1 = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv1, 0
  br i1 %cmp, label %if.then3, label %cleanup

if.then3:                                         ; preds = %if.end
  %sext = shl i64 %call, 32
  %conv4 = ashr exact i64 %sext, 32
  %num_write = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 15
  %2 = load i64, i64* %num_write, align 8, !tbaa !14
  %add = add i64 %2, %conv4
  store i64 %add, i64* %num_write, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %conv1, %if.then3 ], [ %conv1, %if.end ]
  ret i32 %retval.0
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_write(%struct.bio_st* noundef %bio, i8* noundef %buf, i32 noundef %num_) #1 {
entry:
  %conv = sext i32 %num_ to i64
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool = icmp eq i32 %0, 0
  %cmp = icmp eq i8* %buf, null
  %or.cond = or i1 %cmp, %tobool
  %cmp3 = icmp eq i32 %num_, 0
  %or.cond46 = or i1 %cmp3, %or.cond
  br i1 %or.cond46, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 6
  store i64 0, i64* %request, align 8, !tbaa !16
  %closed = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 1
  %3 = load i32, i32* %closed, align 8, !tbaa !18
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.bio_write, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 124, i8* noundef null) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 2
  %4 = load i64, i64* %len, align 8, !tbaa !19
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 4
  %5 = load i64, i64* %size, align 8, !tbaa !20
  %cmp8 = icmp eq i64 %5, %4
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %bio, i32 noundef 10) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %sub = sub i64 %5, %4
  %cmp14 = icmp ult i64 %sub, %conv
  %spec.select = select i1 %cmp14, i64 %sub, i64 %conv
  %offset = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 3
  %buf37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end11
  %6 = phi i64 [ %5, %if.end11 ], [ %.pre, %do.body.do.body_crit_edge ]
  %7 = phi i64 [ %4, %if.end11 ], [ %add39, %do.body.do.body_crit_edge ]
  %buf.addr.0 = phi i8* [ %buf, %if.end11 ], [ %add.ptr41, %do.body.do.body_crit_edge ]
  %rest.0 = phi i64 [ %spec.select, %if.end11 ], [ %sub40, %do.body.do.body_crit_edge ]
  %8 = load i64, i64* %offset, align 8, !tbaa !21
  %add = add i64 %7, %8
  %cmp23.not = icmp ult i64 %add, %6
  %sub27 = select i1 %cmp23.not, i64 0, i64 %6
  %spec.select88 = sub i64 %add, %sub27
  %add29 = add i64 %spec.select88, %rest.0
  %cmp31.not = icmp ugt i64 %add29, %6
  %sub35 = sub i64 %6, %spec.select88
  %chunk.0 = select i1 %cmp31.not, i64 %sub35, i64 %rest.0
  %9 = load i8*, i8** %buf37, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %spec.select88
  %call = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef %buf.addr.0, i64 noundef %chunk.0) #7
  %10 = load i64, i64* %len, align 8, !tbaa !19
  %add39 = add i64 %chunk.0, %10
  store i64 %add39, i64* %len, align 8, !tbaa !19
  %sub40 = sub i64 %rest.0, %chunk.0
  %tobool42.not = icmp eq i64 %sub40, 0
  br i1 %tobool42.not, label %do.end, label %do.body.do.body_crit_edge, !llvm.loop !23

do.body.do.body_crit_edge:                        ; preds = %do.body
  %add.ptr41 = getelementptr inbounds i8, i8* %buf.addr.0, i64 %chunk.0
  %.pre = load i64, i64* %size, align 8, !tbaa !20
  br label %do.body

do.end:                                           ; preds = %do.body
  %conv43 = trunc i64 %spec.select to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.end, %if.then10, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ -1, %if.then10 ], [ %conv43, %do.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_read(%struct.bio_st* noundef %bio, i8* noundef %buf, i32 noundef %size_) #1 {
entry:
  %conv = sext i32 %size_ to i64
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 0
  %3 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i64 0, i32 10
  %4 = bitcast i8** %ptr1 to %struct.bio_bio_st**
  %5 = load %struct.bio_bio_st*, %struct.bio_bio_st** %4, align 8, !tbaa !15
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 6
  store i64 0, i64* %request, align 8, !tbaa !16
  %cmp = icmp eq i8* %buf, null
  %cmp3 = icmp eq i32 %size_, 0
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 2
  %6 = load i64, i64* %len, align 8, !tbaa !19
  %cmp7 = icmp eq i64 %6, 0
  br i1 %cmp7, label %if.then9, label %if.end21

if.then9:                                         ; preds = %if.end6
  %closed = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 1
  %7 = load i32, i32* %closed, align 8, !tbaa !18
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.else, label %cleanup

if.else:                                          ; preds = %if.then9
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %bio, i32 noundef 9) #7
  %size12 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 4
  %8 = load i64, i64* %size12, align 8, !tbaa !20
  %cmp13.not = icmp ult i64 %8, %conv
  %.conv = select i1 %cmp13.not, i64 %8, i64 %conv
  store i64 %.conv, i64* %request, align 8, !tbaa !16
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %cmp23 = icmp ult i64 %6, %conv
  %spec.select = select i1 %cmp23, i64 %6, i64 %conv
  %offset = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 3
  %size28 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 4
  %buf36 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 5
  %.pre = load i64, i64* %offset, align 8, !tbaa !21
  br label %do.body

do.body:                                          ; preds = %if.end55, %if.end21
  %9 = phi i64 [ %.pre, %if.end21 ], [ %15, %if.end55 ]
  %rest.0 = phi i64 [ %spec.select, %if.end21 ], [ %sub56, %if.end55 ]
  %buf.addr.0 = phi i8* [ %buf, %if.end21 ], [ %buf.addr.1, %if.end55 ]
  %add = add i64 %9, %rest.0
  %10 = load i64, i64* %size28, align 8, !tbaa !20
  %cmp29.not = icmp ugt i64 %add, %10
  %sub = sub i64 %10, %9
  %chunk.0 = select i1 %cmp29.not, i64 %sub, i64 %rest.0
  %11 = load i8*, i8** %buf36, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %9
  %call = tail call i8* @memcpy(i8* noundef %buf.addr.0, i8* noundef %add.ptr, i64 noundef %chunk.0) #7
  %12 = load i64, i64* %len, align 8, !tbaa !19
  %sub39 = sub i64 %12, %chunk.0
  store i64 %sub39, i64* %len, align 8, !tbaa !19
  %tobool41.not = icmp eq i64 %sub39, 0
  br i1 %tobool41.not, label %if.else53, label %if.then42

if.then42:                                        ; preds = %do.body
  %13 = load i64, i64* %offset, align 8, !tbaa !21
  %add44 = add i64 %13, %chunk.0
  %14 = load i64, i64* %size28, align 8, !tbaa !20
  %cmp47 = icmp eq i64 %add44, %14
  %spec.store.select = select i1 %cmp47, i64 0, i64 %add44
  store i64 %spec.store.select, i64* %offset, align 8
  %add.ptr52 = getelementptr inbounds i8, i8* %buf.addr.0, i64 %chunk.0
  br label %if.end55

if.else53:                                        ; preds = %do.body
  store i64 0, i64* %offset, align 8, !tbaa !21
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then42
  %15 = phi i64 [ %spec.store.select, %if.then42 ], [ 0, %if.else53 ]
  %buf.addr.1 = phi i8* [ %add.ptr52, %if.then42 ], [ %buf.addr.0, %if.else53 ]
  %sub56 = sub i64 %rest.0, %chunk.0
  %tobool57.not = icmp eq i64 %sub56, 0
  br i1 %tobool57.not, label %do.end, label %do.body, !llvm.loop !26

do.end:                                           ; preds = %if.end55
  %conv58 = trunc i64 %spec.select to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %entry, %do.end, %if.else
  %retval.0 = phi i32 [ -1, %if.else ], [ %conv58, %do.end ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_puts(%struct.bio_st* noundef %bio, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @bio_write(%struct.bio_st* noundef %bio, i8* noundef %str, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @bio_ctrl(%struct.bio_st* noundef %bio, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_bio_st**
  %1 = load %struct.bio_bio_st*, %struct.bio_bio_st** %0, align 8, !tbaa !15
  switch i32 %cmd, label %sw.default [
    i32 136, label %sw.bb
    i32 137, label %sw.bb10
    i32 138, label %sw.bb12
    i32 139, label %sw.bb17
    i32 140, label %sw.bb18
    i32 141, label %sw.bb26
    i32 147, label %sw.bb27
    i32 142, label %sw.bb29
    i32 143, label %sw.bb31
    i32 144, label %sw.bb33
    i32 145, label %sw.bb35
    i32 146, label %sw.bb37
    i32 1, label %sw.bb39
    i32 8, label %sw.bb45
    i32 9, label %sw.bb46
    i32 10, label %sw.bb49
    i32 13, label %sw.bb59
    i32 12, label %sw.bb67
    i32 11, label %sw.epilog
    i32 2, label %sw.bb73
  ]

sw.bb:                                            ; preds = %entry
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %2 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %tobool.not = icmp eq %struct.bio_st* %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.bio_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 123, i8* noundef null) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %cmp = icmp eq i64 %num, 0
  br i1 %cmp, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.bio_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 125, i8* noundef null) #7
  br label %sw.epilog

if.else3:                                         ; preds = %if.else
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 4
  %3 = load i64, i64* %size, align 8, !tbaa !20
  %cmp4.not = icmp eq i64 %3, %num
  br i1 %cmp4.not, label %sw.epilog, label %if.then5

if.then5:                                         ; preds = %if.else3
  %buf = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 5
  %4 = load i8*, i8** %buf, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 437) #7
  store i8* null, i8** %buf, align 8, !tbaa !22
  store i64 %num, i64* %size, align 8, !tbaa !20
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %size11 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 4
  %5 = load i64, i64* %size11, align 8, !tbaa !20
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %6 = bitcast i8* %ptr to %struct.bio_st*
  %call = tail call fastcc i32 @bio_make_pair(%struct.bio_st* noundef nonnull %bio, %struct.bio_st* noundef %6) #9
  %tobool13.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool13.not to i64
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  tail call fastcc void @bio_destroy_pair(%struct.bio_st* noundef nonnull %bio) #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %peer19 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %7 = load %struct.bio_st*, %struct.bio_st** %peer19, align 8, !tbaa !25
  %cmp20 = icmp eq %struct.bio_st* %7, null
  br i1 %cmp20, label %sw.epilog, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb18
  %closed = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 1
  %8 = load i32, i32* %closed, align 8, !tbaa !18
  %tobool21.not = icmp eq i32 %8, 0
  br i1 %tobool21.not, label %if.else23, label %sw.epilog

if.else23:                                        ; preds = %lor.lhs.false
  %size24 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 4
  %9 = load i64, i64* %size24, align 8, !tbaa !20
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 2
  %10 = load i64, i64* %len, align 8, !tbaa !19
  %sub = sub i64 %9, %10
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 6
  %11 = load i64, i64* %request, align 8, !tbaa !16
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  %request28 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 6
  store i64 0, i64* %request28, align 8, !tbaa !16
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %closed30 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 1
  store i32 1, i32* %closed30, align 8, !tbaa !18
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  %12 = bitcast i8* %ptr to i8**
  %call32 = tail call fastcc i64 @bio_nread0(%struct.bio_st* noundef nonnull %bio, i8** noundef %12) #9
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %13 = bitcast i8* %ptr to i8**
  %call34 = tail call fastcc i64 @bio_nread(%struct.bio_st* noundef nonnull %bio, i8** noundef %13, i64 noundef %num) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %14 = bitcast i8* %ptr to i8**
  %call36 = tail call fastcc i64 @bio_nwrite0(%struct.bio_st* noundef nonnull %bio, i8** noundef %14) #9
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  %15 = bitcast i8* %ptr to i8**
  %call38 = tail call fastcc i64 @bio_nwrite(%struct.bio_st* noundef nonnull %bio, i8** noundef %15, i64 noundef %num) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  %buf40 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 5
  %16 = load i8*, i8** %buf40, align 8, !tbaa !22
  %cmp41.not = icmp eq i8* %16, null
  br i1 %cmp41.not, label %sw.epilog, label %if.then42

if.then42:                                        ; preds = %sw.bb39
  %len43 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 2
  %17 = bitcast i64* %len43 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %17, align 8, !tbaa !27
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 6
  %18 = load i32, i32* %shutdown, align 4, !tbaa !28
  %conv = sext i32 %18 to i64
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %conv47 = trunc i64 %num to i32
  %shutdown48 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 6
  store i32 %conv47, i32* %shutdown48, align 4, !tbaa !28
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %peer50 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %19 = load %struct.bio_st*, %struct.bio_st** %peer50, align 8, !tbaa !25
  %cmp51.not = icmp eq %struct.bio_st* %19, null
  br i1 %cmp51.not, label %sw.epilog, label %if.then53

if.then53:                                        ; preds = %sw.bb49
  %ptr55 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %19, i64 0, i32 10
  %20 = bitcast i8** %ptr55 to %struct.bio_bio_st**
  %21 = load %struct.bio_bio_st*, %struct.bio_bio_st** %20, align 8, !tbaa !15
  %len56 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %21, i64 0, i32 2
  %22 = load i64, i64* %len56, align 8, !tbaa !19
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  %buf60 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 5
  %23 = load i8*, i8** %buf60, align 8, !tbaa !22
  %cmp61.not = icmp eq i8* %23, null
  br i1 %cmp61.not, label %sw.epilog, label %if.then63

if.then63:                                        ; preds = %sw.bb59
  %len64 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 2
  %24 = load i64, i64* %len64, align 8, !tbaa !19
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  %ptr69 = getelementptr inbounds i8, i8* %ptr, i64 64
  %25 = bitcast i8* %ptr69 to %struct.bio_bio_st**
  %26 = load %struct.bio_bio_st*, %struct.bio_bio_st** %25, align 8, !tbaa !15
  %size70 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 4
  %27 = load i64, i64* %size70, align 8, !tbaa !20
  %size71 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %26, i64 0, i32 4
  store i64 %27, i64* %size71, align 8, !tbaa !20
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %peer74 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %28 = load %struct.bio_st*, %struct.bio_st** %peer74, align 8, !tbaa !25
  %cmp75.not = icmp eq %struct.bio_st* %28, null
  br i1 %cmp75.not, label %sw.epilog, label %if.then77

if.then77:                                        ; preds = %sw.bb73
  %ptr80 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %28, i64 0, i32 10
  %29 = bitcast i8** %ptr80 to %struct.bio_bio_st**
  %30 = load %struct.bio_bio_st*, %struct.bio_bio_st** %29, align 8, !tbaa !15
  %len81 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %30, i64 0, i32 2
  %31 = load i64, i64* %len81, align 8, !tbaa !19
  %cmp82 = icmp eq i64 %31, 0
  br i1 %cmp82, label %land.lhs.true, label %if.else87

land.lhs.true:                                    ; preds = %if.then77
  %closed84 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %30, i64 0, i32 1
  %32 = load i32, i32* %closed84, align 8, !tbaa !18
  %tobool85.not = icmp eq i32 %32, 0
  br i1 %tobool85.not, label %if.else87, label %sw.epilog

if.else87:                                        ; preds = %land.lhs.true, %if.then77
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %if.else87, %land.lhs.true, %entry, %sw.bb59, %sw.bb49, %sw.bb39, %if.then42, %sw.bb18, %lor.lhs.false, %if.else3, %if.then5, %if.then63, %if.then53, %if.else23, %if.then, %if.then2, %sw.default, %sw.bb67, %sw.bb46, %sw.bb45, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb26, %sw.bb17, %sw.bb12, %sw.bb10
  %ret.2 = phi i64 [ 0, %sw.default ], [ 1, %sw.bb67 ], [ %24, %if.then63 ], [ %22, %if.then53 ], [ 1, %sw.bb46 ], [ %conv, %sw.bb45 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %call32, %sw.bb31 ], [ 1, %sw.bb29 ], [ 1, %sw.bb27 ], [ %11, %sw.bb26 ], [ %sub, %if.else23 ], [ 1, %sw.bb17 ], [ %., %sw.bb12 ], [ %5, %sw.bb10 ], [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %if.then5 ], [ 1, %if.else3 ], [ 0, %lor.lhs.false ], [ 0, %sw.bb18 ], [ 0, %if.then42 ], [ 0, %sw.bb39 ], [ 0, %sw.bb49 ], [ 0, %sw.bb59 ], [ 1, %entry ], [ 0, %if.else87 ], [ 1, %land.lhs.true ], [ 1, %sw.bb73 ]
  ret i64 %ret.2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_new(%struct.bio_st* nocapture noundef writeonly %bio) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 56, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 78) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds i8, i8* %call, i64 32
  %0 = bitcast i8* %size to i64*
  store i64 17408, i64* %0, align 8, !tbaa !20
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !15
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bio_free(%struct.bio_st* noundef %bio) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %0 = load i8*, i8** %ptr, align 8, !tbaa !15
  %peer = bitcast i8* %0 to %struct.bio_st**
  %1 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %tobool.not = icmp eq %struct.bio_st* %1, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call fastcc void @bio_destroy_pair(%struct.bio_st* noundef nonnull %bio) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %buf = getelementptr inbounds i8, i8* %0, i64 40
  %2 = bitcast i8* %buf to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !22
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 104) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end2
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bio_make_pair(%struct.bio_st* noundef %bio1, %struct.bio_st* noundef %bio2) unnamed_addr #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio1, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_bio_st**
  %1 = load %struct.bio_bio_st*, %struct.bio_bio_st** %0, align 8, !tbaa !15
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio2, i64 0, i32 10
  %2 = bitcast i8** %ptr1 to %struct.bio_bio_st**
  %3 = load %struct.bio_bio_st*, %struct.bio_bio_st** %2, align 8, !tbaa !15
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %4 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %cmp.not = icmp eq %struct.bio_st* %4, null
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %peer2 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 0
  %5 = load %struct.bio_st*, %struct.bio_st** %peer2, align 8, !tbaa !25
  %cmp3.not = icmp eq %struct.bio_st* %5, null
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 617, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bio_make_pair, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 123, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %buf = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 5
  %6 = load i8*, i8** %buf, align 8, !tbaa !22
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 4
  %7 = load i64, i64* %size, align 8, !tbaa !20
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %7, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 622) #7
  store i8* %call, i8** %buf, align 8, !tbaa !22
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 624, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bio_make_pair, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 2
  %8 = bitcast i64* %len to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !tbaa !27
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %buf12 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 5
  %9 = load i8*, i8** %buf12, align 8, !tbaa !22
  %cmp13 = icmp eq i8* %9, null
  br i1 %cmp13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end11
  %size15 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 4
  %10 = load i64, i64* %size15, align 8, !tbaa !20
  %call16 = tail call i8* @CRYPTO_malloc(i64 noundef %10, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 632) #7
  store i8* %call16, i8** %buf12, align 8, !tbaa !22
  %cmp19 = icmp eq i8* %call16, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 634, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.bio_make_pair, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %if.then14
  %len22 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 2
  %11 = bitcast i64* %len22 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %11, align 8, !tbaa !27
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %if.end11
  store %struct.bio_st* %bio2, %struct.bio_st** %peer, align 8, !tbaa !25
  %closed = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 1
  store i32 0, i32* %closed, align 8, !tbaa !18
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 6
  store i64 0, i64* %request, align 8, !tbaa !16
  store %struct.bio_st* %bio1, %struct.bio_st** %peer2, align 8, !tbaa !25
  %closed27 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 1
  store i32 0, i32* %closed27, align 8, !tbaa !18
  %request28 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %3, i64 0, i32 6
  store i64 0, i64* %request28, align 8, !tbaa !16
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio1, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !8
  %init29 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio2, i64 0, i32 5
  store i32 1, i32* %init29, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then20, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then20 ], [ 1, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @bio_destroy_pair(%struct.bio_st* nocapture noundef %bio) unnamed_addr #6 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_bio_st**
  %1 = load %struct.bio_bio_st*, %struct.bio_bio_st** %0, align 8, !tbaa !15
  %cmp.not = icmp eq %struct.bio_bio_st* %1, null
  br i1 %cmp.not, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 0
  %2 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %cmp1.not = icmp eq %struct.bio_st* %2, null
  br i1 %cmp1.not, label %if.end9, label %if.then2

if.then2:                                         ; preds = %if.then
  %ptr3 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %2, i64 0, i32 10
  %3 = bitcast i8** %ptr3 to %struct.bio_bio_st**
  %4 = load %struct.bio_bio_st*, %struct.bio_bio_st** %3, align 8, !tbaa !15
  %peer4 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %4, i64 0, i32 0
  store %struct.bio_st* null, %struct.bio_st** %peer4, align 8, !tbaa !25
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %2, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !8
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %4, i64 0, i32 2
  %5 = bitcast i64* %len to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !tbaa !27
  store %struct.bio_st* null, %struct.bio_st** %peer, align 8, !tbaa !25
  %init6 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  store i32 0, i32* %init6, align 8, !tbaa !8
  %len7 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %1, i64 0, i32 2
  %6 = bitcast i64* %len7 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %6, align 8, !tbaa !27
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then2, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bio_nread0(%struct.bio_st* noundef %bio, i8** noundef writeonly %buf) unnamed_addr #1 {
entry:
  %dummy = alloca i8, align 1
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 0
  %3 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i64 0, i32 10
  %4 = bitcast i8** %ptr1 to %struct.bio_bio_st**
  %5 = load %struct.bio_bio_st*, %struct.bio_bio_st** %4, align 8, !tbaa !15
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 6
  store i64 0, i64* %request, align 8, !tbaa !16
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 2
  %6 = load i64, i64* %len, align 8, !tbaa !19
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %dummy) #10
  %call = call i32 @bio_read(%struct.bio_st* noundef nonnull %bio, i8* noundef nonnull %dummy, i32 noundef 1) #9
  %conv = sext i32 %call to i64
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %dummy) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 4
  %7 = load i64, i64* %size, align 8, !tbaa !20
  %offset = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 3
  %8 = load i64, i64* %offset, align 8, !tbaa !21
  %add = add i64 %8, %6
  %cmp5 = icmp ult i64 %7, %add
  %sub = sub i64 %7, %8
  %spec.select = select i1 %cmp5, i64 %sub, i64 %6
  %cmp11.not = icmp eq i8** %buf, null
  br i1 %cmp11.not, label %cleanup, label %if.then13

if.then13:                                        ; preds = %if.end3
  %buf14 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 5
  %9 = load i8*, i8** %buf14, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %8
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then13, %entry, %if.then2
  %retval.0 = phi i64 [ %conv, %if.then2 ], [ 0, %entry ], [ %spec.select, %if.then13 ], [ %spec.select, %if.end3 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bio_nread(%struct.bio_st* noundef %bio, i8** noundef %buf, i64 noundef %num_) unnamed_addr #1 {
entry:
  %0 = icmp ult i64 %num_, 9223372036854775807
  %.num_ = select i1 %0, i64 %num_, i64 9223372036854775807
  %call = tail call fastcc i64 @bio_nread0(%struct.bio_st* noundef %bio, i8** noundef %buf) #9
  %cmp1 = icmp sgt i64 %.num_, %call
  %num.1 = select i1 %cmp1, i64 %call, i64 %.num_
  %cmp4 = icmp slt i64 %num.1, 1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %peer = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 0
  %3 = load %struct.bio_st*, %struct.bio_st** %peer, align 8, !tbaa !25
  %ptr7 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %3, i64 0, i32 10
  %4 = bitcast i8** %ptr7 to %struct.bio_bio_st**
  %5 = load %struct.bio_bio_st*, %struct.bio_bio_st** %4, align 8, !tbaa !15
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 2
  %6 = load i64, i64* %len, align 8, !tbaa !19
  %sub = sub i64 %6, %num.1
  store i64 %sub, i64* %len, align 8, !tbaa !19
  %tobool.not = icmp eq i64 %sub, 0
  %offset16 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 3
  br i1 %tobool.not, label %cleanup.sink.split, label %if.then9

if.then9:                                         ; preds = %if.end6
  %7 = load i64, i64* %offset16, align 8, !tbaa !21
  %add = add i64 %7, %num.1
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %5, i64 0, i32 4
  %8 = load i64, i64* %size, align 8, !tbaa !20
  %cmp11 = icmp eq i64 %add, %8
  %spec.store.select = select i1 %cmp11, i64 0, i64 %add
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.then9
  %spec.store.select.sink = phi i64 [ %spec.store.select, %if.then9 ], [ 0, %if.end6 ]
  store i64 %spec.store.select.sink, i64* %offset16, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry
  ret i64 %num.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bio_nwrite0(%struct.bio_st* noundef %bio, i8** noundef writeonly %buf) unnamed_addr #1 {
entry:
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bio, i32 noundef 15) #7
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !8
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %request = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 6
  store i64 0, i64* %request, align 8, !tbaa !16
  %closed = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 1
  %3 = load i32, i32* %closed, align 8, !tbaa !18
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.bio_nwrite0, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 124, i8* noundef null) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 2
  %4 = load i64, i64* %len, align 8, !tbaa !19
  %size = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 4
  %5 = load i64, i64* %size, align 8, !tbaa !20
  %cmp = icmp eq i64 %5, %4
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %bio, i32 noundef 10) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %sub = sub i64 %5, %4
  %offset = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 3
  %6 = load i64, i64* %offset, align 8, !tbaa !21
  %add = add i64 %6, %4
  %cmp10.not = icmp ult i64 %add, %5
  %sub13 = select i1 %cmp10.not, i64 0, i64 %5
  %spec.select = sub i64 %add, %sub13
  %add15 = add i64 %spec.select, %sub
  %cmp17 = icmp ugt i64 %add15, %5
  %sub20 = sub i64 %5, %spec.select
  %num.0 = select i1 %cmp17, i64 %sub20, i64 %sub
  %cmp22.not = icmp eq i8** %buf, null
  br i1 %cmp22.not, label %cleanup, label %if.then23

if.then23:                                        ; preds = %if.end5
  %buf24 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 5
  %7 = load i8*, i8** %buf24, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %spec.select
  store i8* %add.ptr, i8** %buf, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then23, %entry, %if.then4, %if.then2
  %retval.0 = phi i64 [ -1, %if.then2 ], [ -1, %if.then4 ], [ 0, %entry ], [ %num.0, %if.then23 ], [ %num.0, %if.end5 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @bio_nwrite(%struct.bio_st* noundef %bio, i8** noundef %buf, i64 noundef %num_) unnamed_addr #1 {
entry:
  %0 = icmp ult i64 %num_, 9223372036854775807
  %.num_ = select i1 %0, i64 %num_, i64 9223372036854775807
  %call = tail call fastcc i64 @bio_nwrite0(%struct.bio_st* noundef %bio, i8** noundef %buf) #9
  %cmp1 = icmp sgt i64 %.num_, %call
  %num.1 = select i1 %cmp1, i64 %call, i64 %.num_
  %cmp4 = icmp slt i64 %num.1, 1
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bio, i64 0, i32 10
  %1 = bitcast i8** %ptr to %struct.bio_bio_st**
  %2 = load %struct.bio_bio_st*, %struct.bio_bio_st** %1, align 8, !tbaa !15
  %len = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %2, i64 0, i32 2
  %3 = load i64, i64* %len, align 8, !tbaa !19
  %add = add i64 %3, %num.1
  store i64 %add, i64* %len, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end6
  ret i64 %num.1
}

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"bio_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !6, i64 88, !11, i64 96, !11, i64 104, !12, i64 112, !5, i64 128}
!10 = !{!"int", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!13 = !{!9, !11, i64 96}
!14 = !{!9, !11, i64 104}
!15 = !{!9, !5, i64 64}
!16 = !{!17, !11, i64 48}
!17 = !{!"bio_bio_st", !5, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !11, i64 48}
!18 = !{!17, !10, i64 8}
!19 = !{!17, !11, i64 16}
!20 = !{!17, !11, i64 32}
!21 = !{!17, !11, i64 24}
!22 = !{!17, !5, i64 40}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!17, !5, i64 0}
!26 = distinct !{!26, !24}
!27 = !{!11, !11, i64 0}
!28 = !{!9, !10, i64 44}
