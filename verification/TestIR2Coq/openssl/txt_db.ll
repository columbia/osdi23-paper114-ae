; ModuleID = 'crypto/txt_db/txt_db.c'
source_filename = "crypto/txt_db/txt_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txt_db_st = type { i32, %struct.stack_st_OPENSSL_PSTRING*, %struct.lhash_st_OPENSSL_STRING**, i32 (i8**)**, i64, i64, i64, i8** }
%struct.stack_st_OPENSSL_PSTRING = type opaque
%struct.lhash_st_OPENSSL_STRING = type { %union.lh_OPENSSL_STRING_dummy }
%union.lh_OPENSSL_STRING_dummy = type { i8* }
%struct.bio_st = type opaque
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.stack_st = type opaque
%struct.lhash_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/txt_db/txt_db.c\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.txt_db_st* @TXT_DB_read(%struct.bio_st* noundef %in, i32 noundef %num) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #5
  %cmp = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp, label %err.thread263, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef nonnull %call, i64 noundef 512) #5
  %tobool.not = icmp eq i64 %call1, 0
  br i1 %tobool.not, label %err.thread263, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i8* @CRYPTO_malloc(i64 noundef 64, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 37) #5
  %0 = bitcast i8* %call4 to %struct.txt_db_st*
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %err.thread263, label %if.end8

if.end8:                                          ; preds = %if.end3
  %num_fields = bitcast i8* %call4 to i32*
  store i32 %num, i32* %num_fields, align 8, !tbaa !4
  %index = getelementptr inbounds i8, i8* %call4, i64 16
  %1 = bitcast i8* %index to %struct.lhash_st_OPENSSL_STRING***
  store %struct.lhash_st_OPENSSL_STRING** null, %struct.lhash_st_OPENSSL_STRING*** %1, align 8, !tbaa !11
  %qual = getelementptr inbounds i8, i8* %call4, i64 24
  %2 = bitcast i8* %qual to i32 (i8**)***
  store i32 (i8**)** null, i32 (i8**)*** %2, align 8, !tbaa !12
  %call9 = tail call fastcc %struct.stack_st_OPENSSL_PSTRING* @sk_OPENSSL_PSTRING_new_null() #6
  %data = getelementptr inbounds i8, i8* %call4, i64 8
  %3 = bitcast i8* %data to %struct.stack_st_OPENSSL_PSTRING**
  store %struct.stack_st_OPENSSL_PSTRING* %call9, %struct.stack_st_OPENSSL_PSTRING** %3, align 8, !tbaa !13
  %cmp10 = icmp eq %struct.stack_st_OPENSSL_PSTRING* %call9, null
  br i1 %cmp10, label %if.then157, label %if.end13

if.end13:                                         ; preds = %if.end8
  %conv14 = sext i32 %num to i64
  %mul = shl nsw i64 %conv14, 3
  %call15 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #5
  %4 = bitcast i8* %index to i8**
  store i8* %call15, i8** %4, align 8, !tbaa !11
  %cmp17 = icmp eq i8* %call15, null
  br i1 %cmp17, label %if.then157, label %if.end20

if.end20:                                         ; preds = %if.end13
  %call23 = tail call i8* @CRYPTO_malloc(i64 noundef %mul, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 46) #5
  %5 = bitcast i8* %qual to i8**
  store i8* %call23, i8** %5, align 8, !tbaa !12
  %cmp25 = icmp eq i8* %call23, null
  br i1 %cmp25, label %if.then157, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end20
  %cmp29272 = icmp sgt i32 %num, 0
  br i1 %cmp29272, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %num to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %6 = icmp eq i32 %num, 1
  br i1 %6, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %7 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %1, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %7, i64 %indvars.iv
  store %struct.lhash_st_OPENSSL_STRING* null, %struct.lhash_st_OPENSSL_STRING** %arrayidx, align 8, !tbaa !14
  %8 = load i32 (i8**)**, i32 (i8**)*** %2, align 8, !tbaa !12
  %arrayidx34 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %8, i64 %indvars.iv
  store i32 (i8**)* null, i32 (i8**)** %arrayidx34, align 8, !tbaa !14
  %indvars.iv.next = or i64 %indvars.iv, 1
  %9 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %1, align 8, !tbaa !11
  %arrayidx.1 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %9, i64 %indvars.iv.next
  store %struct.lhash_st_OPENSSL_STRING* null, %struct.lhash_st_OPENSSL_STRING** %arrayidx.1, align 8, !tbaa !14
  %10 = load i32 (i8**)**, i32 (i8**)*** %2, align 8, !tbaa !12
  %arrayidx34.1 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %10, i64 %indvars.iv.next
  store i32 (i8**)* null, i32 (i8**)** %arrayidx34.1, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body, !llvm.loop !15

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %11 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %1, align 8, !tbaa !11
  %arrayidx.epil = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %11, i64 %indvars.iv.unr
  store %struct.lhash_st_OPENSSL_STRING* null, %struct.lhash_st_OPENSSL_STRING** %arrayidx.epil, align 8, !tbaa !14
  %12 = load i32 (i8**)**, i32 (i8**)*** %2, align 8, !tbaa !12
  %arrayidx34.epil = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %12, i64 %indvars.iv.unr
  store i32 (i8**)* null, i32 (i8**)** %arrayidx34.epil, align 8, !tbaa !14
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %for.cond.preheader
  %add35 = shl i32 %num, 3
  %mul37 = add i32 %add35, 8
  %data39 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  %13 = load i8*, i8** %data39, align 8, !tbaa !17
  %arrayidx41 = getelementptr inbounds i8, i8* %13, i64 511
  store i8 0, i8* %arrayidx41, align 1, !tbaa !19
  %idx.ext = sext i32 %mul37 to i64
  %smax = call i32 @llvm.smax.i32(i32 %num, i32 1)
  %wide.trip.count284 = zext i32 %smax to i64
  %idxprom147 = zext i32 %num to i64
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.backedge, %for.end
  %size.0 = phi i32 [ 512, %for.end ], [ %size.1, %for.cond42.backedge ]
  %offset.0 = phi i32 [ 0, %for.end ], [ %offset.0.be, %for.cond42.backedge ]
  %cmp43.not = icmp eq i32 %offset.0, 0
  br i1 %cmp43.not, label %if.end52, label %if.then45

