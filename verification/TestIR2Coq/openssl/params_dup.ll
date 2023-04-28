; ModuleID = 'crypto/params_dup.c'
source_filename = "crypto/params_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.OSSL_PARAM_BUF = type { %union.OSSL_PARAM_ALIGNED_BLOCK*, %union.OSSL_PARAM_ALIGNED_BLOCK*, i64, i64 }
%union.OSSL_PARAM_ALIGNED_BLOCK = type { double }

@.str = private unnamed_addr constant [20 x i8] c"crypto/params_dup.c\00", align 1
@__func__.OSSL_PARAM_merge = private unnamed_addr constant [17 x i8] c"OSSL_PARAM_merge\00", align 1
@__func__.ossl_param_buf_alloc = private unnamed_addr constant [21 x i8] c"ossl_param_buf_alloc\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define i64 @ossl_param_bytes_to_blocks(i64 noundef %bytes) local_unnamed_addr #0 {
entry:
  %sub = add i64 %bytes, 7
  %div = lshr i64 %sub, 3
  ret i64 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ossl_param_set_secure_block(%struct.ossl_param_st* nocapture noundef writeonly %last, i8* noundef %secure_buffer, i64 noundef %secure_buffer_sz) local_unnamed_addr #1 {
entry:
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %last, i64 0, i32 0
  store i8* null, i8** %key, align 8, !tbaa !4
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %last, i64 0, i32 3
  store i64 %secure_buffer_sz, i64* %data_size, align 8, !tbaa !11
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %last, i64 0, i32 2
  store i8* %secure_buffer, i8** %data, align 8, !tbaa !12
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %last, i64 0, i32 1
  store i32 127, i32* %data_type, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_PARAM_dup(%struct.ossl_param_st* noundef readonly %src) local_unnamed_addr #2 {
