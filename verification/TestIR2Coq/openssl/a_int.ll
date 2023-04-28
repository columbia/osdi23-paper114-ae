; ModuleID = 'crypto/asn1/a_int.c'
source_filename = "crypto/asn1/a_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/asn1/a_int.c\00", align 1
@__func__.ossl_c2i_ASN1_INTEGER = private unnamed_addr constant [22 x i8] c"ossl_c2i_ASN1_INTEGER\00", align 1
@__func__.d2i_ASN1_UINTEGER = private unnamed_addr constant [18 x i8] c"d2i_ASN1_UINTEGER\00", align 1
@__func__.ossl_c2i_uint64_int = private unnamed_addr constant [20 x i8] c"ossl_c2i_uint64_int\00", align 1
@__func__.c2i_ibuf = private unnamed_addr constant [9 x i8] c"c2i_ibuf\00", align 1
@__func__.asn1_string_get_int64 = private unnamed_addr constant [22 x i8] c"asn1_string_get_int64\00", align 1
@__func__.asn1_get_int64 = private unnamed_addr constant [15 x i8] c"asn1_get_int64\00", align 1
@__func__.asn1_string_get_uint64 = private unnamed_addr constant [23 x i8] c"asn1_string_get_uint64\00", align 1
@__func__.bn_to_asn1_string = private unnamed_addr constant [18 x i8] c"bn_to_asn1_string\00", align 1
@__func__.asn1_string_to_bn = private unnamed_addr constant [18 x i8] c"asn1_string_to_bn\00", align 1
@__func__.asn1_get_uint64 = private unnamed_addr constant [16 x i8] c"asn1_get_uint64\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_INTEGER_dup(%struct.asn1_string_st* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %x) #8
  ret %struct.asn1_string_st* %call
}

declare %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_cmp(%struct.asn1_string_st* noundef %x, %struct.asn1_string_st* noundef %y) local_unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %0, 256
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %y, i64 0, i32 1
  %1 = load i32, i32* %type1, align 4, !tbaa !4
  %and2 = and i32 %1, 256
  %cmp.not = icmp eq i32 %and, %and2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 -1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef nonnull %x, %struct.asn1_string_st* noundef nonnull %y) #8
  %tobool4.not = icmp eq i32 %and, 0
  %sub = sub nsw i32 0, %call
  %spec.select = select i1 %tobool4.not, i32 %call, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @ASN1_STRING_cmp(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define i32 @ossl_i2c_ASN1_INTEGER(%struct.asn1_string_st* nocapture noundef readonly %a, i8** noundef %pp) local_unnamed_addr #3 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %1 = load i32, i32* %length, align 8, !tbaa !12
  %conv = sext i32 %1 to i64
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %2 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %2, 256
  %call = tail call fastcc i64 @i2c_ibuf(i8* noundef %0, i64 noundef %conv, i32 noundef %and, i8** noundef %pp) #9
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i64 @i2c_ibuf(i8* noundef readonly %b, i64 noundef %blen, i32 noundef %neg, i8** noundef %pp) unnamed_addr #3 {
entry:
  %cmp = icmp ne i8* %b, null
  %tobool = icmp ne i64 %blen, 0
  %or.cond = and i1 %cmp, %tobool
  br i1 %or.cond, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %0 = load i8, i8* %b, align 1, !tbaa !13
  %tobool1 = icmp eq i32 %neg, 0
  %cmp3 = icmp slt i8 %0, 0
  br i1 %tobool1, label %if.end25, label %if.then7

if.then7:                                         ; preds = %if.then
  %cmp8 = icmp ugt i8 %0, -128
  br i1 %cmp8, label %if.end25, label %if.else11

if.else11:                                        ; preds = %if.then7
  %cmp12 = icmp eq i8 %0, -128
  br i1 %cmp12, label %for.cond.preheader, label %if.end25

for.cond.preheader:                               ; preds = %if.else11
  %cmp1569 = icmp ugt i64 %blen, 1
  br i1 %cmp1569, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %1 = add i64 %blen, -1
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %for.body.preheader74, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %1, -8
  %ind.end = or i64 %n.vec, 1
  %2 = add i64 %n.vec, -8
  %3 = lshr exact i64 %2, 3
  %4 = add nuw nsw i64 %3, 1
  %xtraiter = and i64 %4, 1
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %4, 4611686018427387902
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %20, %vector.body ]
  %vec.phi72 = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %21, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = or i64 %index, 1
  %6 = getelementptr inbounds i8, i8* %b, i64 %offset.idx
  %7 = bitcast i8* %6 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %7, align 1, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %6, i64 4
  %9 = bitcast i8* %8 to <4 x i8>*
  %wide.load73 = load <4 x i8>, <4 x i8>* %9, align 1, !tbaa !13
  %10 = zext <4 x i8> %wide.load to <4 x i32>
  %11 = zext <4 x i8> %wide.load73 to <4 x i32>
  %12 = or <4 x i32> %vec.phi, %10
  %13 = or <4 x i32> %vec.phi72, %11
  %offset.idx.1 = or i64 %index, 9
  %14 = getelementptr inbounds i8, i8* %b, i64 %offset.idx.1
  %15 = bitcast i8* %14 to <4 x i8>*
  %wide.load.1 = load <4 x i8>, <4 x i8>* %15, align 1, !tbaa !13
  %16 = getelementptr inbounds i8, i8* %14, i64 4
  %17 = bitcast i8* %16 to <4 x i8>*
  %wide.load73.1 = load <4 x i8>, <4 x i8>* %17, align 1, !tbaa !13
  %18 = zext <4 x i8> %wide.load.1 to <4 x i32>
  %19 = zext <4 x i8> %wide.load73.1 to <4 x i32>
  %20 = or <4 x i32> %12, %18
  %21 = or <4 x i32> %13, %19
  %index.next.1 = add nuw i64 %index, 16
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !14

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.bo = or i64 %index.next.1, 1
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %.lcssa76.ph = phi <4 x i32> [ undef, %vector.ph ], [ %20, %middle.block.unr-lcssa.loopexit ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %21, %middle.block.unr-lcssa.loopexit ]
  %index.unr = phi i64 [ 1, %vector.ph ], [ %phi.bo, %middle.block.unr-lcssa.loopexit ]
  %vec.phi.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %20, %middle.block.unr-lcssa.loopexit ]
  %vec.phi72.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %21, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %22 = getelementptr inbounds i8, i8* %b, i64 %index.unr
  %23 = bitcast i8* %22 to <4 x i8>*
  %wide.load.epil = load <4 x i8>, <4 x i8>* %23, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %22, i64 4
  %25 = bitcast i8* %24 to <4 x i8>*
  %wide.load73.epil = load <4 x i8>, <4 x i8>* %25, align 1, !tbaa !13
  %26 = zext <4 x i8> %wide.load.epil to <4 x i32>
  %27 = zext <4 x i8> %wide.load73.epil to <4 x i32>
  %28 = or <4 x i32> %vec.phi.unr, %26
  %29 = or <4 x i32> %vec.phi72.unr, %27
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa76 = phi <4 x i32> [ %.lcssa76.ph, %middle.block.unr-lcssa ], [ %28, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %29, %vector.body.epil ]
  %bin.rdx = or <4 x i32> %.lcssa, %.lcssa76
  %30 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end.loopexit, label %for.body.preheader74