if.then45:                                        ; preds = %for.cond42
  %add46 = add nsw i32 %size.0, 512
  %conv47 = sext i32 %add46 to i64
  %call48 = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %conv47) #5
  %tobool49.not = icmp eq i64 %call48, 0
  br i1 %tobool49.not, label %if.then157, label %if.end52

if.end52:                                         ; preds = %if.then45, %for.cond42
  %size.1 = phi i32 [ %add46, %if.then45 ], [ %size.0, %for.cond42 ]
  %14 = load i8*, i8** %data39, align 8, !tbaa !17
  %idxprom54 = sext i32 %offset.0 to i64
  %arrayidx55 = getelementptr inbounds i8, i8* %14, i64 %idxprom54
  store i8 0, i8* %arrayidx55, align 1, !tbaa !19
  %15 = load i8*, i8** %data39, align 8, !tbaa !17
  %arrayidx58 = getelementptr inbounds i8, i8* %15, i64 %idxprom54
  %sub59 = sub nsw i32 %size.1, %offset.0
  %call60 = tail call i32 @BIO_gets(%struct.bio_st* noundef %in, i8* noundef %arrayidx58, i32 noundef %sub59) #5
  %16 = load i8*, i8** %data39, align 8, !tbaa !17
  %arrayidx64 = getelementptr inbounds i8, i8* %16, i64 %idxprom54
  %17 = load i8, i8* %arrayidx64, align 1, !tbaa !19
  %cmp66 = icmp eq i8 %17, 0
  br i1 %cmp66, label %for.end154, label %if.end69

if.end69:                                         ; preds = %if.end52
  br i1 %cmp43.not, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end69
  %18 = load i8, i8* %16, align 1, !tbaa !19
  %cmp75 = icmp eq i8 %18, 35
  br i1 %cmp75, label %for.cond42.backedge, label %if.end78

for.cond42.backedge:                              ; preds = %land.lhs.true, %if.end78, %if.end146
  %offset.0.be = phi i32 [ 0, %land.lhs.true ], [ %add84, %if.end78 ], [ 0, %if.end146 ]
  br label %for.cond42

if.end78:                                         ; preds = %land.lhs.true, %if.end69
  %call82 = tail call i64 @strlen(i8* noundef nonnull %arrayidx64) #7
  %conv83 = trunc i64 %call82 to i32
  %add84 = add nsw i32 %offset.0, %conv83
  %sub86 = add nsw i32 %add84, -1
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds i8, i8* %16, i64 %idxprom87
  %19 = load i8, i8* %arrayidx88, align 1, !tbaa !19
  %cmp90.not = icmp eq i8 %19, 10
  br i1 %cmp90.not, label %if.else, label %for.cond42.backedge

if.else:                                          ; preds = %if.end78
  store i8 0, i8* %arrayidx88, align 1, !tbaa !19
  %add97 = add nsw i32 %add84, %mul37
  %conv98 = sext i32 %add97 to i64
  %call99 = tail call i8* @CRYPTO_malloc(i64 noundef %conv98, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 75) #5
  %cmp100 = icmp eq i8* %call99, null
  br i1 %cmp100, label %if.then157, label %if.end103

if.end103:                                        ; preds = %if.else
  %20 = bitcast i8* %call99 to i8**
  %add.ptr = getelementptr inbounds i8, i8* %call99, i64 %idx.ext
  store i8* %add.ptr, i8** %20, align 8, !tbaa !14
  %21 = load i8*, i8** %data39, align 8, !tbaa !17
  br label %for.cond109.outer

for.cond109.outer:                                ; preds = %if.end127, %if.end103
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %if.end127 ], [ 1, %if.end103 ]
  %p.0.ph = phi i8* [ %incdec.ptr122, %if.end127 ], [ %add.ptr, %if.end103 ]
  %f.0.ph = phi i8* [ %incdec.ptr123, %if.end127 ], [ %21, %if.end103 ]
  br label %for.cond109

for.cond109:                                      ; preds = %for.cond109.outer, %if.end132
  %esc.0 = phi i32 [ %conv135, %if.end132 ], [ 0, %for.cond109.outer ]
  %p.0 = phi i8* [ %incdec.ptr137, %if.end132 ], [ %p.0.ph, %for.cond109.outer ]
  %f.0 = phi i8* [ %incdec.ptr136, %if.end132 ], [ %f.0.ph, %for.cond109.outer ]
  %22 = load i8, i8* %f.0, align 1, !tbaa !19
  switch i8 %22, label %if.end132 [
    i8 0, label %for.end138.loopexit
    i8 9, label %if.then118
  ]

if.then118:                                       ; preds = %for.cond109
  %tobool119.not = icmp eq i32 %esc.0, 0
  br i1 %tobool119.not, label %if.else121, label %if.then120

if.then120:                                       ; preds = %if.then118
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 -1
  br label %if.end132

if.else121:                                       ; preds = %if.then118
  %incdec.ptr122 = getelementptr inbounds i8, i8* %p.0, i64 1
  store i8 0, i8* %p.0, align 1, !tbaa !19
  %incdec.ptr123 = getelementptr inbounds i8, i8* %f.0, i64 1
  %exitcond285.not = icmp eq i64 %indvars.iv281, %wide.trip.count284
  br i1 %exitcond285.not, label %for.end138, label %if.end127