entry:
  %buf = alloca [2 x %struct.OSSL_PARAM_BUF], align 16
  %param_count = alloca i32, align 4
  %0 = bitcast [2 x %struct.OSSL_PARAM_BUF]* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #9
  %1 = bitcast i32* %param_count to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #9
  store i32 1, i32* %param_count, align 4, !tbaa !14
  %cmp = icmp eq %struct.ossl_param_st* %src, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [2 x %struct.OSSL_PARAM_BUF], [2 x %struct.OSSL_PARAM_BUF]* %buf, i64 0, i64 0
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 64) #10
  %call2 = call fastcc %struct.ossl_param_st* @ossl_param_dup(%struct.ossl_param_st* noundef nonnull %src, %struct.ossl_param_st* noundef null, %struct.OSSL_PARAM_BUF* noundef nonnull %arraydecay, i32* noundef nonnull %param_count) #11
  %2 = load i32, i32* %param_count, align 4, !tbaa !14
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 %conv, 40
  %call3 = call i64 @ossl_param_bytes_to_blocks(i64 noundef %mul) #11, !range !15
  %call4 = call fastcc i32 @ossl_param_buf_alloc(%struct.OSSL_PARAM_BUF* noundef nonnull %arraydecay, i64 noundef %call3, i32 noundef 0) #11
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [2 x %struct.OSSL_PARAM_BUF], [2 x %struct.OSSL_PARAM_BUF]* %buf, i64 0, i64 1
  %blocks = getelementptr inbounds [2 x %struct.OSSL_PARAM_BUF], [2 x %struct.OSSL_PARAM_BUF]* %buf, i64 0, i64 1, i32 2
  %3 = load i64, i64* %blocks, align 16, !tbaa !16
  %cmp8.not = icmp eq i64 %3, 0
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %call11 = call fastcc i32 @ossl_param_buf_alloc(%struct.OSSL_PARAM_BUF* noundef nonnull %arrayidx7, i64 noundef 0, i32 noundef 1) #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  %4 = bitcast [2 x %struct.OSSL_PARAM_BUF]* %buf to i8**
  %5 = load i8*, i8** %4, align 16, !tbaa !18
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 128) #10
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %if.end6
  %6 = bitcast [2 x %struct.OSSL_PARAM_BUF]* %buf to %struct.ossl_param_st**
  %7 = load %struct.ossl_param_st*, %struct.ossl_param_st** %6, align 16, !tbaa !18
  %call19 = call fastcc %struct.ossl_param_st* @ossl_param_dup(%struct.ossl_param_st* noundef nonnull %src, %struct.ossl_param_st* noundef %7, %struct.OSSL_PARAM_BUF* noundef nonnull %arraydecay, i32* noundef null) #11
  %8 = bitcast %struct.OSSL_PARAM_BUF* %arrayidx7 to i8**
  %9 = load i8*, i8** %8, align 16, !tbaa !18
  %alloc_sz = getelementptr inbounds [2 x %struct.OSSL_PARAM_BUF], [2 x %struct.OSSL_PARAM_BUF]* %buf, i64 0, i64 1, i32 3
  %10 = load i64, i64* %alloc_sz, align 8, !tbaa !19
  call void @ossl_param_set_secure_block(%struct.ossl_param_st* noundef %call19, i8* noundef %9, i64 noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end15, %if.then13
  %retval.0 = phi %struct.ossl_param_st* [ %7, %if.end15 ], [ null, %if.then13 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #9
  ret %struct.ossl_param_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_param_st* @ossl_param_dup(%struct.ossl_param_st* nocapture noundef readonly %src, %struct.ossl_param_st* noundef %dst, %struct.OSSL_PARAM_BUF* nocapture noundef %buf, i32* noundef %param_count) unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_st* %dst, null
  %key85 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %src, i64 0, i32 0
  %0 = load i8*, i8** %key85, align 8, !tbaa !4
  %cmp1.not86 = icmp eq i8* %0, null
  br i1 %cmp1.not86, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %cmp37.not = icmp eq i32* %param_count, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %dst.addr.089 = phi %struct.ossl_param_st* [ %dst, %for.body.lr.ph ], [ %dst.addr.1, %for.inc ]
  %in.087 = phi %struct.ossl_param_st* [ %src, %for.body.lr.ph ], [ %incdec.ptr42, %for.inc ]
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !12
  %call = tail call i32 @CRYPTO_secure_allocated(i8* noundef %1) #10
  br i1 %cmp.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %for.body
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 0, i32 1
  %2 = load i32, i32* %data_type, align 8, !tbaa !13
  %3 = and i32 %2, -2
  %switch = icmp eq i32 %3, 6
  br i1 %switch, label %if.end21, label %if.else

if.end.thread:                                    ; preds = %for.body
  %4 = bitcast %struct.ossl_param_st* %dst.addr.089 to i8*
  %5 = bitcast %struct.ossl_param_st* %in.087 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !20
  %idxprom = sext i32 %call to i64
  %cur = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %buf, i64 %idxprom, i32 1
  %6 = bitcast %union.OSSL_PARAM_ALIGNED_BLOCK** %cur to i8**
  %7 = load i8*, i8** %6, align 8, !tbaa !23
  %data3 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %dst.addr.089, i64 0, i32 2
  store i8* %7, i8** %data3, align 8, !tbaa !12
  %data_type74 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 0, i32 1
  %8 = load i32, i32* %data_type74, align 8, !tbaa !13
  %9 = and i32 %8, -2
  %switch76 = icmp eq i32 %9, 6
  br i1 %switch76, label %if.then11, label %if.then16

if.then11:                                        ; preds = %if.end.thread
  %10 = bitcast i8* %7 to i8**
  %11 = bitcast i8** %data to i8***
  %12 = load i8**, i8*** %11, align 8, !tbaa !12
  %13 = load i8*, i8** %12, align 8, !tbaa !21
  store i8* %13, i8** %10, align 8, !tbaa !21
  br label %if.end21

if.else:                                          ; preds = %if.end
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 0, i32 3
  %14 = load i64, i64* %data_size, align 8, !tbaa !11
  br label %if.end21

if.then16:                                        ; preds = %if.end.thread
  %data_size83 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 0, i32 3
  %15 = load i64, i64* %data_size83, align 8, !tbaa !11
  %16 = load i8*, i8** %data, align 8, !tbaa !12
  %call19 = tail call i8* @memcpy(i8* noundef %7, i8* noundef %16, i64 noundef %15) #10
  %.pre = load i32, i32* %data_type74, align 8, !tbaa !13
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end, %if.then16, %if.then11
  %17 = phi i32 [ %8, %if.then11 ], [ %.pre, %if.then16 ], [ %2, %if.else ], [ %2, %if.end ]
  %param_sz.0 = phi i64 [ 8, %if.then11 ], [ %15, %if.then16 ], [ %14, %if.else ], [ 8, %if.end ]
  %cmp23 = icmp eq i32 %17, 4
  %inc = zext i1 %cmp23 to i64
  %spec.select = add i64 %param_sz.0, %inc
  %call27 = tail call i64 @ossl_param_bytes_to_blocks(i64 noundef %spec.select) #11
  br i1 %cmp.not, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.end21
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %dst.addr.089, i64 1
  %idxprom30 = sext i32 %call to i64
  %cur32 = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %buf, i64 %idxprom30, i32 1
  %18 = load %union.OSSL_PARAM_ALIGNED_BLOCK*, %union.OSSL_PARAM_ALIGNED_BLOCK** %cur32, align 8, !tbaa !23
  %add.ptr = getelementptr inbounds %union.OSSL_PARAM_ALIGNED_BLOCK, %union.OSSL_PARAM_ALIGNED_BLOCK* %18, i64 %call27
  store %union.OSSL_PARAM_ALIGNED_BLOCK* %add.ptr, %union.OSSL_PARAM_ALIGNED_BLOCK** %cur32, align 8, !tbaa !23
  br label %if.end36

if.else33:                                        ; preds = %if.end21
  %idxprom34 = sext i32 %call to i64
  %blocks = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %buf, i64 %idxprom34, i32 2
  %19 = load i64, i64* %blocks, align 8, !tbaa !16
  %add = add i64 %19, %call27
  store i64 %add, i64* %blocks, align 8, !tbaa !16
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then29
  %dst.addr.1 = phi %struct.ossl_param_st* [ %incdec.ptr, %if.then29 ], [ %dst.addr.089, %if.else33 ]
  br i1 %cmp37.not, label %for.inc, label %if.then39

if.then39:                                        ; preds = %if.end36
  %20 = load i32, i32* %param_count, align 4, !tbaa !14
  %inc40 = add nsw i32 %20, 1
  store i32 %inc40, i32* %param_count, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %if.then39
  %incdec.ptr42 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %in.087, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr42, i64 0, i32 0
  %21 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp1.not = icmp eq i8* %21, null
  br i1 %cmp1.not, label %for.end, label %for.body, !llvm.loop !24

for.end:                                          ; preds = %for.inc, %entry
  %dst.addr.0.lcssa = phi %struct.ossl_param_st* [ %dst, %entry ], [ %dst.addr.1, %for.inc ]
  ret %struct.ossl_param_st* %dst.addr.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ossl_param_buf_alloc(%struct.OSSL_PARAM_BUF* nocapture noundef %out, i64 noundef %extra_blocks, i32 noundef %is_secure) unnamed_addr #2 {
entry:
  %blocks = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %out, i64 0, i32 2
  %0 = load i64, i64* %blocks, align 8, !tbaa !16
  %add = add i64 %0, %extra_blocks
  %mul = shl i64 %add, 3
  %tobool.not = icmp eq i32 %is_secure, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %call = tail call i8* @CRYPTO_secure_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 40) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  %1 = bitcast %struct.OSSL_PARAM_BUF* %out to i8**
  store i8* %cond, i8** %1, align 8, !tbaa !18
  %cmp = icmp eq i8* %cond, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  tail call void @ERR_new() #10
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ossl_param_buf_alloc, i64 0, i64 0)) #10
  %cond4 = select i1 %tobool.not, i32 786688, i32 111
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef %cond4, i8* noundef null) #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %2 = bitcast i8* %cond to %union.OSSL_PARAM_ALIGNED_BLOCK*
  %alloc_sz = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %out, i64 0, i32 3
  store i64 %mul, i64* %alloc_sz, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds %union.OSSL_PARAM_ALIGNED_BLOCK, %union.OSSL_PARAM_ALIGNED_BLOCK* %2, i64 %extra_blocks
  %cur = getelementptr inbounds %struct.OSSL_PARAM_BUF, %struct.OSSL_PARAM_BUF* %out, i64 0, i32 1
  store %union.OSSL_PARAM_ALIGNED_BLOCK* %add.ptr, %union.OSSL_PARAM_ALIGNED_BLOCK** %cur, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_param_st* @OSSL_PARAM_merge(%struct.ossl_param_st* noundef %p1, %struct.ossl_param_st* noundef %p2) local_unnamed_addr #2 {