for.body.preheader74:                             ; preds = %for.body.preheader, %middle.block
  %i.071.ph = phi i64 [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %pad.070.ph = phi i32 [ 0, %for.body.preheader ], [ %30, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader74, %for.body
  %i.071 = phi i64 [ %inc, %for.body ], [ %i.071.ph, %for.body.preheader74 ]
  %pad.070 = phi i32 [ %or, %for.body ], [ %pad.070.ph, %for.body.preheader74 ]
  %arrayidx17 = getelementptr inbounds i8, i8* %b, i64 %i.071
  %31 = load i8, i8* %arrayidx17, align 1, !tbaa !13
  %conv18 = zext i8 %31 to i32
  %or = or i32 %pad.070, %conv18
  %inc = add nuw i64 %i.071, 1
  %exitcond.not = icmp eq i64 %inc, %blen
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body, !llvm.loop !17

for.end.loopexit:                                 ; preds = %for.body, %middle.block
  %or.lcssa = phi i32 [ %30, %middle.block ], [ %or, %for.body ]
  %phi.cmp = icmp ne i32 %or.lcssa, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %pad.0.lcssa = phi i1 [ false, %for.cond.preheader ], [ %phi.cmp, %for.end.loopexit ]
  %conv21 = sext i1 %pad.0.lcssa to i8
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then7, %if.else11, %for.end
  %pad.1.shrunk = phi i1 [ %pad.0.lcssa, %for.end ], [ false, %if.else11 ], [ %cmp3, %if.then ], [ true, %if.then7 ]
  %pb.0 = phi i8 [ %conv21, %for.end ], [ -1, %if.else11 ], [ 0, %if.then ], [ -1, %if.then7 ]
  %conv26 = zext i1 %pad.1.shrunk to i64
  %add = add i64 %conv26, %blen
  br label %if.end28

if.end28:                                         ; preds = %entry, %if.end25
  %blen.addr.0 = phi i64 [ %blen, %if.end25 ], [ 0, %entry ]
  %pad.2 = phi i64 [ %conv26, %if.end25 ], [ 0, %entry ]
  %ret.0 = phi i64 [ %add, %if.end25 ], [ 1, %entry ]
  %pb.1 = phi i8 [ %pb.0, %if.end25 ], [ 0, %entry ]
  %cmp29 = icmp eq i8** %pp, null
  br i1 %cmp29, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %32 = load i8*, i8** %pp, align 8, !tbaa !19
  %cmp31 = icmp eq i8* %32, null
  br i1 %cmp31, label %cleanup, label %if.end34

if.end34:                                         ; preds = %lor.lhs.false
  store i8 %pb.1, i8* %32, align 1, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %pad.2
  tail call fastcc void @twos_complement(i8* noundef nonnull %add.ptr, i8* noundef %b, i64 noundef %blen.addr.0, i8 noundef zeroext %pb.1) #9
  %33 = load i8*, i8** %pp, align 8, !tbaa !19
  %add.ptr35 = getelementptr inbounds i8, i8* %33, i64 %ret.0
  store i8* %add.ptr35, i8** %pp, align 8, !tbaa !19
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %lor.lhs.false, %if.end34
  ret i64 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ossl_c2i_ASN1_INTEGER(%struct.asn1_string_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %neg = alloca i32, align 4
  %0 = bitcast i32* %neg to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #10
  %1 = load i8*, i8** %pp, align 8, !tbaa !19
  %call = tail call fastcc i64 @c2i_ibuf(i8* noundef null, i32* noundef null, i8* noundef %1, i64 noundef %len) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.asn1_string_st** %a, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !19
  %cmp2 = icmp eq %struct.asn1_string_st* %2, null
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #8
  %cmp5 = icmp eq %struct.asn1_string_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.then3
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call4, i64 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !4
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.end7
  %ret.0 = phi %struct.asn1_string_st* [ %call4, %if.end7 ], [ %2, %lor.lhs.false ]
  %conv = trunc i64 %call to i32
  %call9 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %ret.0, i8* noundef null, i32 noundef %conv) #8
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 2
  %3 = load i8*, i8** %data, align 8, !tbaa !11
  %4 = load i8*, i8** %pp, align 8, !tbaa !19
  %call14 = call fastcc i64 @c2i_ibuf(i8* noundef %3, i32* noundef nonnull %neg, i8* noundef %4, i64 noundef %len) #9
  %5 = load i32, i32* %neg, align 4, !tbaa !20
  %cmp15.not = icmp eq i32 %5, 0
  %type20 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 1
  %6 = load i32, i32* %type20, align 4, !tbaa !4
  %and = and i32 %6, -257
  %masksel = select i1 %cmp15.not, i32 0, i32 256
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, i32* %type20, align 4, !tbaa !4
  %7 = load i8*, i8** %pp, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %len
  store i8* %add.ptr, i8** %pp, align 8, !tbaa !19
  br i1 %cmp1, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end13
  store %struct.asn1_string_st* %ret.0, %struct.asn1_string_st** %a, align 8, !tbaa !19
  br label %cleanup

err:                                              ; preds = %if.end8
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ossl_c2i_ASN1_INTEGER, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #8
  br i1 %cmp1, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %err
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !19
  %cmp29.not = icmp eq %struct.asn1_string_st* %8, %ret.0
  br i1 %cmp29.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28, %err
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false28, %if.then31, %if.end13, %if.then24, %if.then3, %entry
  %retval.0 = phi %struct.asn1_string_st* [ null, %entry ], [ null, %if.then3 ], [ %ret.0, %if.then24 ], [ %ret.0, %if.end13 ], [ null, %if.then31 ], [ null, %lor.lhs.false28 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #10
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @c2i_ibuf(i8* noundef writeonly %b, i32* noundef writeonly %pneg, i8* nocapture noundef readonly %p, i64 noundef %plen) unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %plen, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.c2i_ibuf, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 222, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, i8* %p, align 1, !tbaa !13
  %1 = and i8 %0, -128
  %tobool.not = icmp eq i32* %pneg, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %and = zext i8 %1 to i32
  store i32 %and, i32* %pneg, align 4, !tbaa !20
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %cmp3 = icmp eq i64 %plen, 1
  br i1 %cmp3, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end2
  %cmp6.not = icmp eq i8* %b, null
  br i1 %cmp6.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then5
  %tobool9.not = icmp eq i8 %1, 0
  %2 = load i8, i8* %p, align 1, !tbaa !13
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %add = sub i8 0, %2
  store i8 %add, i8* %b, align 1, !tbaa !13
  br label %cleanup

if.else:                                          ; preds = %if.then8
  store i8 %2, i8* %b, align 1, !tbaa !13
  br label %cleanup

if.end19:                                         ; preds = %if.end2
  %3 = load i8, i8* %p, align 1, !tbaa !13
  switch i8 %3, label %if.end46 [
    i8 0, label %land.lhs.true
    i8 -1, label %for.body.preheader
  ]

for.body.preheader:                               ; preds = %if.end19
  %4 = add i64 %plen, -1
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %for.body.preheader98, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %4, -8
  %ind.end = or i64 %n.vec, 1
  %5 = add i64 %n.vec, -8
  %6 = lshr exact i64 %5, 3
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 1
  %8 = icmp eq i64 %5, 0
  br i1 %8, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %7, 4611686018427387902
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %23, %vector.body ]
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %24, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = or i64 %index, 1
  %9 = getelementptr inbounds i8, i8* %p, i64 %offset.idx
  %10 = bitcast i8* %9 to <4 x i8>*
  %wide.load = load <4 x i8>, <4 x i8>* %10, align 1, !tbaa !13
  %11 = getelementptr inbounds i8, i8* %9, i64 4
  %12 = bitcast i8* %11 to <4 x i8>*
  %wide.load97 = load <4 x i8>, <4 x i8>* %12, align 1, !tbaa !13
  %13 = zext <4 x i8> %wide.load to <4 x i32>
  %14 = zext <4 x i8> %wide.load97 to <4 x i32>
  %15 = or <4 x i32> %vec.phi, %13
  %16 = or <4 x i32> %vec.phi96, %14
  %offset.idx.1 = or i64 %index, 9
  %17 = getelementptr inbounds i8, i8* %p, i64 %offset.idx.1
  %18 = bitcast i8* %17 to <4 x i8>*
  %wide.load.1 = load <4 x i8>, <4 x i8>* %18, align 1, !tbaa !13
  %19 = getelementptr inbounds i8, i8* %17, i64 4
  %20 = bitcast i8* %19 to <4 x i8>*
  %wide.load97.1 = load <4 x i8>, <4 x i8>* %20, align 1, !tbaa !13
  %21 = zext <4 x i8> %wide.load.1 to <4 x i32>
  %22 = zext <4 x i8> %wide.load97.1 to <4 x i32>
  %23 = or <4 x i32> %15, %21
  %24 = or <4 x i32> %16, %22
  %index.next.1 = add nuw i64 %index, 16
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa.loopexit, label %vector.body, !llvm.loop !21

middle.block.unr-lcssa.loopexit:                  ; preds = %vector.body
  %phi.bo = or i64 %index.next.1, 1
  br label %middle.block.unr-lcssa

middle.block.unr-lcssa:                           ; preds = %middle.block.unr-lcssa.loopexit, %vector.ph
  %.lcssa100.ph = phi <4 x i32> [ undef, %vector.ph ], [ %23, %middle.block.unr-lcssa.loopexit ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %24, %middle.block.unr-lcssa.loopexit ]
  %index.unr = phi i64 [ 1, %vector.ph ], [ %phi.bo, %middle.block.unr-lcssa.loopexit ]
  %vec.phi.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %23, %middle.block.unr-lcssa.loopexit ]
  %vec.phi96.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %24, %middle.block.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %25 = getelementptr inbounds i8, i8* %p, i64 %index.unr
  %26 = bitcast i8* %25 to <4 x i8>*
  %wide.load.epil = load <4 x i8>, <4 x i8>* %26, align 1, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %25, i64 4
  %28 = bitcast i8* %27 to <4 x i8>*
  %wide.load97.epil = load <4 x i8>, <4 x i8>* %28, align 1, !tbaa !13
  %29 = zext <4 x i8> %wide.load.epil to <4 x i32>
  %30 = zext <4 x i8> %wide.load97.epil to <4 x i32>
  %31 = or <4 x i32> %vec.phi.unr, %29
  %32 = or <4 x i32> %vec.phi96.unr, %30
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %.lcssa100 = phi <4 x i32> [ %.lcssa100.ph, %middle.block.unr-lcssa ], [ %31, %vector.body.epil ]
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %32, %vector.body.epil ]
  %bin.rdx = or <4 x i32> %.lcssa, %.lcssa100
  %33 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %if.end38, label %for.body.preheader98