if.end127:                                        ; preds = %if.else121
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1
  %arrayidx130 = getelementptr inbounds i8*, i8** %20, i64 %indvars.iv281
  store i8* %incdec.ptr122, i8** %arrayidx130, align 8, !tbaa !14
  br label %for.cond109.outer

if.end132:                                        ; preds = %for.cond109, %if.then120
  %p.1 = phi i8* [ %incdec.ptr, %if.then120 ], [ %p.0, %for.cond109 ]
  %cmp134 = icmp eq i8 %22, 92
  %conv135 = zext i1 %cmp134 to i32
  %incdec.ptr136 = getelementptr inbounds i8, i8* %f.0, i64 1
  %incdec.ptr137 = getelementptr inbounds i8, i8* %p.1, i64 1
  store i8 %22, i8* %p.1, align 1, !tbaa !19
  br label %for.cond109

for.end138.loopexit:                              ; preds = %for.cond109
  %23 = trunc i64 %indvars.iv281 to i32
  br label %for.end138

for.end138:                                       ; preds = %if.else121, %for.end138.loopexit
  %n.0.ph278 = phi i32 [ %23, %for.end138.loopexit ], [ %smax, %if.else121 ]
  %p.2 = phi i8* [ %p.0, %for.end138.loopexit ], [ %incdec.ptr122, %if.else121 ]
  %f.1 = phi i8* [ %f.0, %for.end138.loopexit ], [ %incdec.ptr123, %if.else121 ]
  %incdec.ptr139 = getelementptr inbounds i8, i8* %p.2, i64 1
  store i8 0, i8* %p.2, align 1, !tbaa !19
  %cmp140.not = icmp eq i32 %n.0.ph278, %num
  br i1 %cmp140.not, label %lor.lhs.false, label %if.then145

lor.lhs.false:                                    ; preds = %for.end138
  %24 = load i8, i8* %f.1, align 1, !tbaa !19
  %cmp143.not = icmp eq i8 %24, 0
  br i1 %cmp143.not, label %if.end146, label %if.then145

if.then145:                                       ; preds = %lor.lhs.false, %for.end138
  tail call void @CRYPTO_free(i8* noundef nonnull %call99, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 107) #5
  %error = getelementptr inbounds i8, i8* %call4, i64 32
  %25 = bitcast i8* %error to i64*
  store i64 6, i64* %25, align 8, !tbaa !20
  br label %if.then157

if.end146:                                        ; preds = %lor.lhs.false
  %arrayidx148 = getelementptr inbounds i8*, i8** %20, i64 %idxprom147
  store i8* %incdec.ptr139, i8** %arrayidx148, align 8, !tbaa !14
  %26 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %3, align 8, !tbaa !13
  %call150 = tail call fastcc i32 @sk_OPENSSL_PSTRING_push(%struct.stack_st_OPENSSL_PSTRING* noundef %26, i8** noundef nonnull %20) #6
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then152, label %for.cond42.backedge

if.then152:                                       ; preds = %if.end146
  tail call void @CRYPTO_free(i8* noundef nonnull %call99, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #5
  br label %if.then157

for.end154:                                       ; preds = %if.end52
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef nonnull %call) #5
  br label %cleanup

err.thread263:                                    ; preds = %entry, %if.end3, %if.end
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call) #5
  br label %cleanup

if.then157:                                       ; preds = %if.then45, %if.else, %if.then152, %if.then145, %if.end20, %if.end13, %if.end8
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef nonnull %call) #5
  %.pre-phi = bitcast i8* %index to i8**
  %.pre-phi287 = bitcast i8* %qual to i8**
  %27 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %3, align 8, !tbaa !13
  tail call fastcc void @sk_OPENSSL_PSTRING_free(%struct.stack_st_OPENSSL_PSTRING* noundef %27) #6
  %28 = load i8*, i8** %.pre-phi, align 8, !tbaa !11
  tail call void @CRYPTO_free(i8* noundef %28, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 123) #5
  %29 = load i8*, i8** %.pre-phi287, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %29, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #5
  tail call void @CRYPTO_free(i8* noundef nonnull %call4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 125) #5
  br label %cleanup

cleanup:                                          ; preds = %err.thread263, %if.then157, %for.end154
  %retval.0 = phi %struct.txt_db_st* [ %0, %for.end154 ], [ null, %if.then157 ], [ null, %err.thread263 ]
  ret %struct.txt_db_st* %retval.0
}

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #1

declare i64 @BUF_MEM_grow(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.stack_st_OPENSSL_PSTRING* @sk_OPENSSL_PSTRING_new_null() unnamed_addr #0 {
entry:
  %call = tail call %struct.stack_st* @OPENSSL_sk_new_null() #5
  %0 = bitcast %struct.stack_st* %call to %struct.stack_st_OPENSSL_PSTRING*
  ret %struct.stack_st_OPENSSL_PSTRING* %0
}

declare i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_push(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i8** noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %1 = bitcast i8** %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_push(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @sk_OPENSSL_PSTRING_free(%struct.stack_st_OPENSSL_PSTRING* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  tail call void @OPENSSL_sk_free(%struct.stack_st* noundef %0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i8** @TXT_DB_get_by_index(%struct.txt_db_st* nocapture noundef %db, i32 noundef %idx, i8** noundef %value) local_unnamed_addr #0 {
entry:
  %num_fields = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  %0 = load i32, i32* %num_fields, align 8, !tbaa !4
  %cmp.not = icmp sgt i32 %0, %idx
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %1 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %1, i64 %idxprom
  %2 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx, align 8, !tbaa !14
  %cmp1 = icmp eq %struct.lhash_st_OPENSSL_STRING* %2, null
  br i1 %cmp1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef nonnull %2) #6
  %3 = bitcast i8** %value to i8*
  %call6 = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call, i8* noundef %3) #5
  %4 = bitcast i8* %call6 to i8**
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end4
  %.sink = phi i64 [ 0, %if.end4 ], [ 3, %entry ], [ 4, %if.end ]
  %retval.0 = phi i8** [ %4, %if.end4 ], [ null, %entry ], [ null, %if.end ]
  %error7 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 %.sink, i64* %error7, align 8, !tbaa !20
  ret i8** %retval.0
}

declare i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef readnone %lh) unnamed_addr #3 {
entry:
  %0 = bitcast %struct.lhash_st_OPENSSL_STRING* %lh to %struct.lhash_st*
  ret %struct.lhash_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @TXT_DB_create_index(%struct.txt_db_st* nocapture noundef %db, i32 noundef %field, i32 (i8**)* noundef %qual, i64 (i8*)* noundef %hash, i32 (i8*, i8*)* noundef %cmp) local_unnamed_addr #0 {
