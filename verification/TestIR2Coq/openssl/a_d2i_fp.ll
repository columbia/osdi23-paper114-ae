; ModuleID = 'crypto/asn1/a_d2i_fp.c'
source_filename = "crypto/asn1/a_d2i_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.ASN1_ITEM_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_d2i_fp.c\00", align 1
@__func__.ASN1_d2i_fp = private unnamed_addr constant [12 x i8] c"ASN1_d2i_fp\00", align 1
@__func__.ASN1_item_d2i_fp_ex = private unnamed_addr constant [20 x i8] c"ASN1_item_d2i_fp_ex\00", align 1
@__func__.asn1_d2i_read_bio = private unnamed_addr constant [18 x i8] c"asn1_d2i_read_bio\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_d2i_fp(i8* ()* nocapture noundef readnone %xnew, i8* (i8**, i8**, i64)* nocapture noundef readonly %d2i, %struct._IO_FILE* noundef %in, i8** noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_d2i_fp, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %in to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i8* @ASN1_d2i_bio(i8* ()* undef, i8* (i8**, i8**, i64)* noundef %d2i, %struct.bio_st* noundef nonnull %call1, i8** noundef %x) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call3, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #2

declare %struct.bio_method_st* @BIO_s_file() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_d2i_bio(i8* ()* nocapture readnone %xnew, i8* (i8**, i8**, i64)* nocapture noundef readonly %d2i, %struct.bio_st* noundef %in, i8** noundef %x) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.buf_mem_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.buf_mem_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %b, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %call = call i32 @asn1_d2i_read_bio(%struct.bio_st* noundef %in, %struct.buf_mem_st** noundef nonnull %b) #5
  %cmp = icmp slt i32 %call, 0
  %.pre = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !4
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %.pre, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !8
  store i8* %2, i8** %p, align 8, !tbaa !4
  %conv5 = zext i32 %call to i64
  %call1 = call i8* %d2i(i8** noundef %x, i8** noundef nonnull %p, i64 noundef %conv5) #4
  br label %err

err:                                              ; preds = %entry, %if.end
  %ret.0 = phi i8* [ %call1, %if.end ], [ null, %entry ]
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %.pre) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i8* %ret.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @asn1_d2i_read_bio(%struct.bio_st* noundef %in, %struct.buf_mem_st** nocapture noundef writeonly %pb) local_unnamed_addr #0 {
entry:
  %q = alloca i8*, align 8
  %slen = alloca i64, align 8
  %tag = alloca i32, align 4
  %xclass = alloca i32, align 4
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = bitcast i64* %slen to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6
  %3 = bitcast i32* %xclass to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #4
  %cmp = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.asn1_d2i_read_bio, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup144

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ERR_set_mark() #4
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.outer.backedge, %if.end
  %eos.0.ph = phi i32 [ 0, %if.end ], [ %eos.0.ph.be, %for.cond.outer.backedge ]
  %off.0.ph = phi i64 [ 0, %if.end ], [ %add51, %for.cond.outer.backedge ]
  %len.0.ph = phi i64 [ 0, %if.end ], [ %len.1274, %for.cond.outer.backedge ]
  %tobool59 = icmp ne i32 %eos.0.ph, 0
  %cmp131 = icmp eq i32 %eos.0.ph, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.end129
  %off.0 = phi i64 [ %add125, %if.end129 ], [ %off.0.ph, %for.cond.outer ]
  %len.0 = phi i64 [ %len.6, %if.end129 ], [ %len.0.ph, %for.cond.outer ]
  %sub = sub i64 %len.0, %off.0
  %cmp2 = icmp ult i64 %sub, 9
  br i1 %cmp2, label %if.then3, label %if.end29.thread

if.end29.thread:                                  ; preds = %for.cond
  %4 = load i8*, i8** %data, align 8, !tbaa !8
  %arrayidx31271 = getelementptr inbounds i8, i8* %4, i64 %off.0
  store i8* %arrayidx31271, i8** %q, align 8, !tbaa !4
  br label %if.end36

