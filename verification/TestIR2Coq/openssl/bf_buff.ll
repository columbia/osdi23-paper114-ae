; ModuleID = 'crypto/bio/bf_buff.c'
source_filename = "crypto/bio/bf_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_f_buffer_ctx_struct = type { i32, i32, i8*, i32, i32, i8*, i32, i32 }

@methods_buffer = internal constant %struct.bio_method_st { i32 521, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @buffer_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @buffer_read, i32 (%struct.bio_st*, i8*)* @buffer_puts, i32 (%struct.bio_st*, i8*, i32)* @buffer_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @buffer_ctrl, i32 (%struct.bio_st*)* @buffer_new, i32 (%struct.bio_st*)* @buffer_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @buffer_callback_ctrl }, align 8
@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/bio/bf_buff.c\00", align 1
@__func__.buffer_ctrl = private unnamed_addr constant [12 x i8] c"buffer_ctrl\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_buffer() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_buffer
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %cmp = icmp eq i8* %in, null
  %cmp1 = icmp slt i32 %inl, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.bio_f_buffer_ctx_struct* %1, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp4 = icmp eq %struct.bio_st* %2, null
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %obuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 1
  %obuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  %obuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 7
  %3 = load i32, i32* %obuf_size, align 4, !tbaa !13
  %4 = load i32, i32* %obuf_len, align 8, !tbaa !15
  %5 = load i32, i32* %obuf_off, align 4, !tbaa !16
  %add197 = add nsw i32 %5, %4
  %sub198 = sub nsw i32 %3, %add197
  %cmp7.not199 = icmp slt i32 %sub198, %inl
  br i1 %cmp7.not199, label %if.end15.lr.ph, label %if.then8

if.end15.lr.ph:                                   ; preds = %if.end6
  %obuf23 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 5
  br label %if.end15

start.loopexit:                                   ; preds = %while.cond
  %6 = load i32, i32* %obuf_len, align 8, !tbaa !15
  %7 = load i32, i32* %obuf_off, align 4, !tbaa !16
  %add = add nsw i32 %7, %6
  %sub = sub nsw i32 %20, %add
  %cmp7.not = icmp sgt i32 %inl.addr.3, %sub
  br i1 %cmp7.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %start.loopexit, %if.end6
  %in.addr.0.lcssa = phi i8* [ %in, %if.end6 ], [ %in.addr.3, %start.loopexit ]
  %inl.addr.0.lcssa = phi i32 [ %inl, %if.end6 ], [ %inl.addr.3, %start.loopexit ]
  %num.0.lcssa = phi i32 [ 0, %if.end6 ], [ %num.3, %start.loopexit ]
  %add.lcssa = phi i32 [ %add197, %if.end6 ], [ %add, %start.loopexit ]
  %obuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 5
  %8 = load i8*, i8** %obuf, align 8, !tbaa !17
  %idxprom = sext i32 %add.lcssa to i64
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %conv = sext i32 %inl.addr.0.lcssa to i64
  %call = tail call i8* @memcpy(i8* noundef %arrayidx, i8* noundef %in.addr.0.lcssa, i64 noundef %conv) #7
  %9 = load i32, i32* %obuf_len, align 8, !tbaa !15
  %add13 = add nsw i32 %9, %inl.addr.0.lcssa
  store i32 %add13, i32* %obuf_len, align 8, !tbaa !15
  %add14 = add nsw i32 %num.0.lcssa, %inl.addr.0.lcssa
  br label %cleanup

if.end15:                                         ; preds = %if.end15.lr.ph, %start.loopexit
  %.pre219 = phi i32 [ %5, %if.end15.lr.ph ], [ %7, %start.loopexit ]
  %sub204 = phi i32 [ %sub198, %if.end15.lr.ph ], [ %sub, %start.loopexit ]
  %add203 = phi i32 [ %add197, %if.end15.lr.ph ], [ %add, %start.loopexit ]
  %10 = phi i32 [ %4, %if.end15.lr.ph ], [ %6, %start.loopexit ]
  %num.0202 = phi i32 [ 0, %if.end15.lr.ph ], [ %num.3, %start.loopexit ]
  %inl.addr.0201 = phi i32 [ %inl, %if.end15.lr.ph ], [ %inl.addr.3, %start.loopexit ]
  %in.addr.0200 = phi i8* [ %in, %if.end15.lr.ph ], [ %in.addr.3, %start.loopexit ]
  %cmp17.not = icmp eq i32 %10, 0
  br i1 %cmp17.not, label %if.end66, label %if.then19

if.then19:                                        ; preds = %if.end15
  %cmp20 = icmp sgt i32 %sub204, 0
  br i1 %cmp20, label %if.then22, label %if.end35

if.then22:                                        ; preds = %if.then19
  %11 = load i8*, i8** %obuf23, align 8, !tbaa !17
  %idxprom27 = sext i32 %add203 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %11, i64 %idxprom27
  %conv29173 = zext i32 %sub204 to i64
  %call30 = tail call i8* @memcpy(i8* noundef %arrayidx28, i8* noundef %in.addr.0200, i64 noundef %conv29173) #7
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0200, i64 %conv29173
  %sub31 = sub nsw i32 %inl.addr.0201, %sub204
  %add32 = add nsw i32 %sub204, %num.0202
  %12 = load i32, i32* %obuf_len, align 8, !tbaa !15
  %add34 = add nsw i32 %12, %sub204
  store i32 %add34, i32* %obuf_len, align 8, !tbaa !15
  %.pre.pre = load i32, i32* %obuf_off, align 4, !tbaa !16
  br label %if.end35