entry:
  %list1 = alloca [129 x %struct.ossl_param_st*], align 16
  %list2 = alloca [129 x %struct.ossl_param_st*], align 16
  %0 = bitcast [129 x %struct.ossl_param_st*]* %list1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %0) #9
  %1 = bitcast [129 x %struct.ossl_param_st*]* %list2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1032, i8* nonnull %1) #9
  %cmp = icmp eq %struct.ossl_param_st* %p1, null
  %cmp1 = icmp eq %struct.ossl_param_st* %p2, null
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.end6, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %key133 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p1, i64 0, i32 0
  %2 = load i8*, i8** %key133, align 8, !tbaa !4
  %cmp4134.not = icmp eq i8* %2, null
  br i1 %cmp4134.not, label %if.end6, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %list1_sz.0136 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %p.0135 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.body ], [ %p1, %for.cond.preheader ]
  %inc = add nuw nsw i64 %list1_sz.0136, 1
  %arrayidx = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list1, i64 0, i64 %list1_sz.0136
  store %struct.ossl_param_st* %p.0135, %struct.ossl_param_st** %arrayidx, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0135, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %3 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp4 = icmp ne i8* %3, null
  %cmp5 = icmp ult i64 %list1_sz.0136, 127
  %4 = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %4, label %for.body, label %if.end6, !llvm.loop !26

