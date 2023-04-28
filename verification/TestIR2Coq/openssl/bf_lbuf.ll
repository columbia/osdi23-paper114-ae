; ModuleID = 'crypto/bio/bf_lbuf.c'
source_filename = "crypto/bio/bf_lbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bio_linebuffer_ctx_struct = type { i8*, i32, i32 }

@methods_linebuffer = internal constant %struct.bio_method_st { i32 532, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @linebuffer_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @linebuffer_read, i32 (%struct.bio_st*, i8*)* @linebuffer_puts, i32 (%struct.bio_st*, i8*, i32)* @linebuffer_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @linebuffer_ctrl, i32 (%struct.bio_st*)* @linebuffer_new, i32 (%struct.bio_st*)* @linebuffer_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @linebuffer_callback_ctrl }, align 8
@.str = private unnamed_addr constant [11 x i8] c"linebuffer\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"crypto/bio/bf_lbuf.c\00", align 1
@__func__.linebuffer_ctrl = private unnamed_addr constant [16 x i8] c"linebuffer_ctrl\00", align 1
@__func__.linebuffer_new = private unnamed_addr constant [15 x i8] c"linebuffer_new\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_linebuffer() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_linebuffer
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %cmp = icmp eq i8* %in, null
  %cmp1 = icmp slt i32 %inl, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup179, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_linebuffer_ctx_struct**
  %1 = load %struct.bio_linebuffer_ctx_struct*, %struct.bio_linebuffer_ctx_struct** %0, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.bio_linebuffer_ctx_struct* %1, null
  br i1 %cmp2, label %cleanup179, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp4 = icmp eq %struct.bio_st* %2, null
  br i1 %cmp4, label %cleanup179, label %if.end6

if.end6:                                          ; preds = %lor.lhs.false3
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %obuf_size = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 1
  %obuf_len = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  %obuf = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 0
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.end6, %do.cond
  %inl.addr.0 = phi i32 [ %inl, %if.end6 ], [ %inl.addr.4.ph, %do.cond ]
  %num.0 = phi i32 [ 0, %if.end6 ], [ %num.4.ph, %do.cond ]
  %in.addr.0 = phi i8* [ %in, %if.end6 ], [ %in.addr.4.ph, %do.cond ]
  %idx.ext364 = zext i32 %inl.addr.0 to i64
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.0, i64 %idx.ext364
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %p.0343 = phi i8* [ %incdec.ptr, %for.inc ], [ %in.addr.0, %land.rhs.preheader ]
  %3 = load i8, i8* %p.0343, align 1, !tbaa !13
  %cmp8.not = icmp eq i8 %3, 10
  br i1 %cmp8.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0343, i64 1
  %cmp7 = icmp ult i8* %incdec.ptr, %add.ptr
  br i1 %cmp7, label %land.rhs, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %land.rhs, %for.inc
  %p.0.lcssa = phi i8* [ %p.0343, %land.rhs ], [ %incdec.ptr, %for.inc ]
  %cmp11 = icmp eq i8 %3, 10
  %p.1.idx = zext i1 %cmp11 to i64
  %p.1 = getelementptr i8, i8* %p.0.lcssa, i64 %p.1.idx
  %sub.ptr.lhs.cast = ptrtoint i8* %p.1 to i64
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %for.end
  %inl.addr.1 = phi i32 [ %inl.addr.0, %for.end ], [ %inl.addr.2, %cleanup ]
  %num.1 = phi i32 [ %num.0, %for.end ], [ %num.2, %cleanup ]
  %in.addr.1 = phi i8* [ %in.addr.0, %for.end ], [ %in.addr.2, %cleanup ]
  br i1 %cmp11, label %land.rhs20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %while.cond
  %sub.ptr.rhs.cast = ptrtoint i8* %in.addr.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = load i32, i32* %obuf_size, align 8, !tbaa !16
  %5 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %sub = sub nsw i32 %4, %5
  %conv17 = sext i32 %sub to i64
  %cmp18 = icmp sgt i64 %sub.ptr.sub, %conv17
  %cmp22303 = icmp sgt i32 %5, 0
  %or.cond378 = select i1 %cmp18, i1 %cmp22303, i1 false
  br i1 %or.cond378, label %while.body, label %lor.lhs.false114