for.body.preheader98:                             ; preds = %for.body.preheader, %middle.block
  %i.095.ph = phi i64 [ 1, %for.body.preheader ], [ %ind.end, %middle.block ]
  %pad.094.ph = phi i32 [ 0, %for.body.preheader ], [ %33, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader98, %for.body
  %i.095 = phi i64 [ %inc, %for.body ], [ %i.095.ph, %for.body.preheader98 ]
  %pad.094 = phi i32 [ %or, %for.body ], [ %pad.094.ph, %for.body.preheader98 ]
  %arrayidx33 = getelementptr inbounds i8, i8* %p, i64 %i.095
  %34 = load i8, i8* %arrayidx33, align 1, !tbaa !13
  %conv34 = zext i8 %34 to i32
  %or = or i32 %pad.094, %conv34
  %inc = add nuw i64 %i.095, 1
  %exitcond.not = icmp eq i64 %inc, %plen
  br i1 %exitcond.not, label %if.end38, label %for.body, !llvm.loop !22

if.end38:                                         ; preds = %for.body, %middle.block
  %or.lcssa = phi i32 [ %33, %middle.block ], [ %or, %for.body ]
  %phi.cmp = icmp eq i32 %or.lcssa, 0
  br i1 %phi.cmp, label %if.end46, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end19, %if.end38
  %arrayidx40 = getelementptr inbounds i8, i8* %p, i64 1
  %35 = load i8, i8* %arrayidx40, align 1, !tbaa !13
  %36 = and i8 %35, -128
  %cmp43 = icmp eq i8 %1, %36
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %land.lhs.true
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.c2i_ibuf, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 221, i8* noundef null) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end19, %land.lhs.true, %if.end38
  %pad.188 = phi i64 [ 1, %land.lhs.true ], [ 0, %if.end38 ], [ 0, %if.end19 ]
  %sub = sub nuw i64 %plen, %pad.188
  %cmp48.not = icmp eq i8* %b, null
  br i1 %cmp48.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %if.end46
  %add.ptr = getelementptr inbounds i8, i8* %p, i64 %pad.188
  %sext = ashr i8 %0, 7
  tail call fastcc void @twos_complement(i8* noundef nonnull %b, i8* noundef nonnull %add.ptr, i64 noundef %sub, i8 noundef zeroext %sext) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then50, %if.then5, %if.else, %if.then10, %if.then45, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 0, %if.then45 ], [ 1, %if.then10 ], [ 1, %if.else ], [ 1, %if.then5 ], [ %sub, %if.then50 ], [ %sub, %if.end46 ]
  ret i64 %retval.0
}

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @d2i_ASN1_UINTEGER(%struct.asn1_string_st** noundef %a, i8** nocapture noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  %tag = alloca i32, align 4
  %xclass = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #10
  store i64 0, i64* %len, align 8, !tbaa !23
  %2 = bitcast i32* %tag to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  %3 = bitcast i32* %xclass to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  %cmp = icmp eq %struct.asn1_string_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !19
  %cmp1 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.asn1_string_st* @ASN1_INTEGER_new() #8
  %cmp2 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call, i64 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !4
  br label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.end
  %ret.0 = phi %struct.asn1_string_st* [ %call, %if.end ], [ %4, %lor.lhs.false ]
  %5 = load i8*, i8** %pp, align 8, !tbaa !19
  store i8* %5, i8** %p, align 8, !tbaa !19
  %call5 = call i32 @ASN1_get_object(i8** noundef nonnull %p, i64* noundef nonnull %len, i32* noundef nonnull %tag, i32* noundef nonnull %xclass, i64 noundef %length) #8
  %and = and i32 %call5, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %err

if.end7:                                          ; preds = %if.end4
  %6 = load i32, i32* %tag, align 4, !tbaa !20
  %cmp8.not = icmp eq i32 %6, 2
  br i1 %cmp8.not, label %if.end10, label %err

if.end10:                                         ; preds = %if.end7
  %7 = load i64, i64* %len, align 8, !tbaa !23
  %cmp11 = icmp slt i64 %7, 0
  br i1 %cmp11, label %err, label %if.end13

if.end13:                                         ; preds = %if.end10
  %add = shl i64 %7, 32
  %sext = add i64 %add, 4294967296
  %conv14 = ashr exact i64 %sext, 32
  %call15 = call i8* @CRYPTO_malloc(i64 noundef %conv14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 432) #8
  %cmp16 = icmp eq i8* %call15, null
  br i1 %cmp16, label %err, label %if.end19

if.end19:                                         ; preds = %if.end13
  %type20 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 1
  store i32 2, i32* %type20, align 4, !tbaa !4
  %8 = load i64, i64* %len, align 8, !tbaa !23
  %tobool21.not = icmp eq i64 %8, 0
  br i1 %tobool21.not, label %if.end33, label %if.then22

if.then22:                                        ; preds = %if.end19
  %9 = load i8*, i8** %p, align 8, !tbaa !19
  %10 = load i8, i8* %9, align 1, !tbaa !13
  %cmp24 = icmp eq i8 %10, 0
  %cmp26 = icmp ne i64 %8, 1
  %or.cond = select i1 %cmp24, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then22
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !19
  %dec = add nsw i64 %8, -1
  store i64 %dec, i64* %len, align 8, !tbaa !23
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then22
  %11 = phi i64 [ %dec, %if.then28 ], [ %8, %if.then22 ]
  %12 = phi i8* [ %incdec.ptr, %if.then28 ], [ %9, %if.then22 ]
  %sext78 = shl i64 %11, 32
  %conv31 = ashr exact i64 %sext78, 32
  %call32 = call i8* @memcpy(i8* noundef nonnull %call15, i8* noundef nonnull %12, i64 noundef %conv31) #8
  %13 = load i64, i64* %len, align 8, !tbaa !23
  %14 = load i8*, i8** %p, align 8, !tbaa !19
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %add.ptr, i8** %p, align 8, !tbaa !19
  br label %if.end33

if.end33:                                         ; preds = %if.end29, %if.end19
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 2
  %15 = load i8*, i8** %data, align 8, !tbaa !11
  call void @CRYPTO_free(i8* noundef %15, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 447) #8
  store i8* %call15, i8** %data, align 8, !tbaa !11
  %16 = load i64, i64* %len, align 8, !tbaa !23
  %conv35 = trunc i64 %16 to i32
  %length36 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.0, i64 0, i32 0
  store i32 %conv35, i32* %length36, align 8, !tbaa !12
  br i1 %cmp, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end33
  store %struct.asn1_string_st* %ret.0, %struct.asn1_string_st** %a, align 8, !tbaa !19
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end33
  %17 = load i8*, i8** %p, align 8, !tbaa !19
  store i8* %17, i8** %pp, align 8, !tbaa !19
  br label %cleanup

err:                                              ; preds = %if.end13, %if.end10, %if.end7, %if.end4
  %i.0 = phi i32 [ 102, %if.end4 ], [ 115, %if.end7 ], [ 226, %if.end10 ], [ 786688, %if.end13 ]
  call void @ERR_new() #8
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.d2i_ASN1_UINTEGER, i64 0, i64 0)) #8
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %i.0, i8* noundef null) #8
  br i1 %cmp, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %err
  %18 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !19
  %cmp44.not = icmp eq %struct.asn1_string_st* %18, %ret.0
  br i1 %cmp44.not, label %cleanup, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43, %err
  call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef nonnull %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false43, %if.then46, %if.then, %if.end40
  %retval.0 = phi %struct.asn1_string_st* [ %ret.0, %if.end40 ], [ null, %if.then ], [ null, %if.then46 ], [ null, %lor.lhs.false43 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret %struct.asn1_string_st* %retval.0
}

