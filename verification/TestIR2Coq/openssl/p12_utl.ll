; ModuleID = 'crypto/pkcs12/p12_utl.c'
source_filename = "crypto/pkcs12/p12_utl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_st = type opaque
%struct.PKCS12_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [24 x i8] c"crypto/pkcs12/p12_utl.c\00", align 1
@__func__.OPENSSL_asc2uni = private unnamed_addr constant [16 x i8] c"OPENSSL_asc2uni\00", align 1
@__func__.OPENSSL_uni2asc = private unnamed_addr constant [16 x i8] c"OPENSSL_uni2asc\00", align 1
@__func__.OPENSSL_utf82uni = private unnamed_addr constant [17 x i8] c"OPENSSL_utf82uni\00", align 1
@__func__.OPENSSL_uni2utf8 = private unnamed_addr constant [17 x i8] c"OPENSSL_uni2utf8\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_asc2uni(i8* noundef %asc, i32 noundef %asclen, i8** noundef writeonly %uni, i32* noundef writeonly %unilen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %asclen, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %asc) #5
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %asclen.addr.0 = phi i32 [ %conv, %if.then ], [ %asclen, %entry ]
  %cmp1 = icmp slt i32 %asclen.addr.0, 0
  br i1 %cmp1, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %asclen.addr.0, 1
  %add = add nsw i32 %mul, 2
  %conv5 = sext i32 %add to i64
  %call6 = tail call i8* @CRYPTO_malloc(i64 noundef %conv5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 27) #6
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4
  %cmp1153.not = icmp eq i32 %asclen.addr.0, 0
  br i1 %cmp1153.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %0 = sext i32 %mul to i64
  %smax59 = call i64 @llvm.smax.i64(i64 %0, i64 2)
  %1 = add nsw i64 %smax59, -1
  %2 = lshr i64 %1, 1
  %3 = add nuw nsw i64 %2, 1
  %min.iters.check = icmp ult i64 %1, 30
  br i1 %min.iters.check, label %for.body.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.preheader
  %smax = call i64 @llvm.smax.i64(i64 %0, i64 2)
  %4 = add nsw i64 %smax, -1
  %5 = lshr i64 %4, 1
  %scevgep = getelementptr i8, i8* %call6, i64 %smax
  %6 = add nuw nsw i64 %5, 1
  %scevgep58 = getelementptr i8, i8* %asc, i64 %6
  %bound0 = icmp ult i8* %call6, %scevgep58
  %bound1 = icmp ugt i8* %scevgep, %asc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775792
  %ind.end = shl nuw i64 %n.vec, 1
  %7 = add nsw i64 %n.vec, -16
  %8 = lshr exact i64 %7, 4
  %9 = add nuw nsw i64 %8, 1
  %xtraiter = and i64 %9, 1
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %9, 2305843009213693950
  %11 = getelementptr inbounds i8, i8* %call6, i64 -1
  %12 = getelementptr inbounds i8, i8* %call6, i64 -1
  %13 = getelementptr inbounds i8, i8* %call6, i64 -1
  %14 = getelementptr inbounds i8, i8* %call6, i64 -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %15 = and i64 %index, 9223372036854775776
  %16 = getelementptr inbounds i8, i8* %asc, i64 %15
  %17 = bitcast i8* %16 to <8 x i8>*
  %wide.load = load <8 x i8>, <8 x i8>* %17, align 1, !tbaa !4, !alias.scope !7
  %18 = getelementptr inbounds i8, i8* %16, i64 8
  %19 = bitcast i8* %18 to <8 x i8>*
  %wide.load60 = load <8 x i8>, <8 x i8>* %19, align 1, !tbaa !4, !alias.scope !7
  %20 = or i64 %offset.idx, 1
  %21 = or i64 %offset.idx, 17
  %22 = getelementptr inbounds i8, i8* %11, i64 %20
  %23 = bitcast i8* %22 to <16 x i8>*
  %24 = getelementptr inbounds i8, i8* %12, i64 %21
  %25 = bitcast i8* %24 to <16 x i8>*
  %interleaved.vec = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, <16 x i8>* %23, align 1, !tbaa !4
  %interleaved.vec61 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load60, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec61, <16 x i8>* %25, align 1, !tbaa !4
  %index.next = or i64 %index, 16
  %offset.idx.1 = shl i64 %index.next, 1
  %26 = and i64 %index.next, 9223372036854775792
  %27 = getelementptr inbounds i8, i8* %asc, i64 %26
  %28 = bitcast i8* %27 to <8 x i8>*
  %wide.load.1 = load <8 x i8>, <8 x i8>* %28, align 1, !tbaa !4, !alias.scope !7
  %29 = getelementptr inbounds i8, i8* %27, i64 8
  %30 = bitcast i8* %29 to <8 x i8>*
  %wide.load60.1 = load <8 x i8>, <8 x i8>* %30, align 1, !tbaa !4, !alias.scope !7
  %31 = or i64 %offset.idx.1, 1
  %32 = or i64 %offset.idx.1, 17
  %33 = getelementptr inbounds i8, i8* %13, i64 %31
  %34 = bitcast i8* %33 to <16 x i8>*
  %35 = getelementptr inbounds i8, i8* %14, i64 %32
  %36 = bitcast i8* %35 to <16 x i8>*
  %interleaved.vec.1 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.1, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, <16 x i8>* %34, align 1, !tbaa !4
  %interleaved.vec61.1 = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load60.1, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec61.1, <16 x i8>* %36, align 1, !tbaa !4
  %index.next.1 = add nuw i64 %index, 32
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !10

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = shl i64 %index.unr, 1
  %37 = and i64 %index.unr, 9223372036854775792
  %38 = getelementptr inbounds i8, i8* %asc, i64 %37
  %39 = bitcast i8* %38 to <8 x i8>*
  %wide.load.epil = load <8 x i8>, <8 x i8>* %39, align 1, !tbaa !4, !alias.scope !7
  %40 = getelementptr inbounds i8, i8* %38, i64 8
  %41 = bitcast i8* %40 to <8 x i8>*
  %wide.load60.epil = load <8 x i8>, <8 x i8>* %41, align 1, !tbaa !4, !alias.scope !7
  %42 = or i64 %offset.idx.epil, 1
  %43 = or i64 %offset.idx.epil, 17
  %44 = getelementptr inbounds i8, i8* %call6, i64 -1
  %45 = getelementptr inbounds i8, i8* %call6, i64 -1
  %46 = getelementptr inbounds i8, i8* %44, i64 %42
  %47 = bitcast i8* %46 to <16 x i8>*
  %48 = getelementptr inbounds i8, i8* %45, i64 %43
  %49 = bitcast i8* %48 to <16 x i8>*
  %interleaved.vec.epil = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load.epil, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.epil, <16 x i8>* %47, align 1, !tbaa !4
  %interleaved.vec61.epil = shufflevector <8 x i8> zeroinitializer, <8 x i8> %wide.load60.epil, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec61.epil, <16 x i8>* %49, align 1, !tbaa !4
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader62