entry:
  %num_fields = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  %0 = load i32, i32* %num_fields, align 8, !tbaa !4
  %cmp1.not = icmp sgt i32 %0, %field
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 3, i64* %error, align 8, !tbaa !20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef %hash, i32 (i8*, i8*)* noundef %cmp) #5
  %1 = bitcast %struct.lhash_st* %call to %struct.lhash_st_OPENSSL_STRING*
  %cmp2 = icmp eq %struct.lhash_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %error4 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 1, i64* %error4, align 8, !tbaa !20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 1
  %2 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call6 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %2) #6
  %cmp782 = icmp sgt i32 %call6, 0
  br i1 %cmp782, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %cmp10.not = icmp eq i32 (i8**)* %qual, null
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %3 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call9 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %3, i32 noundef %i.083) #6
  br i1 %cmp10.not, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %call11 = tail call i32 %qual(i8** noundef %call9) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %for.inc, label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %for.body
  %call15 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef nonnull %1) #6
  %4 = bitcast i8** %call9 to i8*
  %call17 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call15, i8* noundef %4) #5
  %cmp18.not = icmp eq i8* %call17, null
  br i1 %cmp18.not, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end14
  %5 = bitcast i8* %call17 to i8**
  %error20 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 2, i64* %error20, align 8, !tbaa !20
  %6 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call22 = tail call fastcc i32 @sk_OPENSSL_PSTRING_find(%struct.stack_st_OPENSSL_PSTRING* noundef %6, i8** noundef nonnull %5) #6
  %conv = sext i32 %call22 to i64
  %arg1 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 5
  store i64 %conv, i64* %arg1, align 8, !tbaa !21
  %conv23 = zext i32 %i.083 to i64
  %arg2 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 6
  store i64 %conv23, i64* %arg2, align 8, !tbaa !22
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call15) #5
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call28 = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call15, i8* noundef %4) #5
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then31, label %for.inc

if.then31:                                        ; preds = %if.end25
  %error32 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 1, i64* %error32, align 8, !tbaa !20
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call15) #5
  br label %cleanup

for.inc:                                          ; preds = %if.end25, %land.lhs.true
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %call6
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !23

for.end:                                          ; preds = %for.inc, %if.end5
  %index = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %7 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %idxprom = sext i32 %field to i64
  %arrayidx = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %7, i64 %idxprom
  %8 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx, align 8, !tbaa !14
  %call35 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %8) #6
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call35) #5
  %9 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %arrayidx38 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %9, i64 %idxprom
  %10 = bitcast %struct.lhash_st_OPENSSL_STRING** %arrayidx38 to %struct.lhash_st**
  store %struct.lhash_st* %call, %struct.lhash_st** %10, align 8, !tbaa !14
  %qual39 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 3
  %11 = load i32 (i8**)**, i32 (i8**)*** %qual39, align 8, !tbaa !12
  %arrayidx41 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %11, i64 %idxprom
  store i32 (i8**)* %qual, i32 (i8**)** %arrayidx41, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.then19, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.then19 ], [ 0, %if.then31 ], [ 1, %for.end ]
  ret i32 %retval.0
}

declare %struct.lhash_st* @OPENSSL_LH_new(i64 (i8*)* noundef, i32 (i8*, i8*)* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %sk) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %0) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i32 noundef %idx) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %call = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %0, i32 noundef %idx) #5
  %1 = bitcast i8* %call to i8**
  ret i8** %1
}

declare i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sk_OPENSSL_PSTRING_find(%struct.stack_st_OPENSSL_PSTRING* noundef %sk, i8** noundef %ptr) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.stack_st_OPENSSL_PSTRING* %sk to %struct.stack_st*
  %1 = bitcast i8** %ptr to i8*
  %call = tail call i32 @OPENSSL_sk_find(%struct.stack_st* noundef %0, i8* noundef %1) #5
  ret i32 %call
}

declare void @OPENSSL_LH_free(%struct.lhash_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i64 @TXT_DB_write(%struct.bio_st* noundef %out, %struct.txt_db_st* nocapture noundef readonly %db) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.buf_mem_st* @BUF_MEM_new() #5
  %cmp = icmp eq %struct.buf_mem_st* %call, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 1
  %0 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call1 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef %0) #6
  %conv = sext i32 %call1 to i64
  %num_fields = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  %1 = load i32, i32* %num_fields, align 8, !tbaa !4
  %conv2 = sext i32 %1 to i64
  %cmp3115 = icmp sgt i32 %call1, 0
  br i1 %cmp3115, label %for.body.lr.ph, label %err