declare i32 @ASN1_get_object(i8** noundef, i64* noundef, i32* noundef, i32* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_get_int64(i64* nocapture noundef writeonly %pr, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_get_int64(i64* noundef %pr, %struct.asn1_string_st* noundef %a, i32 noundef 2) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_string_get_int64(i64* nocapture noundef writeonly %pr, %struct.asn1_string_st* noundef readonly %a, i32 noundef %itype) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_string_get_int64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %0, -257
  %cmp1.not = icmp eq i32 %and, %itype
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.asn1_string_get_int64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 225, i8* noundef null) #8
  br label %return

if.end3:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !12
  %conv = sext i32 %2 to i64
  %and5 = and i32 %0, 256
  %call = tail call fastcc i32 @asn1_get_int64(i64* noundef %pr, i8* noundef %1, i64 noundef %conv, i32 noundef %and5) #9
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %call, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %r, i32 noundef 2) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_string_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %r, i32 noundef %itype) unnamed_addr #0 {
entry:
  %tbuf = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  store i32 %itype, i32* %type, align 4, !tbaa !4
  %cmp = icmp slt i64 %r, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub i64 0, %r
  %call = call fastcc i64 @asn1_put_uint64(i8* noundef nonnull %0, i64 noundef %sub) #9
  %1 = load i32, i32* %type, align 4, !tbaa !4
  %or = or i32 %1, 256
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call fastcc i64 @asn1_put_uint64(i8* noundef nonnull %0, i64 noundef %r) #9
  %2 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %2, -257
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then ]
  %off.0 = phi i64 [ %call3, %if.else ], [ %call, %if.then ]
  store i32 %storemerge, i32* %type, align 4, !tbaa !4
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %tbuf, i64 0, i64 %off.0
  %3 = trunc i64 %off.0 to i32
  %conv = sub i32 8, %3
  %call7 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %a, i8* noundef nonnull %add.ptr, i32 noundef %conv) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %call7
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_get_uint64(i64* nocapture noundef writeonly %pr, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_get_uint64(i64* noundef %pr, %struct.asn1_string_st* noundef %a) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_string_get_uint64(i64* nocapture noundef writeonly %pr, %struct.asn1_string_st* noundef readonly %a) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.asn1_string_get_uint64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #8
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %0, -257
  %cmp1.not = icmp eq i32 %and, 2
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.asn1_string_get_uint64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 225, i8* noundef null) #8
  br label %return

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %0, 256
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 373, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.asn1_string_get_uint64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 226, i8* noundef null) #8
  br label %return