if.then3:                                         ; preds = %for.cond
  %sub4 = sub nuw nsw i64 8, %sub
  %add = add i64 %sub4, %len.0
  %cmp5 = icmp ult i64 %add, %len.0
  br i1 %cmp5, label %err.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call7 = call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %add) #4
  %tobool.not = icmp eq i64 %call7, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false
  %5 = load i8*, i8** %data, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %len.0
  %conv = trunc i64 %sub4 to i32
  %call10 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef %arrayidx, i32 noundef %conv) #4
  %cmp11 = icmp slt i32 %call10, 0
  %cmp13 = icmp eq i64 %sub, 0
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %err.sink.split, label %if.end16

if.end16:                                         ; preds = %if.end9
  %cmp17 = icmp sgt i32 %call10, 0
  br i1 %cmp17, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end16
  %conv20255 = zext i32 %call10 to i64
  %add21 = add i64 %len.0, %conv20255
  %cmp22 = icmp ult i64 %add21, %len.0
  br i1 %cmp22, label %err.sink.split, label %if.then19.if.end29_crit_edge

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  %.pre268 = sub i64 %add21, %off.0
  br label %if.end29

if.end29:                                         ; preds = %if.then19.if.end29_crit_edge, %if.end16
  %sub32.pre-phi = phi i64 [ %.pre268, %if.then19.if.end29_crit_edge ], [ %sub, %if.end16 ]
  %len.1 = phi i64 [ %add21, %if.then19.if.end29_crit_edge ], [ %len.0, %if.end16 ]
  %6 = load i8*, i8** %data, align 8, !tbaa !8
  %arrayidx31 = getelementptr inbounds i8, i8* %6, i64 %off.0
  store i8* %arrayidx31, i8** %q, align 8, !tbaa !4
  %cmp33 = icmp eq i64 %sub32.pre-phi, 0
  br i1 %cmp33, label %err, label %if.end36

if.end36:                                         ; preds = %if.end29.thread, %if.end29
  %arrayidx31275 = phi i8* [ %arrayidx31271, %if.end29.thread ], [ %arrayidx31, %if.end29 ]
  %len.1274 = phi i64 [ %len.0, %if.end29.thread ], [ %len.1, %if.end29 ]
  %sub32.pre-phi273 = phi i64 [ %sub, %if.end29.thread ], [ %sub32.pre-phi, %if.end29 ]
  %call37 = call i32 @ASN1_get_object(i8** noundef nonnull %q, i64* noundef nonnull %slen, i32* noundef nonnull %tag, i32* noundef nonnull %xclass, i64 noundef %sub32.pre-phi273) #4
  %and = and i32 %call37, 128
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end48, label %if.then39

if.then39:                                        ; preds = %if.end36
  %call40 = call i64 @ERR_peek_last_error() #4
  %call41 = call fastcc i32 @ERR_GET_REASON(i64 noundef %call40) #5
  %cmp43.not = icmp eq i32 %call41, 155
  br i1 %cmp43.not, label %cleanup.thread, label %err

cleanup.thread:                                   ; preds = %if.then39
  %call47 = call i32 @ERR_pop_to_mark() #4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %if.end36
  %7 = load i8*, i8** %q, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arrayidx31275 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sext = shl i64 %sub.ptr.sub, 32
  %conv50 = ashr exact i64 %sext, 32
  %add51 = add i64 %conv50, %off.0
  %and52 = and i32 %call37, 1
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end48
  %cmp55 = icmp eq i32 %eos.0.ph, -1
  br i1 %cmp55, label %err.sink.split, label %if.end58

if.end58:                                         ; preds = %if.then54
  %inc = add nuw i32 %eos.0.ph, 1
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.end58, %if.then66
  %eos.0.ph.be = phi i32 [ %dec, %if.then66 ], [ %inc, %if.end58 ]
  br label %for.cond.outer

if.else:                                          ; preds = %if.end48
  %8 = load i64, i64* %slen, align 8
  %cmp61 = icmp eq i64 %8, 0
  %or.cond158 = select i1 %tobool59, i1 %cmp61, i1 false
  %9 = load i32, i32* %tag, align 4
  %cmp64 = icmp eq i32 %9, 0
  %or.cond159 = select i1 %or.cond158, i1 %cmp64, i1 false
  br i1 %or.cond159, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.else
  %dec = add i32 %eos.0.ph, -1
  %cmp67 = icmp eq i32 %dec, 0
  br i1 %cmp67, label %for.end, label %for.cond.outer.backedge

if.else72:                                        ; preds = %if.else
  %sub73 = sub i64 %len.1274, %add51
  %cmp74 = icmp ugt i64 %8, %sub73
  br i1 %cmp74, label %if.then76, label %if.end124