if.end35:                                         ; preds = %if.then22, %if.then19
  %.pre = phi i32 [ %.pre.pre, %if.then22 ], [ %.pre219, %if.then19 ]
  %13 = phi i32 [ %add34, %if.then22 ], [ %10, %if.then19 ]
  %in.addr.1 = phi i8* [ %add.ptr, %if.then22 ], [ %in.addr.0200, %if.then19 ]
  %inl.addr.1 = phi i32 [ %sub31, %if.then22 ], [ %inl.addr.0201, %if.then19 ]
  %num.1 = phi i32 [ %add32, %if.then22 ], [ %num.0202, %if.then19 ]
  br label %for.cond

for.cond:                                         ; preds = %if.end56, %if.end35
  %14 = phi i32 [ %sub60, %if.end56 ], [ %13, %if.end35 ]
  %15 = phi i32 [ %add58, %if.end56 ], [ %.pre, %if.end35 ]
  %16 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %17 = load i8*, i8** %obuf23, align 8, !tbaa !17
  %idxprom39 = sext i32 %15 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %17, i64 %idxprom39
  %call42 = tail call i32 @BIO_write(%struct.bio_st* noundef %16, i8* noundef %arrayidx40, i32 noundef %14) #7
  %cmp43 = icmp slt i32 %call42, 1
  br i1 %cmp43, label %if.then45, label %if.end56

if.then45:                                        ; preds = %for.cond
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  %cmp46 = icmp slt i32 %call42, 0
  br i1 %cmp46, label %if.then48, label %cleanup

if.then48:                                        ; preds = %if.then45
  %cmp49 = icmp sgt i32 %num.1, 0
  %cond = select i1 %cmp49, i32 %num.1, i32 %call42
  br label %cleanup

if.end56:                                         ; preds = %for.cond
  %18 = load i32, i32* %obuf_off, align 4, !tbaa !16
  %add58 = add nsw i32 %18, %call42
  store i32 %add58, i32* %obuf_off, align 4, !tbaa !16
  %19 = load i32, i32* %obuf_len, align 8, !tbaa !15
  %sub60 = sub nsw i32 %19, %call42
  store i32 %sub60, i32* %obuf_len, align 8, !tbaa !15
  %cmp62 = icmp eq i32 %sub60, 0
  br i1 %cmp62, label %if.end66, label %for.cond

if.end66:                                         ; preds = %if.end56, %if.end15
  %in.addr.2 = phi i8* [ %in.addr.0200, %if.end15 ], [ %in.addr.1, %if.end56 ]
  %inl.addr.2 = phi i32 [ %inl.addr.0201, %if.end15 ], [ %inl.addr.1, %if.end56 ]
  %num.2 = phi i32 [ %num.0202, %if.end15 ], [ %num.1, %if.end56 ]
  store i32 0, i32* %obuf_off, align 4, !tbaa !16
  br label %while.cond

while.cond:                                       ; preds = %if.end90, %if.end66
  %in.addr.3 = phi i8* [ %in.addr.2, %if.end66 ], [ %add.ptr93, %if.end90 ]
  %inl.addr.3 = phi i32 [ %inl.addr.2, %if.end66 ], [ %sub94, %if.end90 ]
  %num.3 = phi i32 [ %num.2, %if.end66 ], [ %add91, %if.end90 ]
  %20 = load i32, i32* %obuf_size, align 4, !tbaa !13
  %cmp69.not = icmp slt i32 %inl.addr.3, %20
  br i1 %cmp69.not, label %start.loopexit, label %while.body

while.body:                                       ; preds = %while.cond
  %21 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %call72 = tail call i32 @BIO_write(%struct.bio_st* noundef %21, i8* noundef %in.addr.3, i32 noundef %inl.addr.3) #7
  %cmp73 = icmp slt i32 %call72, 1
  br i1 %cmp73, label %if.then75, label %if.end90

if.then75:                                        ; preds = %while.body
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  %cmp76 = icmp slt i32 %call72, 0
  br i1 %cmp76, label %if.then78, label %cleanup

if.then78:                                        ; preds = %if.then75
  %cmp79 = icmp sgt i32 %num.3, 0
  %cond84 = select i1 %cmp79, i32 %num.3, i32 %call72
  br label %cleanup

if.end90:                                         ; preds = %while.body
  %add91 = add nsw i32 %call72, %num.3
  %idx.ext92172 = zext i32 %call72 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %in.addr.3, i64 %idx.ext92172
  %sub94 = sub nsw i32 %inl.addr.3, %call72
  %cmp95 = icmp eq i32 %sub94, 0
  br i1 %cmp95, label %cleanup, label %while.cond, !llvm.loop !18

cleanup:                                          ; preds = %if.end90, %if.then75, %if.then45, %if.end, %lor.lhs.false3, %entry, %if.then78, %if.then48, %if.then8
  %retval.0 = phi i32 [ %add14, %if.then8 ], [ %cond, %if.then48 ], [ %cond84, %if.then78 ], [ 0, %entry ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ], [ %num.1, %if.then45 ], [ %num.3, %if.then75 ], [ %add91, %if.end90 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.bio_f_buffer_ctx_struct* %1, null
  br i1 %cmp1, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp2 = icmp eq %struct.bio_st* %2, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %ibuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %.pre = load i32, i32* %ibuf_len, align 8, !tbaa !20
  br label %start

start:                                            ; preds = %if.end68, %if.end4
  %3 = phi i32 [ %.pre, %if.end4 ], [ %call50, %if.end68 ]
  %out.addr.0 = phi i8* [ %out, %if.end4 ], [ %out.addr.1, %if.end68 ]
  %outl.addr.0 = phi i32 [ %outl, %if.end4 ], [ %outl.addr.1, %if.end68 ]
  %num.0 = phi i32 [ 0, %if.end4 ], [ %num.1, %if.end68 ]
  %cmp5.not = icmp eq i32 %3, 0
  br i1 %cmp5.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %start
  %cmp7 = icmp sgt i32 %3, %outl.addr.0
  %spec.select = select i1 %cmp7, i32 %outl.addr.0, i32 %3
  %4 = load i8*, i8** %ibuf, align 8, !tbaa !21
  %5 = load i32, i32* %ibuf_off, align 4, !tbaa !22
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %conv = sext i32 %spec.select to i64
  %call = tail call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef %arrayidx, i64 noundef %conv) #7
  %6 = load i32, i32* %ibuf_off, align 4, !tbaa !22
  %add = add nsw i32 %6, %spec.select
  store i32 %add, i32* %ibuf_off, align 4, !tbaa !22
  %7 = load i32, i32* %ibuf_len, align 8, !tbaa !20
  %sub = sub nsw i32 %7, %spec.select
  store i32 %sub, i32* %ibuf_len, align 8, !tbaa !20
  %add12 = add nsw i32 %spec.select, %num.0
  %cmp13.not = icmp sgt i32 %outl.addr.0, %3
  br i1 %cmp13.not, label %if.end16, label %cleanup