if.end7:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !12
  %conv = sext i32 %2 to i64
  %call = tail call fastcc i32 @asn1_get_uint64(i64* noundef %pr, i8* noundef %1, i64 noundef %conv) #9
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then6 ], [ %call, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_set_uint64(%struct.asn1_string_st* noundef %a, i64 noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_set_uint64(%struct.asn1_string_st* noundef %a, i64 noundef %r) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_string_set_uint64(%struct.asn1_string_st* noundef %a, i64 noundef %r) unnamed_addr #0 {
entry:
  %tbuf = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %tbuf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  store i32 2, i32* %type, align 4, !tbaa !4
  %call = call fastcc i64 @asn1_put_uint64(i8* noundef nonnull %0, i64 noundef %r) #9
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %tbuf, i64 0, i64 %call
  %1 = trunc i64 %call to i32
  %conv = sub i32 8, %1
  %call2 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %a, i8* noundef nonnull %add.ptr, i32 noundef %conv) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %call2
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef %a, i64 noundef %v) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_INTEGER_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %v) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %r = alloca i64, align 8
  %0 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = call i32 @ASN1_INTEGER_get_int64(i64* noundef nonnull %r, %struct.asn1_string_st* noundef nonnull %a) #9
  %cmp1 = icmp eq i32 %call, 0
  %1 = load i64, i64* %r, align 8
  %spec.select = select i1 %cmp1, i64 -1, i64 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef %bn, %struct.asn1_string_st* noundef %ai) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.asn1_string_st* @bn_to_asn1_string(%struct.bignum_st* noundef %bn, %struct.asn1_string_st* noundef %ai, i32 noundef 2) #9
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.asn1_string_st* @bn_to_asn1_string(%struct.bignum_st* noundef %bn, %struct.asn1_string_st* noundef %ai, i32 noundef %atype) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %ai, null
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ai, i64 0, i32 1
  store i32 %atype, i32* %type, align 4, !tbaa !4
  br label %if.end3

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %atype) #8
  %cmp1 = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp1, label %err, label %if.end3

