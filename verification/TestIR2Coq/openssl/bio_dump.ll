; ModuleID = 'crypto/bio/bio_dump.c'
source_filename = "crypto/bio/bio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@.str = private unnamed_addr constant [11 x i8] c"%*s%04x - \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02X:\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump_cb(i32 (i8*, i64, i8*)* nocapture noundef readonly %cb, i8* noundef %u, i8* nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* noundef %cb, i8* noundef %u, i8* noundef %s, i32 noundef %len, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* nocapture noundef readonly %cb, i8* noundef %u, i8* nocapture noundef readonly %v, i32 noundef %len, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %buf = alloca [289 x i8], align 16
  %0 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 289, i8* nonnull %0) #5
  %1 = icmp slt i32 %indent, 64
  %spec.store.select = select i1 %1, i32 %indent, i32 64
  %2 = icmp sgt i32 %spec.store.select, 0
  %indent.addr.0 = select i1 %2, i32 %spec.store.select, i32 0
  %3 = icmp ult i32 %indent.addr.0, 6
  %4 = trunc i32 %indent.addr.0 to i8
  %.op.op.neg.lhs.trunc = add nsw i8 %4, -3
  %.op.op.neg191 = sdiv i8 %.op.op.neg.lhs.trunc, -4
  %narrow192 = add nsw i8 %.op.op.neg191, 16
  %.op.op.neg.op222 = zext i8 %narrow192 to i32
  %sub5 = select i1 %3, i32 16, i32 %.op.op.neg.op222
  %div6 = sdiv i32 %len, %sub5
  %mul = mul nsw i32 %div6, %sub5
  %cmp7 = icmp slt i32 %mul, %len
  %inc = zext i1 %cmp7 to i32
  %rows.0 = add i32 %div6, %inc
  %cmp10206 = icmp sgt i32 %rows.0, 0
  br i1 %cmp10206, label %for.body.lr.ph, label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = zext i32 %sub5 to i64
  %6 = sext i32 %len to i64
  %wide.trip.count220 = zext i32 %rows.0 to i64
  %wide.trip.count = zext i32 %sub5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end116
  %indvars.iv215 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next216, %if.end116 ]
  %ret.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %add117, %if.end116 ]
  %indvars219 = trunc i64 %indvars.iv215 to i32
  %7 = mul nsw i64 %indvars.iv215, %5
  %mul11 = mul nsw i32 %sub5, %indvars219
  %8 = trunc i64 %7 to i32
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 289, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %indent.addr.0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8) #6
  %add.ptr29 = getelementptr inbounds i8, i8* %v, i64 %7
  br label %for.body14

for.body14:                                       ; preds = %for.body, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %n.0197 = phi i32 [ %call, %for.body ], [ %n.1, %for.inc ]
  %conv = sext i32 %n.0197 to i64
  %notsub190 = add nsw i64 %conv, -290
  %cmp16 = icmp ult i64 %notsub190, -4
  br i1 %cmp16, label %if.then18, label %for.inc