for.body.preheader62:                             ; preds = %vector.memcheck, %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.preheader ], [ %ind.end, %middle.block ]
  br label %for.body

if.then9:                                         ; preds = %if.end4
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OPENSSL_asc2uni, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.preheader62, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader62 ]
  %arrayidx = getelementptr inbounds i8, i8* %call6, i64 %indvars.iv
  store i8 0, i8* %arrayidx, align 1, !tbaa !4
  %50 = lshr exact i64 %indvars.iv, 1
  %arrayidx14 = getelementptr inbounds i8, i8* %asc, i64 %50
  %51 = load i8, i8* %arrayidx14, align 1, !tbaa !4
  %52 = or i64 %indvars.iv, 1
  %arrayidx17 = getelementptr inbounds i8, i8* %call6, i64 %52
  store i8 %51, i8* %arrayidx17, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp11 = icmp slt i64 %indvars.iv.next, %0
  br i1 %cmp11, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %for.body, %middle.block, %for.cond.preheader
  %idxprom20.pre-phi = phi i64 [ 0, %for.cond.preheader ], [ %0, %middle.block ], [ %0, %for.body ]
  %arrayidx21 = getelementptr inbounds i8, i8* %call6, i64 %idxprom20.pre-phi
  store i8 0, i8* %arrayidx21, align 1, !tbaa !4
  %sub22 = or i32 %mul, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %call6, i64 %idxprom23
  store i8 0, i8* %arrayidx24, align 1, !tbaa !4
  %tobool.not = icmp eq i32* %unilen, null
  br i1 %tobool.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %for.end
  store i32 %add, i32* %unilen, align 4, !tbaa !14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.end
  %tobool27.not = icmp eq i8** %uni, null
  br i1 %tobool27.not, label %cleanup, label %if.then28

if.then28:                                        ; preds = %if.end26
  store i8* %call6, i8** %uni, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then28, %if.end, %if.then9
  %retval.0 = phi i8* [ null, %if.then9 ], [ null, %if.end ], [ %call6, %if.then28 ], [ %call6, %if.end26 ]
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_uni2asc(i8* nocapture noundef readonly %uni, i32 noundef %unilen) local_unnamed_addr #0 {
entry:
  %0 = and i32 %unilen, -2147483647
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %if.end2, label %cleanup