if.end3:                                          ; preds = %if.end.thread, %if.end
  %ret.052 = phi %struct.asn1_string_st* [ %ai, %if.end.thread ], [ %call, %if.end ]
  %call4 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef %bn) #8
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %call5 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %bn) #8
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %type8 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.052, i64 0, i32 1
  %0 = load i32, i32* %type8, align 4, !tbaa !4
  %or = or i32 %0, 258
  store i32 %or, i32* %type8, align 4, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.end3
  %call10 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef %bn) #8
  %add = add nsw i32 %call10, 7
  %div = sdiv i32 %add, 8
  %add.off = add i32 %call10, 14
  %1 = icmp ult i32 %add.off, 15
  %spec.store.select = select i1 %1, i32 1, i32 %div
  %call14 = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef nonnull %ret.052, i8* noundef null, i32 noundef %spec.store.select) #8
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %err, label %if.end17

if.end17:                                         ; preds = %if.end9
  %call18 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef %bn) #8
  %tobool19.not = icmp eq i32 %call18, 0
  %data22 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.052, i64 0, i32 2
  %2 = load i8*, i8** %data22, align 8, !tbaa !11
  br i1 %tobool19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.end17
  store i8 0, i8* %2, align 1, !tbaa !13
  br label %if.end24

if.else21:                                        ; preds = %if.end17
  %call23 = tail call i32 @BN_bn2bin(%struct.bignum_st* noundef %bn, i8* noundef %2) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then20
  %len.0 = phi i32 [ %spec.store.select, %if.then20 ], [ %call23, %if.else21 ]
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ret.052, i64 0, i32 0
  store i32 %len.0, i32* %length, align 8, !tbaa !12
  br label %cleanup

err:                                              ; preds = %if.end9, %if.end
  %.sink54 = phi i32 [ 475, %if.end ], [ 488, %if.end9 ]
  %.sink = phi i32 [ 524554, %if.end ], [ 786688, %if.end9 ]
  %ret.051 = phi %struct.asn1_string_st* [ null, %if.end ], [ %ret.052, %if.end9 ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink54, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.bn_to_asn1_string, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, i8* noundef null) #8
  %cmp25.not = icmp eq %struct.asn1_string_st* %ret.051, %ai
  br i1 %cmp25.not, label %cleanup, label %if.then26

if.then26:                                        ; preds = %err
  tail call void @ASN1_INTEGER_free(%struct.asn1_string_st* noundef %ret.051) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then26, %if.end24
  %retval.0 = phi %struct.asn1_string_st* [ %ret.052, %if.end24 ], [ null, %if.then26 ], [ null, %err ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* nocapture noundef readonly %ai, %struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @asn1_string_to_bn(%struct.asn1_string_st* noundef %ai, %struct.bignum_st* noundef %bn, i32 noundef 2) #9
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @asn1_string_to_bn(%struct.asn1_string_st* nocapture noundef readonly %ai, %struct.bignum_st* noundef %bn, i32 noundef %itype) unnamed_addr #0 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ai, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %0, -257
  %cmp.not = icmp eq i32 %and, %itype
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 511, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.asn1_string_to_bn, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 225, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ai, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !11
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %ai, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !12
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %1, i32 noundef %2, %struct.bignum_st* noundef %bn) #8
  %cmp1 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.asn1_string_to_bn, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 105, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %type, align 4, !tbaa !4
  %and5 = and i32 %3, 256
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %cleanup, label %if.then6

if.then6:                                         ; preds = %if.end3
  tail call void @BN_set_negative(%struct.bignum_st* noundef nonnull %call, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then6, %if.then2, %if.then
  %retval.0 = phi %struct.bignum_st* [ null, %if.then ], [ null, %if.then2 ], [ %call, %if.then6 ], [ %call, %if.end3 ]
  ret %struct.bignum_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_ENUMERATED_get_int64(i64* nocapture noundef writeonly %pr, %struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_get_int64(i64* noundef %pr, %struct.asn1_string_st* noundef %a, i32 noundef 10) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_ENUMERATED_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %r) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @asn1_string_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %r, i32 noundef 10) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_ENUMERATED_set(%struct.asn1_string_st* noundef %a, i64 noundef %v) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ASN1_ENUMERATED_set_int64(%struct.asn1_string_st* noundef %a, i64 noundef %v) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i64 @ASN1_ENUMERATED_get(%struct.asn1_string_st* noundef %a) local_unnamed_addr #0 {
