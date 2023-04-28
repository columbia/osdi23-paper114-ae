; ModuleID = 'crypto/bio/bf_readbuff.c'
source_filename = "crypto/bio/bf_readbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_f_buffer_ctx_struct = type { i32, i32, i8*, i32, i32, i8*, i32, i32 }

@methods_readbuffer = internal constant %struct.bio_method_st { i32 521, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @readbuffer_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @readbuffer_read, i32 (%struct.bio_st*, i8*)* @readbuffer_puts, i32 (%struct.bio_st*, i8*, i32)* @readbuffer_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @readbuffer_ctrl, i32 (%struct.bio_st*)* @readbuffer_new, i32 (%struct.bio_st*)* @readbuffer_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @readbuffer_callback_ctrl }, align 8
@.str = private unnamed_addr constant [11 x i8] c"readbuffer\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"crypto/bio/bf_readbuff.c\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_readbuffer() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_readbuffer
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @readbuffer_write(%struct.bio_st* nocapture noundef readnone %b, i8* nocapture noundef readnone %in, i32 noundef %inl) #0 {
entry:
  ret i32 0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @readbuffer_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  %cmp1 = icmp eq i32 %outl, 0
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
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #4
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %.pre = load i32, i32* %ibuf_len, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %if.end6
  %3 = phi i32 [ %.pre, %if.end6 ], [ %call29, %if.end38 ]
  %out.addr.0 = phi i8* [ %out, %if.end6 ], [ %out.addr.1, %if.end38 ]
  %outl.addr.0 = phi i32 [ %outl, %if.end6 ], [ %outl.addr.1, %if.end38 ]
  %num.0 = phi i32 [ 0, %if.end6 ], [ %num.1, %if.end38 ]
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end20, label %if.then8

if.then8:                                         ; preds = %for.cond
  %cmp9 = icmp sgt i32 %3, %outl.addr.0
  %spec.select = select i1 %cmp9, i32 %outl.addr.0, i32 %3
  %4 = load i8*, i8** %ibuf, align 8, !tbaa !15
  %5 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %conv = sext i32 %spec.select to i64
  %call = tail call i8* @memcpy(i8* noundef %out.addr.0, i8* noundef %arrayidx, i64 noundef %conv) #4
  %6 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %add = add nsw i32 %6, %spec.select
  store i32 %add, i32* %ibuf_off, align 4, !tbaa !16
  %7 = load i32, i32* %ibuf_len, align 8, !tbaa !13
  %sub = sub nsw i32 %7, %spec.select
  store i32 %sub, i32* %ibuf_len, align 8, !tbaa !13
  %add14 = add nsw i32 %spec.select, %num.0
  %cmp15.not = icmp sgt i32 %outl.addr.0, %3
  br i1 %cmp15.not, label %if.end18, label %cleanup

if.end18:                                         ; preds = %if.then8
  %sub19 = sub nsw i32 %outl.addr.0, %spec.select
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.0, i64 %conv
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %for.cond
  %out.addr.1 = phi i8* [ %add.ptr, %if.end18 ], [ %out.addr.0, %for.cond ]
  %outl.addr.1 = phi i32 [ %sub19, %if.end18 ], [ %outl.addr.0, %for.cond ]
  %num.1 = phi i32 [ %add14, %if.end18 ], [ %num.0, %for.cond ]
  %call21 = tail call fastcc i32 @readbuffer_resize(%struct.bio_f_buffer_ctx_struct* noundef nonnull %1, i32 noundef %outl.addr.1) #5
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.end20
  %8 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %9 = load i8*, i8** %ibuf, align 8, !tbaa !15
  %10 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %idx.ext27 = sext i32 %10 to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %9, i64 %idx.ext27
  %call29 = tail call i32 @BIO_read(%struct.bio_st* noundef %8, i8* noundef %add.ptr28, i32 noundef %outl.addr.1) #4
  %cmp30 = icmp slt i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end23
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #4
  %cmp33 = icmp slt i32 %call29, 0
  br i1 %cmp33, label %if.then35, label %cleanup

if.then35:                                        ; preds = %if.then32
  %cmp36 = icmp sgt i32 %num.1, 0
  %cond = select i1 %cmp36, i32 %num.1, i32 %call29
  br label %cleanup

if.end38:                                         ; preds = %if.end23
  store i32 %call29, i32* %ibuf_len, align 8, !tbaa !13
  br label %for.cond