for.body.lr.ph:                                   ; preds = %if.end
  %cmp9108 = icmp sgt i32 %1, 0
  %data24 = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %call, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end61
  %i.0117 = phi i64 [ 0, %for.body.lr.ph ], [ %inc64, %if.end61 ]
  %tot.0116 = phi i64 [ 0, %for.body.lr.ph ], [ %add62, %if.end61 ]
  %2 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %conv6 = trunc i64 %i.0117 to i32
  %call7 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %2, i32 noundef %conv6) #6
  br i1 %cmp9108, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.body, %for.inc
  %l.0110 = phi i64 [ %l.1, %for.inc ], [ 0, %for.body ]
  %j.0109 = phi i64 [ %inc, %for.inc ], [ 0, %for.body ]
  %arrayidx = getelementptr inbounds i8*, i8** %call7, i64 %j.0109
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !14
  %cmp12.not = icmp eq i8* %3, null
  br i1 %cmp12.not, label %for.inc, label %if.then14

if.then14:                                        ; preds = %for.body11
  %call16 = tail call i64 @strlen(i8* noundef nonnull %3) #7
  %add = add i64 %call16, %l.0110
  br label %for.inc

for.inc:                                          ; preds = %for.body11, %if.then14
  %l.1 = phi i64 [ %add, %if.then14 ], [ %l.0110, %for.body11 ]
  %inc = add nuw nsw i64 %j.0109, 1
  %exitcond.not = icmp eq i64 %inc, %conv2
  br i1 %exitcond.not, label %for.end, label %for.body11, !llvm.loop !24

for.end:                                          ; preds = %for.inc, %for.body
  %l.0.lcssa = phi i64 [ 0, %for.body ], [ %l.1, %for.inc ]
  %l.0.tr = trunc i64 %l.0.lcssa to i32
  %4 = shl i32 %l.0.tr, 1
  %conv19 = add i32 %4, %1
  %conv20 = sext i32 %conv19 to i64
  %call21 = tail call i64 @BUF_MEM_grow_clean(%struct.buf_mem_st* noundef nonnull %call, i64 noundef %conv20) #5
  %tobool.not = icmp eq i64 %call21, 0
  br i1 %tobool.not, label %err, label %if.end23

if.end23:                                         ; preds = %for.end
  %5 = load i8*, i8** %data24, align 8, !tbaa !17
  br i1 %cmp9108, label %for.body28, label %for.end51

for.body28:                                       ; preds = %if.end23, %if.end47
  %p.0113 = phi i8* [ %incdec.ptr48, %if.end47 ], [ %5, %if.end23 ]
  %j.1112 = phi i64 [ %inc50, %if.end47 ], [ 0, %if.end23 ]
  %arrayidx29 = getelementptr inbounds i8*, i8** %call7, i64 %j.1112
  %6 = load i8*, i8** %arrayidx29, align 8, !tbaa !14
  %cmp30.not = icmp eq i8* %6, null
  br i1 %cmp30.not, label %if.end47, label %for.cond33

for.cond33:                                       ; preds = %for.body28, %if.end43
  %p.1 = phi i8* [ %incdec.ptr45, %if.end43 ], [ %p.0113, %for.body28 ]
  %f.0 = phi i8* [ %incdec.ptr44, %if.end43 ], [ %6, %for.body28 ]
  %7 = load i8, i8* %f.0, align 1, !tbaa !19
  switch i8 %7, label %if.end43 [
    i8 0, label %if.end47
    i8 9, label %if.then42
  ]

if.then42:                                        ; preds = %for.cond33
  %incdec.ptr = getelementptr inbounds i8, i8* %p.1, i64 1
  store i8 92, i8* %p.1, align 1, !tbaa !19
  %.pre = load i8, i8* %f.0, align 1, !tbaa !19
  br label %if.end43

if.end43:                                         ; preds = %for.cond33, %if.then42
  %8 = phi i8 [ %.pre, %if.then42 ], [ %7, %for.cond33 ]
  %p.2 = phi i8* [ %incdec.ptr, %if.then42 ], [ %p.1, %for.cond33 ]
  %incdec.ptr44 = getelementptr inbounds i8, i8* %f.0, i64 1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %p.2, i64 1
  store i8 %8, i8* %p.2, align 1, !tbaa !19
  br label %for.cond33

if.end47:                                         ; preds = %for.cond33, %for.body28
  %p.3 = phi i8* [ %p.0113, %for.body28 ], [ %p.1, %for.cond33 ]
  %incdec.ptr48 = getelementptr inbounds i8, i8* %p.3, i64 1
  store i8 9, i8* %p.3, align 1, !tbaa !19
  %inc50 = add nuw nsw i64 %j.1112, 1
  %exitcond121.not = icmp eq i64 %inc50, %conv2
  br i1 %exitcond121.not, label %for.end51, label %for.body28, !llvm.loop !25

for.end51:                                        ; preds = %if.end47, %if.end23
  %p.0.lcssa = phi i8* [ %5, %if.end23 ], [ %incdec.ptr48, %if.end47 ]
  %arrayidx52 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 -1
  store i8 10, i8* %arrayidx52, align 1, !tbaa !19
  %9 = load i8*, i8** %data24, align 8, !tbaa !17
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv55 = trunc i64 %sub.ptr.sub to i32
  %call56 = tail call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %9, i32 noundef %conv55) #5
  %conv57 = sext i32 %call56 to i64
  %cmp58.not = icmp eq i64 %sub.ptr.sub, %conv57
  br i1 %cmp58.not, label %if.end61, label %err

if.end61:                                         ; preds = %for.end51
  %add62 = add nsw i64 %sub.ptr.sub, %tot.0116
  %inc64 = add nuw nsw i64 %i.0117, 1
  %exitcond122.not = icmp eq i64 %inc64, %conv
  br i1 %exitcond122.not, label %err, label %for.body, !llvm.loop !26