land.rhs20:                                       ; preds = %while.cond
  %6 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %cmp22 = icmp sgt i32 %6, 0
  br i1 %cmp22, label %land.rhs20.while.body_crit_edge, label %land.lhs.true.loopexit

land.rhs20.while.body_crit_edge:                  ; preds = %land.rhs20
  %.pre357 = load i32, i32* %obuf_size, align 8, !tbaa !16
  %.pre359 = sub nsw i32 %.pre357, %6
  %.pre360 = ptrtoint i8* %in.addr.1 to i64
  %.pre361 = sub i64 %sub.ptr.lhs.cast, %.pre360
  br label %while.body

while.body:                                       ; preds = %lor.lhs.false16, %land.rhs20.while.body_crit_edge
  %sub.ptr.sub31.pre-phi = phi i64 [ %.pre361, %land.rhs20.while.body_crit_edge ], [ %sub.ptr.sub, %lor.lhs.false16 ]
  %sub28.pre-phi = phi i32 [ %.pre359, %land.rhs20.while.body_crit_edge ], [ %sub, %lor.lhs.false16 ]
  %7 = phi i32 [ %6, %land.rhs20.while.body_crit_edge ], [ %5, %lor.lhs.false16 ]
  %cmp32 = icmp sgt i64 %sub.ptr.sub31.pre-phi, 0
  br i1 %cmp32, label %if.then34, label %if.end78

if.then34:                                        ; preds = %while.body
  %conv35 = sext i32 %sub28.pre-phi to i64
  %cmp39.not = icmp sgt i64 %sub.ptr.sub31.pre-phi, %conv35
  %8 = load i8*, i8** %obuf, align 8, !tbaa !19
  %idxprom67327 = zext i32 %7 to i64
  %arrayidx68 = getelementptr inbounds i8, i8* %8, i64 %idxprom67327
  br i1 %cmp39.not, label %if.else64, label %if.then41

if.then41:                                        ; preds = %if.then34
  %call = tail call i8* @memcpy(i8* noundef nonnull %arrayidx68, i8* noundef %in.addr.1, i64 noundef %sub.ptr.sub31.pre-phi) #5
  %9 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %10 = trunc i64 %sub.ptr.sub31.pre-phi to i32
  %conv51 = add i32 %9, %10
  store i32 %conv51, i32* %obuf_len, align 4, !tbaa !18
  %conv57 = sub i32 %inl.addr.1, %10
  %conv63 = add i32 %num.1, %10
  br label %if.end78

if.else64:                                        ; preds = %if.then34
  %call70 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx68, i8* noundef %in.addr.1, i64 noundef %conv35) #5
  %11 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %add72 = add nsw i32 %11, %sub28.pre-phi
  store i32 %add72, i32* %obuf_len, align 4, !tbaa !18
  %sub73 = sub nsw i32 %inl.addr.1, %sub28.pre-phi
  %add.ptr75 = getelementptr inbounds i8, i8* %in.addr.1, i64 %conv35
  %add76 = add nsw i32 %sub28.pre-phi, %num.1
  br label %if.end78

if.end78:                                         ; preds = %if.then41, %if.else64, %while.body
  %12 = phi i32 [ %conv51, %if.then41 ], [ %add72, %if.else64 ], [ %7, %while.body ]
  %inl.addr.2 = phi i32 [ %conv57, %if.then41 ], [ %sub73, %if.else64 ], [ %inl.addr.1, %while.body ]
  %num.2 = phi i32 [ %conv63, %if.then41 ], [ %add76, %if.else64 ], [ %num.1, %while.body ]
  %in.addr.2 = phi i8* [ %p.1, %if.then41 ], [ %add.ptr75, %if.else64 ], [ %in.addr.1, %while.body ]
  %13 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %14 = load i8*, i8** %obuf, align 8, !tbaa !19
  %call82 = tail call i32 @BIO_write(%struct.bio_st* noundef %13, i8* noundef %14, i32 noundef %12) #5
  %cmp83 = icmp slt i32 %call82, 1
  br i1 %cmp83, label %if.then85, label %if.end97