if.end2:                                          ; preds = %entry
  %div40 = lshr i32 %unilen, 1
  %tobool3.not = icmp eq i32 %unilen, 0
  br i1 %tobool3.not, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %sub = add nsw i32 %unilen, -1
  %1 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %uni, i64 %1
  %2 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %tobool4.not = icmp eq i8 %2, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  %inc = add nuw nsw i32 %div40, 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  %asclen.0 = phi i32 [ %inc, %if.then5 ], [ %div40, %lor.lhs.false ]
  %incdec.ptr = getelementptr i8, i8* %uni, i64 1
  %3 = zext i32 %asclen.0 to i64
  %call = tail call i8* @CRYPTO_malloc(i64 noundef %3, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 60) #6
  %cmp8 = icmp eq i8* %call, null
  br i1 %cmp8, label %if.then10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %cmp1241.not = icmp eq i32 %unilen, 0
  br i1 %cmp1241.not, label %for.end, label %iter.check

iter.check:                                       ; preds = %for.cond.preheader
  %4 = zext i32 %unilen to i64
  %5 = add nsw i64 %4, -1
  %6 = lshr i64 %5, 1
  %7 = add nuw i64 %6, 1
  %min.iters.check = icmp ult i64 %5, 16
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %8 = add nsw i64 %4, -1
  %9 = lshr i64 %8, 1
  %10 = add nuw i64 %9, 1
  %scevgep = getelementptr i8, i8* %call, i64 %10
  %11 = add nuw nsw i64 %4, 1
  %12 = and i64 %11, 8589934590
  %scevgep44 = getelementptr i8, i8* %uni, i64 %12
  %bound0 = icmp ult i8* %call, %scevgep44
  %bound1 = icmp ult i8* %incdec.ptr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i64 %5, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %7, 15
  %13 = icmp eq i64 %n.mod.vf, 0
  %14 = select i1 %13, i64 16, i64 %n.mod.vf
  %n.vec = sub i64 %7, %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = shl i64 %index, 1
  %15 = or i64 %offset.idx, 2
  %16 = or i64 %offset.idx, 4
  %17 = or i64 %offset.idx, 6
  %18 = or i64 %offset.idx, 8
  %19 = or i64 %offset.idx, 10
  %20 = or i64 %offset.idx, 12
  %21 = or i64 %offset.idx, 14
  %22 = or i64 %offset.idx, 16
  %23 = or i64 %offset.idx, 18
  %24 = or i64 %offset.idx, 20
  %25 = or i64 %offset.idx, 22
  %26 = or i64 %offset.idx, 24
  %27 = or i64 %offset.idx, 26
  %28 = or i64 %offset.idx, 28
  %29 = or i64 %offset.idx, 30
  %30 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %offset.idx
  %31 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %15
  %32 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %16
  %33 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %17
  %34 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %18
  %35 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %19
  %36 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %20
  %37 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %21
  %38 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %22
  %39 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %23
  %40 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %24
  %41 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %25
  %42 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %26
  %43 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %27
  %44 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %28
  %45 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %29
  %46 = load i8, i8* %30, align 1, !tbaa !4, !alias.scope !18
  %47 = load i8, i8* %31, align 1, !tbaa !4, !alias.scope !18
  %48 = load i8, i8* %32, align 1, !tbaa !4, !alias.scope !18
  %49 = load i8, i8* %33, align 1, !tbaa !4, !alias.scope !18
  %50 = load i8, i8* %34, align 1, !tbaa !4, !alias.scope !18
  %51 = load i8, i8* %35, align 1, !tbaa !4, !alias.scope !18
  %52 = load i8, i8* %36, align 1, !tbaa !4, !alias.scope !18
  %53 = load i8, i8* %37, align 1, !tbaa !4, !alias.scope !18
  %54 = load i8, i8* %38, align 1, !tbaa !4, !alias.scope !18
  %55 = load i8, i8* %39, align 1, !tbaa !4, !alias.scope !18
  %56 = load i8, i8* %40, align 1, !tbaa !4, !alias.scope !18
  %57 = load i8, i8* %41, align 1, !tbaa !4, !alias.scope !18
  %58 = load i8, i8* %42, align 1, !tbaa !4, !alias.scope !18
  %59 = load i8, i8* %43, align 1, !tbaa !4, !alias.scope !18
  %60 = load i8, i8* %44, align 1, !tbaa !4, !alias.scope !18
  %61 = load i8, i8* %45, align 1, !tbaa !4, !alias.scope !18
  %62 = insertelement <16 x i8> poison, i8 %46, i64 0
  %63 = insertelement <16 x i8> %62, i8 %47, i64 1
  %64 = insertelement <16 x i8> %63, i8 %48, i64 2
  %65 = insertelement <16 x i8> %64, i8 %49, i64 3
  %66 = insertelement <16 x i8> %65, i8 %50, i64 4
  %67 = insertelement <16 x i8> %66, i8 %51, i64 5
  %68 = insertelement <16 x i8> %67, i8 %52, i64 6
  %69 = insertelement <16 x i8> %68, i8 %53, i64 7
  %70 = insertelement <16 x i8> %69, i8 %54, i64 8
  %71 = insertelement <16 x i8> %70, i8 %55, i64 9
  %72 = insertelement <16 x i8> %71, i8 %56, i64 10
  %73 = insertelement <16 x i8> %72, i8 %57, i64 11
  %74 = insertelement <16 x i8> %73, i8 %58, i64 12
  %75 = insertelement <16 x i8> %74, i8 %59, i64 13
  %76 = insertelement <16 x i8> %75, i8 %60, i64 14
  %77 = insertelement <16 x i8> %76, i8 %61, i64 15
  %78 = and i64 %index, 9223372036854775792
  %79 = getelementptr inbounds i8, i8* %call, i64 %78
  %80 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %77, <16 x i8>* %80, align 1, !tbaa !4, !alias.scope !21, !noalias !18
  %index.next = add nuw i64 %index, 16
  %81 = icmp eq i64 %index.next, %n.vec
  br i1 %81, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !23