if.then18:                                        ; preds = %for.body14
  %9 = trunc i64 %indvars.iv to i32
  %add20 = add nsw i32 %mul11, %9
  %cmp21.not = icmp slt i32 %add20, %len
  br i1 %cmp21.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.then18
  %add.ptr = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %conv
  %call25 = call i8* @strcpy(i8* noundef nonnull %add.ptr, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #6
  br label %if.end42

if.else26:                                        ; preds = %if.then18
  %add.ptr31 = getelementptr inbounds i8, i8* %add.ptr29, i64 %indvars.iv
  %10 = load i8, i8* %add.ptr31, align 1, !tbaa !4
  %add.ptr36 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %conv
  %conv37 = zext i8 %10 to i32
  %cmp38 = icmp eq i64 %indvars.iv, 7
  %cond40 = select i1 %cmp38, i32 45, i32 32
  %call41 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %add.ptr36, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %conv37, i32 noundef %cond40) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else26, %if.then23
  %add43 = add nsw i32 %n.0197, 3
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.end42
  %n.1 = phi i32 [ %add43, %if.end42 ], [ %n.0197, %for.body14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body14, !llvm.loop !7

for.end:                                          ; preds = %for.inc
  %conv46 = sext i32 %n.1 to i64
  %notsub = add nsw i64 %conv46, -290
  %cmp48 = icmp ult i64 %notsub, -3
  br i1 %cmp48, label %if.then50, label %if.end56

if.then50:                                        ; preds = %for.end
  %add.ptr53 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %conv46
  %call54 = call i8* @strcpy(i8* noundef nonnull %add.ptr53, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %add55 = add nsw i32 %n.1, 2
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %for.end
  %n.2 = phi i32 [ %add55, %if.then50 ], [ %n.1, %for.end ]
  %cmp63.not200 = icmp slt i64 %7, %6
  br i1 %cmp63.not200, label %if.end66.lr.ph, label %for.end98

if.end66.lr.ph:                                   ; preds = %if.end56
  %add.ptr74 = getelementptr inbounds i8, i8* %v, i64 %7
  br label %if.end66

if.end66:                                         ; preds = %if.end66.lr.ph, %for.inc96
  %indvars.iv212 = phi i64 [ 0, %if.end66.lr.ph ], [ %indvars.iv.next213, %for.inc96 ]
  %n.3204 = phi i32 [ %n.2, %if.end66.lr.ph ], [ %n.4, %for.inc96 ]
  %conv67 = sext i32 %n.3204 to i64
  %11 = and i64 %conv67, -2
  %cmp69.not = icmp eq i64 %11, 288
  br i1 %cmp69.not, label %for.inc96, label %if.then71

if.then71:                                        ; preds = %if.end66
  %add.ptr76 = getelementptr inbounds i8, i8* %add.ptr74, i64 %indvars.iv212
  %12 = load i8, i8* %add.ptr76, align 1, !tbaa !4
  %13 = add i8 %12, -32
  %14 = icmp ult i8 %13, 95
  %narrow = select i1 %14, i8 %12, i8 46
  %inc92 = add nsw i32 %n.3204, 1
  %arrayidx = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %conv67
  store i8 %narrow, i8* %arrayidx, align 1, !tbaa !4
  %idxprom93 = sext i32 %inc92 to i64
  %arrayidx94 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %idxprom93
  store i8 0, i8* %arrayidx94, align 1, !tbaa !4
  br label %for.inc96

for.inc96:                                        ; preds = %if.end66, %if.then71
  %n.4 = phi i32 [ %inc92, %if.then71 ], [ %n.3204, %if.end66 ]
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  %indvars = trunc i64 %indvars.iv.next213 to i32
  %cmp58 = icmp ult i64 %indvars.iv.next213, %5
  %add62 = add nsw i32 %mul11, %indvars
  %cmp63.not = icmp slt i32 %add62, %len
  %or.cond = select i1 %cmp58, i1 %cmp63.not, i1 false
  br i1 %or.cond, label %if.end66, label %for.end98, !llvm.loop !9

for.end98:                                        ; preds = %for.inc96, %if.end56
  %n.3.lcssa = phi i32 [ %n.2, %if.end56 ], [ %n.4, %for.inc96 ]
  %conv99 = sext i32 %n.3.lcssa to i64
  %15 = and i64 %conv99, -2
  %cmp101.not = icmp eq i64 %15, 288
  br i1 %cmp101.not, label %if.end109, label %if.then103

if.then103:                                       ; preds = %for.end98
  %inc104 = add nsw i32 %n.3.lcssa, 1
  %arrayidx106 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %conv99
  store i8 10, i8* %arrayidx106, align 1, !tbaa !4
  %idxprom107 = sext i32 %inc104 to i64
  %arrayidx108 = getelementptr inbounds [289 x i8], [289 x i8]* %buf, i64 0, i64 %idxprom107
  store i8 0, i8* %arrayidx108, align 1, !tbaa !4
  br label %if.end109

if.end109:                                        ; preds = %if.then103, %for.end98
  %conv111.pre-phi = phi i64 [ %idxprom107, %if.then103 ], [ %conv99, %for.end98 ]
  %call112 = call i32 %cb(i8* noundef nonnull %0, i64 noundef %conv111.pre-phi, i8* noundef %u) #6
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %cleanup, label %if.end116

if.end116:                                        ; preds = %if.end109
  %add117 = add nsw i32 %call112, %ret.0207
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond221.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count220
  br i1 %exitcond221.not, label %cleanup, label %for.body, !llvm.loop !10

cleanup:                                          ; preds = %if.end109, %if.end116, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add117, %if.end116 ], [ %call112, %if.end109 ]
  call void @llvm.lifetime.end.p0i8(i64 289, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump_fp(%struct._IO_FILE* noundef %fp, i8* nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call = tail call i32 @BIO_dump_cb(i32 (i8*, i64, i8*)* noundef nonnull @write_fp, i8* noundef %0, i8* noundef %s, i32 noundef %len) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @write_fp(i8* noundef %data, i64 noundef %len, i8* noundef %fp) #0 {
entry:
  %0 = bitcast i8* %fp to %struct._IO_FILE*
  %call = tail call i64 @fwrite(i8* noundef %data, i64 noundef %len, i64 noundef 1, %struct._IO_FILE* noundef %0) #6
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump_indent_fp(%struct._IO_FILE* noundef %fp, i8* nocapture noundef readonly %s, i32 noundef %len, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct._IO_FILE* %fp to i8*
  %call = tail call i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* noundef nonnull @write_fp, i8* noundef %0, i8* noundef %s, i32 noundef %len, i32 noundef %indent) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump(%struct.bio_st* noundef %bp, i8* nocapture noundef readonly %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio_st* %bp to i8*
  %call = tail call i32 @BIO_dump_cb(i32 (i8*, i64, i8*)* noundef nonnull @write_bio, i8* noundef %0, i8* noundef %s, i32 noundef %len) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @write_bio(i8* noundef %data, i64 noundef %len, i8* noundef %bp) #0 {
entry:
  %0 = bitcast i8* %bp to %struct.bio_st*
  %conv = trunc i64 %len to i32
  %call = tail call i32 @BIO_write(%struct.bio_st* noundef %0, i8* noundef %data, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_dump_indent(%struct.bio_st* noundef %bp, i8* nocapture noundef readonly %s, i32 noundef %len, i32 noundef %indent) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.bio_st* %bp to i8*
  %call = tail call i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* noundef nonnull @write_bio, i8* noundef %0, i8* noundef %s, i32 noundef %len, i32 noundef %indent) #4
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @BIO_hex_string(%struct.bio_st* noundef %out, i32 noundef %indent, i32 noundef %width, i8* nocapture noundef readonly %data, i32 noundef %datalen) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %datalen, 1
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %datalen, -1
  %cmp142.not = icmp eq i32 %datalen, 1
  br i1 %cmp142.not, label %if.end15, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.be, %for.body.backedge ]
  %j.044 = phi i32 [ 0, %for.body.preheader ], [ %j.044.be, %for.body.backedge ]
  %tobool = icmp eq i64 %indvars.iv, 0
  %tobool2 = icmp ne i32 %j.044, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool2
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.body
  %call = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.body
  %arrayidx = getelementptr inbounds i8, i8* %data, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %0 to i32
  %call5 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv) #6
  %add = add nsw i32 %j.044, 1
  %rem = srem i32 %add, %width
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %for.inc.thread, label %for.inc

for.inc:                                          ; preds = %if.end4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end15, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %for.inc.thread
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.next49, %for.inc.thread ]
  %j.044.be = phi i32 [ %rem, %for.inc ], [ 0, %for.inc.thread ]
  br label %for.body, !llvm.loop !11

for.inc.thread:                                   ; preds = %if.end4
  %call8 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not50 = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not50, label %if.then13, label %for.body.backedge

if.then13:                                        ; preds = %for.inc.thread
  %call14 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 noundef %indent, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %if.end15

if.end15:                                         ; preds = %for.inc, %for.cond.preheader, %if.then13
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %data, i64 %idxprom17
  %1 = load i8, i8* %arrayidx18, align 1, !tbaa !4
  %conv19 = zext i8 %1 to i32
  %call20 = tail call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %out, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv19) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end15
  ret i32 1
}

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #2

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
