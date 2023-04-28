; ModuleID = 'crypto/bio/bss_mem.c'
source_filename = "crypto/bio/bss_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_buf_mem_st = type { %struct.buf_mem_st*, %struct.buf_mem_st* }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }

@mem_method = internal constant %struct.bio_method_st { i32 1025, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @mem_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @mem_read, i32 (%struct.bio_st*, i8*)* @mem_puts, i32 (%struct.bio_st*, i8*, i32)* @mem_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @mem_ctrl, i32 (%struct.bio_st*)* @mem_new, i32 (%struct.bio_st*)* @mem_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@secmem_method = internal constant %struct.bio_method_st { i32 1025, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @mem_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @mem_read, i32 (%struct.bio_st*, i8*)* @mem_puts, i32 (%struct.bio_st*, i8*, i32)* @mem_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @mem_ctrl, i32 (%struct.bio_st*)* @secmem_new, i32 (%struct.bio_st*)* @mem_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"crypto/bio/bss_mem.c\00", align 1
@__func__.BIO_new_mem_buf = private unnamed_addr constant [16 x i8] c"BIO_new_mem_buf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"memory buffer\00", align 1
@__func__.mem_write = private unnamed_addr constant [10 x i8] c"mem_write\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"secure memory buffer\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @mem_method
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_s_secmem() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @secmem_method
}

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @BIO_new_mem_buf(i8* noundef %buf, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %buf, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.BIO_new_mem_buf, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %len, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %call = tail call i64 @strlen(i8* noundef nonnull %buf) #7
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %conv28 = zext i32 %len to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ %conv28, %cond.false ]
  %call3 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef nonnull @mem_method) #6
  %cmp4 = icmp eq %struct.bio_st* %call3, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %cond.end
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call3, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_buf_mem_st**
  %1 = load %struct.bio_buf_mem_st*, %struct.bio_buf_mem_st** %0, align 8, !tbaa !4
  %buf8 = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 0
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf8, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 1
  store i8* %buf, i8** %data, align 8, !tbaa !14
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 0
  store i64 %cond, i64* %length, align 8, !tbaa !16
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 2
  store i64 %cond, i64* %max, align 8, !tbaa !17
  %readp = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 1
  %3 = bitcast %struct.buf_mem_st** %readp to i8**
  %4 = load i8*, i8** %3, align 8, !tbaa !18
  %5 = bitcast %struct.buf_mem_st* %2 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %4, i8* noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !19
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call3, i64 0, i32 7
  %6 = load i32, i32* %flags, align 8, !tbaa !22
  %or = or i32 %6, 512
  store i32 %or, i32* %flags, align 8, !tbaa !22
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %call3, i64 0, i32 9
  store i32 0, i32* %num, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end7, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ %call3, %if.end7 ], [ null, %cond.end ]
  ret %struct.bio_st* %retval.0
}

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_buf_mem_st**
  %1 = load %struct.bio_buf_mem_st*, %struct.bio_buf_mem_st** %0, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %2 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 221, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.mem_write, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 126, i8* noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #6
  %cmp = icmp eq i32 %inl, 0
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %cmp3 = icmp eq i8* %in, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.mem_write, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786690, i8* noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %readp = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 1
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %readp, align 8, !tbaa !18
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 0
  %4 = load i64, i64* %length, align 8, !tbaa !16
  %conv = trunc i64 %4 to i32
  tail call fastcc void @mem_buf_sync(%struct.bio_st* noundef nonnull %b) #8
  %buf = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 0
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %add = add nsw i32 %conv, %inl
  %conv6 = sext i32 %add to i64
  %call7 = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef %5, i64 noundef %conv6) #6
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end5
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 1
  %7 = load i8*, i8** %data, align 8, !tbaa !14
  %sext = shl i64 %4, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %conv13 = sext i32 %inl to i64
  %call14 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %in, i64 noundef %conv13) #6
  %8 = bitcast %struct.buf_mem_st** %readp to i8**
  %9 = load i8*, i8** %8, align 8, !tbaa !18
  %10 = bitcast %struct.bio_buf_mem_st* %1 to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.then4, %if.end11, %if.end5, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %if.then ], [ -1, %if.then4 ], [ -1, %if.end5 ], [ %inl, %if.end11 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_buf_mem_st**
  %1 = load %struct.bio_buf_mem_st*, %struct.bio_buf_mem_st** %0, align 8, !tbaa !4
  %readp = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 1
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %2 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  %buf = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 0
  %spec.select = select i1 %tobool.not, %struct.buf_mem_st** %readp, %struct.buf_mem_st** %buf
  %bm.0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %spec.select, align 8, !tbaa !21
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #6
  %cmp = icmp sgt i32 %outl, -1
  br i1 %cmp, label %cond.end, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  %length17.phi.trans.insert = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 0
  %.pre = load i64, i64* %length17.phi.trans.insert, align 8, !tbaa !16
  br label %if.else

cond.end:                                         ; preds = %entry
  %conv57 = zext i32 %outl to i64
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 0
  %3 = load i64, i64* %length, align 8, !tbaa !16
  %cmp1 = icmp ult i64 %3, %conv57
  %conv4 = trunc i64 %3 to i32
  %spec.select51 = select i1 %cmp1, i32 %conv4, i32 %outl
  %cmp5 = icmp ne i8* %out, null
  %cmp8 = icmp sgt i32 %spec.select51, 0
  %or.cond = select i1 %cmp5, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %cond.end
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 1
  %4 = load i8*, i8** %data, align 8, !tbaa !14
  %conv1158 = zext i32 %spec.select51 to i64
  %call = tail call i8* @memcpy(i8* noundef nonnull %out, i8* noundef %4, i64 noundef %conv1158) #6
  %5 = load i64, i64* %length, align 8, !tbaa !16
  %sub = sub i64 %5, %conv1158
  store i64 %sub, i64* %length, align 8, !tbaa !16
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 2
  %6 = load i64, i64* %max, align 8, !tbaa !17
  %sub15 = sub i64 %6, %conv1158
  store i64 %sub15, i64* %max, align 8, !tbaa !17
  %7 = load i8*, i8** %data, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %conv1158
  store i8* %add.ptr, i8** %data, align 8, !tbaa !14
  br label %if.end26

if.else:                                          ; preds = %entry.if.else_crit_edge, %cond.end
  %8 = phi i64 [ %3, %cond.end ], [ %.pre, %entry.if.else_crit_edge ]
  %cond56 = phi i32 [ %spec.select51, %cond.end ], [ %outl, %entry.if.else_crit_edge ]
  %cmp18 = icmp eq i64 %8, 0
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.else
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  %9 = load i32, i32* %num, align 8, !tbaa !23
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.then20
  tail call void @BIO_set_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 9) #6
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23, %if.then20, %if.then10
  %ret.0 = phi i32 [ %spec.select51, %if.then10 ], [ %9, %if.then23 ], [ 0, %if.then20 ], [ %cond56, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_puts(%struct.bio_st* noundef %bp, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @mem_write(%struct.bio_st* noundef %bp, i8* noundef %str, i32 noundef %conv) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %size) #1 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_buf_mem_st**
  %1 = load %struct.bio_buf_mem_st*, %struct.bio_buf_mem_st** %0, align 8, !tbaa !4
  %readp = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 1
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bp, i64 0, i32 7
  %2 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  %buf1 = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 0
  %spec.select = select i1 %tobool.not, %struct.buf_mem_st** %readp, %struct.buf_mem_st** %buf1
  %bm.0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %spec.select, align 8, !tbaa !21
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %bp, i32 noundef 15) #6
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 0
  %3 = load i64, i64* %length, align 8, !tbaa !16
  %conv = trunc i64 %3 to i32
  %cmp.not = icmp slt i32 %conv, %size
  %sub = add nsw i32 %size, -1
  %j.0 = select i1 %cmp.not, i32 %conv, i32 %sub
  %cmp6 = icmp slt i32 %j.0, 1
  br i1 %cmp6, label %cleanup.sink.split, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 1
  %4 = load i8*, i8** %data, align 8, !tbaa !14
  %wide.trip.count = zext i32 %j.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %indvars.iv
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %cmp13 = icmp eq i8 %5, 10
  br i1 %cmp13, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32
  %inc = add nuw nsw i32 %6, 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.inc, %if.then15
  %i.1 = phi i32 [ %inc, %if.then15 ], [ %j.0, %for.inc ]
  %call = tail call i32 @mem_read(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %i.1) #8
  %cmp18 = icmp sgt i32 %call, 0
  br i1 %cmp18, label %if.then20, label %cleanup