if.end6:                                          ; preds = %for.body, %for.cond.preheader, %if.end
  %list1_sz.1 = phi i64 [ 0, %if.end ], [ 0, %for.cond.preheader ], [ %inc, %for.body ]
  %arrayidx7 = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list1, i64 0, i64 %list1_sz.1
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %arrayidx7, align 8, !tbaa !21
  br i1 %cmp1, label %if.end22, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %if.end6
  %key11137 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p2, i64 0, i32 0
  %5 = load i8*, i8** %key11137, align 8, !tbaa !4
  %cmp12138.not = icmp eq i8* %5, null
  br i1 %cmp12138.not, label %if.end22, label %for.body16

for.body16:                                       ; preds = %for.cond10.preheader, %for.body16
  %list2_sz.0140 = phi i64 [ %inc17, %for.body16 ], [ 0, %for.cond10.preheader ]
  %p.1139 = phi %struct.ossl_param_st* [ %incdec.ptr20, %for.body16 ], [ %p2, %for.cond10.preheader ]
  %inc17 = add nuw nsw i64 %list2_sz.0140, 1
  %arrayidx18 = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list2, i64 0, i64 %list2_sz.0140
  store %struct.ossl_param_st* %p.1139, %struct.ossl_param_st** %arrayidx18, align 8, !tbaa !21
  %incdec.ptr20 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.1139, i64 1
  %key11 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr20, i64 0, i32 0
  %6 = load i8*, i8** %key11, align 8, !tbaa !4
  %cmp12 = icmp ne i8* %6, null
  %cmp14 = icmp ult i64 %list2_sz.0140, 127
  %7 = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %7, label %for.body16, label %if.end22.thread, !llvm.loop !27

if.end22.thread:                                  ; preds = %for.body16
  %arrayidx23152 = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list2, i64 0, i64 %inc17
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %arrayidx23152, align 8, !tbaa !21
  br label %if.end28

if.end22:                                         ; preds = %for.cond10.preheader, %if.end6
  %arrayidx23 = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list2, i64 0, i64 0
  store %struct.ossl_param_st* null, %struct.ossl_param_st** %arrayidx23, align 16, !tbaa !21
  %cmp24 = icmp eq i64 %list1_sz.1, 0
  br i1 %cmp24, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end22.thread, %if.end22
  %list2_sz.1156 = phi i64 [ %inc17, %if.end22.thread ], [ 0, %if.end22 ]
  call void @qsort(i8* noundef nonnull %0, i64 noundef %list1_sz.1, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @compare_params) #10
  call void @qsort(i8* noundef nonnull %1, i64 noundef %list2_sz.1156, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @compare_params) #10
  %add = add nuw i64 %list2_sz.1156, %list1_sz.1
  %8 = mul i64 %add, 40
  %mul = add i64 %8, 40
  %call = call i8* @CRYPTO_zalloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 182) #10
  %9 = bitcast i8* %call to %struct.ossl_param_st*
  %cmp31 = icmp eq i8* %call, null
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  call void @ERR_new() #10
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OSSL_PARAM_merge, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, i8* noundef null) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %arraydecay29 = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list2, i64 0, i64 0
  %arraydecay = getelementptr inbounds [129 x %struct.ossl_param_st*], [129 x %struct.ossl_param_st*]* %list1, i64 0, i64 0
  %10 = load %struct.ossl_param_st*, %struct.ossl_param_st** %arraydecay, align 16, !tbaa !21
  %cmp36142 = icmp eq %struct.ossl_param_st* %10, null
  br i1 %cmp36142, label %do.body.preheader, label %if.end41