cleanup:                                          ; preds = %if.end20, %if.then8, %if.then32, %if.end, %lor.lhs.false3, %entry, %if.then35
  %retval.0 = phi i32 [ %cond, %if.then35 ], [ 0, %entry ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ], [ %num.1, %if.then32 ], [ 0, %if.end20 ], [ %add14, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @readbuffer_puts(%struct.bio_st* nocapture noundef readnone %b, i8* nocapture noundef readnone %str) #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @readbuffer_gets(%struct.bio_st* noundef %b, i8* nocapture noundef writeonly %buf, i32 noundef %size) #2 {
entry:
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %size, -1
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #4
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %2 = load i32, i32* %ibuf_len, align 8, !tbaa !13
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end21

if.then2:                                         ; preds = %if.end
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %3 = load i8*, i8** %ibuf, align 8, !tbaa !15
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %4 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %cmp5116 = icmp sgt i32 %size, 1
  br i1 %cmp5116, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then2
  %5 = zext i32 %dec to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %buf.addr.0117 = phi i8* [ %buf, %for.body.preheader ], [ %incdec.ptr, %for.inc ]
  %arrayidx = getelementptr inbounds i8, i8* %add.ptr, i64 %indvars.iv
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %incdec.ptr = getelementptr inbounds i8, i8* %buf.addr.0117, i64 1
  store i8 %6, i8* %buf.addr.0117, align 1, !tbaa !17
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !17
  %cmp8 = icmp eq i8 %7, 10
  br i1 %cmp8, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %8 = trunc i64 %indvars.iv to i32
  %inc = add nuw nsw i32 %8, 1
  %.pre = load i32, i32* %ibuf_len, align 8, !tbaa !13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %ibuf_len, align 8, !tbaa !13
  %10 = sext i32 %9 to i64
  %cmp4 = icmp slt i64 %indvars.iv.next, %10
  %cmp5 = icmp ult i64 %indvars.iv.next, %5
  %11 = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %11, label %for.body, label %for.end.loopexit, !llvm.loop !18

for.end.loopexit:                                 ; preds = %for.inc
  %12 = trunc i64 %indvars.iv.next to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then2, %if.then10
  %13 = phi i32 [ %.pre, %if.then10 ], [ %2, %if.then2 ], [ %9, %for.end.loopexit ]
  %14 = phi i1 [ true, %if.then10 ], [ false, %if.then2 ], [ false, %for.end.loopexit ]
  %buf.addr.1 = phi i8* [ %incdec.ptr, %if.then10 ], [ %buf, %if.then2 ], [ %incdec.ptr, %for.end.loopexit ]
  %num_chars.1 = phi i32 [ %inc, %if.then10 ], [ 0, %if.then2 ], [ %12, %for.end.loopexit ]
  %sub = sub nsw i32 %dec, %num_chars.1
  %sub14 = sub nsw i32 %13, %num_chars.1
  store i32 %sub14, i32* %ibuf_len, align 8, !tbaa !13
  %15 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %add16 = add nsw i32 %15, %num_chars.1
  store i32 %add16, i32* %ibuf_off, align 4, !tbaa !16
  %cmp17 = icmp eq i32 %sub, 0
  %or.cond = select i1 %14, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  store i8 0, i8* %buf.addr.1, align 1, !tbaa !17
  br label %cleanup

if.end21:                                         ; preds = %for.end, %if.end
  %size.addr.0 = phi i32 [ %sub, %for.end ], [ %dec, %if.end ]
  %buf.addr.2 = phi i8* [ %buf.addr.1, %for.end ], [ %buf, %if.end ]
  %num.0 = phi i32 [ %num_chars.1, %for.end ], [ 0, %if.end ]
  %add22 = add nsw i32 %size.addr.0, 1
  %call = tail call fastcc i32 @readbuffer_resize(%struct.bio_f_buffer_ctx_struct* noundef nonnull %1, i32 noundef %add22) #5
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %cleanup, label %if.end25

if.end25:                                         ; preds = %if.end21
  %ibuf_off27 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %cmp31121 = icmp sgt i32 %size.addr.0, 0
  br i1 %cmp31121, label %for.body33.lr.ph, label %for.end53

for.body33.lr.ph:                                 ; preds = %if.end25
  %ibuf26 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %16 = load i8*, i8** %ibuf26, align 8, !tbaa !15
  %17 = load i32, i32* %ibuf_off27, align 4, !tbaa !16
  %idx.ext28 = sext i32 %17 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %16, i64 %idx.ext28
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  br label %for.body33

for.body33:                                       ; preds = %if.end40, %for.body33.lr.ph
  %i.0125 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc52, %if.end40 ]
  %p.0124 = phi i8* [ %add.ptr29, %for.body33.lr.ph ], [ %incdec.ptr50, %if.end40 ]
  %num.1123 = phi i32 [ %num.0, %for.body33.lr.ph ], [ %inc42, %if.end40 ]
  %buf.addr.3122 = phi i8* [ %buf.addr.2, %for.body33.lr.ph ], [ %incdec.ptr41, %if.end40 ]
  %18 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %call34 = tail call i32 @BIO_read(%struct.bio_st* noundef %18, i8* noundef %p.0124, i32 noundef 1) #4
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %for.body33
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #4
  store i8 0, i8* %buf.addr.3122, align 1, !tbaa !17
  %cmp38 = icmp sgt i32 %num.1123, 0
  %cond = select i1 %cmp38, i32 %num.1123, i32 %call34
  br label %cleanup