entry:
  %r = alloca i64, align 8
  %0 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %1 = load i32, i32* %type, align 4, !tbaa !4
  %and = and i32 %1, -257
  %cmp1.not = icmp eq i32 %and, 10
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !12
  %cmp4 = icmp sgt i32 %2, 8
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %call = call i32 @ASN1_ENUMERATED_get_int64(i64* noundef nonnull %r, %struct.asn1_string_st* noundef nonnull %a) #9
  %cmp7 = icmp eq i32 %call, 0
  %3 = load i64, i64* %r, align 8
  %spec.select = select i1 %cmp7, i64 -1, i64 %3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ -1, %if.end ], [ 4294967295, %if.end3 ], [ %spec.select, %if.end6 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @BN_to_ASN1_ENUMERATED(%struct.bignum_st* noundef %bn, %struct.asn1_string_st* noundef %ai) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.asn1_string_st* @bn_to_asn1_string(%struct.bignum_st* noundef %bn, %struct.asn1_string_st* noundef %ai, i32 noundef 10) #9
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define %struct.bignum_st* @ASN1_ENUMERATED_to_BN(%struct.asn1_string_st* nocapture noundef readonly %ai, %struct.bignum_st* noundef %bn) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc %struct.bignum_st* @asn1_string_to_bn(%struct.asn1_string_st* noundef %ai, %struct.bignum_st* noundef %bn, i32 noundef 10) #9
  ret %struct.bignum_st* %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_c2i_uint64_int(i64* nocapture noundef writeonly %ret, i32* noundef %neg, i8** nocapture noundef readonly %pp, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %buf = alloca [8 x i8], align 1
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %1 = load i8*, i8** %pp, align 8, !tbaa !19
  %call = tail call fastcc i64 @c2i_ibuf(i8* noundef null, i32* noundef null, i8* noundef %1, i64 noundef %len) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp ugt i64 %call, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 628, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ossl_c2i_uint64_int, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %pp, align 8, !tbaa !19
  %call4 = call fastcc i64 @c2i_ibuf(i8* noundef nonnull %0, i32* noundef %neg, i8* noundef %2, i64 noundef %len) #9
  %call6 = call fastcc i32 @asn1_get_uint64(i64* noundef %ret, i8* noundef nonnull %0, i64 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end3, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call6, %if.end3 ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_get_uint64(i64* nocapture noundef writeonly %pr, i8* noundef readonly %b, i64 noundef %blen) unnamed_addr #0 {
entry:
  %cmp = icmp ugt i64 %blen, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.asn1_get_uint64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %b, null
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp414.not = icmp eq i64 %blen, 0
  br i1 %cmp414.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader
  %0 = load i8, i8* %b, align 1, !tbaa !13
  %conv = zext i8 %0 to i64
  %exitcond.not = icmp eq i64 %blen, 1
  br i1 %exitcond.not, label %for.end, label %for.body.1, !llvm.loop !24

for.body.1:                                       ; preds = %for.body
  %shl.1 = shl nuw nsw i64 %conv, 8
  %arrayidx.1 = getelementptr inbounds i8, i8* %b, i64 1
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !13
  %conv.1 = zext i8 %1 to i64
  %or.1 = or i64 %shl.1, %conv.1
  %exitcond.not.1 = icmp eq i64 %blen, 2
  br i1 %exitcond.not.1, label %for.end, label %for.body.2, !llvm.loop !24

for.body.2:                                       ; preds = %for.body.1
  %shl.2 = shl nuw nsw i64 %or.1, 8
  %arrayidx.2 = getelementptr inbounds i8, i8* %b, i64 2
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !13
  %conv.2 = zext i8 %2 to i64
  %or.2 = or i64 %shl.2, %conv.2
  %exitcond.not.2 = icmp eq i64 %blen, 3
  br i1 %exitcond.not.2, label %for.end, label %for.body.3, !llvm.loop !24

for.body.3:                                       ; preds = %for.body.2
  %shl.3 = shl nuw nsw i64 %or.2, 8
  %arrayidx.3 = getelementptr inbounds i8, i8* %b, i64 3
  %3 = load i8, i8* %arrayidx.3, align 1, !tbaa !13
  %conv.3 = zext i8 %3 to i64
  %or.3 = or i64 %shl.3, %conv.3
  %exitcond.not.3 = icmp eq i64 %blen, 4
  br i1 %exitcond.not.3, label %for.end, label %for.body.4, !llvm.loop !24

for.body.4:                                       ; preds = %for.body.3
  %shl.4 = shl i64 %or.3, 8
  %arrayidx.4 = getelementptr inbounds i8, i8* %b, i64 4
  %4 = load i8, i8* %arrayidx.4, align 1, !tbaa !13
  %conv.4 = zext i8 %4 to i64
  %or.4 = or i64 %shl.4, %conv.4
  %exitcond.not.4 = icmp eq i64 %blen, 5
  br i1 %exitcond.not.4, label %for.end, label %for.body.5, !llvm.loop !24

for.body.5:                                       ; preds = %for.body.4
  %shl.5 = shl i64 %or.4, 8
  %arrayidx.5 = getelementptr inbounds i8, i8* %b, i64 5
  %5 = load i8, i8* %arrayidx.5, align 1, !tbaa !13
  %conv.5 = zext i8 %5 to i64
  %or.5 = or i64 %shl.5, %conv.5
  %exitcond.not.5 = icmp eq i64 %blen, 6
  br i1 %exitcond.not.5, label %for.end, label %for.body.6, !llvm.loop !24

for.body.6:                                       ; preds = %for.body.5
  %shl.6 = shl i64 %or.5, 8
  %arrayidx.6 = getelementptr inbounds i8, i8* %b, i64 6
  %6 = load i8, i8* %arrayidx.6, align 1, !tbaa !13
  %conv.6 = zext i8 %6 to i64
  %or.6 = or i64 %shl.6, %conv.6
  %exitcond.not.6 = icmp eq i64 %blen, 7
  br i1 %exitcond.not.6, label %for.end, label %for.body.7, !llvm.loop !24

for.body.7:                                       ; preds = %for.body.6
  %shl.7 = shl i64 %or.6, 8
  %arrayidx.7 = getelementptr inbounds i8, i8* %b, i64 7
  %7 = load i8, i8* %arrayidx.7, align 1, !tbaa !13
  %conv.7 = zext i8 %7 to i64
  %or.7 = or i64 %shl.7, %conv.7
  br label %for.end

for.end:                                          ; preds = %for.body, %for.body.1, %for.body.2, %for.body.3, %for.body.4, %for.body.5, %for.body.6, %for.body.7, %for.cond.preheader
  %r.0.lcssa = phi i64 [ 0, %for.cond.preheader ], [ %conv, %for.body ], [ %or.1, %for.body.1 ], [ %or.2, %for.body.2 ], [ %or.3, %for.body.3 ], [ %or.4, %for.body.4 ], [ %or.5, %for.body.5 ], [ %or.6, %for.body.6 ], [ %or.7, %for.body.7 ]
  store i64 %r.0.lcssa, i64* %pr, align 8, !tbaa !23
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define i32 @ossl_i2c_uint64_int(i8* noundef %p, i64 noundef %r, i32 noundef %neg) local_unnamed_addr #5 {
entry:
  %p.addr = alloca i8*, align 8
  %buf = alloca [8 x i8], align 1
  store i8* %p, i8** %p.addr, align 8, !tbaa !19
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call fastcc i64 @asn1_put_uint64(i8* noundef nonnull %0, i64 noundef %r) #9
  %add.ptr = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %call
  %sub = sub i64 8, %call
  %call2 = call fastcc i64 @i2c_ibuf(i8* noundef nonnull %add.ptr, i64 noundef %sub, i32 noundef %neg, i8** noundef nonnull %p.addr) #9
  %conv = trunc i64 %call2 to i32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %conv
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal fastcc i64 @asn1_put_uint64(i8* nocapture noundef writeonly %b, i64 noundef %r) unnamed_addr #6 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %r.addr.0 = phi i64 [ %r, %entry ], [ %shr, %do.body ]
  %off.0 = phi i64 [ 8, %entry ], [ %dec, %do.body ]
  %conv = trunc i64 %r.addr.0 to i8
  %dec = add nsw i64 %off.0, -1
  %arrayidx = getelementptr inbounds i8, i8* %b, i64 %dec
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !13
  %shr = lshr i64 %r.addr.0, 8
  %tobool.not = icmp ult i64 %r.addr.0, 256
  br i1 %tobool.not, label %do.end, label %do.body, !llvm.loop !25

do.end:                                           ; preds = %do.body
  ret i64 %dec
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @twos_complement(i8* nocapture noundef writeonly %dst, i8* nocapture noundef readonly %src, i64 noundef %len, i8 noundef zeroext %pad) unnamed_addr #3 {
entry:
  %cmp3.not18 = icmp eq i64 %len, 0
  br i1 %cmp3.not18, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %add.ptr2 = getelementptr i8, i8* %src, i64 %len
  %add.ptr = getelementptr i8, i8* %dst, i64 %len
  %0 = and i8 %pad, 1
  %and = zext i8 %0 to i32
  %xtraiter = and i64 %len, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader
  %dec.prol = add i64 %len, -1
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %add.ptr2, i64 -1
  %1 = load i8, i8* %incdec.ptr.prol, align 1, !tbaa !13
  %xor17.prol = xor i8 %1, %pad
  %xor.prol = zext i8 %xor17.prol to i32
  %add.prol = add nuw nsw i32 %and, %xor.prol
  %conv7.prol = trunc i32 %add.prol to i8
  %incdec.ptr8.prol = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8 %conv7.prol, i8* %incdec.ptr8.prol, align 1, !tbaa !13
  %shr.prol = lshr i32 %add.prol, 8
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %carry.022.unr = phi i32 [ %and, %while.body.preheader ], [ %shr.prol, %while.body.prol ]
  %dst.addr.121.unr = phi i8* [ %add.ptr, %while.body.preheader ], [ %incdec.ptr8.prol, %while.body.prol ]
  %len.addr.020.unr = phi i64 [ %len, %while.body.preheader ], [ %dec.prol, %while.body.prol ]
  %src.addr.119.unr = phi i8* [ %add.ptr2, %while.body.preheader ], [ %incdec.ptr.prol, %while.body.prol ]
  %2 = icmp eq i64 %len, 1
  br i1 %2, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %carry.022 = phi i32 [ %shr.1, %while.body ], [ %carry.022.unr, %while.body.prol.loopexit ]
  %dst.addr.121 = phi i8* [ %incdec.ptr8.1, %while.body ], [ %dst.addr.121.unr, %while.body.prol.loopexit ]
  %len.addr.020 = phi i64 [ %dec.1, %while.body ], [ %len.addr.020.unr, %while.body.prol.loopexit ]
  %src.addr.119 = phi i8* [ %incdec.ptr.1, %while.body ], [ %src.addr.119.unr, %while.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, i8* %src.addr.119, i64 -1
  %3 = load i8, i8* %incdec.ptr, align 1, !tbaa !13
  %xor17 = xor i8 %3, %pad
  %xor = zext i8 %xor17 to i32
  %add = add nuw nsw i32 %carry.022, %xor
  %conv7 = trunc i32 %add to i8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %dst.addr.121, i64 -1
  store i8 %conv7, i8* %incdec.ptr8, align 1, !tbaa !13
  %shr = lshr i32 %add, 8
  %dec.1 = add i64 %len.addr.020, -2
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %src.addr.119, i64 -2
  %4 = load i8, i8* %incdec.ptr.1, align 1, !tbaa !13
  %xor17.1 = xor i8 %4, %pad
  %xor.1 = zext i8 %xor17.1 to i32
  %add.1 = add nuw nsw i32 %shr, %xor.1
  %conv7.1 = trunc i32 %add.1 to i8
  %incdec.ptr8.1 = getelementptr inbounds i8, i8* %dst.addr.121, i64 -2
  store i8 %conv7.1, i8* %incdec.ptr8.1, align 1, !tbaa !13
  %shr.1 = lshr i32 %add.1, 8
  %cmp3.not.1 = icmp eq i64 %dec.1, 0
  br i1 %cmp3.not.1, label %while.end, label %while.body, !llvm.loop !26

while.end:                                        ; preds = %while.body.prol.loopexit, %while.body, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @asn1_get_int64(i64* nocapture noundef writeonly %pr, i8* noundef %b, i64 noundef %blen, i32 noundef %neg) unnamed_addr #0 {
entry:
  %r = alloca i64, align 8
  %0 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #10
  %call = call fastcc i32 @asn1_get_uint64(i64* noundef nonnull %r, i8* noundef %b, i64 noundef %blen) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq i32 %neg, 0
  %1 = load i64, i64* %r, align 8, !tbaa !23
  %cmp11 = icmp sgt i64 %1, -1
  br i1 %tobool.not, label %if.else10, label %if.then1

if.then1:                                         ; preds = %if.end
  br i1 %cmp11, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %sub = sub nsw i64 0, %1
  store i64 %sub, i64* %pr, align 8, !tbaa !23
  br label %cleanup

if.else:                                          ; preds = %if.then1
  %cmp4 = icmp eq i64 %1, -9223372036854775808
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  store i64 -9223372036854775808, i64* %pr, align 8, !tbaa !23
  br label %cleanup

if.else7:                                         ; preds = %if.else
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.asn1_get_int64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, i8* noundef null) #8
  br label %cleanup

if.else10:                                        ; preds = %if.end
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  store i64 %1, i64* %pr, align 8, !tbaa !23
  br label %cleanup

if.else13:                                        ; preds = %if.else10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.asn1_get_int64, i64 0, i64 0)) #8
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then5, %if.then3, %entry, %if.else13, %if.else7
  %retval.0 = phi i32 [ 0, %if.else7 ], [ 0, %if.else13 ], [ 0, %entry ], [ 1, %if.then3 ], [ 1, %if.then5 ], [ 1, %if.then12 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #10
  ret i32 %retval.0
}

declare %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(%struct.bignum_st* noundef, i8* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare void @BN_set_negative(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 4}
!5 = !{!"asn1_string_st", !6, i64 0, !6, i64 4, !9, i64 8, !10, i64 16}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !6, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15, !18, !16}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!9, !9, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !15, !16}
!22 = distinct !{!22, !15, !18, !16}
!23 = !{!10, !10, i64 0}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