if.end16:                                         ; preds = %if.then6
  %sub17 = sub nsw i32 %outl.addr.0, %spec.select
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.0, i64 %conv
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %start
  %out.addr.1 = phi i8* [ %add.ptr, %if.end16 ], [ %out.addr.0, %start ]
  %outl.addr.1 = phi i32 [ %sub17, %if.end16 ], [ %outl.addr.0, %start ]
  %num.1 = phi i32 [ %add12, %if.end16 ], [ %num.0, %start ]
  %8 = load i32, i32* %ibuf_size, align 8, !tbaa !23
  %cmp19 = icmp sgt i32 %outl.addr.1, %8
  %9 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  br i1 %cmp19, label %for.cond.preheader, label %if.end46

for.cond.preheader:                               ; preds = %if.end18
  %call23142 = tail call i32 @BIO_read(%struct.bio_st* noundef %9, i8* noundef %out.addr.1, i32 noundef %outl.addr.1) #7
  %cmp24143 = icmp slt i32 %call23142, 1
  br i1 %cmp24143, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end42, %for.cond.preheader
  %num.2.lcssa = phi i32 [ %num.1, %for.cond.preheader ], [ %add38, %if.end42 ]
  %call23.lcssa = phi i32 [ %call23142, %for.cond.preheader ], [ %call23, %if.end42 ]
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  %cmp27 = icmp slt i32 %call23.lcssa, 0
  br i1 %cmp27, label %if.then29, label %cleanup

if.then29:                                        ; preds = %if.then26
  %cmp30 = icmp sgt i32 %num.2.lcssa, 0
  %cond = select i1 %cmp30, i32 %num.2.lcssa, i32 %call23.lcssa
  br label %cleanup

if.end37:                                         ; preds = %for.cond.preheader, %if.end42
  %call23147 = phi i32 [ %call23, %if.end42 ], [ %call23142, %for.cond.preheader ]
  %num.2146 = phi i32 [ %add38, %if.end42 ], [ %num.1, %for.cond.preheader ]
  %outl.addr.2145 = phi i32 [ %sub45, %if.end42 ], [ %outl.addr.1, %for.cond.preheader ]
  %out.addr.2144 = phi i8* [ %add.ptr44, %if.end42 ], [ %out.addr.1, %for.cond.preheader ]
  %add38 = add nsw i32 %call23147, %num.2146
  %cmp39 = icmp eq i32 %outl.addr.2145, %call23147
  br i1 %cmp39, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end37
  %idx.ext43135 = zext i32 %call23147 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %out.addr.2144, i64 %idx.ext43135
  %sub45 = sub nsw i32 %outl.addr.2145, %call23147
  %10 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %call23 = tail call i32 @BIO_read(%struct.bio_st* noundef %10, i8* noundef %add.ptr44, i32 noundef %sub45) #7
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.end37

if.end46:                                         ; preds = %if.end18
  %11 = load i8*, i8** %ibuf, align 8, !tbaa !21
  %call50 = tail call i32 @BIO_read(%struct.bio_st* noundef %9, i8* noundef %11, i32 noundef %8) #7
  %cmp51 = icmp slt i32 %call50, 1
  br i1 %cmp51, label %if.then53, label %if.end68

if.then53:                                        ; preds = %if.end46
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  %cmp54 = icmp slt i32 %call50, 0
  br i1 %cmp54, label %if.then56, label %cleanup

if.then56:                                        ; preds = %if.then53
  %cmp57 = icmp sgt i32 %num.1, 0
  %cond62 = select i1 %cmp57, i32 %num.1, i32 %call50
  br label %cleanup

if.end68:                                         ; preds = %if.end46
  store i32 0, i32* %ibuf_off, align 4, !tbaa !22
  store i32 %call50, i32* %ibuf_len, align 8, !tbaa !20
  br label %start