vec.epilog.iter.check:                            ; preds = %vector.body
  %ind.end48 = shl i64 %n.vec, 1
  %min.epilog.iters.check = icmp ult i64 %14, 9
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph

for.body.preheader:                               ; preds = %vec.epilog.vector.body, %vector.memcheck, %iter.check, %vec.epilog.iter.check
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %ind.end48, %vec.epilog.iter.check ], [ %ind.end, %vec.epilog.vector.body ]
  br label %for.body

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %82 = add nsw i64 %4, -1
  %83 = lshr i64 %82, 1
  %84 = add nuw i64 %83, 1
  %n.mod.vf46 = and i64 %84, 7
  %85 = icmp eq i64 %n.mod.vf46, 0
  %86 = select i1 %85, i64 8, i64 %n.mod.vf46
  %n.vec47 = sub i64 %84, %86
  %ind.end = shl i64 %n.vec47, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ]
  %offset.idx50 = shl i64 %index49, 1
  %87 = add i64 %offset.idx50, 2
  %88 = add i64 %offset.idx50, 4
  %89 = add i64 %offset.idx50, 6
  %90 = add i64 %offset.idx50, 8
  %91 = add i64 %offset.idx50, 10
  %92 = add i64 %offset.idx50, 12
  %93 = add i64 %offset.idx50, 14
  %94 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %offset.idx50
  %95 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %87
  %96 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %88
  %97 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %89
  %98 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %90
  %99 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %91
  %100 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %92
  %101 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %93
  %102 = load i8, i8* %94, align 1, !tbaa !4
  %103 = load i8, i8* %95, align 1, !tbaa !4
  %104 = load i8, i8* %96, align 1, !tbaa !4
  %105 = load i8, i8* %97, align 1, !tbaa !4
  %106 = load i8, i8* %98, align 1, !tbaa !4
  %107 = load i8, i8* %99, align 1, !tbaa !4
  %108 = load i8, i8* %100, align 1, !tbaa !4
  %109 = load i8, i8* %101, align 1, !tbaa !4
  %110 = insertelement <8 x i8> poison, i8 %102, i64 0
  %111 = insertelement <8 x i8> %110, i8 %103, i64 1
  %112 = insertelement <8 x i8> %111, i8 %104, i64 2
  %113 = insertelement <8 x i8> %112, i8 %105, i64 3
  %114 = insertelement <8 x i8> %113, i8 %106, i64 4
  %115 = insertelement <8 x i8> %114, i8 %107, i64 5
  %116 = insertelement <8 x i8> %115, i8 %108, i64 6
  %117 = insertelement <8 x i8> %116, i8 %109, i64 7
  %118 = and i64 %index49, 9223372036854775807
  %119 = getelementptr inbounds i8, i8* %call, i64 %118
  %120 = bitcast i8* %119 to <8 x i8>*
  store <8 x i8> %117, <8 x i8>* %120, align 1, !tbaa !4
  %index.next51 = add nuw i64 %index49, 8
  %121 = icmp eq i64 %index.next51, %n.vec47
  br i1 %121, label %for.body.preheader, label %vec.epilog.vector.body, !llvm.loop !24