if.then85:                                        ; preds = %if.end78
  store i32 %7, i32* %obuf_len, align 4, !tbaa !18
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  %cmp87 = icmp slt i32 %call82, 0
  br i1 %cmp87, label %if.then89, label %cleanup179

if.then89:                                        ; preds = %if.then85
  %cmp90 = icmp sgt i32 %num.2, 0
  %cond = select i1 %cmp90, i32 %num.2, i32 %call82
  br label %cleanup179

if.end97:                                         ; preds = %if.end78
  %15 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %cmp99 = icmp sgt i32 %15, %call82
  br i1 %cmp99, label %if.then101, label %cleanup

if.then101:                                       ; preds = %if.end97
  %16 = load i8*, i8** %obuf, align 8, !tbaa !19
  %idx.ext104328 = zext i32 %call82 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %16, i64 %idx.ext104328
  %sub107 = sub nsw i32 %15, %call82
  %conv108 = sext i32 %sub107 to i64
  %call109 = tail call i8* @memmove(i8* noundef %16, i8* noundef nonnull %add.ptr105, i64 noundef %conv108) #5
  %.pre358 = load i32, i32* %obuf_len, align 4, !tbaa !18
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then101
  %17 = phi i32 [ %15, %if.end97 ], [ %.pre358, %if.then101 ]
  %sub112 = sub nsw i32 %17, %call82
  store i32 %sub112, i32* %obuf_len, align 4, !tbaa !18
  br label %while.cond, !llvm.loop !20

lor.lhs.false114:                                 ; preds = %lor.lhs.false16
  %conv119 = sext i32 %4 to i64
  %cmp120 = icmp sgt i64 %sub.ptr.sub, %conv119
  br i1 %cmp120, label %land.lhs.true, label %do.cond.thread

do.cond.thread:                                   ; preds = %lor.lhs.false114
  %cmp163319 = icmp sgt i32 %inl.addr.1, 0
  br i1 %cmp163319, label %if.then168, label %cleanup179

land.lhs.true.loopexit:                           ; preds = %land.rhs20
  %.pre362 = ptrtoint i8* %in.addr.1 to i64
  %.pre363 = sub i64 %sub.ptr.lhs.cast, %.pre362
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.loopexit, %lor.lhs.false114
  %sub.ptr.sub124.pre-phi = phi i64 [ %.pre363, %land.lhs.true.loopexit ], [ %sub.ptr.sub, %lor.lhs.false114 ]
  %cmp125 = icmp sgt i64 %sub.ptr.sub124.pre-phi, 0
  br i1 %cmp125, label %if.then127, label %do.cond

if.then127:                                       ; preds = %land.lhs.true
  %18 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %conv132 = trunc i64 %sub.ptr.sub124.pre-phi to i32
  %call133 = tail call i32 @BIO_write(%struct.bio_st* noundef %18, i8* noundef %in.addr.1, i32 noundef %conv132) #5
  %cmp134 = icmp slt i32 %call133, 1
  br i1 %cmp134, label %if.then136, label %if.end151

if.then136:                                       ; preds = %if.then127
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  %cmp137 = icmp slt i32 %call133, 0
  br i1 %cmp137, label %if.then139, label %cleanup179

if.then139:                                       ; preds = %if.then136
  %cmp140 = icmp sgt i32 %num.1, 0
  %cond145 = select i1 %cmp140, i32 %num.1, i32 %call133
  br label %cleanup179