cleanup:                                          ; preds = %if.then6, %if.end37, %if.then53, %if.then26, %if.end, %lor.lhs.false, %entry, %if.then56, %if.then29
  %retval.0 = phi i32 [ %cond, %if.then29 ], [ %cond62, %if.then56 ], [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ %num.2.lcssa, %if.then26 ], [ %num.1, %if.then53 ], [ %add38, %if.end37 ], [ %add12, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_puts(%struct.bio_st* noundef %b, i8* noundef %str) #2 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #8
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @buffer_write(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %conv) #9
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_gets(%struct.bio_st* noundef %b, i8* nocapture noundef writeonly %buf, i32 noundef %size) #2 {
entry:
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  %dec = add nsw i32 %size, -1
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #7
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %ibuf21 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %ibuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %ibuf_off37 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %.pre = load i32, i32* %ibuf_len, align 8, !tbaa !20
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.end, %entry
  %.ph = phi i32 [ %sub14, %for.end ], [ %.pre, %entry ]
  %size.addr.0.ph = phi i32 [ %sub, %for.end ], [ %dec, %entry ]
  %buf.addr.0.ph = phi i8* [ %buf.addr.2, %for.end ], [ %buf, %entry ]
  %num.0.ph = phi i32 [ %add, %for.end ], [ 0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end35
  %2 = phi i32 [ %call, %if.end35 ], [ %.ph, %for.cond.outer ]
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %3 = load i8*, i8** %ibuf21, align 8, !tbaa !21
  %4 = load i32, i32* %ibuf_off37, align 4, !tbaa !22
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %cmp490 = icmp sgt i32 %size.addr.0.ph, 0
  br i1 %cmp490, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then
  %5 = zext i32 %size.addr.0.ph to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %buf.addr.191 = phi i8* [ %buf.addr.0.ph, %for.body.preheader ], [ %incdec.ptr, %for.inc ]
  %arrayidx6 = getelementptr inbounds i8, i8* %arrayidx, i64 %indvars.iv
  %6 = load i8, i8* %arrayidx6, align 1, !tbaa !24
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.191, i64 1
  store i8 %6, i8* %buf.addr.191, align 1, !tbaa !24
  %7 = load i8, i8* %arrayidx6, align 1, !tbaa !24
  %cmp9 = icmp eq i8 %7, 10
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  %8 = trunc i64 %indvars.iv to i32
  %inc = add nuw nsw i32 %8, 1
  %.pre101 = load i32, i32* %ibuf_len, align 8, !tbaa !20
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %ibuf_len, align 8, !tbaa !20
  %10 = sext i32 %9 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %10
  %cmp4 = icmp ult i64 %indvars.iv.next, %5
  %11 = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %11, label %for.body, label %for.end.loopexit, !llvm.loop !25

for.end.loopexit:                                 ; preds = %for.inc
  %12 = trunc i64 %indvars.iv.next to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then, %if.then11
  %13 = phi i32 [ %.pre101, %if.then11 ], [ %2, %if.then ], [ %9, %for.end.loopexit ]
  %14 = phi i1 [ true, %if.then11 ], [ false, %if.then ], [ false, %for.end.loopexit ]
  %buf.addr.2 = phi i8* [ %incdec.ptr, %if.then11 ], [ %buf.addr.0.ph, %if.then ], [ %incdec.ptr, %for.end.loopexit ]
  %i.1 = phi i32 [ %inc, %if.then11 ], [ 0, %if.then ], [ %12, %for.end.loopexit ]
  %add = add nsw i32 %i.1, %num.0.ph
  %sub = sub nsw i32 %size.addr.0.ph, %i.1
  %sub14 = sub nsw i32 %13, %i.1
  store i32 %sub14, i32* %ibuf_len, align 8, !tbaa !20
  %15 = load i32, i32* %ibuf_off37, align 4, !tbaa !22
  %add16 = add nsw i32 %15, %i.1
  store i32 %add16, i32* %ibuf_off37, align 4, !tbaa !22
  %cmp17 = icmp eq i32 %sub, 0
  %or.cond = select i1 %14, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then19, label %for.cond.outer

if.then19:                                        ; preds = %for.end
  store i8 0, i8* %buf.addr.2, align 1, !tbaa !24
  br label %cleanup

if.else:                                          ; preds = %for.cond
  %16 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %17 = load i8*, i8** %ibuf21, align 8, !tbaa !21
  %18 = load i32, i32* %ibuf_size, align 8, !tbaa !23
  %call = tail call i32 @BIO_read(%struct.bio_st* noundef %16, i8* noundef %17, i32 noundef %18) #7
  %cmp22 = icmp slt i32 %call, 1
  br i1 %cmp22, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.else
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  store i8 0, i8* %buf.addr.0.ph, align 1, !tbaa !24
  %cmp25 = icmp slt i32 %call, 0
  br i1 %cmp25, label %if.then27, label %cleanup

if.then27:                                        ; preds = %if.then24
  %cmp28 = icmp sgt i32 %num.0.ph, 0
  %cond = select i1 %cmp28, i32 %num.0.ph, i32 %call
  br label %cleanup

if.end35:                                         ; preds = %if.else
  store i32 %call, i32* %ibuf_len, align 8, !tbaa !20
  store i32 0, i32* %ibuf_off37, align 4, !tbaa !22
  br label %for.cond

cleanup:                                          ; preds = %if.then24, %if.then27, %if.then19
  %retval.0 = phi i32 [ %add, %if.then19 ], [ %cond, %if.then27 ], [ %num.0.ph, %if.then24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @buffer_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %fake_buf = alloca [1 x i8], align 1
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb10
    i32 116, label %sw.bb12
    i32 13, label %sw.bb23
    i32 10, label %sw.bb37
    i32 122, label %sw.bb51
    i32 117, label %sw.bb75
    i32 101, label %sw.bb145
    i32 11, label %sw.bb153
    i32 12, label %sw.bb193
    i32 29, label %sw.bb203
  ]

sw.bb:                                            ; preds = %entry
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  store i32 0, i32* %ibuf_off, align 4, !tbaa !22
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  store i32 0, i32* %ibuf_len, align 8, !tbaa !20
  %obuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 7
  store i32 0, i32* %obuf_off, align 4, !tbaa !16
  %obuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  store i32 0, i32* %obuf_len, align 8, !tbaa !15
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %2, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %ibuf_len4 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %3 = load i32, i32* %ibuf_len4, align 8, !tbaa !20
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %sw.bb3
  %next_bio8 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %4 = load %struct.bio_st*, %struct.bio_st** %next_bio8, align 8, !tbaa !12
  %call9 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %4, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %obuf_len11 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  %5 = load i32, i32* %obuf_len11, align 8, !tbaa !15
  %conv = sext i32 %5 to i64
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %6 = load i8*, i8** %ibuf, align 8, !tbaa !21
  %ibuf_len13 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %7 = load i32, i32* %ibuf_len13, align 8, !tbaa !20
  %cmp14387 = icmp sgt i32 %7, 0
  br i1 %cmp14387, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %sw.bb12
  %ibuf_off16 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %8 = load i32, i32* %ibuf_off16, align 4, !tbaa !22
  %9 = sext i32 %8 to i64
  %wide.trip.count = zext i32 %7 to i64
  %min.iters.check = icmp ult i32 %7, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967292
  %10 = add nsw i64 %n.vec, -4
  %11 = lshr exact i64 %10, 2
  %12 = add nuw nsw i64 %11, 1
  %xtraiter = and i64 %12, 1
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %12, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %34, %vector.body ]
  %vec.phi395 = phi <2 x i64> [ zeroinitializer, %vector.ph.new ], [ %35, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %14 = add nsw i64 %index, %9
  %15 = getelementptr inbounds i8, i8* %6, i64 %14
  %16 = bitcast i8* %15 to <2 x i8>*
  %wide.load = load <2 x i8>, <2 x i8>* %16, align 1, !tbaa !24
  %17 = getelementptr inbounds i8, i8* %15, i64 2
  %18 = bitcast i8* %17 to <2 x i8>*
  %wide.load396 = load <2 x i8>, <2 x i8>* %18, align 1, !tbaa !24
  %19 = icmp eq <2 x i8> %wide.load, <i8 10, i8 10>
  %20 = icmp eq <2 x i8> %wide.load396, <i8 10, i8 10>
  %21 = zext <2 x i1> %19 to <2 x i64>
  %22 = zext <2 x i1> %20 to <2 x i64>
  %23 = add <2 x i64> %vec.phi, %21
  %24 = add <2 x i64> %vec.phi395, %22
  %index.next = or i64 %index, 4
  %25 = add nsw i64 %index.next, %9
  %26 = getelementptr inbounds i8, i8* %6, i64 %25
  %27 = bitcast i8* %26 to <2 x i8>*
  %wide.load.1 = load <2 x i8>, <2 x i8>* %27, align 1, !tbaa !24
  %28 = getelementptr inbounds i8, i8* %26, i64 2
  %29 = bitcast i8* %28 to <2 x i8>*
  %wide.load396.1 = load <2 x i8>, <2 x i8>* %29, align 1, !tbaa !24
  %30 = icmp eq <2 x i8> %wide.load.1, <i8 10, i8 10>
  %31 = icmp eq <2 x i8> %wide.load396.1, <i8 10, i8 10>
  %32 = zext <2 x i1> %30 to <2 x i64>
  %33 = zext <2 x i1> %31 to <2 x i64>
  %34 = add <2 x i64> %23, %32
  %35 = add <2 x i64> %24, %33
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !26

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa397.ph = phi <2 x i64> [ undef, %vector.ph ], [ %34, %vector.body ]
  %.lcssa.ph = phi <2 x i64> [ undef, %vector.ph ], [ %35, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %vec.phi.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %34, %vector.body ]
  %vec.phi395.unr = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %35, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %36 = add nsw i64 %index.unr, %9
  %37 = getelementptr inbounds i8, i8* %6, i64 %36
  %38 = bitcast i8* %37 to <2 x i8>*
  %wide.load.epil = load <2 x i8>, <2 x i8>* %38, align 1, !tbaa !24
  %39 = getelementptr inbounds i8, i8* %37, i64 2
  %40 = bitcast i8* %39 to <2 x i8>*
  %wide.load396.epil = load <2 x i8>, <2 x i8>* %40, align 1, !tbaa !24
  %41 = icmp eq <2 x i8> %wide.load.epil, <i8 10, i8 10>
  %42 = icmp eq <2 x i8> %wide.load396.epil, <i8 10, i8 10>
  %43 = zext <2 x i1> %41 to <2 x i64>
  %44 = zext <2 x i1> %42 to <2 x i64>
  %45 = add <2 x i64> %vec.phi.unr, %43
  %46 = add <2 x i64> %vec.phi395.unr, %44
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa397 = phi <2 x i64> [ %.lcssa397.ph, %middle.block.unr-lcssa ], [ %45, %vector.body.epil ]
  %.lcssa = phi <2 x i64> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %46, %vector.body.epil ]
  %bin.rdx = add <2 x i64> %.lcssa, %.lcssa397
  %47 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %ret.0388.ph = phi i64 [ 0, %for.body.lr.ph ], [ %47, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %ret.0388 = phi i64 [ %spec.select, %for.body ], [ %ret.0388.ph, %for.body.preheader ]
  %48 = add nsw i64 %indvars.iv, %9
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %48
  %49 = load i8, i8* %arrayidx, align 1, !tbaa !24
  %cmp18 = icmp eq i8 %49, 10
  %inc = zext i1 %cmp18 to i64
  %spec.select = add nuw nsw i64 %ret.0388, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !28

sw.bb23:                                          ; preds = %entry
  %obuf_len24 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  %50 = load i32, i32* %obuf_len24, align 8, !tbaa !15
  %conv25 = sext i32 %50 to i64
  %cmp26 = icmp eq i32 %50, 0
  br i1 %cmp26, label %if.then28, label %cleanup

if.then28:                                        ; preds = %sw.bb23
  %next_bio29 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %51 = load %struct.bio_st*, %struct.bio_st** %next_bio29, align 8, !tbaa !12
  %cmp30 = icmp eq %struct.bio_st* %51, null
  br i1 %cmp30, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.then28
  %call35 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %51, i32 noundef 13, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %ibuf_len38 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %52 = load i32, i32* %ibuf_len38, align 8, !tbaa !20
  %conv39 = sext i32 %52 to i64
  %cmp40 = icmp eq i32 %52, 0
  br i1 %cmp40, label %if.then42, label %cleanup

if.then42:                                        ; preds = %sw.bb37
  %next_bio43 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %53 = load %struct.bio_st*, %struct.bio_st** %next_bio43, align 8, !tbaa !12
  %cmp44 = icmp eq %struct.bio_st* %53, null
  br i1 %cmp44, label %cleanup, label %if.end47

if.end47:                                         ; preds = %if.then42
  %call49 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %53, i32 noundef 10, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  %ibuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %54 = load i32, i32* %ibuf_size, align 8, !tbaa !23
  %conv52 = sext i32 %54 to i64
  %cmp53 = icmp slt i64 %conv52, %num
  br i1 %cmp53, label %if.then55, label %sw.bb51.if.end67_crit_edge

sw.bb51.if.end67_crit_edge:                       ; preds = %sw.bb51
  %ibuf71.phi.trans.insert = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %.pre = load i8*, i8** %ibuf71.phi.trans.insert, align 8, !tbaa !21
  br label %if.end67

if.then55:                                        ; preds = %sw.bb51
  %cmp56 = icmp slt i64 %num, 1
  br i1 %cmp56, label %cleanup, label %if.end59

if.end59:                                         ; preds = %if.then55
  %call60 = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 292) #7
  %cmp61 = icmp eq i8* %call60, null
  br i1 %cmp61, label %malloc_error, label %if.end64

if.end64:                                         ; preds = %if.end59
  %ibuf65 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %55 = load i8*, i8** %ibuf65, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %55, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295) #7
  store i8* %call60, i8** %ibuf65, align 8, !tbaa !21
  br label %if.end67