if.then10:                                        ; preds = %if.end6
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.OPENSSL_uni2asc, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx15 = getelementptr inbounds i8, i8* %incdec.ptr, i64 %indvars.iv
  %122 = load i8, i8* %arrayidx15, align 1, !tbaa !4
  %123 = lshr exact i64 %indvars.iv, 1
  %arrayidx17 = getelementptr inbounds i8, i8* %call, i64 %123
  store i8 %122, i8* %arrayidx17, align 1, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp12 = icmp ult i64 %indvars.iv.next, %4
  br i1 %cmp12, label %for.body, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %sub18 = add nsw i32 %asclen.0, -1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %call, i64 %idxprom19
  store i8 0, i8* %arrayidx20, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then10
  %retval.0 = phi i8* [ null, %if.then10 ], [ %call, %for.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_utf82uni(i8* noundef %asc, i32 noundef %asclen, i8** noundef %uni, i32* noundef %unilen) local_unnamed_addr #0 {
entry:
  %utf32chr = alloca i64, align 8
  %0 = bitcast i64* %utf32chr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store i64 0, i64* %utf32chr, align 8, !tbaa !27
  %cmp = icmp eq i32 %asclen, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* noundef %asc) #5
  %conv = trunc i64 %call to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %asclen.addr.0 = phi i32 [ %conv, %if.then ], [ %asclen, %entry ]
  %cmp1119 = icmp sgt i32 %asclen.addr.0, 0
  br i1 %cmp1119, label %for.body, label %for.end.thread

for.body:                                         ; preds = %if.end, %if.end12
  %ulen.0121 = phi i32 [ %ulen.1, %if.end12 ], [ 0, %if.end ]
  %i.0120 = phi i32 [ %add18, %if.end12 ], [ 0, %if.end ]
  %idx.ext = sext i32 %i.0120 to i64
  %add.ptr = getelementptr inbounds i8, i8* %asc, i64 %idx.ext
  %sub = sub nsw i32 %asclen.addr.0, %i.0120
  %call3 = call i32 @UTF8_getc(i8* noundef %add.ptr, i32 noundef %sub, i64* noundef nonnull %utf32chr) #6
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.body
  %call7 = call i8* @OPENSSL_asc2uni(i8* noundef %asc, i32 noundef %asclen.addr.0, i8** noundef %uni, i32* noundef %unilen) #8
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %1 = load i64, i64* %utf32chr, align 8, !tbaa !27
  %cmp9 = icmp ugt i64 %1, 1114111
  br i1 %cmp9, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp ugt i64 %1, 65535
  %ulen.1.v = select i1 %cmp13, i32 4, i32 2
  %ulen.1 = add nuw nsw i32 %ulen.1.v, %ulen.0121
  %add18 = add nsw i32 %call3, %i.0120
  %cmp1 = icmp sgt i32 %asclen.addr.0, %add18
  br i1 %cmp1, label %for.body, label %for.end, !llvm.loop !29

for.end:                                          ; preds = %if.end12
  %phi.bo = add nuw i32 %ulen.1, 2
  %conv20 = zext i32 %phi.bo to i64
  %call21 = call i8* @CRYPTO_malloc(i64 noundef %conv20, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 122) #6
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then24, label %for.cond26.preheader

for.end.thread:                                   ; preds = %if.end
  %call21128 = call i8* @CRYPTO_malloc(i64 noundef 2, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 122) #6
  %cmp22129 = icmp eq i8* %call21128, null
  br i1 %cmp22129, label %if.then24, label %for.end60

for.cond26.preheader:                             ; preds = %for.end
  br i1 %cmp1119, label %for.body29, label %for.end60

if.then24:                                        ; preds = %for.end.thread, %for.end
  call void @ERR_new() #6
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OPENSSL_utf82uni, i64 0, i64 0)) #6
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body29:                                       ; preds = %for.cond26.preheader, %for.inc58
  %unitmp.0124 = phi i8* [ %unitmp.1, %for.inc58 ], [ %call21, %for.cond26.preheader ]
  %i.1123 = phi i32 [ %add59, %for.inc58 ], [ 0, %for.cond26.preheader ]
  %idx.ext30 = sext i32 %i.1123 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %asc, i64 %idx.ext30
  %sub32 = sub nsw i32 %asclen.addr.0, %i.1123
  %call33 = call i32 @UTF8_getc(i8* noundef %add.ptr31, i32 noundef %sub32, i64* noundef nonnull %utf32chr) #6
  %2 = load i64, i64* %utf32chr, align 8, !tbaa !27
  %cmp34 = icmp ugt i64 %2, 65535
  br i1 %cmp34, label %if.then36, label %if.else51