if.then20:                                        ; preds = %for.end
  %idxprom2152 = zext i32 %call to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %buf, i64 %idxprom2152
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %entry, %if.then20
  %arrayidx22.sink = phi i8* [ %arrayidx22, %if.then20 ], [ %buf, %entry ]
  %retval.0.ph = phi i32 [ %call, %if.then20 ], [ 0, %entry ]
  store i8 0, i8* %arrayidx22.sink, align 1, !tbaa !24
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end
  %retval.0 = phi i32 [ %call, %for.end ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @mem_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_buf_mem_st**
  %1 = load %struct.bio_buf_mem_st*, %struct.bio_buf_mem_st** %0, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 7
  %2 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %2, 512
  %tobool.not = icmp eq i32 %and, 0
  %buf = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 0
  %readp = getelementptr inbounds %struct.bio_buf_mem_st, %struct.bio_buf_mem_st* %1, i64 0, i32 1
  %bm.0.in = select i1 %tobool.not, %struct.buf_mem_st** %readp, %struct.buf_mem_st** %buf
  %bo.0.in = select i1 %tobool.not, %struct.buf_mem_st** %buf, %struct.buf_mem_st** %readp
  %bo.0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bo.0.in, align 8, !tbaa !21
  %bm.0 = load %struct.buf_mem_st*, %struct.buf_mem_st** %bm.0.in, align 8, !tbaa !21
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8, !tbaa !14
  %data4 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bo.0, i64 0, i32 1
  %4 = load i8*, i8** %data4, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 0
  %5 = load i64, i64* %length, align 8, !tbaa !16
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 128, label %sw.bb26
    i32 133, label %cleanup
    i32 2, label %sw.bb39
    i32 130, label %sw.bb43
    i32 3, label %sw.bb46
    i32 114, label %sw.bb53
    i32 115, label %sw.bb59
    i32 8, label %sw.bb71
    i32 9, label %sw.bb74
    i32 13, label %sw.bb77
    i32 10, label %sw.bb78
    i32 12, label %sw.bb80
    i32 11, label %sw.bb80
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %data6 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 1
  %7 = load i8*, i8** %data6, align 8, !tbaa !14
  %cmp.not = icmp eq i8* %7, null
  %8 = bitcast %struct.buf_mem_st* %6 to i8*
  br i1 %cmp.not, label %cleanup, label %if.then7

if.then7:                                         ; preds = %sw.bb
  br i1 %tobool.not, label %if.then11, label %if.else21

if.then11:                                        ; preds = %if.then7
  %and13 = and i32 %2, 1024
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.then11
  %max = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 2
  %9 = load i64, i64* %max, align 8, !tbaa !17
  %call = tail call i8* @memset(i8* noundef nonnull %7, i32 noundef 0, i64 noundef %9) #6
  %length17 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %6, i64 0, i32 0
  store i64 0, i64* %length17, align 8, !tbaa !16
  %.phi.trans.insert = bitcast %struct.bio_buf_mem_st* %1 to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !12
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then15
  %10 = phi i8* [ %.pre, %if.then15 ], [ %8, %if.then11 ]
  %11 = bitcast %struct.buf_mem_st** %readp to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false), !tbaa.struct !19
  br label %cleanup