if.end151:                                        ; preds = %if.then127
  %add152 = add nsw i32 %call133, %num.1
  %idx.ext153330 = zext i32 %call133 to i64
  %add.ptr154 = getelementptr inbounds i8, i8* %in.addr.1, i64 %idx.ext153330
  %sub155 = sub nsw i32 %inl.addr.1, %call133
  br label %do.cond

do.cond:                                          ; preds = %if.end151, %land.lhs.true
  %inl.addr.4.ph = phi i32 [ %inl.addr.1, %land.lhs.true ], [ %sub155, %if.end151 ]
  %num.4.ph = phi i32 [ %num.1, %land.lhs.true ], [ %add152, %if.end151 ]
  %in.addr.4.ph = phi i8* [ %in.addr.1, %land.lhs.true ], [ %add.ptr154, %if.end151 ]
  %cmp163 = icmp sgt i32 %inl.addr.4.ph, 0
  %19 = select i1 %cmp11, i1 %cmp163, i1 false
  br i1 %19, label %land.rhs.preheader, label %do.end, !llvm.loop !21

do.end:                                           ; preds = %do.cond
  br i1 %cmp163, label %do.end.if.then168_crit_edge, label %cleanup179

do.end.if.then168_crit_edge:                      ; preds = %do.end
  %.pre = load i32, i32* %obuf_len, align 4, !tbaa !18
  br label %if.then168

if.then168:                                       ; preds = %do.end.if.then168_crit_edge, %do.cond.thread
  %20 = phi i32 [ %5, %do.cond.thread ], [ %.pre, %do.end.if.then168_crit_edge ]
  %inl.addr.4.ph320326 = phi i32 [ %inl.addr.1, %do.cond.thread ], [ %inl.addr.4.ph, %do.end.if.then168_crit_edge ]
  %num.4.ph321325 = phi i32 [ %num.1, %do.cond.thread ], [ %num.4.ph, %do.end.if.then168_crit_edge ]
  %in.addr.4.ph322324 = phi i8* [ %in.addr.1, %do.cond.thread ], [ %in.addr.4.ph, %do.end.if.then168_crit_edge ]
  %21 = load i8*, i8** %obuf, align 8, !tbaa !19
  %idxprom171 = sext i32 %20 to i64
  %arrayidx172 = getelementptr inbounds i8, i8* %21, i64 %idxprom171
  %conv173331 = zext i32 %inl.addr.4.ph320326 to i64
  %call174 = tail call i8* @memcpy(i8* noundef %arrayidx172, i8* noundef %in.addr.4.ph322324, i64 noundef %conv173331) #5
  %22 = load i32, i32* %obuf_len, align 4, !tbaa !18
  %add176 = add nsw i32 %22, %inl.addr.4.ph320326
  store i32 %add176, i32* %obuf_len, align 4, !tbaa !18
  %add177 = add nsw i32 %num.4.ph321325, %inl.addr.4.ph320326
  br label %cleanup179

cleanup179:                                       ; preds = %if.then85, %if.then89, %do.cond.thread, %if.then139, %if.then136, %do.end, %if.then168, %if.end, %lor.lhs.false3, %entry
  %retval.4 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false3 ], [ 0, %if.end ], [ %add177, %if.then168 ], [ %num.4.ph, %do.end ], [ %cond145, %if.then139 ], [ %num.1, %if.then136 ], [ %num.1, %do.cond.thread ], [ %num.2, %if.then85 ], [ %cond, %if.then89 ]
  ret i32 %retval.4
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp1 = icmp eq %struct.bio_st* %0, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %0, i8* noundef nonnull %out, i32 noundef %outl) #5
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_puts(%struct.bio_st* noundef %b, i8* noundef %str) #2 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #6
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @linebuffer_write(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_gets(%struct.bio_st* nocapture noundef readonly %b, i8* noundef %buf, i32 noundef %size) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef nonnull %0, i8* noundef %buf, i32 noundef %size) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @linebuffer_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %ptr1 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 10
  %0 = bitcast i8** %ptr1 to %struct.bio_linebuffer_ctx_struct**
  %1 = load %struct.bio_linebuffer_ctx_struct*, %struct.bio_linebuffer_ctx_struct** %0, align 8, !tbaa !4
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 13, label %sw.bb5
    i32 117, label %sw.bb19
    i32 101, label %sw.bb55
    i32 11, label %sw.bb63
    i32 12, label %sw.bb105
  ]