err:                                              ; preds = %for.end, %for.end51, %if.end61, %if.end, %entry
  %ret.0 = phi i64 [ -1, %entry ], [ 0, %if.end ], [ -1, %for.end ], [ -1, %for.end51 ], [ %add62, %if.end61 ]
  tail call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call) #5
  ret i64 %ret.0
}

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @TXT_DB_insert(%struct.txt_db_st* nocapture noundef %db, i8** noundef %row) local_unnamed_addr #0 {
entry:
  %num_fields = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  %0 = load i32, i32* %num_fields, align 8, !tbaa !4
  %cmp153 = icmp sgt i32 %0, 0
  br i1 %cmp153, label %for.body.lr.ph, label %for.end64

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %qual = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 3
  %1 = bitcast i8** %row to i8*
  br label %for.body

for.cond20.preheader:                             ; preds = %for.inc
  %cmp22156 = icmp sgt i32 %9, 0
  br i1 %cmp22156, label %for.body24.lr.ph, label %for.end64

for.body24.lr.ph:                                 ; preds = %for.cond20.preheader
  %index25 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %qual31 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 3
  %2 = bitcast i8** %row to i8*
  br label %for.body24

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %3 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %3, i64 %indvars.iv
  %4 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx, align 8, !tbaa !14
  %cmp1.not = icmp eq %struct.lhash_st_OPENSSL_STRING* %4, null
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32 (i8**)**, i32 (i8**)*** %qual, align 8, !tbaa !12
  %arrayidx3 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %5, i64 %indvars.iv
  %6 = load i32 (i8**)*, i32 (i8**)** %arrayidx3, align 8, !tbaa !14
  %cmp4.not = icmp eq i32 (i8**)* %6, null
  br i1 %cmp4.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %call = tail call i32 %6(i8** noundef %row) #5
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %for.inc, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %arrayidx12.phi.trans.insert = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %.pre, i64 %indvars.iv
  %.pre171 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx12.phi.trans.insert, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then
  %7 = phi %struct.lhash_st_OPENSSL_STRING* [ %.pre171, %land.lhs.true.if.end_crit_edge ], [ %4, %if.then ]
  %call13 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %7) #6
  %call15 = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call13, i8* noundef %1) #5
  %cmp16.not = icmp eq i8* %call15, null
  br i1 %cmp16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %if.end
  %idxprom.le = and i64 %indvars.iv, 4294967295
  %error = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 2, i64* %error, align 8, !tbaa !20
  %arg1 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 5
  store i64 %idxprom.le, i64* %arg1, align 8, !tbaa !21
  %arg_row = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 7
  %8 = bitcast i8*** %arg_row to i8**
  store i8* %call15, i8** %8, align 8, !tbaa !27
  br label %cleanup

for.inc:                                          ; preds = %for.body, %if.end, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, i32* %num_fields, align 8, !tbaa !4
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.cond20.preheader, !llvm.loop !28

for.body24:                                       ; preds = %for.body24.lr.ph, %for.inc62
  %indvars.iv165 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next166, %for.inc62 ]
  %11 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index25, align 8, !tbaa !11
  %arrayidx27 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %11, i64 %indvars.iv165
  %12 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx27, align 8, !tbaa !14
  %cmp28.not = icmp eq %struct.lhash_st_OPENSSL_STRING* %12, null
  br i1 %cmp28.not, label %for.inc62, label %if.then30

if.then30:                                        ; preds = %for.body24
  %13 = load i32 (i8**)**, i32 (i8**)*** %qual31, align 8, !tbaa !12
  %arrayidx33 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %13, i64 %indvars.iv165
  %14 = load i32 (i8**)*, i32 (i8**)** %arrayidx33, align 8, !tbaa !14
  %cmp34.not = icmp eq i32 (i8**)* %14, null
  br i1 %cmp34.not, label %if.end44, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.then30
  %call40 = tail call i32 %14(i8** noundef %row) #5
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %for.inc62, label %land.lhs.true36.if.end44_crit_edge

land.lhs.true36.if.end44_crit_edge:               ; preds = %land.lhs.true36
  %.pre172 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index25, align 8, !tbaa !11
  %arrayidx47.phi.trans.insert = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %.pre172, i64 %indvars.iv165
  %.pre173 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx47.phi.trans.insert, align 8, !tbaa !14
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true36.if.end44_crit_edge, %if.then30
  %15 = phi %struct.lhash_st_OPENSSL_STRING* [ %.pre173, %land.lhs.true36.if.end44_crit_edge ], [ %12, %if.then30 ]
  %call48 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %15) #6
  %call50 = tail call i8* @OPENSSL_LH_insert(%struct.lhash_st* noundef %call48, i8* noundef %2) #5
  %16 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index25, align 8, !tbaa !11
  %arrayidx53 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %16, i64 %indvars.iv165
  %17 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx53, align 8, !tbaa !14
  %call54 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %17) #6
  %call56 = tail call i8* @OPENSSL_LH_retrieve(%struct.lhash_st* noundef %call54, i8* noundef %2) #5
  %cmp57 = icmp eq i8* %call56, null
  br i1 %cmp57, label %err1.loopexit, label %for.inc62

for.inc62:                                        ; preds = %for.body24, %if.end44, %land.lhs.true36
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %18 = load i32, i32* %num_fields, align 8, !tbaa !4
  %19 = sext i32 %18 to i64
  %cmp22 = icmp slt i64 %indvars.iv.next166, %19
  br i1 %cmp22, label %for.body24, label %for.end64.loopexit, !llvm.loop !29

for.end64.loopexit:                               ; preds = %for.inc62
  %20 = trunc i64 %indvars.iv.next166 to i32
  br label %for.end64

for.end64:                                        ; preds = %entry, %for.end64.loopexit, %for.cond20.preheader
  %i.1.lcssa = phi i32 [ 0, %for.cond20.preheader ], [ %20, %for.end64.loopexit ], [ 0, %entry ]
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 1
  %21 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call65 = tail call fastcc i32 @sk_OPENSSL_PSTRING_push(%struct.stack_st_OPENSSL_PSTRING* noundef %21, i8** noundef %row) #6
  %tobool.not = icmp eq i32 %call65, 0
  br i1 %tobool.not, label %err1, label %cleanup