if.else21:                                        ; preds = %if.then7
  %13 = bitcast %struct.buf_mem_st** %readp to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !19
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %cmp27 = icmp slt i64 %num, 0
  %add = add nsw i64 %sub.ptr.sub, %5
  %cmp28 = icmp slt i64 %add, %num
  %or.cond = select i1 %cmp27, i1 true, i1 %cmp28
  br i1 %or.cond, label %cleanup, label %if.end30

if.end30:                                         ; preds = %sw.bb26
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %num
  store i8* %add.ptr, i8** %data, align 8, !tbaa !14
  %length33 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bo.0, i64 0, i32 0
  %15 = load i64, i64* %length33, align 8, !tbaa !16
  %sub = sub i64 %15, %num
  store i64 %sub, i64* %length, align 8, !tbaa !16
  %max35 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bo.0, i64 0, i32 2
  %16 = load i64, i64* %max35, align 8, !tbaa !17
  %sub36 = sub i64 %16, %num
  %max37 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %bm.0, i64 0, i32 2
  store i64 %sub36, i64* %max37, align 8, !tbaa !17
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  %cmp41 = icmp eq i64 %5, 0
  %17 = zext i1 %cmp41 to i64
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  %conv44 = trunc i64 %num to i32
  %num45 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 9
  store i32 %conv44, i32* %num45, align 8, !tbaa !23
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %cmp48.not = icmp eq i8* %ptr, null
  br i1 %cmp48.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %sw.bb46
  %18 = bitcast i8* %ptr to i8**
  store i8* %3, i8** %18, align 8, !tbaa !21
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  %call54 = tail call fastcc i32 @mem_buf_free(%struct.bio_st* noundef nonnull %b) #8
  %conv55 = trunc i64 %num to i32
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv55, i32* %shutdown, align 4, !tbaa !27
  %19 = bitcast %struct.bio_buf_mem_st* %1 to i8**
  store i8* %ptr, i8** %19, align 8, !tbaa !12
  %20 = bitcast %struct.buf_mem_st** %readp to i8**
  %21 = load i8*, i8** %20, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %21, i8* noundef nonnull align 8 dereferenceable(32) %ptr, i64 32, i1 false), !tbaa.struct !19
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  %cmp60.not = icmp eq i8* %ptr, null
  br i1 %cmp60.not, label %cleanup, label %if.then62