do.body.preheader:                                ; preds = %if.end67, %if.end33
  %p2cur.1.ph = phi %struct.ossl_param_st** [ %arraydecay29, %if.end33 ], [ %p2cur.2, %if.end67 ]
  %dst.1.ph = phi %struct.ossl_param_st* [ %9, %if.end33 ], [ %dst.3, %if.end67 ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %p2cur.1 = phi %struct.ossl_param_st** [ %incdec.ptr39, %do.body ], [ %p2cur.1.ph, %do.body.preheader ]
  %dst.1 = phi %struct.ossl_param_st* [ %incdec.ptr38, %do.body ], [ %dst.1.ph, %do.body.preheader ]
  %incdec.ptr38 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %dst.1, i64 1
  %11 = bitcast %struct.ossl_param_st** %p2cur.1 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !21
  %13 = bitcast %struct.ossl_param_st* %dst.1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %13, i8* noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !20
  %incdec.ptr39 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p2cur.1, i64 1
  %14 = load %struct.ossl_param_st*, %struct.ossl_param_st** %incdec.ptr39, align 8, !tbaa !21
  %cmp40.not = icmp eq %struct.ossl_param_st* %14, null
  br i1 %cmp40.not, label %cleanup, label %do.body, !llvm.loop !28

if.end41:                                         ; preds = %if.end33, %if.end67
  %15 = phi %struct.ossl_param_st* [ %28, %if.end67 ], [ %10, %if.end33 ]
  %dst.0145 = phi %struct.ossl_param_st* [ %dst.3, %if.end67 ], [ %9, %if.end33 ]
  %p2cur.0144 = phi %struct.ossl_param_st** [ %p2cur.2, %if.end67 ], [ %arraydecay29, %if.end33 ]
  %p1cur.0143 = phi %struct.ossl_param_st** [ %p1cur.2, %if.end67 ], [ %arraydecay, %if.end33 ]
  %16 = load %struct.ossl_param_st*, %struct.ossl_param_st** %p2cur.0144, align 8, !tbaa !21
  %cmp42 = icmp eq %struct.ossl_param_st* %16, null
  br i1 %cmp42, label %do.body44, label %if.end50

do.body44:                                        ; preds = %if.end41, %do.body44
  %p1cur.1 = phi %struct.ossl_param_st** [ %incdec.ptr46, %do.body44 ], [ %p1cur.0143, %if.end41 ]
  %dst.2 = phi %struct.ossl_param_st* [ %incdec.ptr45, %do.body44 ], [ %dst.0145, %if.end41 ]
  %incdec.ptr45 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %dst.2, i64 1
  %17 = bitcast %struct.ossl_param_st** %p1cur.1 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !21
  %19 = bitcast %struct.ossl_param_st* %dst.2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %19, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !20
  %incdec.ptr46 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p1cur.1, i64 1
  %20 = load %struct.ossl_param_st*, %struct.ossl_param_st** %incdec.ptr46, align 8, !tbaa !21
  %cmp48.not = icmp eq %struct.ossl_param_st* %20, null
  br i1 %cmp48.not, label %cleanup, label %do.body44, !llvm.loop !29

if.end50:                                         ; preds = %if.end41
  %key51 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %15, i64 0, i32 0
  %21 = load i8*, i8** %key51, align 8, !tbaa !4
  %key52 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %16, i64 0, i32 0
  %22 = load i8*, i8** %key52, align 8, !tbaa !4
  %call53 = call i32 @strcasecmp(i8* noundef %21, i8* noundef %22) #12
  %cmp54 = icmp eq i32 %call53, 0
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end50
  %23 = bitcast %struct.ossl_param_st* %dst.0145 to i8*
  %24 = bitcast %struct.ossl_param_st* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %23, i8* noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !20
  %incdec.ptr57 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p2cur.0144, i64 1
  %incdec.ptr58 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p1cur.0143, i64 1
  br label %if.end67

if.else:                                          ; preds = %if.end50
  %cmp59 = icmp sgt i32 %call53, 0
  %25 = bitcast %struct.ossl_param_st* %dst.0145 to i8*
  br i1 %cmp59, label %if.then60, label %if.else63

if.then60:                                        ; preds = %if.else
  %26 = bitcast %struct.ossl_param_st* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %25, i8* noundef nonnull align 8 dereferenceable(40) %26, i64 40, i1 false), !tbaa.struct !20
  %incdec.ptr62 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p2cur.0144, i64 1
  br label %if.end67