if.then76:                                        ; preds = %if.else72
  %sub78 = sub i64 %8, %sub73
  %cmp79 = icmp ugt i64 %sub78, 2147483647
  %10 = xor i64 %len.1274, -1
  %cmp83 = icmp ugt i64 %sub78, %10
  %or.cond245 = select i1 %cmp79, i1 true, i1 %cmp83
  br i1 %or.cond245, label %err.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then76
  %cmp87.not263 = icmp eq i64 %sub78, 0
  br i1 %cmp87.not263, label %if.end124, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %cleanup117
  %chunk_max.0266 = phi i64 [ %spec.select, %cleanup117 ], [ 16384, %while.cond.preheader ]
  %len.2265 = phi i64 [ %len.3.lcssa, %cleanup117 ], [ %len.1274, %while.cond.preheader ]
  %want.1264 = phi i64 [ %sub96, %cleanup117 ], [ %sub78, %while.cond.preheader ]
  %cmp89 = icmp ugt i64 %want.1264, %chunk_max.0266
  %cond = select i1 %cmp89, i64 %chunk_max.0266, i64 %want.1264
  %add91 = add i64 %cond, %len.2265
  %call92 = call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %add91) #4
  %tobool93.not = icmp eq i64 %call92, 0
  br i1 %tobool93.not, label %err.sink.split, label %if.end95

if.end95:                                         ; preds = %while.body
  %sub96 = sub i64 %want.1264, %cond
  %cmp98.not260 = icmp eq i64 %cond, 0
  br i1 %cmp98.not260, label %cleanup117, label %while.body100

while.body100:                                    ; preds = %if.end95, %if.end108
  %chunk.0262 = phi i64 [ %sub112, %if.end108 ], [ %cond, %if.end95 ]
  %len.3261 = phi i64 [ %add110, %if.end108 ], [ %len.2265, %if.end95 ]
  %11 = load i8*, i8** %data, align 8, !tbaa !8
  %arrayidx102 = getelementptr inbounds i8, i8* %11, i64 %len.3261
  %conv103 = trunc i64 %chunk.0262 to i32
  %call104 = call i32 @BIO_read(%struct.bio_st* noundef %in, i8* noundef %arrayidx102, i32 noundef %conv103) #4
  %cmp105 = icmp slt i32 %call104, 1
  br i1 %cmp105, label %err.sink.split, label %if.end108

if.end108:                                        ; preds = %while.body100
  %conv109256 = zext i32 %call104 to i64
  %add110 = add i64 %len.3261, %conv109256
  %sub112 = sub i64 %chunk.0262, %conv109256
  %cmp98.not = icmp eq i64 %sub112, 0
  br i1 %cmp98.not, label %cleanup117, label %while.body100, !llvm.loop !11

cleanup117:                                       ; preds = %if.end108, %if.end95
  %len.3.lcssa = phi i64 [ %len.2265, %if.end95 ], [ %add110, %if.end108 ]
  %cmp113 = icmp ult i64 %chunk_max.0266, 1073741823
  %mul = zext i1 %cmp113 to i64
  %spec.select = shl i64 %chunk_max.0266, %mul
  %cmp87.not = icmp eq i64 %sub96, 0
  br i1 %cmp87.not, label %if.end124.loopexit, label %while.body, !llvm.loop !13

if.end124.loopexit:                               ; preds = %cleanup117
  %.pre = load i64, i64* %slen, align 8, !tbaa !14
  br label %if.end124

if.end124:                                        ; preds = %if.end124.loopexit, %while.cond.preheader, %if.else72
  %12 = phi i64 [ %8, %if.else72 ], [ %8, %while.cond.preheader ], [ %.pre, %if.end124.loopexit ]
  %len.6 = phi i64 [ %len.1274, %if.else72 ], [ %len.1274, %while.cond.preheader ], [ %len.3.lcssa, %if.end124.loopexit ]
  %add125 = add i64 %12, %add51
  %cmp126 = icmp ult i64 %add125, %add51
  br i1 %cmp126, label %err.sink.split, label %if.end129

if.end129:                                        ; preds = %if.end124
  br i1 %cmp131, label %for.end, label %for.cond