if.then36:                                        ; preds = %for.body29
  %sub37 = add i64 %2, -65536
  store i64 %sub37, i64* %utf32chr, align 8, !tbaa !27
  %shr = lshr i64 %sub37, 10
  %3 = trunc i64 %shr to i32
  %conv39 = add i32 %3, 55296
  %shr42 = lshr i32 %conv39, 8
  %conv43 = trunc i32 %shr42 to i8
  store i8 %conv43, i8* %unitmp.0124, align 1, !tbaa !4
  %conv44 = trunc i32 %conv39 to i8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %unitmp.0124, i64 2
  %4 = lshr i64 %2, 8
  %5 = trunc i64 %4 to i8
  %6 = and i8 %5, 3
  %conv47 = or i8 %6, -36
  %incdec.ptr48 = getelementptr inbounds i8, i8* %unitmp.0124, i64 3
  store i8 %conv47, i8* %incdec.ptr45, align 1, !tbaa !4
  %conv49 = trunc i64 %2 to i8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %unitmp.0124, i64 4
  store i8 %conv49, i8* %incdec.ptr48, align 1, !tbaa !4
  br label %for.inc58

if.else51:                                        ; preds = %for.body29
  %shr52 = lshr i64 %2, 8
  %conv53 = trunc i64 %shr52 to i8
  store i8 %conv53, i8* %unitmp.0124, align 1, !tbaa !4
  %7 = load i64, i64* %utf32chr, align 8, !tbaa !27
  %conv55 = trunc i64 %7 to i8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %unitmp.0124, i64 2
  br label %for.inc58

for.inc58:                                        ; preds = %if.then36, %if.else51
  %conv55.sink = phi i8 [ %conv44, %if.then36 ], [ %conv55, %if.else51 ]
  %unitmp.1 = phi i8* [ %incdec.ptr50, %if.then36 ], [ %incdec.ptr56, %if.else51 ]
  %8 = getelementptr inbounds i8, i8* %unitmp.0124, i64 1
  store i8 %conv55.sink, i8* %8, align 1
  %add59 = add nsw i32 %call33, %i.1123
  %cmp27 = icmp sgt i32 %asclen.addr.0, %add59
  br i1 %cmp27, label %for.body29, label %for.end60, !llvm.loop !30

for.end60:                                        ; preds = %for.inc58, %for.end.thread, %for.cond26.preheader
  %ulen.0.lcssa130135 = phi i32 [ %phi.bo, %for.cond26.preheader ], [ 2, %for.end.thread ], [ %phi.bo, %for.inc58 ]
  %call21131134 = phi i8* [ %call21, %for.cond26.preheader ], [ %call21128, %for.end.thread ], [ %call21, %for.inc58 ]
  %unitmp.0.lcssa = phi i8* [ %call21, %for.cond26.preheader ], [ %call21128, %for.end.thread ], [ %unitmp.1, %for.inc58 ]
  %incdec.ptr61 = getelementptr inbounds i8, i8* %unitmp.0.lcssa, i64 1
  store i8 0, i8* %unitmp.0.lcssa, align 1, !tbaa !4
  store i8 0, i8* %incdec.ptr61, align 1, !tbaa !4
  %tobool.not = icmp eq i32* %unilen, null
  br i1 %tobool.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %for.end60
  store i32 %ulen.0.lcssa130135, i32* %unilen, align 4, !tbaa !14
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %for.end60
  %tobool65.not = icmp eq i8** %uni, null
  br i1 %tobool65.not, label %cleanup, label %if.then66

if.then66:                                        ; preds = %if.end64
  store i8* %call21131134, i8** %uni, align 8, !tbaa !16
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end64, %if.then66, %if.then24, %if.then6
  %retval.0 = phi i8* [ %call7, %if.then6 ], [ null, %if.then24 ], [ %call21131134, %if.then66 ], [ %call21131134, %if.end64 ], [ null, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i8* %retval.0
}