if.end67:                                         ; preds = %sw.bb51.if.end67_crit_edge, %if.end64
  %56 = phi i8* [ %.pre, %sw.bb51.if.end67_crit_edge ], [ %call60, %if.end64 ]
  %ibuf_off68 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  store i32 0, i32* %ibuf_off68, align 4, !tbaa !22
  %conv69 = trunc i64 %num to i32
  %ibuf_len70 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  store i32 %conv69, i32* %ibuf_len70, align 8, !tbaa !20
  %sext = shl i64 %num, 32
  %conv73 = ashr exact i64 %sext, 32
  %call74 = tail call i8* @memcpy(i8* noundef %56, i8* noundef %ptr, i64 noundef %conv73) #7
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  %cmp76.not = icmp eq i8* %ptr, null
  br i1 %cmp76.not, label %if.else86, label %if.then78

if.then78:                                        ; preds = %sw.bb75
  %57 = bitcast i8* %ptr to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !30
  %cmp79 = icmp eq i32 %58, 0
  br i1 %cmp79, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.then78
  %conv82 = trunc i64 %num to i32
  %obuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 1
  %59 = load i32, i32* %obuf_size, align 4, !tbaa !13
  br label %if.end89

if.else:                                          ; preds = %if.then78
  %ibuf_size83 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %60 = load i32, i32* %ibuf_size83, align 8, !tbaa !23
  %conv84 = trunc i64 %num to i32
  br label %if.end89