if.end40:                                         ; preds = %for.body33
  %19 = load i8, i8* %p.0124, align 1, !tbaa !17
  %incdec.ptr41 = getelementptr inbounds i8, i8* %buf.addr.3122, i64 1
  store i8 %19, i8* %buf.addr.3122, align 1, !tbaa !17
  %inc42 = add nuw nsw i32 %num.1123, 1
  %20 = load i32, i32* %ibuf_off27, align 4, !tbaa !16
  %inc44 = add nsw i32 %20, 1
  store i32 %inc44, i32* %ibuf_off27, align 4, !tbaa !16
  %21 = load i8, i8* %p.0124, align 1, !tbaa !17
  %cmp46 = icmp ne i8 %21, 10
  %incdec.ptr50 = getelementptr inbounds i8, i8* %p.0124, i64 1
  %inc52 = add nuw nsw i32 %i.0125, 1
  %cmp31 = icmp slt i32 %inc52, %size.addr.0
  %or.cond130 = select i1 %cmp46, i1 %cmp31, i1 false
  br i1 %or.cond130, label %for.body33, label %for.end53, !llvm.loop !20

for.end53:                                        ; preds = %if.end40, %if.end25
  %buf.addr.4 = phi i8* [ %buf.addr.2, %if.end25 ], [ %incdec.ptr41, %if.end40 ]
  %num.2 = phi i32 [ %num.0, %if.end25 ], [ %inc42, %if.end40 ]
  store i8 0, i8* %buf.addr.4, align 1, !tbaa !17
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry, %for.end53, %if.then37, %if.then19
  %retval.0 = phi i32 [ %num_chars.1, %if.then19 ], [ %cond, %if.then37 ], [ %num.2, %for.end53 ], [ 0, %entry ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @readbuffer_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  switch i32 %cmd, label %sw.default [
    i32 2, label %sw.bb
    i32 128, label %sw.bb6
    i32 1, label %sw.bb6
    i32 133, label %sw.bb18
    i32 3, label %sw.bb18
    i32 10, label %sw.bb21
    i32 12, label %cleanup
    i32 11, label %cleanup
  ]

sw.bb:                                            ; preds = %entry
  %ibuf_len = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %2 = load i32, i32* %ibuf_len, align 8, !tbaa !13
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %3 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp2 = icmp eq %struct.bio_st* %3, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %3, i32 noundef 2, i64 noundef %num, i8* noundef %ptr) #4
  br label %cleanup

sw.bb6:                                           ; preds = %entry, %entry
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %4 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %ibuf_len7 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %5 = load i32, i32* %ibuf_len7, align 8, !tbaa !13
  %add = add nsw i32 %5, %4
  %cmp8 = icmp slt i64 %num, 0
  %conv = sext i32 %add to i64
  %cmp10 = icmp slt i64 %conv, %num
  %or.cond = select i1 %cmp8, i1 true, i1 %cmp10
  br i1 %or.cond, label %cleanup, label %if.end13

if.end13:                                         ; preds = %sw.bb6
  %conv14 = trunc i64 %num to i32
  store i32 %conv14, i32* %ibuf_off, align 4, !tbaa !16
  %conv16 = sub i32 %add, %conv14
  store i32 %conv16, i32* %ibuf_len7, align 8, !tbaa !13
  br label %cleanup