if.else63:                                        ; preds = %if.else
  %27 = bitcast %struct.ossl_param_st* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %25, i8* noundef nonnull align 8 dereferenceable(40) %27, i64 40, i1 false), !tbaa.struct !20
  %incdec.ptr65 = getelementptr inbounds %struct.ossl_param_st*, %struct.ossl_param_st** %p1cur.0143, i64 1
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.else63, %if.then55
  %p1cur.2 = phi %struct.ossl_param_st** [ %incdec.ptr58, %if.then55 ], [ %p1cur.0143, %if.then60 ], [ %incdec.ptr65, %if.else63 ]
  %p2cur.2 = phi %struct.ossl_param_st** [ %incdec.ptr57, %if.then55 ], [ %incdec.ptr62, %if.then60 ], [ %p2cur.0144, %if.else63 ]
  %dst.3 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %dst.0145, i64 1
  %28 = load %struct.ossl_param_st*, %struct.ossl_param_st** %p1cur.2, align 8, !tbaa !21
  %cmp36 = icmp eq %struct.ossl_param_st* %28, null
  br i1 %cmp36, label %do.body.preheader, label %if.end41

cleanup:                                          ; preds = %do.body44, %do.body, %if.end22, %entry, %if.then32
  %retval.0 = phi %struct.ossl_param_st* [ null, %if.then32 ], [ null, %entry ], [ null, %if.end22 ], [ %9, %do.body ], [ %9, %do.body44 ]
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 1032, i8* nonnull %0) #9
  ret %struct.ossl_param_st* %retval.0
}

declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @compare_params(i8* nocapture noundef readonly %left, i8* nocapture noundef readonly %right) #6 {
entry:
  %0 = bitcast i8* %left to %struct.ossl_param_st**
  %1 = load %struct.ossl_param_st*, %struct.ossl_param_st** %0, align 8, !tbaa !21
  %2 = bitcast i8* %right to %struct.ossl_param_st**
  %3 = load %struct.ossl_param_st*, %struct.ossl_param_st** %2, align 8, !tbaa !21
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %1, i64 0, i32 0
  %4 = load i8*, i8** %key, align 8, !tbaa !4
  %key1 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %3, i64 0, i32 0
  %5 = load i8*, i8** %key1, align 8, !tbaa !4
  %call = tail call i32 @strcasecmp(i8* noundef %4, i8* noundef %5) #12
  ret i32 %call
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare void @ERR_new() local_unnamed_addr #5

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #5

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define void @OSSL_PARAM_free(%struct.ossl_param_st* noundef %params) local_unnamed_addr #2 {
entry:
  %cmp.not = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp.not, label %if.end4, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.cond ], [ %params, %entry ]
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 0, i32 0
  %0 = load i8*, i8** %key, align 8, !tbaa !4
  %cmp1.not = icmp eq i8* %0, null
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  br i1 %cmp1.not, label %for.end, label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !13
  %cmp2 = icmp eq i32 %1, 127
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.end
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !12
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 0, i32 3
  %3 = load i64, i64* %data_size, align 8, !tbaa !11
  tail call void @CRYPTO_secure_clear_free(i8* noundef %2, i64 noundef %3, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 233) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.end
  %4 = bitcast %struct.ossl_param_st* %params to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 234) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

declare void @CRYPTO_secure_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CRYPTO_secure_allocated(i8* noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_secure_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"ossl_param_st", !6, i64 0, !9, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !10, i64 24}
!12 = !{!5, !6, i64 16}
!13 = !{!5, !9, i64 8}
!14 = !{!9, !9, i64 0}
!15 = !{i64 0, i64 2305843009213693952}
!16 = !{!17, !10, i64 16}
!17 = !{!"", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!17, !6, i64 0}
!19 = !{!17, !10, i64 24}
!20 = !{i64 0, i64 8, !21, i64 8, i64 4, !14, i64 16, i64 8, !21, i64 24, i64 8, !22, i64 32, i64 8, !22}
!21 = !{!6, !6, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!17, !6, i64 8}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