if.then62:                                        ; preds = %sw.bb59
  br i1 %tobool.not, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then62
  tail call fastcc void @mem_buf_sync(%struct.bio_st* noundef nonnull %b) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then62
  %22 = bitcast %struct.bio_buf_mem_st* %1 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !12
  %24 = bitcast i8* %ptr to i8**
  store i8* %23, i8** %24, align 8, !tbaa !21
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  %shutdown72 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  %25 = load i32, i32* %shutdown72, align 4, !tbaa !27
  %conv73 = sext i32 %25 to i64
  br label %cleanup

sw.bb74:                                          ; preds = %entry
  %conv75 = trunc i64 %num to i32
  %shutdown76 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 6
  store i32 %conv75, i32* %shutdown76, align 4, !tbaa !27
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  br label %cleanup

sw.bb80:                                          ; preds = %entry, %entry
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %sw.bb39, %sw.bb43, %sw.bb53, %sw.bb71, %sw.bb74, %sw.bb77, %sw.bb78, %sw.bb80, %sw.default, %if.end18, %if.else21, %sw.bb, %if.then50, %sw.bb46, %if.end68, %sw.bb59, %entry, %if.end30, %sw.bb26
  %retval.0 = phi i64 [ -1, %sw.bb26 ], [ 0, %sw.default ], [ 1, %sw.bb80 ], [ %5, %sw.bb78 ], [ 0, %sw.bb77 ], [ 1, %sw.bb74 ], [ %conv73, %sw.bb71 ], [ 1, %if.end68 ], [ 1, %sw.bb59 ], [ 1, %sw.bb53 ], [ %5, %if.then50 ], [ %5, %sw.bb46 ], [ 1, %sw.bb43 ], [ %17, %sw.bb39 ], [ 1, %if.else21 ], [ 1, %if.end18 ], [ 1, %sw.bb ], [ %sub.ptr.sub, %entry ], [ %num, %if.end30 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_new(%struct.bio_st* nocapture noundef writeonly %bi) #1 {
entry:
  %call = tail call fastcc i32 @mem_init(%struct.bio_st* noundef %bi, i64 noundef 0) #8
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mem_free(%struct.bio_st* noundef %a) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = load i8*, i8** %ptr, align 8, !tbaa !4
  %call = tail call fastcc i32 @mem_buf_free(%struct.bio_st* noundef nonnull %a) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %readp = getelementptr inbounds i8, i8* %0, i64 8
  %1 = bitcast i8* %readp to i8**
  %2 = load i8*, i8** %1, align 8, !tbaa !18
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 152) #6
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 153) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @mem_buf_sync(%struct.bio_st* noundef readonly %b) unnamed_addr #1 {
entry:
  %cmp.not = icmp eq %struct.bio_st* %b, null
  br i1 %cmp.not, label %if.end21, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 5
  %0 = load i32, i32* %init, align 8, !tbaa !28
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %if.end21, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %1 = load i8*, i8** %ptr, align 8, !tbaa !4
  %cmp3.not = icmp eq i8* %1, null
  br i1 %cmp3.not, label %if.end21, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %readp = getelementptr inbounds i8, i8* %1, i64 8
  %2 = bitcast i8* %readp to %struct.buf_mem_st**
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %2, align 8, !tbaa !18
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  %4 = load i8*, i8** %data, align 8, !tbaa !14
  %buf = bitcast i8* %1 to %struct.buf_mem_st**
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %data5 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %5, i64 0, i32 1
  %6 = load i8*, i8** %data5, align 8, !tbaa !14
  %cmp6.not = icmp eq i8* %4, %6
  br i1 %cmp6.not, label %if.end21, label %if.then7