sw.bb:                                            ; preds = %entry
  %obuf_len = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  store i32 0, i32* %obuf_len, align 4, !tbaa !18
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %2 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %2, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %2, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %obuf_len4 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  %3 = load i32, i32* %obuf_len4, align 4, !tbaa !18
  %conv = sext i32 %3 to i64
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %obuf_len6 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  %4 = load i32, i32* %obuf_len6, align 4, !tbaa !18
  %conv7 = sext i32 %4 to i64
  %cmp8 = icmp eq i32 %4, 0
  br i1 %cmp8, label %if.then10, label %cleanup

if.then10:                                        ; preds = %sw.bb5
  %next_bio11 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %5 = load %struct.bio_st*, %struct.bio_st** %next_bio11, align 8, !tbaa !12
  %cmp12 = icmp eq %struct.bio_st* %5, null
  br i1 %cmp12, label %cleanup, label %if.end15

if.end15:                                         ; preds = %if.then10
  %call17 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %5, i32 noundef 13, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %cmp20 = icmp sgt i64 %num, 2147483647
  br i1 %cmp20, label %cleanup, label %if.end23

if.end23:                                         ; preds = %sw.bb19
  %conv24 = trunc i64 %num to i32
  %obuf = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 0
  %cmp25 = icmp sgt i32 %conv24, 10240
  br i1 %cmp25, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.end23
  %obuf_size = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 1
  %6 = load i32, i32* %obuf_size, align 8, !tbaa !16
  %cmp27.not = icmp eq i32 %6, %conv24
  br i1 %cmp27.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %land.lhs.true
  %sext = shl i64 %num, 32
  %conv30 = ashr exact i64 %sext, 32
  %call31 = tail call i8* @CRYPTO_malloc(i64 noundef %conv30, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238) #5
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %malloc_error, label %if.end36

if.end36:                                         ; preds = %if.then29
  %.pre209 = load i8*, i8** %obuf, align 8, !tbaa !19
  %cmp38.not = icmp eq i8* %.pre209, %call31
  br i1 %cmp38.not, label %cleanup, label %if.then40

if.then40:                                        ; preds = %if.end36
  %obuf_len41 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  %7 = load i32, i32* %obuf_len41, align 4, !tbaa !18
  %cmp42 = icmp sgt i32 %7, %conv24
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then40
  store i32 %conv24, i32* %obuf_len41, align 4, !tbaa !18
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then40
  %8 = phi i32 [ %conv24, %if.then44 ], [ %7, %if.then40 ]
  %conv49 = sext i32 %8 to i64
  %call50 = tail call i8* @memcpy(i8* noundef nonnull %call31, i8* noundef %.pre209, i64 noundef %conv49) #5
  %9 = load i8*, i8** %obuf, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %9, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 247) #5
  store i8* %call31, i8** %obuf, align 8, !tbaa !19
  %obuf_size53 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 1
  store i32 %conv24, i32* %obuf_size53, align 8, !tbaa !16
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  %next_bio56 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %10 = load %struct.bio_st*, %struct.bio_st** %next_bio56, align 8, !tbaa !12
  %cmp57 = icmp eq %struct.bio_st* %10, null
  br i1 %cmp57, label %cleanup, label %if.end60