for.end:                                          ; preds = %if.then66, %if.end129
  %off.2 = phi i64 [ %add125, %if.end129 ], [ %add51, %if.then66 ]
  %cmp138 = icmp ugt i64 %off.2, 2147483647
  br i1 %cmp138, label %err.sink.split, label %if.end141

if.end141:                                        ; preds = %for.end
  store %struct.buf_mem_st* %call, %struct.buf_mem_st** %pb, align 8, !tbaa !4
  %conv142 = trunc i64 %off.2 to i32
  br label %cleanup144

err.sink.split:                                   ; preds = %if.end124, %if.then76, %if.then19, %if.end9, %if.then3, %lor.lhs.false, %if.then54, %while.body, %while.body100, %for.end
  %.sink276 = phi i32 [ 243, %for.end ], [ 216, %while.body100 ], [ 209, %while.body ], [ 231, %if.end124 ], [ 196, %if.then76 ], [ 147, %if.then19 ], [ 142, %if.end9 ], [ 137, %if.then3 ], [ 137, %lor.lhs.false ], [ 175, %if.then54 ]
  %.sink = phi i32 [ 155, %for.end ], [ 142, %while.body100 ], [ 786688, %while.body ], [ 155, %if.end124 ], [ 155, %if.then76 ], [ 155, %if.then19 ], [ 142, %if.end9 ], [ 786688, %if.then3 ], [ 786688, %lor.lhs.false ], [ 123, %if.then54 ]
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink276, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.asn1_d2i_read_bio, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %if.then39, %if.end29, %err.sink.split
  %call143 = call i32 @ERR_clear_last_mark() #4
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef nonnull %call) #4
  br label %cleanup144

cleanup144:                                       ; preds = %err, %if.end141, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %err ], [ %conv142, %if.end141 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %in, i8* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.buf_mem_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.buf_mem_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %b, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %cmp = icmp eq %struct.bio_st* %in, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @asn1_d2i_read_bio(%struct.bio_st* noundef nonnull %in, %struct.buf_mem_st** noundef nonnull %b) #5
  %cmp1 = icmp slt i32 %call, 0
  %.pre = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !4
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %.pre, i64 0, i32 1
  %2 = load i8*, i8** %data, align 8, !tbaa !8
  store i8* %2, i8** %p, align 8, !tbaa !4
  %3 = bitcast i8* %x to %struct.ASN1_VALUE_st**
  %conv12 = zext i32 %call to i64
  %call4 = call %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef %3, i8** noundef nonnull %p, i64 noundef %conv12, %struct.ASN1_ITEM_st* noundef %it, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %4 = bitcast %struct.ASN1_VALUE_st* %call4 to i8*
  br label %err

err:                                              ; preds = %if.end, %if.end3
  %ret.0 = phi i8* [ %4, %if.end3 ], [ null, %if.end ]
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %.pre) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err
  %retval.0 = phi i8* [ %ret.0, %err ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i8* %retval.0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i_ex(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %in, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %in, i8* noundef %x, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_d2i_fp_ex(%struct.ASN1_ITEM_st* noundef %it, %struct._IO_FILE* noundef %in, i8* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #4
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #4
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ASN1_item_d2i_fp_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524295, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %in to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #4
  %call3 = tail call i8* @ASN1_item_d2i_bio_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef nonnull %call1, i8* noundef %x, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #5
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call3, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %it, %struct._IO_FILE* noundef %in, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @ASN1_item_d2i_fp_ex(%struct.ASN1_ITEM_st* noundef %it, %struct._IO_FILE* noundef %in, i8* noundef %x, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i8* %call
}

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #2

declare i32 @ERR_set_mark() local_unnamed_addr #2

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc i32 @ERR_GET_REASON(i64 noundef %errcode) unnamed_addr #3 {
entry:
  %and = and i64 %errcode, 2147483648
  %cmp.not = icmp eq i64 %and, 0
  %0 = trunc i64 %errcode to i32
  %retval.0.v = select i1 %cmp.not, i32 8388607, i32 2147483647
  %retval.0 = and i32 %retval.0.v, %0
  ret i32 %retval.0
}

declare i64 @ERR_peek_last_error() local_unnamed_addr #2

declare i32 @ERR_pop_to_mark() local_unnamed_addr #2

declare i32 @ERR_clear_last_mark() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"buf_mem_st", !10, i64 0, !5, i64 8, !10, i64 16, !10, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!10, !10, i64 0}