declare i32 @UTF8_getc(i8* noundef, i32 noundef, i64* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i8* @OPENSSL_uni2utf8(i8* nocapture noundef readonly %uni, i32 noundef %unilen) local_unnamed_addr #0 {
entry:
  %and = and i32 %unilen, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp109 = icmp sgt i32 %unilen, 0
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end4
  %i.0111 = phi i32 [ %i.1, %if.end4 ], [ 0, %for.cond.preheader ]
  %asclen.0110 = phi i32 [ %add9, %if.end4 ], [ 0, %for.cond.preheader ]
  %idx.ext = zext i32 %i.0111 to i64
  %add.ptr = getelementptr inbounds i8, i8* %uni, i64 %idx.ext
  %sub = sub nsw i32 %unilen, %i.0111
  %call = tail call fastcc i32 @bmp_to_utf8(i8* noundef null, i8* noundef %add.ptr, i32 noundef %sub) #8
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %for.body
  %call3 = tail call i8* @OPENSSL_uni2asc(i8* noundef %uni, i32 noundef %unilen) #8
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %cmp5 = icmp eq i32 %call, 4
  %i.1.v = select i1 %cmp5, i32 4, i32 2
  %i.1 = add nuw nsw i32 %i.1.v, %i.0111
  %add9 = add nsw i32 %call, %asclen.0110
  %cmp = icmp slt i32 %i.1, %unilen
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !31

for.end:                                          ; preds = %if.end4, %for.cond.preheader
  %asclen.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %add9, %if.end4 ]
  %tobool10.not = icmp eq i32 %unilen, 0
  br i1 %tobool10.not, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %sub11 = add nsw i32 %unilen, -2
  %idxprom = sext i32 %sub11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %uni, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %tobool12.not = icmp eq i8 %0, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.then19

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %sub14 = add nsw i32 %unilen, -1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %uni, i64 %idxprom15
  %1 = load i8, i8* %arrayidx16, align 1, !tbaa !4
  %tobool18.not = icmp eq i8 %1, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %for.end
  %inc = add nsw i32 %asclen.0.lcssa, 1
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false13
  %asclen.1 = phi i32 [ %inc, %if.then19 ], [ %asclen.0.lcssa, %lor.lhs.false13 ]
  %conv21 = sext i32 %asclen.1 to i64
  %call22 = tail call i8* @CRYPTO_malloc(i64 noundef %conv21, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 207) #6
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %if.then25, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %if.end20
  br i1 %cmp109, label %for.body30, label %for.end45

if.then25:                                        ; preds = %if.end20
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.OPENSSL_uni2utf8, i64 0, i64 0)) #6
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 35, i32 noundef 786688, i8* noundef null) #6
  br label %cleanup

for.body30:                                       ; preds = %for.cond27.preheader, %for.body30
  %i.2114 = phi i32 [ %i.3, %for.body30 ], [ 0, %for.cond27.preheader ]
  %asclen.2113 = phi i32 [ %add44, %for.body30 ], [ 0, %for.cond27.preheader ]
  %idx.ext31 = sext i32 %asclen.2113 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %call22, i64 %idx.ext31
  %idx.ext33 = zext i32 %i.2114 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %uni, i64 %idx.ext33
  %sub35 = sub nsw i32 %unilen, %i.2114
  %call36 = tail call fastcc i32 @bmp_to_utf8(i8* noundef nonnull %add.ptr32, i8* noundef %add.ptr34, i32 noundef %sub35) #8
  %cmp37 = icmp eq i32 %call36, 4
  %i.3.v = select i1 %cmp37, i32 4, i32 2
  %i.3 = add nuw nsw i32 %i.3.v, %i.2114
  %add44 = add nsw i32 %call36, %asclen.2113
  %cmp28 = icmp slt i32 %i.3, %unilen
  br i1 %cmp28, label %for.body30, label %for.end45.loopexit, !llvm.loop !32

for.end45.loopexit:                               ; preds = %for.body30
  %phi.cast = sext i32 %add44 to i64
  br label %for.end45

for.end45:                                        ; preds = %for.end45.loopexit, %for.cond27.preheader
  %asclen.2.lcssa = phi i64 [ 0, %for.cond27.preheader ], [ %phi.cast, %for.end45.loopexit ]
  br i1 %tobool10.not, label %if.then59, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %for.end45
  %sub48 = add nsw i32 %unilen, -2
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8, i8* %uni, i64 %idxprom49
  %2 = load i8, i8* %arrayidx50, align 1, !tbaa !4
  %tobool52.not = icmp eq i8 %2, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.then59

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %sub54 = add nsw i32 %unilen, -1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %uni, i64 %idxprom55
  %3 = load i8, i8* %arrayidx56, align 1, !tbaa !4
  %tobool58.not = icmp eq i8 %3, 0
  br i1 %tobool58.not, label %cleanup, label %if.then59

if.then59:                                        ; preds = %lor.lhs.false53, %lor.lhs.false47, %for.end45
  %arrayidx61 = getelementptr inbounds i8, i8* %call22, i64 %asclen.2.lcssa
  store i8 0, i8* %arrayidx61, align 1, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false53, %if.then59, %entry, %if.then25, %if.then2
  %retval.0 = phi i8* [ %call3, %if.then2 ], [ null, %if.then25 ], [ null, %entry ], [ %call22, %if.then59 ], [ %call22, %lor.lhs.false53 ]
  ret i8* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @bmp_to_utf8(i8* noundef %str, i8* nocapture noundef readonly %utf16, i32 noundef %len) unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %cleanup35, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %len, 2
  br i1 %cmp1, label %cleanup35, label %if.end3