err1.loopexit:                                    ; preds = %if.end44
  %22 = trunc i64 %indvars.iv165 to i32
  br label %err1

err1:                                             ; preds = %err1.loopexit, %for.end64
  %i.1151 = phi i32 [ %i.1.lcssa, %for.end64 ], [ %22, %err1.loopexit ]
  %error68 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 4
  store i64 1, i64* %error68, align 8, !tbaa !20
  %cmp69160 = icmp sgt i32 %i.1151, 0
  br i1 %cmp69160, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %err1
  %index71 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %qual77 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 3
  %23 = bitcast i8** %row to i8*
  %24 = zext i32 %i.1151 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %indvars.iv168 = phi i64 [ %24, %while.body.lr.ph ], [ %indvars.iv.next169, %while.cond.backedge ]
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, -1
  %25 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index71, align 8, !tbaa !11
  %arrayidx73 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %25, i64 %indvars.iv.next169
  %26 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx73, align 8, !tbaa !14
  %cmp74.not = icmp eq %struct.lhash_st_OPENSSL_STRING* %26, null
  br i1 %cmp74.not, label %while.cond.backedge, label %if.then76

if.then76:                                        ; preds = %while.body
  %27 = load i32 (i8**)**, i32 (i8**)*** %qual77, align 8, !tbaa !12
  %arrayidx79 = getelementptr inbounds i32 (i8**)*, i32 (i8**)** %27, i64 %indvars.iv.next169
  %28 = load i32 (i8**)*, i32 (i8**)** %arrayidx79, align 8, !tbaa !14
  %cmp80.not = icmp eq i32 (i8**)* %28, null
  br i1 %cmp80.not, label %if.end90, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.then76
  %call86 = tail call i32 %28(i8** noundef %row) #5
  %cmp87 = icmp eq i32 %call86, 0
  br i1 %cmp87, label %while.cond.backedge, label %land.lhs.true82.if.end90_crit_edge

land.lhs.true82.if.end90_crit_edge:               ; preds = %land.lhs.true82
  %.pre174 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index71, align 8, !tbaa !11
  %arrayidx93.phi.trans.insert = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %.pre174, i64 %indvars.iv.next169
  %.pre175 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx93.phi.trans.insert, align 8, !tbaa !14
  br label %if.end90

if.end90:                                         ; preds = %land.lhs.true82.if.end90_crit_edge, %if.then76
  %29 = phi %struct.lhash_st_OPENSSL_STRING* [ %.pre175, %land.lhs.true82.if.end90_crit_edge ], [ %26, %if.then76 ]
  %call94 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %29) #6
  %call96 = tail call i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef %call94, i8* noundef %23) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.body, %if.end90, %land.lhs.true82
  %cmp69 = icmp ugt i64 %indvars.iv168, 1
  br i1 %cmp69, label %while.body, label %cleanup, !llvm.loop !30

cleanup:                                          ; preds = %while.cond.backedge, %err1, %if.then17, %for.end64
  %retval.0 = phi i32 [ 1, %for.end64 ], [ 0, %if.then17 ], [ 0, %err1 ], [ 0, %while.cond.backedge ]
  ret i32 %retval.0
}

declare i8* @OPENSSL_LH_delete(%struct.lhash_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @TXT_DB_free(%struct.txt_db_st* noundef %db) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.txt_db_st* %db, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 2
  %0 = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %cmp1.not = icmp eq %struct.lhash_st_OPENSSL_STRING** %0, null
  br i1 %cmp1.not, label %if.end6, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = bitcast %struct.lhash_st_OPENSSL_STRING** %0 to i8*
  %num_fields = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  %2 = load i32, i32* %num_fields, align 8, !tbaa !4
  %cmp3100 = icmp sgt i32 %2, 0
  br i1 %cmp3100, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.then2
  %3 = zext i32 %2 to i64
  %indvars.iv.next124 = add nsw i64 %3, -1
  %idxprom97125 = and i64 %indvars.iv.next124, 4294967295
  %arrayidx126 = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %0, i64 %idxprom97125
  %4 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx126, align 8, !tbaa !14
  %call127 = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %4) #6
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call127) #5
  %cmp3128.not = icmp eq i32 %2, 1
  br i1 %cmp3128.not, label %for.end.loopexit, label %for.body.for.body_crit_edge, !llvm.loop !31

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %indvars.iv.next129 = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ %indvars.iv.next124, %for.body.preheader ]
  %.pre = load %struct.lhash_st_OPENSSL_STRING**, %struct.lhash_st_OPENSSL_STRING*** %index, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv.next129, -1
  %idxprom97 = and i64 %indvars.iv.next, 4294967295
  %arrayidx = getelementptr inbounds %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %.pre, i64 %idxprom97
  %5 = load %struct.lhash_st_OPENSSL_STRING*, %struct.lhash_st_OPENSSL_STRING** %arrayidx, align 8, !tbaa !14
  %call = tail call fastcc %struct.lhash_st* @ossl_check_OPENSSL_STRING_lh_type(%struct.lhash_st_OPENSSL_STRING* noundef %5) #6
  tail call void @OPENSSL_LH_free(%struct.lhash_st* noundef %call) #5
  %cmp3 = icmp sgt i64 %indvars.iv.next129, 1
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end.loopexit, !llvm.loop !31

for.end.loopexit:                                 ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %.phi.trans.insert = bitcast %struct.lhash_st_OPENSSL_STRING*** %index to i8**
  %.pre119 = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !11
  br label %for.end

for.end:                                          ; preds = %if.then2, %for.end.loopexit
  %6 = phi i8* [ %.pre119, %for.end.loopexit ], [ %1, %if.then2 ]
  tail call void @CRYPTO_free(i8* noundef %6, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 292) #5
  br label %if.end6