sw.bb18:                                          ; preds = %entry, %entry
  %ibuf_off19 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 4
  %6 = load i32, i32* %ibuf_off19, align 4, !tbaa !16
  %conv20 = sext i32 %6 to i64
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %ibuf_len22 = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 3
  %7 = load i32, i32* %ibuf_len22, align 8, !tbaa !13
  %conv23 = sext i32 %7 to i64
  %cmp24 = icmp eq i32 %7, 0
  br i1 %cmp24, label %if.then26, label %cleanup

if.then26:                                        ; preds = %sw.bb21
  %next_bio27 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %8 = load %struct.bio_st*, %struct.bio_st** %next_bio27, align 8, !tbaa !12
  %cmp28 = icmp eq %struct.bio_st* %8, null
  br i1 %cmp28, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.then26
  %call33 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %8, i32 noundef 10, i64 noundef %num, i8* noundef %ptr) #4
  br label %cleanup

sw.default:                                       ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end13, %sw.bb18, %sw.default, %if.end31, %sw.bb21, %entry, %entry, %if.then26, %sw.bb6, %if.end, %sw.bb
  %retval.0 = phi i64 [ 0, %sw.bb ], [ 1, %if.end ], [ 0, %sw.bb6 ], [ 0, %if.then26 ], [ 0, %sw.default ], [ %call33, %if.end31 ], [ %conv23, %sw.bb21 ], [ %conv20, %sw.bb18 ], [ 1, %if.end13 ], [ %call, %if.end4 ], [ 1, %entry ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @readbuffer_new(%struct.bio_st* nocapture noundef writeonly %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 40, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 55) #4
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ibuf_size = bitcast i8* %call to i32*
  store i32 4096, i32* %ibuf_size, align 8, !tbaa !21
  %call1 = tail call i8* @CRYPTO_zalloc(i64 noundef 4096, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60) #4
  %ibuf = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %ibuf to i8**
  store i8* %call1, i8** %0, align 8, !tbaa !15
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 62) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !22
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end5 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @readbuffer_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_f_buffer_ctx_struct**
  %1 = load %struct.bio_f_buffer_ctx_struct*, %struct.bio_f_buffer_ctx_struct** %0, align 8, !tbaa !4
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %1, i64 0, i32 2
  %2 = load i8*, i8** %ibuf, align 8, !tbaa !15
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 79) #4
  %3 = load i8*, i8** %ptr, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 80) #4
  store i8* null, i8** %ptr, align 8, !tbaa !4
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 5
  store i32 0, i32* %init, align 8, !tbaa !22
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @readbuffer_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @readbuffer_resize(%struct.bio_f_buffer_ctx_struct* nocapture noundef %ctx, i32 noundef %sz) unnamed_addr #2 {
entry:
  %ibuf_off = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %ctx, i64 0, i32 4
  %0 = load i32, i32* %ibuf_off, align 4, !tbaa !16
  %sub = add i32 %sz, 4095
  %add1 = add i32 %sub, %0
  %div = sdiv i32 %add1, 4096
  %mul = shl nsw i32 %div, 12
  %ibuf_size = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %ctx, i64 0, i32 0
  %1 = load i32, i32* %ibuf_size, align 8, !tbaa !21
  %cmp = icmp sgt i32 %mul, %1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %ibuf = getelementptr inbounds %struct.bio_f_buffer_ctx_struct, %struct.bio_f_buffer_ctx_struct* %ctx, i64 0, i32 2
  %2 = load i8*, i8** %ibuf, align 8, !tbaa !15
  %conv = sext i32 %mul to i64
  %call = tail call i8* @CRYPTO_realloc(i8* noundef %2, i64 noundef %conv, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97) #4
  %cmp2 = icmp eq i8* %call, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  store i8* %call, i8** %ibuf, align 8, !tbaa !15
  store i32 %mul, i32* %ibuf_size, align 8, !tbaa !21
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ], [ 1, %entry ]
  ret i32 %retval.0
}

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
!13 = !{!14, !9, i64 16}
!14 = !{!"bio_f_buffer_ctx_struct", !9, i64 0, !9, i64 4, !6, i64 8, !9, i64 16, !9, i64 20, !6, i64 24, !9, i64 32, !9, i64 36}
!15 = !{!14, !6, i64 8}
!16 = !{!14, !9, i64 20}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!14, !9, i64 0}
!22 = !{!5, !9, i64 40}
!23 = !{!5, !9, i64 48}