if.end3:                                          ; preds = %if.end
  %0 = load i8, i8* %utf16, align 1, !tbaa !4
  %conv = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx4 = getelementptr inbounds i8, i8* %utf16, i64 1
  %1 = load i8, i8* %arrayidx4, align 1, !tbaa !4
  %conv5 = zext i8 %1 to i64
  %or = or i64 %shl, %conv5
  %2 = and i64 %conv, 248
  %3 = icmp eq i64 %2, 216
  br i1 %3, label %if.then11, label %if.end32

if.then11:                                        ; preds = %if.end3
  %cmp12 = icmp ult i32 %len, 4
  br i1 %cmp12, label %cleanup35, label %if.end15

if.end15:                                         ; preds = %if.then11
  %arrayidx17 = getelementptr inbounds i8, i8* %utf16, i64 2
  %4 = load i8, i8* %arrayidx17, align 1, !tbaa !4
  %conv18 = zext i8 %4 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %arrayidx20 = getelementptr inbounds i8, i8* %utf16, i64 3
  %5 = load i8, i8* %arrayidx20, align 1, !tbaa !4
  %conv21 = zext i8 %5 to i32
  %or22 = or i32 %shl19, %conv21
  %6 = add nsw i32 %or22, -57344
  %7 = icmp ult i32 %6, -1024
  br i1 %7, label %cleanup35, label %cleanup

cleanup:                                          ; preds = %if.end15
  %sub = shl nuw nsw i64 %or, 10
  %shl16 = add nsw i64 %sub, -56623104
  %sub29 = add nsw i32 %or22, -56320
  %conv30 = zext i32 %sub29 to i64
  %or31 = or i64 %shl16, %conv30
  %add = add nsw i64 %or31, 65536
  br label %if.end32

if.end32:                                         ; preds = %cleanup, %if.end3
  %utf32chr.1 = phi i64 [ %add, %cleanup ], [ %or, %if.end3 ]
  %8 = icmp ult i32 %len, 4
  %cond = select i1 %8, i32 %len, i32 4
  %call = tail call i32 @UTF8_putc(i8* noundef %str, i32 noundef %cond, i64 noundef %utf32chr.1) #6
  br label %cleanup35

cleanup35:                                        ; preds = %if.end15, %if.then11, %if.end, %entry, %if.end32
  %retval.1 = phi i32 [ %call, %if.end32 ], [ 0, %entry ], [ -1, %if.end ], [ -1, %if.then11 ], [ -1, %if.end15 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12_bio(%struct.bio_st* noundef %bp, %struct.PKCS12_st* noundef %p12) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS12_it() #6
  %0 = bitcast %struct.PKCS12_st* %p12 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare %struct.ASN1_ITEM_st* @PKCS12_it() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_PKCS12_fp(%struct._IO_FILE* noundef %fp, %struct.PKCS12_st* noundef %p12) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS12_it() #6
  %0 = bitcast %struct.PKCS12_st* %p12 to i8*
  %call1 = tail call i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #6
  ret i32 %call1
}

declare i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @d2i_PKCS12_bio(%struct.bio_st* noundef %bp, %struct.PKCS12_st** noundef %p12) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS12_it() #6
  %0 = bitcast %struct.PKCS12_st** %p12 to i8*
  %call1 = tail call i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef %call, %struct.bio_st* noundef %bp, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.PKCS12_st*
  ret %struct.PKCS12_st* %1
}

declare i8* @ASN1_item_d2i_bio(%struct.ASN1_ITEM_st* noundef, %struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.PKCS12_st* @d2i_PKCS12_fp(%struct._IO_FILE* noundef %fp, %struct.PKCS12_st** noundef %p12) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ASN1_ITEM_st* @PKCS12_it() #6
  %0 = bitcast %struct.PKCS12_st** %p12 to i8*
  %call1 = tail call i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef %call, %struct._IO_FILE* noundef %fp, i8* noundef %0) #6
  %1 = bitcast i8* %call1 to %struct.PKCS12_st*
  ret %struct.PKCS12_st* %1
}

declare i8* @ASN1_item_d2i_fp(%struct.ASN1_ITEM_st* noundef, %struct._IO_FILE* noundef, i8* noundef) local_unnamed_addr #3

declare i32 @UTF8_putc(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin nounwind readonly willreturn "no-builtins" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9}
!9 = distinct !{!9, !"LVerDomain"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !11, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12, !25}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !11, !12}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !5, i64 0}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