if.end6:                                          ; preds = %for.end, %if.end
  %qual = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 3
  %7 = bitcast i32 (i8**)*** %qual to i8**
  %8 = load i8*, i8** %7, align 8, !tbaa !12
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 294) #5
  %data = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 1
  %9 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %cmp7.not = icmp eq %struct.stack_st_OPENSSL_PSTRING* %9, null
  br i1 %cmp7.not, label %if.end54, label %if.then8

if.then8:                                         ; preds = %if.end6
  %call10 = tail call fastcc i32 @sk_OPENSSL_PSTRING_num(%struct.stack_st_OPENSSL_PSTRING* noundef nonnull %9) #6
  %cmp13107 = icmp sgt i32 %call10, 0
  br i1 %cmp13107, label %for.body14.lr.ph, label %for.end52

for.body14.lr.ph:                                 ; preds = %if.then8
  %num_fields17 = getelementptr inbounds %struct.txt_db_st, %struct.txt_db_st* %db, i64 0, i32 0
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %if.end47
  %i.1108.in = phi i32 [ %call10, %for.body14.lr.ph ], [ %i.1108, %if.end47 ]
  %i.1108 = add nsw i32 %i.1108.in, -1
  %10 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call16 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %10, i32 noundef %i.1108) #6
  %11 = load i32, i32* %num_fields17, align 8, !tbaa !4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds i8*, i8** %call16, i64 %idxprom18
  %12 = load i8*, i8** %arrayidx19, align 8, !tbaa !14
  %cmp20 = icmp eq i8* %12, null
  %cmp24104 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %for.cond22.preheader, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.body14
  br i1 %cmp24104, label %for.body33.lr.ph, label %if.end47

for.body33.lr.ph:                                 ; preds = %for.cond30.preheader
  %13 = bitcast i8** %call16 to i8*
  br label %for.body33

for.cond22.preheader:                             ; preds = %for.body14
  br i1 %cmp24104, label %for.body25, label %if.end47

for.body25:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body25 ], [ 0, %for.cond22.preheader ]
  %arrayidx27 = getelementptr inbounds i8*, i8** %call16, i64 %indvars.iv115
  %14 = load i8*, i8** %arrayidx27, align 8, !tbaa !14
  tail call void @CRYPTO_free(i8* noundef %14, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 305) #5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %15 = load i32, i32* %num_fields17, align 8, !tbaa !4
  %16 = sext i32 %15 to i64
  %cmp24 = icmp slt i64 %indvars.iv.next116, %16
  br i1 %cmp24, label %for.body25, label %if.end47, !llvm.loop !32

for.body33:                                       ; preds = %for.body33.lr.ph, %for.inc44
  %17 = phi i32 [ %11, %for.body33.lr.ph ], [ %19, %for.inc44 ]
  %indvars.iv111 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next112, %for.inc44 ]
  %arrayidx35 = getelementptr inbounds i8*, i8** %call16, i64 %indvars.iv111
  %18 = load i8*, i8** %arrayidx35, align 8, !tbaa !14
  %cmp36 = icmp ult i8* %18, %13
  %cmp39 = icmp ugt i8* %18, %12
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp39
  br i1 %or.cond, label %if.then40, label %for.inc44

if.then40:                                        ; preds = %for.body33
  tail call void @CRYPTO_free(i8* noundef %18, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 309) #5
  %.pre120 = load i32, i32* %num_fields17, align 8, !tbaa !4
  br label %for.inc44

for.inc44:                                        ; preds = %for.body33, %if.then40
  %19 = phi i32 [ %17, %for.body33 ], [ %.pre120, %if.then40 ]
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %20 = sext i32 %19 to i64
  %cmp32 = icmp slt i64 %indvars.iv.next112, %20
  br i1 %cmp32, label %for.body33, label %if.end47, !llvm.loop !33

if.end47:                                         ; preds = %for.inc44, %for.body25, %for.cond30.preheader, %for.cond22.preheader
  %21 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  %call49 = tail call fastcc i8** @sk_OPENSSL_PSTRING_value(%struct.stack_st_OPENSSL_PSTRING* noundef %21, i32 noundef %i.1108) #6
  %22 = bitcast i8** %call49 to i8*
  tail call void @CRYPTO_free(i8* noundef %22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 312) #5
  %cmp13 = icmp sgt i32 %i.1108.in, 1
  br i1 %cmp13, label %for.body14, label %for.end52, !llvm.loop !34

for.end52:                                        ; preds = %if.end47, %if.then8
  %23 = load %struct.stack_st_OPENSSL_PSTRING*, %struct.stack_st_OPENSSL_PSTRING** %data, align 8, !tbaa !13
  tail call fastcc void @sk_OPENSSL_PSTRING_free(%struct.stack_st_OPENSSL_PSTRING* noundef %23) #6
  br label %if.end54

if.end54:                                         ; preds = %for.end52, %if.end6
  %24 = bitcast %struct.txt_db_st* %db to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 316) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end54
  ret void
}

declare %struct.stack_st* @OPENSSL_sk_new_null() local_unnamed_addr #1

declare i32 @OPENSSL_sk_push(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

declare void @OPENSSL_sk_free(%struct.stack_st* noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #1

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_find(%struct.stack_st* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"txt_db_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !9, i64 56}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 16}
!12 = !{!5, !9, i64 24}
!13 = !{!5, !9, i64 8}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !9, i64 8}
!18 = !{!"buf_mem_st", !10, i64 0, !9, i64 8, !10, i64 16, !10, i64 24}
!19 = !{!7, !7, i64 0}
!20 = !{!5, !10, i64 32}
!21 = !{!5, !10, i64 40}
!22 = !{!5, !10, i64 48}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = !{!5, !9, i64 56}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