if.end60:                                         ; preds = %sw.bb55
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %11 = load %struct.bio_st*, %struct.bio_st** %next_bio56, align 8, !tbaa !12
  %call62 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %11, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %next_bio64 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %12 = load %struct.bio_st*, %struct.bio_st** %next_bio64, align 8, !tbaa !12
  %cmp65 = icmp eq %struct.bio_st* %12, null
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %sw.bb63
  %obuf_len69 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 2
  %13 = load i32, i32* %obuf_len69, align 4, !tbaa !18
  %cmp70 = icmp slt i32 %13, 1
  br i1 %cmp70, label %if.then72, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end68
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %14 = load i32, i32* %obuf_len69, align 4, !tbaa !18
  %cmp77207 = icmp sgt i32 %14, 0
  br i1 %cmp77207, label %if.then79.lr.ph, label %if.else

if.then79.lr.ph:                                  ; preds = %for.cond.preheader
  %obuf81 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 0
  br label %if.then79

if.then72:                                        ; preds = %if.end68
  %call74 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %12, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

if.then79:                                        ; preds = %if.then79.lr.ph, %if.end98
  %15 = phi i32 [ %14, %if.then79.lr.ph ], [ %21, %if.end98 ]
  %16 = load %struct.bio_st*, %struct.bio_st** %next_bio64, align 8, !tbaa !12
  %17 = load i8*, i8** %obuf81, align 8, !tbaa !19
  %call83 = tail call i32 @BIO_write(%struct.bio_st* noundef %16, i8* noundef %17, i32 noundef %15) #5
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef nonnull %b) #5
  %cmp84 = icmp slt i32 %call83, 1
  br i1 %cmp84, label %if.then86, label %if.end88

if.then86:                                        ; preds = %if.then79
  %conv87 = sext i32 %call83 to i64
  br label %cleanup

if.end88:                                         ; preds = %if.then79
  %18 = load i32, i32* %obuf_len69, align 4, !tbaa !18
  %cmp90 = icmp sgt i32 %18, %call83
  br i1 %cmp90, label %if.then92, label %if.end98

if.then92:                                        ; preds = %if.end88
  %19 = load i8*, i8** %obuf81, align 8, !tbaa !19
  %idx.ext206 = zext i32 %call83 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext206
  %sub = sub nsw i32 %18, %call83
  %conv96 = sext i32 %sub to i64
  %call97 = tail call i8* @memmove(i8* noundef %19, i8* noundef nonnull %add.ptr, i64 noundef %conv96) #5
  %.pre = load i32, i32* %obuf_len69, align 4, !tbaa !18
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %if.end88
  %20 = phi i32 [ %.pre, %if.then92 ], [ %18, %if.end88 ]
  %sub100 = sub nsw i32 %20, %call83
  store i32 %sub100, i32* %obuf_len69, align 4, !tbaa !18
  tail call void @BIO_clear_flags(%struct.bio_st* noundef nonnull %b, i32 noundef 15) #5
  %21 = load i32, i32* %obuf_len69, align 4, !tbaa !18
  %cmp77 = icmp sgt i32 %21, 0
  br i1 %cmp77, label %if.then79, label %if.else

if.else:                                          ; preds = %if.end98, %for.cond.preheader
  store i32 0, i32* %obuf_len69, align 4, !tbaa !18
  %22 = load %struct.bio_st*, %struct.bio_st** %next_bio64, align 8, !tbaa !12
  %call104 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %22, i32 noundef 11, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

sw.bb105:                                         ; preds = %entry
  %23 = bitcast i8* %ptr to %struct.bio_st*
  %obuf_size106 = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 1
  %24 = load i32, i32* %obuf_size106, align 8, !tbaa !16
  %conv107 = sext i32 %24 to i64
  %call108 = tail call i64 @BIO_int_ctrl(%struct.bio_st* noundef %23, i32 noundef 117, i64 noundef %conv107, i32 noundef 1) #5
  %tobool.not = icmp ne i64 %call108, 0
  %spec.select = zext i1 %tobool.not to i64
  br label %cleanup