if.else86:                                        ; preds = %sw.bb75
  %conv87 = trunc i64 %num to i32
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %if.else, %if.else86
  %ibs.0 = phi i32 [ %conv82, %if.then81 ], [ %60, %if.else ], [ %conv87, %if.else86 ]
  %obs.0 = phi i32 [ %59, %if.then81 ], [ %conv84, %if.else ], [ %conv87, %if.else86 ]
  %ibuf90 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %61 = load i8*, i8** %ibuf90, align 8, !tbaa !21
  %obuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 5
  %62 = load i8*, i8** %obuf, align 8, !tbaa !17
  %cmp91 = icmp sgt i32 %ibs.0, 4096
  br i1 %cmp91, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %if.end89
  %ibuf_size93 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %63 = load i32, i32* %ibuf_size93, align 8, !tbaa !23
  %cmp94.not = icmp eq i32 %ibs.0, %63
  br i1 %cmp94.not, label %if.end106, label %if.then96

if.then96:                                        ; preds = %land.lhs.true
  %cmp97 = icmp slt i64 %num, 1
  br i1 %cmp97, label %cleanup, label %if.end100

if.end100:                                        ; preds = %if.then96
  %call101 = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323) #7
  %cmp102 = icmp eq i8* %call101, null
  br i1 %cmp102, label %malloc_error, label %if.end106

if.end106:                                        ; preds = %if.end100, %land.lhs.true, %if.end89
  %p1.0 = phi i8* [ %call101, %if.end100 ], [ %61, %land.lhs.true ], [ %61, %if.end89 ]
  %cmp107 = icmp sgt i32 %obs.0, 4096
  br i1 %cmp107, label %land.lhs.true109, label %if.end124

land.lhs.true109:                                 ; preds = %if.end106
  %obuf_size110 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 1
  %64 = load i32, i32* %obuf_size110, align 4, !tbaa !13
  %cmp111.not = icmp eq i32 %obs.0, %64
  br i1 %cmp111.not, label %if.end124, label %if.then113

if.then113:                                       ; preds = %land.lhs.true109
  %call114 = tail call i8* @CRYPTO_malloc(i64 noundef %num, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 328) #7
  %cmp115 = icmp eq i8* %call114, null
  br i1 %cmp115, label %if.then117, label %if.end124

if.then117:                                       ; preds = %if.then113
  %65 = load i8*, i8** %ibuf90, align 8, !tbaa !21
  %cmp119.not = icmp eq i8* %p1.0, %65
  br i1 %cmp119.not, label %malloc_error, label %if.then121

if.then121:                                       ; preds = %if.then117
  tail call void @CRYPTO_free(i8* noundef %p1.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 331) #7
  br label %malloc_error