if.then7:                                         ; preds = %if.then
  %length = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 0
  %7 = load i64, i64* %length, align 8, !tbaa !16
  %call = tail call i8* @memmove(i8* noundef %6, i8* noundef %4, i64 noundef %7) #6
  %8 = load %struct.buf_mem_st*, %struct.buf_mem_st** %2, align 8, !tbaa !18
  %length14 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 0
  %9 = load i64, i64* %length14, align 8, !tbaa !16
  %10 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %length16 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %10, i64 0, i32 0
  store i64 %9, i64* %length16, align 8, !tbaa !16
  %data18 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %10, i64 0, i32 1
  %11 = load i8*, i8** %data18, align 8, !tbaa !14
  %data20 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %8, i64 0, i32 1
  store i8* %11, i8** %data20, align 8, !tbaa !14
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.then7, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

declare void @BIO_set_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @mem_buf_free(%struct.bio_st* noundef readonly %a) unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 6
  %0 = load i32, i32* %shutdown, align 4, !tbaa !27
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  %1 = load i32, i32* %init, align 8, !tbaa !28
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %return, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %2 = load i8*, i8** %ptr, align 8, !tbaa !4
  %cmp3.not = icmp eq i8* %2, null
  br i1 %cmp3.not, label %return, label %if.then4

if.then4:                                         ; preds = %land.lhs.true2
  %buf = bitcast i8* %2 to %struct.buf_mem_st**
  %3 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  %4 = load i32, i32* %flags, align 8, !tbaa !22
  %and = and i32 %4, 512
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.then4
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %3, i64 0, i32 1
  store i8* null, i8** %data, align 8, !tbaa !14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then4
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %3) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true, %land.lhs.true2, %if.end8, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end8 ], [ 1, %land.lhs.true2 ], [ 1, %land.lhs.true ], [ 1, %if.end ]
  ret i32 %retval.0
}

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @mem_init(%struct.bio_st* nocapture noundef writeonly %bi, i64 noundef %flags) unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 111) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.buf_mem_st* @BUF_MEM_new_ex(i64 noundef %flags) #6
  %buf = bitcast i8* %call to %struct.buf_mem_st**
  store %struct.buf_mem_st* %call1, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  %cmp2 = icmp eq %struct.buf_mem_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 116) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i8* @CRYPTO_zalloc(i64 noundef 32, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 119) #6
  %readp = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %readp to i8**
  store i8* %call5, i8** %0, align 8, !tbaa !18
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %1 = load %struct.buf_mem_st*, %struct.buf_mem_st** %buf, align 8, !tbaa !12
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %1) #6
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 121) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %2 = bitcast i8* %call to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %call5, i8* noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !19
  %shutdown = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 6
  store i32 1, i32* %shutdown, align 4, !tbaa !27
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !28
  %num = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 9
  store i32 -1, i32* %num, align 8, !tbaa !23
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end9, %if.then7, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then7 ], [ 1, %if.end9 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare %struct.buf_mem_st* @BUF_MEM_new_ex(i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @secmem_new(%struct.bio_st* nocapture noundef writeonly %bi) #1 {
entry:
  %call = tail call fastcc i32 @mem_init(%struct.bio_st* noundef %bi, i64 noundef 1) #8
  ret i32 %call
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 64}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!13, !6, i64 0}
!13 = !{!"bio_buf_mem_st", !6, i64 0, !6, i64 8}
!14 = !{!15, !6, i64 8}
!15 = !{!"buf_mem_st", !10, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!15, !10, i64 0}
!17 = !{!15, !10, i64 16}
!18 = !{!13, !6, i64 8}
!19 = !{i64 0, i64 8, !20, i64 8, i64 8, !21, i64 16, i64 8, !20, i64 24, i64 8, !20}
!20 = !{!10, !10, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!5, !9, i64 48}
!23 = !{!5, !9, i64 56}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!5, !9, i64 44}
!28 = !{!5, !9, i64 40}