sw.default:                                       ; preds = %entry
  %next_bio111 = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %25 = load %struct.bio_st*, %struct.bio_st** %next_bio111, align 8, !tbaa !12
  %cmp112 = icmp eq %struct.bio_st* %25, null
  br i1 %cmp112, label %cleanup, label %if.end115

if.end115:                                        ; preds = %sw.default
  %call117 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %25, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

malloc_error:                                     ; preds = %if.then29
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.linebuffer_ctrl, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %land.lhs.true, %sw.bb105, %if.end, %sw.bb3, %if.end60, %if.then72, %if.else, %if.end115, %if.end15, %sw.bb5, %if.end46, %if.end36, %sw.default, %sw.bb63, %sw.bb55, %sw.bb19, %if.then10, %sw.bb, %malloc_error, %if.then86
  %retval.0 = phi i64 [ %conv87, %if.then86 ], [ 0, %malloc_error ], [ 0, %sw.bb ], [ 0, %if.then10 ], [ 0, %sw.bb19 ], [ 0, %sw.bb55 ], [ 0, %sw.bb63 ], [ 0, %sw.default ], [ %call117, %if.end115 ], [ %call74, %if.then72 ], [ %call104, %if.else ], [ %call62, %if.end60 ], [ 1, %if.end46 ], [ 1, %if.end36 ], [ %call17, %if.end15 ], [ %conv7, %sw.bb5 ], [ %conv, %sw.bb3 ], [ %call, %if.end ], [ %spec.select, %sw.bb105 ], [ 1, %land.lhs.true ], [ 1, %if.end23 ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_new(%struct.bio_st* nocapture noundef writeonly %bi) #2 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 16, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.linebuffer_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 10240, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64) #5
  %obuf = bitcast i8* %call to i8**
  store i8* %call1, i8** %obuf, align 8, !tbaa !19
  %cmp3 = icmp eq i8* %call1, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.linebuffer_new, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 32, i32 noundef 786688, i8* noundef null) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %obuf_size = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %obuf_size to i32*
  store i32 10240, i32* %0, align 8, !tbaa !16
  %obuf_len = getelementptr inbounds i8, i8* %call, i64 12
  %1 = bitcast i8* %obuf_len to i32*
  store i32 0, i32* %1, align 4, !tbaa !18
  %init = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 5
  store i32 1, i32* %init, align 8, !tbaa !22
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 10
  store i8* %call, i8** %ptr, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct.bio_st, %struct.bio_st* %bi, i64 0, i32 7
  store i32 0, i32* %flags, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @linebuffer_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %ptr = getelementptr inbounds %struct.bio_st, %struct.bio_st* %a, i64 0, i32 10
  %0 = bitcast i8** %ptr to %struct.bio_linebuffer_ctx_struct**
  %1 = load %struct.bio_linebuffer_ctx_struct*, %struct.bio_linebuffer_ctx_struct** %0, align 8, !tbaa !4
  %obuf = getelementptr inbounds %struct.bio_linebuffer_ctx_struct, %struct.bio_linebuffer_ctx_struct* %1, i64 0, i32 0
  %2 = load i8*, i8** %obuf, align 8, !tbaa !19
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 86) #5
  %3 = load i8*, i8** %ptr, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %3, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87) #5
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
define internal i64 @linebuffer_callback_ctrl(%struct.bio_st* nocapture noundef readonly %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %next_bio = getelementptr inbounds %struct.bio_st, %struct.bio_st* %b, i64 0, i32 11
  %0 = load %struct.bio_st*, %struct.bio_st** %next_bio, align 8, !tbaa !12
  %cmp = icmp eq %struct.bio_st* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %0, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #5
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i64 @BIO_int_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

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
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !9, i64 8}
!17 = !{!"bio_linebuffer_ctx_struct", !6, i64 0, !9, i64 8, !9, i64 12}
!18 = !{!17, !9, i64 12}
!19 = !{!17, !6, i64 0}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!5, !9, i64 40}
!23 = !{!5, !9, i64 48}