if.end124:                                        ; preds = %if.then113, %land.lhs.true109, %if.end106
  %p2.0 = phi i8* [ %call114, %if.then113 ], [ %62, %land.lhs.true109 ], [ %62, %if.end106 ]
  %66 = load i8*, i8** %ibuf90, align 8, !tbaa !21
  %cmp126.not = icmp eq i8* %66, %p1.0
  br i1 %cmp126.not, label %if.end134, label %if.then128

if.then128:                                       ; preds = %if.end124
  tail call void @CRYPTO_free(i8* noundef %66, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 336) #7
  store i8* %p1.0, i8** %ibuf90, align 8, !tbaa !21
  %ibuf_off131 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  store i32 0, i32* %ibuf_off131, align 4, !tbaa !22
  %ibuf_len132 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  store i32 0, i32* %ibuf_len132, align 8, !tbaa !20
  %ibuf_size133 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  store i32 %ibs.0, i32* %ibuf_size133, align 8, !tbaa !23
  br label %if.end134

if.end134:                                        ; preds = %if.then128, %if.end124
  %67 = load i8*, i8** %obuf, align 8, !tbaa !17
  %cmp136.not = icmp eq i8* %67, %p2.0
  br i1 %cmp136.not, label %cleanup, label %if.then138

if.then138:                                       ; preds = %if.end134
  tail call void @CRYPTO_free(i8* noundef %67, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 343) #7
  store i8* %p2.0, i8** %obuf, align 8, !tbaa !17
  %obuf_off141 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 7
  store i32 0, i32* %obuf_off141, align 4, !tbaa !16
  %obuf_len142 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  store i32 0, i32* %obuf_len142, align 8, !tbaa !15
  %obuf_size143 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 1
  store i32 %obs.0, i32* %obuf_size143, align 4, !tbaa !13
  br label %cleanup

sw.bb145:                                         ; preds = %entry
  %next_bio146 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %68 = load %struct.bio_st*, %struct.bio_st** %next_bio146, align 8, !tbaa !12
  %cmp147 = icmp eq %struct.bio_st* %68, null
  br i1 %cmp147, label %cleanup, label %if.end150

if.end150:                                        ; preds = %sw.bb145
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %69 = load %struct.bio_st*, %struct.bio_st** %next_bio146, align 8, !tbaa !12
  %call152 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %69, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  br label %cleanup

sw.bb153:                                         ; preds = %entry
  %next_bio154 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %70 = load %struct.bio_st*, %struct.bio_st** %next_bio154, align 8, !tbaa !12
  %cmp155 = icmp eq %struct.bio_st* %70, null
  br i1 %cmp155, label %cleanup, label %if.end158

if.end158:                                        ; preds = %sw.bb153
  %obuf_len159 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 6
  %71 = load i32, i32* %obuf_len159, align 8, !tbaa !15
  %cmp160 = icmp slt i32 %71, 1
  br i1 %cmp160, label %if.then162, label %for.cond166.preheader

for.cond166.preheader:                            ; preds = %if.end158
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %72 = load i32, i32* %obuf_len159, align 8, !tbaa !15
  %cmp168386 = icmp sgt i32 %72, 0
  br i1 %cmp168386, label %if.then170.lr.ph, label %if.else186

if.then170.lr.ph:                                 ; preds = %for.cond166.preheader
  %obuf172 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 5
  %obuf_off173 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 7
  br label %if.then170

if.then162:                                       ; preds = %if.end158
  %call164 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %70, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

if.then170:                                       ; preds = %if.then170.lr.ph, %if.end182
  %73 = phi i32 [ %72, %if.then170.lr.ph ], [ %79, %if.end182 ]
  %74 = load %struct.bio_st*, %struct.bio_st** %next_bio154, align 8, !tbaa !12
  %75 = load i8*, i8** %obuf172, align 8, !tbaa !17
  %76 = load i32, i32* %obuf_off173, align 4, !tbaa !16
  %idxprom174 = sext i32 %76 to i64
  %arrayidx175 = getelementptr inbounds i8, i8* %75, i64 %idxprom174
  %call177 = tail call i32 @BIO_write(%struct.bio_st* noundef %74, i8* noundef %arrayidx175, i32 noundef %73) #7
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #7
  %cmp178 = icmp slt i32 %call177, 1
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.then170
  %conv181 = sext i32 %call177 to i64
  br label %cleanup

if.end182:                                        ; preds = %if.then170
  %77 = load i32, i32* %obuf_off173, align 4, !tbaa !16
  %add184 = add nsw i32 %77, %call177
  store i32 %add184, i32* %obuf_off173, align 4, !tbaa !16
  %78 = load i32, i32* %obuf_len159, align 8, !tbaa !15
  %sub = sub nsw i32 %78, %call177
  store i32 %sub, i32* %obuf_len159, align 8, !tbaa !15
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #7
  %79 = load i32, i32* %obuf_len159, align 8, !tbaa !15
  %cmp168 = icmp sgt i32 %79, 0
  br i1 %cmp168, label %if.then170, label %if.else186

if.else186:                                       ; preds = %if.end182, %for.cond166.preheader
  store i32 0, i32* %obuf_len159, align 8, !tbaa !15
  %obuf_off188 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 7
  store i32 0, i32* %obuf_off188, align 4, !tbaa !16
  %80 = load %struct.bio_st*, %struct.bio_st** %next_bio154, align 8, !tbaa !12
  %call192 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %80, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

sw.bb193:                                         ; preds = %entry
  %81 = bitcast i8* %ptr to %struct.bio_st*
  %ibuf_size194 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 0
  %82 = load i32, i32* %ibuf_size194, align 8, !tbaa !23
  %conv195 = sext i32 %82 to i64
  %call196 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef %81, i32 noundef 117, i64 noundef %conv195, i32 noundef 0) #7
  %tobool.not = icmp eq i64 %call196, 0
  br i1 %tobool.not, label %if.then201, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb193
  %obuf_size197 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 1
  %83 = load i32, i32* %obuf_size197, align 4, !tbaa !13
  %conv198 = sext i32 %83 to i64
  %call199 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef %81, i32 noundef 117, i64 noundef %conv198, i32 noundef 1) #7
  %tobool200.not = icmp eq i64 %call199, 0
  br i1 %tobool200.not, label %if.then201, label %cleanup

if.then201:                                       ; preds = %lor.lhs.false, %sw.bb193
  br label %cleanup

sw.bb203:                                         ; preds = %entry
  %84 = getelementptr inbounds [1 x i8], [1 x i8]* %fake_buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %84) #10
  %call204 = call i32 @buffer_read(%struct.bio_st* noundef nonnull %b, i8* noundef nonnull %84, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %84) #10
  %ibuf_len205 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %85 = load i32, i32* %ibuf_len205, align 8, !tbaa !20
  %conv206 = sext i32 %85 to i64
  %cmp207 = icmp slt i64 %conv206, %num
  %spec.select385 = select i1 %cmp207, i64 %conv206, i64 %num
  %ibuf213 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %86 = load i8*, i8** %ibuf213, align 8, !tbaa !21
  %ibuf_off214 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %87 = load i32, i32* %ibuf_off214, align 4, !tbaa !22
  %idxprom215 = sext i32 %87 to i64
  %arrayidx216 = getelementptr inbounds i8, i8* %86, i64 %idxprom215
  %call217 = call i8* @memcpy(i8* noundef %ptr, i8* noundef %arrayidx216, i64 noundef %spec.select385) #7
  br label %cleanup

sw.default:                                       ; preds = %entry
  %next_bio218 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %88 = load %struct.bio_st*, %struct.bio_st** %next_bio218, align 8, !tbaa !12
  %cmp219 = icmp eq %struct.bio_st* %88, null
  br i1 %cmp219, label %cleanup, label %if.end222

if.end222:                                        ; preds = %sw.default
  %call224 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %88, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #7
  br label %cleanup

malloc_error:                                     ; preds = %if.then117, %if.then121, %if.end100, %if.end59
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 409, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.buffer_ctrl, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %for.body, %middle.block, %sw.bb12, %if.end, %if.end7, %sw.bb10, %if.end67, %if.end150, %if.then162, %if.else186, %sw.bb203, %if.end222, %if.end33, %sw.bb23, %if.end47, %sw.bb37, %if.then138, %if.end134, %if.then201, %lor.lhs.false, %sw.default, %sw.bb153, %sw.bb145, %if.then96, %if.then55, %if.then42, %if.then28, %sw.bb3, %sw.bb, %malloc_error, %if.then180
  %retval.0 = phi i64 [ %conv181, %if.then180 ], [ 0, %malloc_error ], [ 0, %sw.bb ], [ 0, %sw.bb3 ], [ 0, %if.then28 ], [ 0, %if.then42 ], [ 0, %if.then55 ], [ 0, %if.then96 ], [ 0, %sw.bb145 ], [ 0, %sw.bb153 ], [ 0, %sw.default ], [ %call224, %if.end222 ], [ %spec.select385, %sw.bb203 ], [ 1, %lor.lhs.false ], [ 0, %if.then201 ], [ %call164, %if.then162 ], [ %call192, %if.else186 ], [ %call152, %if.end150 ], [ 1, %if.then138 ], [ 1, %if.end134 ], [ 1, %if.end67 ], [ %call49, %if.end47 ], [ %conv39, %sw.bb37 ], [ %call35, %if.end33 ], [ %conv25, %sw.bb23 ], [ %conv, %sw.bb10 ], [ %call9, %if.end7 ], [ %call, %if.end ], [ 0, %sw.bb12 ], [ %47, %middle.block ], [ %spec.select, %for.body ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_new(%struct.bio_st* nocapture noundef writeonly %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ibuf_size = bitcast i8* %call to i32*
  store i32 4096, i32* %ibuf_size, align 8, !tbaa !23
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 52) #7
  %ibuf = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %ibuf to i8**
  store i8* %call1, i8** %0, align 8, !tbaa !21
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 54) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %obuf_size = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %obuf_size to i32*
  store i32 4096, i32* %1, align 4, !tbaa !13
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58) #7
  %obuf = getelementptr inbounds i8, i8* %call, i64 24
  %2 = bitcast i8* %obuf to i8**
  store i8* %call6, i8** %2, align 8, !tbaa !17
  %cmp8 = icmp eq i8* %call6, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %3 = load i8*, i8** %0, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60) #7
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !31
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end11, %if.then9, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then9 ], [ 1, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @buffer_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %2 = load i8*, i8** %ibuf, align 8, !tbaa !21
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78) #7
  %obuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 5
  %3 = load i8*, i8** %obuf, align 8, !tbaa !17
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79) #7
  %4 = load i8*, i8** %ptr, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80) #7
  store i8* null, i8** %ptr, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !31
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @buffer_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
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
!4 = !{!5, !6, i64 64}
!5 = !{!"bio_st", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !11, i64 112, !6, i64 128}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"crypto_ex_data_st", !6, i64 0, !6, i64 8}
!12 = !{!5, !6, i64 72}
!13 = !{!14, !9, i64 4}
!14 = !{!"bio_f_buffer_ctx_struct", !9, i64 0, !9, i64 4, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !9, i64 32, !9, i64 36}
!15 = !{!14, !9, i64 32}
!16 = !{!14, !9, i64 36}
!17 = !{!14, !6, i64 24}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!14, !9, i64 16}
!21 = !{!14, !6, i64 8}
!22 = !{!14, !9, i64 20}
!23 = !{!14, !9, i64 0}
!24 = !{!7, !7, i64 0}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19, !27}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = distinct !{!28, !19, !29, !27}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!9, !9, i64 0}
!31 = !{!5, !9, i64 40}
!32 = !{!5, !9, i64 48}
