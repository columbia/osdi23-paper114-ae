; ModuleID = 'crypto/asn1/asn1_lib.c'
source_filename = "crypto/asn1/asn1_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.stack_st_ASN1_UTF8STRING = type opaque
%struct.stack_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/asn1_lib.c\00", align 1
@__func__.ASN1_get_object = private unnamed_addr constant [16 x i8] c"ASN1_get_object\00", align 1
@__func__.ASN1_STRING_set = private unnamed_addr constant [16 x i8] c"ASN1_STRING_set\00", align 1
@__func__.ASN1_STRING_type_new = private unnamed_addr constant [21 x i8] c"ASN1_STRING_type_new\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ASN1_check_infinite_end(i8** nocapture noundef %p, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @_asn1_check_infinite_end(i8** noundef %p, i64 noundef %len) #13
  ret i32 %call
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc i32 @_asn1_check_infinite_end(i8** nocapture noundef %p, i64 noundef %len) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %len, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1.not = icmp eq i64 %len, 1
  br i1 %cmp1.not, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %0 = load i8*, i8** %p, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %land.lhs.true4, label %return

land.lhs.true4:                                   ; preds = %land.lhs.true
  %arrayidx5 = getelementptr inbounds i8, i8* %0, i64 1
  %2 = load i8, i8* %arrayidx5, align 1, !tbaa !8
  %cmp7 = icmp eq i8 %2, 0
  br i1 %cmp7, label %if.then9, label %return

if.then9:                                         ; preds = %land.lhs.true4
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %land.lhs.true4, %land.lhs.true, %if.else, %entry, %if.then9
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %entry ], [ 0, %if.else ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ASN1_const_check_infinite_end(i8** nocapture noundef %p, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @_asn1_check_infinite_end(i8** noundef %p, i64 noundef %len) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_get_object(i8** nocapture noundef %pp, i64* nocapture noundef %plength, i32* nocapture noundef writeonly %ptag, i32* nocapture noundef writeonly %pclass, i64 noundef %omax) local_unnamed_addr #1 {
entry:
  %p = alloca i8*, align 8
  %inf = alloca i32, align 4
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  %2 = bitcast i32* %inf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #14
  %cmp = icmp slt i64 %omax, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_get_object, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 224, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %1, align 1, !tbaa !8
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 32
  %and2 = and i32 %conv, 192
  %and4 = and i32 %conv, 31
  %cmp5 = icmp eq i32 %and4, 31
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %dec = add nsw i64 %omax, -1
  %cmp8 = icmp eq i64 %dec, 0
  br i1 %cmp8, label %err, label %while.cond

while.cond:                                       ; preds = %if.then7, %while.body
  %incdec.ptr1496 = phi i8* [ %incdec.ptr28, %while.body ], [ %incdec.ptr, %if.then7 ]
  %len.0 = phi i64 [ %or, %while.body ], [ 0, %if.then7 ]
  %max.0 = phi i64 [ %dec18, %while.body ], [ %dec, %if.then7 ]
  %4 = load i8, i8* %incdec.ptr1496, align 1, !tbaa !8
  %tobool.not = icmp sgt i8 %4, -1
  %shl27 = shl i64 %len.0, 7
  %incdec.ptr28 = getelementptr inbounds i8, i8* %incdec.ptr1496, i64 1
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = and i8 %4, 127
  %6 = zext i8 %5 to i64
  %or = or i64 %shl27, %6
  %dec18 = add nsw i64 %max.0, -1
  %cmp19 = icmp eq i64 %dec18, 0
  %cmp23 = icmp sgt i64 %or, 16777215
  %or.cond = select i1 %cmp19, i1 true, i1 %cmp23
  br i1 %or.cond, label %err, label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i8* %incdec.ptr28, i8** %p, align 8, !tbaa !4
  %7 = zext i8 %4 to i64
  %or32 = or i64 %shl27, %7
  %conv33 = trunc i64 %or32 to i32
  %dec34 = add nsw i64 %max.0, -1
  %cmp35 = icmp eq i64 %dec34, 0
  br i1 %cmp35, label %err, label %if.end45

if.else:                                          ; preds = %if.end
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !4
  %dec40 = add nsw i64 %omax, -1
  %cmp41 = icmp eq i64 %dec40, 0
  br i1 %cmp41, label %err, label %if.end45

if.end45:                                         ; preds = %if.else, %while.end
  %tag.0 = phi i32 [ %conv33, %while.end ], [ %and4, %if.else ]
  %max.1 = phi i64 [ %dec34, %while.end ], [ %dec40, %if.else ]
  store i32 %tag.0, i32* %ptag, align 4, !tbaa !11
  store i32 %and2, i32* %pclass, align 4, !tbaa !11
  %call = call fastcc i32 @asn1_get_length(i8** noundef nonnull %p, i32* noundef nonnull %inf, i64* noundef %plength, i64 noundef %max.1) #13
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %err, label %if.end48

if.end48:                                         ; preds = %if.end45
  %8 = load i32, i32* %inf, align 4, !tbaa !11
  %tobool49.not = icmp ne i32 %8, 0
  %tobool51.not = icmp eq i32 %and, 0
  %or.cond90 = select i1 %tobool49.not, i1 %tobool51.not, i1 false
  br i1 %or.cond90, label %err, label %if.end53

if.end53:                                         ; preds = %if.end48
  %9 = load i64, i64* %plength, align 8, !tbaa !13
  %10 = load i8*, i8** %p, align 8, !tbaa !4
  %11 = load i8*, i8** %pp, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub.neg = sub i64 %omax, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub.neg, %sub.ptr.rhs.cast
  %cmp54 = icmp sgt i64 %9, %sub
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end53
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_get_object, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 155, i8* noundef null) #15
  %or57 = or i32 %and, 128
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53
  %ret.0 = phi i32 [ %or57, %if.then56 ], [ %and, %if.end53 ]
  store i8* %10, i8** %pp, align 8, !tbaa !4
  %or59 = or i32 %ret.0, %8
  br label %cleanup

err:                                              ; preds = %while.body, %if.end48, %if.end45, %if.else, %while.end, %if.then7
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_get_object, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 123, i8* noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end58, %if.then
  %retval.0 = phi i32 [ 128, %if.then ], [ 128, %err ], [ %or59, %if.end58 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @asn1_get_length(i8** nocapture noundef %pp, i32* nocapture noundef writeonly %inf, i64* nocapture noundef writeonly %rl, i64 noundef %max) unnamed_addr #4 {
entry:
  %0 = load i8*, i8** %pp, align 8, !tbaa !4
  %1 = load i8, i8* %0, align 1, !tbaa !8
  %cmp1 = icmp eq i8 %1, -128
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  store i32 1, i32* %inf, align 4, !tbaa !11
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  br label %if.end40

if.else:                                          ; preds = %entry
  store i32 0, i32* %inf, align 4, !tbaa !11
  %2 = load i8, i8* %0, align 1, !tbaa !8
  %conv4 = zext i8 %2 to i32
  %and = and i32 %conv4, 127
  %incdec.ptr5 = getelementptr inbounds i8, i8* %0, i64 1
  %and7 = and i32 %conv4, 128
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else37, label %if.then8

if.then8:                                         ; preds = %if.else
  %add = add nuw nsw i32 %and, 1
  %3 = zext i32 %add to i64
  %cmp10.not = icmp slt i64 %3, %max
  br i1 %cmp10.not, label %while.cond.preheader, label %cleanup

while.cond.preheader:                             ; preds = %if.then8
  %cmp14.not65 = icmp eq i32 %and, 0
  br i1 %cmp14.not65, label %if.end40, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %4 = add nsw i32 %and, -1
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 2
  %scevgep = getelementptr i8, i8* %0, i64 %6
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %i.067 = phi i32 [ %dec20, %while.body ], [ %and, %land.rhs.preheader ]
  %p.066 = phi i8* [ %incdec.ptr19, %while.body ], [ %incdec.ptr5, %land.rhs.preheader ]
  %7 = load i8, i8* %p.066, align 1, !tbaa !8
  %cmp17 = icmp eq i8 %7, 0
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr19 = getelementptr inbounds i8, i8* %p.066, i64 1
  %dec20 = add nsw i32 %i.067, -1
  %cmp14.not = icmp eq i32 %dec20, 0
  br i1 %cmp14.not, label %if.end40, label %land.rhs, !llvm.loop !15

while.end:                                        ; preds = %land.rhs
  %cmp21 = icmp ugt i32 %i.067, 8
  br i1 %cmp21, label %cleanup, label %while.cond25.preheader

while.cond25.preheader:                           ; preds = %while.end
  %cmp2671.not = icmp eq i32 %i.067, 0
  br i1 %cmp2671.not, label %if.end40, label %while.body28.preheader

while.body28.preheader:                           ; preds = %while.cond25.preheader
  %8 = add nsw i32 %i.067, -1
  %xtraiter = and i32 %i.067, 3
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %while.end32.unr-lcssa, label %while.body28.preheader.new

while.body28.preheader.new:                       ; preds = %while.body28.preheader
  %unroll_iter = and i32 %i.067, -4
  br label %while.body28

while.body28:                                     ; preds = %while.body28, %while.body28.preheader.new
  %ret.073 = phi i64 [ 0, %while.body28.preheader.new ], [ %or.3, %while.body28 ]
  %p.172 = phi i8* [ %p.066, %while.body28.preheader.new ], [ %incdec.ptr29.3, %while.body28 ]
  %niter = phi i32 [ 0, %while.body28.preheader.new ], [ %niter.next.3, %while.body28 ]
  %incdec.ptr29 = getelementptr inbounds i8, i8* %p.172, i64 1
  %10 = load i8, i8* %p.172, align 1, !tbaa !8
  %conv30 = zext i8 %10 to i64
  %11 = shl i64 %ret.073, 16
  %12 = shl nuw nsw i64 %conv30, 8
  %shl.1 = or i64 %11, %12
  %incdec.ptr29.1 = getelementptr inbounds i8, i8* %p.172, i64 2
  %13 = load i8, i8* %incdec.ptr29, align 1, !tbaa !8
  %conv30.1 = zext i8 %13 to i64
  %or.1 = or i64 %shl.1, %conv30.1
  %incdec.ptr29.2 = getelementptr inbounds i8, i8* %p.172, i64 3
  %14 = load i8, i8* %incdec.ptr29.1, align 1, !tbaa !8
  %conv30.2 = zext i8 %14 to i64
  %15 = shl i64 %or.1, 16
  %16 = shl nuw nsw i64 %conv30.2, 8
  %shl.3 = or i64 %15, %16
  %incdec.ptr29.3 = getelementptr inbounds i8, i8* %p.172, i64 4
  %17 = load i8, i8* %incdec.ptr29.2, align 1, !tbaa !8
  %conv30.3 = zext i8 %17 to i64
  %or.3 = or i64 %shl.3, %conv30.3
  %niter.next.3 = add i32 %niter, 4
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %while.end32.unr-lcssa, label %while.body28, !llvm.loop !16

while.end32.unr-lcssa:                            ; preds = %while.body28, %while.body28.preheader
  %incdec.ptr29.lcssa.ph = phi i8* [ undef, %while.body28.preheader ], [ %incdec.ptr29.3, %while.body28 ]
  %or.lcssa.ph = phi i64 [ undef, %while.body28.preheader ], [ %or.3, %while.body28 ]
  %ret.073.unr = phi i64 [ 0, %while.body28.preheader ], [ %or.3, %while.body28 ]
  %p.172.unr = phi i8* [ %p.066, %while.body28.preheader ], [ %incdec.ptr29.3, %while.body28 ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.end32, label %while.body28.epil

while.body28.epil:                                ; preds = %while.end32.unr-lcssa, %while.body28.epil
  %ret.073.epil = phi i64 [ %or.epil, %while.body28.epil ], [ %ret.073.unr, %while.end32.unr-lcssa ]
  %p.172.epil = phi i8* [ %incdec.ptr29.epil, %while.body28.epil ], [ %p.172.unr, %while.end32.unr-lcssa ]
  %epil.iter = phi i32 [ %epil.iter.next, %while.body28.epil ], [ 0, %while.end32.unr-lcssa ]
  %shl.epil = shl i64 %ret.073.epil, 8
  %incdec.ptr29.epil = getelementptr inbounds i8, i8* %p.172.epil, i64 1
  %18 = load i8, i8* %p.172.epil, align 1, !tbaa !8
  %conv30.epil = zext i8 %18 to i64
  %or.epil = or i64 %shl.epil, %conv30.epil
  %epil.iter.next = add i32 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %while.end32, label %while.body28.epil, !llvm.loop !17

while.end32:                                      ; preds = %while.body28.epil, %while.end32.unr-lcssa
  %incdec.ptr29.lcssa = phi i8* [ %incdec.ptr29.lcssa.ph, %while.end32.unr-lcssa ], [ %incdec.ptr29.epil, %while.body28.epil ]
  %or.lcssa = phi i64 [ %or.lcssa.ph, %while.end32.unr-lcssa ], [ %or.epil, %while.body28.epil ]
  %cmp33 = icmp slt i64 %or.lcssa, 0
  br i1 %cmp33, label %cleanup, label %if.end40

if.else37:                                        ; preds = %if.else
  %19 = zext i32 %and to i64
  br label %if.end40

if.end40:                                         ; preds = %while.body, %while.cond.preheader, %while.cond25.preheader, %if.else37, %while.end32, %if.then3
  %p.2 = phi i8* [ %incdec.ptr, %if.then3 ], [ %incdec.ptr29.lcssa, %while.end32 ], [ %incdec.ptr5, %if.else37 ], [ %p.066, %while.cond25.preheader ], [ %incdec.ptr5, %while.cond.preheader ], [ %scevgep, %while.body ]
  %ret.1 = phi i64 [ 0, %if.then3 ], [ %or.lcssa, %while.end32 ], [ %19, %if.else37 ], [ 0, %while.cond25.preheader ], [ 0, %while.cond.preheader ], [ 0, %while.body ]
  store i8* %p.2, i8** %pp, align 8, !tbaa !4
  store i64 %ret.1, i64* %rl, align 8, !tbaa !13
  br label %cleanup

cleanup:                                          ; preds = %while.end32, %while.end, %if.then8, %if.end40
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %if.then8 ], [ 0, %while.end ], [ 0, %while.end32 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define void @ASN1_put_object(i8** nocapture noundef %pp, i32 noundef %constructed, i32 noundef %length, i32 noundef %tag, i32 noundef %xclass) local_unnamed_addr #5 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #14
  %1 = load i8*, i8** %pp, align 8, !tbaa !4
  %tobool.not = icmp eq i32 %constructed, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  %and = and i32 %xclass, 192
  %or = or i32 %and, %cond
  %cmp = icmp slt i32 %tag, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and1 = and i32 %tag, 31
  %or2 = or i32 %or, %and1
  %conv = trunc i32 %or2 to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !4
  store i8 %conv, i8* %1, align 1, !tbaa !8
  br label %if.end21

if.else:                                          ; preds = %entry
  %2 = trunc i32 %or to i8
  %conv4 = or i8 %2, 31
  %incdec.ptr5 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %conv4, i8* %1, align 1, !tbaa !8
  br label %for.body

while.body.preheader:                             ; preds = %for.body
  %3 = zext i32 %i.050 to i64
  %4 = and i64 %3, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %while.body.prol, label %while.body.prol.loopexit

while.body.prol:                                  ; preds = %while.body.preheader
  %5 = trunc i32 %tag to i8
  %conv11.prol = and i8 %5, 127
  %arrayidx.prol = getelementptr inbounds i8, i8* %incdec.ptr5, i64 %3
  store i8 %conv11.prol, i8* %arrayidx.prol, align 1, !tbaa !8
  %shr20.prol = ashr i32 %tag, 7
  %indvars.iv.next.prol = add nsw i64 %3, -1
  br label %while.body.prol.loopexit

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %indvars.iv.unr = phi i64 [ %3, %while.body.preheader ], [ %indvars.iv.next.prol, %while.body.prol ]
  %i.155.unr = phi i32 [ %inc, %while.body.preheader ], [ %i.050, %while.body.prol ]
  %tag.addr.054.unr = phi i32 [ %tag, %while.body.preheader ], [ %shr20.prol, %while.body.prol ]
  %6 = icmp eq i32 %i.050, 0
  br i1 %6, label %while.end, label %while.body

for.body:                                         ; preds = %if.else, %for.body
  %ttag.051 = phi i32 [ %tag, %if.else ], [ %shr47, %for.body ]
  %i.050 = phi i32 [ 0, %if.else ], [ %inc, %for.body ]
  %shr47 = lshr i32 %ttag.051, 7
  %inc = add nuw nsw i32 %i.050, 1
  %cmp6.not = icmp ult i32 %ttag.051, 128
  br i1 %cmp6.not, label %while.body.preheader, label %for.body, !llvm.loop !19

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %while.body ], [ %indvars.iv.unr, %while.body.prol.loopexit ]
  %i.155 = phi i32 [ %11, %while.body ], [ %i.155.unr, %while.body.prol.loopexit ]
  %tag.addr.054 = phi i32 [ %shr20.1, %while.body ], [ %tag.addr.054.unr, %while.body.prol.loopexit ]
  %7 = trunc i32 %tag.addr.054 to i8
  %conv11 = and i8 %7, 127
  %arrayidx = getelementptr inbounds i8, i8* %incdec.ptr5, i64 %indvars.iv
  %cmp12.not = icmp eq i32 %i.155, %inc
  %masksel = select i1 %cmp12.not, i8 0, i8 -128
  %spec.select = or i8 %conv11, %masksel
  store i8 %spec.select, i8* %arrayidx, align 1, !tbaa !8
  %8 = lshr i32 %tag.addr.054, 7
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %9 = trunc i64 %indvars.iv to i32
  %10 = trunc i32 %8 to i8
  %conv11.1 = and i8 %10, 127
  %arrayidx.1 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv
  %cmp12.not.1 = icmp eq i32 %inc, %9
  %masksel.1 = select i1 %cmp12.not.1, i8 0, i8 -128
  %spec.select.1 = or i8 %conv11.1, %masksel.1
  store i8 %spec.select.1, i8* %arrayidx.1, align 1, !tbaa !8
  %shr20.1 = ashr i32 %tag.addr.054, 14
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %cmp8.not.1 = icmp eq i64 %indvars.iv.next, 0
  %11 = trunc i64 %indvars.iv.next to i32
  br i1 %cmp8.not.1, label %while.end, label %while.body, !llvm.loop !20

while.end:                                        ; preds = %while.body, %while.body.prol.loopexit
  %idx.ext = zext i32 %inc to i64
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr5, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8, !tbaa !4
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.then
  %12 = phi i8* [ %add.ptr, %while.end ], [ %incdec.ptr, %if.then ]
  %cmp22 = icmp eq i32 %constructed, 2
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.end21
  %incdec.ptr25 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 -128, i8* %12, align 1, !tbaa !8
  br label %if.end27

if.else26:                                        ; preds = %if.end21
  call fastcc void @asn1_put_length(i8** noundef nonnull %p, i32 noundef %length) #13
  %.pre = load i8*, i8** %p, align 8, !tbaa !4
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then24
  %13 = phi i8* [ %.pre, %if.else26 ], [ %incdec.ptr25, %if.then24 ]
  store i8* %13, i8** %pp, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @asn1_put_length(i8** nocapture noundef %pp, i32 noundef %length) unnamed_addr #4 {
entry:
  %0 = load i8*, i8** %pp, align 8, !tbaa !4
  %cmp = icmp slt i32 %length, 128
  br i1 %cmp, label %if.then, label %for.body

if.then:                                          ; preds = %entry
  %conv = trunc i32 %length to i8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %conv, i8* %0, align 1, !tbaa !8
  br label %if.end

for.body:                                         ; preds = %entry, %for.body
  %len.031 = phi i32 [ %shr27, %for.body ], [ %length, %entry ]
  %i.030 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %shr27 = lshr i32 %len.031, 8
  %inc = add nuw nsw i32 %i.030, 1
  %cmp1.not = icmp ult i32 %len.031, 256
  br i1 %cmp1.not, label %while.body.preheader, label %for.body, !llvm.loop !21

while.body.preheader:                             ; preds = %for.body
  %1 = trunc i32 %inc to i8
  %conv3 = or i8 %1, -128
  %incdec.ptr4 = getelementptr inbounds i8, i8* %0, i64 1
  store i8 %conv3, i8* %0, align 1, !tbaa !8
  %2 = zext i32 %i.030 to i64
  %3 = add nuw nsw i64 %2, 1
  %xtraiter = and i64 %3, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %while.body.prol.loopexit, label %while.body.prol

while.body.prol:                                  ; preds = %while.body.preheader, %while.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %while.body.prol ], [ %2, %while.body.preheader ]
  %length.addr.034.prol = phi i32 [ %shr8.prol, %while.body.prol ], [ %length, %while.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body.prol ], [ 0, %while.body.preheader ]
  %conv7.prol = trunc i32 %length.addr.034.prol to i8
  %arrayidx.prol = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %indvars.iv.prol
  store i8 %conv7.prol, i8* %arrayidx.prol, align 1, !tbaa !8
  %shr8.prol = ashr i32 %length.addr.034.prol, 8
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %while.body.prol.loopexit, label %while.body.prol, !llvm.loop !22

while.body.prol.loopexit:                         ; preds = %while.body.prol, %while.body.preheader
  %indvars.iv.unr = phi i64 [ %2, %while.body.preheader ], [ %indvars.iv.next.prol, %while.body.prol ]
  %length.addr.034.unr = phi i32 [ %length, %while.body.preheader ], [ %shr8.prol, %while.body.prol ]
  %4 = icmp ult i32 %i.030, 3
  br i1 %4, label %while.end, label %while.body

while.body:                                       ; preds = %while.body.prol.loopexit, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %while.body ], [ %indvars.iv.unr, %while.body.prol.loopexit ]
  %length.addr.034 = phi i32 [ %shr8.3, %while.body ], [ %length.addr.034.unr, %while.body.prol.loopexit ]
  %conv7 = trunc i32 %length.addr.034 to i8
  %arrayidx = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %indvars.iv
  store i8 %conv7, i8* %arrayidx, align 1, !tbaa !8
  %5 = lshr i32 %length.addr.034, 8
  %conv7.1 = trunc i32 %5 to i8
  %arrayidx.1 = getelementptr inbounds i8, i8* %0, i64 %indvars.iv
  store i8 %conv7.1, i8* %arrayidx.1, align 1, !tbaa !8
  %6 = lshr i32 %length.addr.034, 16
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %conv7.2 = trunc i32 %6 to i8
  %arrayidx.2 = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %indvars.iv.next.1
  store i8 %conv7.2, i8* %arrayidx.2, align 1, !tbaa !8
  %7 = lshr i32 %length.addr.034, 24
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3
  %conv7.3 = trunc i32 %7 to i8
  %arrayidx.3 = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %indvars.iv.next.2
  store i8 %conv7.3, i8* %arrayidx.3, align 1, !tbaa !8
  %shr8.3 = ashr i32 %length.addr.034, 31
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4
  %cmp5.not.3 = icmp eq i64 %indvars.iv.next.2, 0
  br i1 %cmp5.not.3, label %while.end, label %while.body, !llvm.loop !23

while.end:                                        ; preds = %while.body, %while.body.prol.loopexit
  %idx.ext = zext i32 %inc to i64
  %add.ptr = getelementptr inbounds i8, i8* %incdec.ptr4, i64 %idx.ext
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  %p.0 = phi i8* [ %incdec.ptr, %if.then ], [ %add.ptr, %while.end ]
  store i8* %p.0, i8** %pp, align 8, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define i32 @ASN1_put_eoc(i8** nocapture noundef %pp) local_unnamed_addr #0 {
entry:
  %0 = load i8*, i8** %pp, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1
  store i8 0, i8* %0, align 1, !tbaa !8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %0, i64 2
  store i8 0, i8* %incdec.ptr, align 1, !tbaa !8
  store i8* %incdec.ptr1, i8** %pp, align 8, !tbaa !4
  ret i32 2
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define i32 @ASN1_object_size(i32 noundef %constructed, i32 noundef %length, i32 noundef %tag) local_unnamed_addr #6 {
entry:
  %cmp = icmp slt i32 %length, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %tag, 30
  br i1 %cmp1, label %while.body, label %if.end4

while.body:                                       ; preds = %if.end, %while.body
  %tag.addr.0 = phi i32 [ %shr, %while.body ], [ %tag, %if.end ]
  %ret.0 = phi i32 [ %inc, %while.body ], [ 1, %if.end ]
  %shr = ashr i32 %tag.addr.0, 7
  %inc = add nuw nsw i32 %ret.0, 1
  %cmp3.old = icmp sgt i32 %tag.addr.0, 127
  br i1 %cmp3.old, label %while.body, label %if.end4

if.end4:                                          ; preds = %while.body, %if.end
  %ret.1 = phi i32 [ 1, %if.end ], [ %inc, %while.body ]
  %cmp5 = icmp eq i32 %constructed, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %add = add nsw i32 %ret.1, 3
  br label %if.end17

if.else:                                          ; preds = %if.end4
  %inc7 = add nsw i32 %ret.1, 1
  %cmp8 = icmp sgt i32 %length, 127
  br i1 %cmp8, label %while.body12, label %if.end17

while.body12:                                     ; preds = %if.else, %while.body12
  %tmplen.040 = phi i32 [ %shr1337, %while.body12 ], [ %length, %if.else ]
  %ret.239 = phi i32 [ %inc14, %while.body12 ], [ %inc7, %if.else ]
  %shr1337 = lshr i32 %tmplen.040, 8
  %inc14 = add nsw i32 %ret.239, 1
  %cmp11.not = icmp ult i32 %tmplen.040, 256
  br i1 %cmp11.not, label %if.end17, label %while.body12, !llvm.loop !24

if.end17:                                         ; preds = %while.body12, %if.else, %if.then6
  %ret.3 = phi i32 [ %add, %if.then6 ], [ %inc7, %if.else ], [ %inc14, %while.body12 ]
  %sub = sub nsw i32 2147483647, %length
  %cmp18.not = icmp slt i32 %ret.3, %sub
  %add21 = add nsw i32 %ret.3, %length
  %spec.select = select i1 %cmp18.not, i32 %add21, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %spec.select, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_copy(%struct.asn1_string_st* nocapture noundef %dst, %struct.asn1_string_st* noundef readonly %str) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %str, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !25
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dst, i64 0, i32 1
  store i32 %0, i32* %type1, align 4, !tbaa !25
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !27
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !28
  %call = tail call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %dst, i8* noundef %1, i32 noundef %2) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %dst, i64 0, i32 3
  %3 = load i64, i64* %flags, align 8, !tbaa !29
  %and = and i64 %3, 128
  store i64 %and, i64* %flags, align 8, !tbaa !29
  %flags4 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 3
  %4 = load i64, i64* %flags4, align 8, !tbaa !29
  %and5 = and i64 %4, -129
  %or = or i64 %and5, %and
  store i64 %or, i64* %flags, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_STRING_set(%struct.asn1_string_st* nocapture noundef %str, i8* noundef %_data, i32 noundef %len_in) local_unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %len_in, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %_data, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %if.then
  %call = tail call i64 @strlen(i8* noundef nonnull %_data) #16
  br label %if.end3

if.else:                                          ; preds = %entry
  %conv57 = zext i32 %len_in to i64
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %len.0 = phi i64 [ %call, %if.end ], [ %conv57, %if.else ]
  %cmp4 = icmp ugt i64 %len.0, 2147483646
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 299, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_STRING_set, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 223, i8* noundef null) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !28
  %conv8 = sext i32 %0 to i64
  %cmp9.not = icmp ult i64 %len.0, %conv8
  %data11 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %1 = load i8*, i8** %data11, align 8, !tbaa !27
  br i1 %cmp9.not, label %lor.lhs.false, label %if.then14

lor.lhs.false:                                    ; preds = %if.end7
  %cmp12 = icmp eq i8* %1, null
  br i1 %cmp12, label %if.then14, label %if.end24

if.then14:                                        ; preds = %if.end7, %lor.lhs.false
  %2 = phi i8* [ null, %lor.lhs.false ], [ %1, %if.end7 ]
  %data15 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %add = add nuw nsw i64 %len.0, 1
  %call16 = tail call i8* @CRYPTO_realloc(i8* noundef %2, i64 noundef %add, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 308) #15
  store i8* %call16, i8** %data15, align 8, !tbaa !27
  %cmp19 = icmp eq i8* %call16, null
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then14
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ASN1_STRING_set, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #15
  store i8* %2, i8** %data15, align 8, !tbaa !27
  br label %cleanup

if.end24:                                         ; preds = %if.then14, %lor.lhs.false
  %3 = phi i8* [ %call16, %if.then14 ], [ %1, %lor.lhs.false ]
  %conv25 = trunc i64 %len.0 to i32
  store i32 %conv25, i32* %length, align 8, !tbaa !28
  %cmp27.not = icmp eq i8* %_data, null
  br i1 %cmp27.not, label %cleanup, label %if.then29

if.then29:                                        ; preds = %if.end24
  %data30 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %call31 = tail call i8* @memcpy(i8* noundef nonnull %3, i8* noundef nonnull %_data, i64 noundef %len.0) #15
  %4 = load i8*, i8** %data30, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %len.0
  store i8 0, i8* %arrayidx, align 1, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then29, %if.then, %if.then21, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then21 ], [ 0, %if.then ], [ 1, %if.then29 ], [ 1, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_STRING_dup(%struct.asn1_string_st* noundef %str) local_unnamed_addr #1 {
entry:
  %tobool.not = icmp eq %struct.asn1_string_st* %str, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_new() #13
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end2

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ASN1_STRING_copy(%struct.asn1_string_st* noundef nonnull %call, %struct.asn1_string_st* noundef nonnull %str) #13
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %cleanup

if.then5:                                         ; preds = %if.end2
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end, %entry, %if.then5
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then5 ], [ null, %entry ], [ null, %if.end ], [ %call, %if.end2 ]
  ret %struct.asn1_string_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_STRING_new() local_unnamed_addr #1 {
entry:
  %call = tail call %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef 4) #13
  ret %struct.asn1_string_st* %call
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_STRING_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !29
  %1 = trunc i64 %0 to i32
  %conv = and i32 %1, 128
  tail call void @ossl_asn1_string_embed_free(%struct.asn1_string_st* noundef nonnull %a, i32 noundef %conv) #13
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #7

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define void @ASN1_STRING_set0(%struct.asn1_string_st* nocapture noundef %str, i8* noundef %data, i32 noundef %len) local_unnamed_addr #1 {
entry:
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 2
  %0 = load i8*, i8** %data1, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 336) #15
  store i8* %data, i8** %data1, align 8, !tbaa !27
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %str, i64 0, i32 0
  store i32 %len, i32* %length, align 8, !tbaa !28
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define %struct.asn1_string_st* @ASN1_STRING_type_new(i32 noundef %type) local_unnamed_addr #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 24, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 350) #15
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.ASN1_STRING_type_new, i64 0, i64 0)) #15
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast i8* %call to %struct.asn1_string_st*
  %type1 = getelementptr inbounds i8, i8* %call, i64 4
  %1 = bitcast i8* %type1 to i32*
  store i32 %type, i32* %1, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.asn1_string_st* %retval.0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define void @ossl_asn1_string_embed_free(%struct.asn1_string_st* noundef %a, i32 noundef %embed) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %if.end5, label %if.end

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 3
  %0 = load i64, i64* %flags, align 8, !tbaa !29
  %and = and i64 %0, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %1 = load i8*, i8** %data, align 8, !tbaa !27
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 364) #15
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %cmp3 = icmp eq i32 %embed, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  %2 = bitcast %struct.asn1_string_st* %a to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 366) #15
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then4, %if.end2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ASN1_STRING_clear_free(%struct.asn1_string_st* noundef %a) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq %struct.asn1_string_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !27
  %tobool.not = icmp eq i8* %0, null
  br i1 %tobool.not, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 3
  %1 = load i64, i64* %flags, align 8, !tbaa !29
  %and = and i64 %1, 16
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %2 = load i32, i32* %length, align 8, !tbaa !28
  %conv = sext i32 %2 to i64
  tail call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef %conv) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef nonnull %a) #13
  br label %return

return:                                           ; preds = %entry, %if.end4
  ret void
}

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define i32 @ASN1_STRING_cmp(%struct.asn1_string_st* nocapture noundef readonly %a, %struct.asn1_string_st* nocapture noundef readonly %b) local_unnamed_addr #9 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !28
  %length1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %b, i64 0, i32 0
  %1 = load i32, i32* %length1, align 8, !tbaa !28
  %sub = sub nsw i32 %0, %1
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %cmp3.not = icmp eq i32 %0, 0
  br i1 %cmp3.not, label %if.then9, label %if.end

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 2
  %2 = load i8*, i8** %data, align 8, !tbaa !27
  %data5 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %b, i64 0, i32 2
  %3 = load i8*, i8** %data5, align 8, !tbaa !27
  %conv = sext i32 %0 to i64
  %call = tail call i32 @memcmp(i8* noundef %2, i8* noundef %3, i64 noundef %conv) #16
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.then, %if.end
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %a, i64 0, i32 1
  %4 = load i32, i32* %type, align 4, !tbaa !25
  %type10 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %b, i64 0, i32 1
  %5 = load i32, i32* %type10, align 4, !tbaa !25
  %sub11 = sub nsw i32 %4, %5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end, %if.then9
  %retval.0 = phi i32 [ %sub11, %if.then9 ], [ %call, %if.end ], [ %sub, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ASN1_STRING_length(%struct.asn1_string_st* nocapture noundef readonly %x) local_unnamed_addr #10 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 0
  %0 = load i32, i32* %length, align 8, !tbaa !28
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define void @ASN1_STRING_length_set(%struct.asn1_string_st* nocapture noundef writeonly %x, i32 noundef %len) local_unnamed_addr #11 {
entry:
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 0
  store i32 %len, i32* %length, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i32 @ASN1_STRING_type(%struct.asn1_string_st* nocapture noundef readonly %x) local_unnamed_addr #10 {
entry:
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 1
  %0 = load i32, i32* %type, align 4, !tbaa !25
  ret i32 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* nocapture noundef readonly %x) local_unnamed_addr #10 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !27
  ret i8* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define i8* @ASN1_STRING_data(%struct.asn1_string_st* nocapture noundef readonly %x) local_unnamed_addr #10 {
entry:
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %x, i64 0, i32 2
  %0 = load i8*, i8** %data, align 8, !tbaa !27
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define i8* @ossl_sk_ASN1_UTF8STRING2text(%struct.stack_st_ASN1_UTF8STRING* noundef %text, i8* noundef %sep, i64 noundef %max_len) local_unnamed_addr #1 {
entry:
  %cmp = icmp eq i8* %sep, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* %sep
  %call = tail call i64 @strlen(i8* noundef %spec.store.select) #16
  %call1 = tail call fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef %text) #13
  %call290 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp391 = icmp sgt i32 %call290, 0
  br i1 %cmp391, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp11.not = icmp ne i64 %max_len, 0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %call2 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp3 = icmp slt i32 %inc, %call2
  br i1 %cmp3, label %for.body, label %for.end.loopexit, !llvm.loop !30

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %length.093 = phi i64 [ 0, %for.body.lr.ph ], [ %add10, %for.cond ]
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %call5 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.092) #15
  %0 = bitcast i8* %call5 to %struct.asn1_string_st*
  %cmp6.not = icmp eq i32 %i.092, 0
  %add = select i1 %cmp6.not, i64 0, i64 %call
  %spec.select = add i64 %add, %length.093
  %call9 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %0) #13
  %conv = sext i32 %call9 to i64
  %add10 = add i64 %spec.select, %conv
  %cmp13 = icmp ugt i64 %add10, %max_len
  %or.cond87 = select i1 %cmp11.not, i1 %cmp13, i1 false
  %inc = add nuw nsw i32 %i.092, 1
  br i1 %or.cond87, label %cleanup, label %for.cond

for.end.loopexit:                                 ; preds = %for.cond
  %phi.bo = add i64 %add10, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %length.0.lcssa = phi i64 [ 1, %entry ], [ %phi.bo, %for.end.loopexit ]
  %call18 = tail call i8* @CRYPTO_malloc(i64 noundef %length.0.lcssa, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 453) #15
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %cleanup, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end
  %call2595 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp2696 = icmp sgt i32 %call2595, 0
  br i1 %cmp2696, label %for.body28.lr.ph, label %for.end47

for.body28.lr.ph:                                 ; preds = %for.cond23.preheader
  %cmp36 = icmp ne i64 %call, 0
  %add39 = add i64 %call, 1
  br label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %if.end41
  %p.098 = phi i8* [ %call18, %for.body28.lr.ph ], [ %add.ptr44, %if.end41 ]
  %i.197 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc46, %if.end41 ]
  %call30 = tail call i8* @OPENSSL_sk_value(%struct.stack_st* noundef %call1, i32 noundef %i.197) #15
  %1 = bitcast i8* %call30 to %struct.asn1_string_st*
  %call31 = tail call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %1) #13
  %conv32 = sext i32 %call31 to i64
  %cmp33 = icmp ne i32 %i.197, 0
  %or.cond = select i1 %cmp33, i1 %cmp36, i1 false
  br i1 %or.cond, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.body28
  %call40 = tail call i8* @strncpy(i8* noundef %p.098, i8* noundef %spec.store.select, i64 noundef %add39) #15
  %add.ptr = getelementptr inbounds i8, i8* %p.098, i64 %call
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.body28
  %p.1 = phi i8* [ %add.ptr, %if.then38 ], [ %p.098, %for.body28 ]
  %call42 = tail call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef %1) #13
  %call43 = tail call i8* @strncpy(i8* noundef %p.1, i8* noundef %call42, i64 noundef %conv32) #15
  %add.ptr44 = getelementptr inbounds i8, i8* %p.1, i64 %conv32
  %inc46 = add nuw nsw i32 %i.197, 1
  %call25 = tail call i32 @OPENSSL_sk_num(%struct.stack_st* noundef %call1) #15
  %cmp26 = icmp slt i32 %inc46, %call25
  br i1 %cmp26, label %for.body28, label %for.end47, !llvm.loop !31

for.end47:                                        ; preds = %if.end41, %for.cond23.preheader
  %p.0.lcssa = phi i8* [ %call18, %for.cond23.preheader ], [ %add.ptr44, %if.end41 ]
  store i8 0, i8* %p.0.lcssa, align 1, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %for.body, %for.end, %for.end47
  %retval.0 = phi i8* [ %call18, %for.end47 ], [ null, %for.end ], [ null, %for.body ]
  ret i8* %retval.0
}

declare i32 @OPENSSL_sk_num(%struct.stack_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal fastcc %struct.stack_st* @ossl_check_const_ASN1_UTF8STRING_sk_type(%struct.stack_st_ASN1_UTF8STRING* noundef readnone %sk) unnamed_addr #12 {
entry:
  %0 = bitcast %struct.stack_st_ASN1_UTF8STRING* %sk to %struct.stack_st*
  ret %struct.stack_st* %0
}

declare i8* @OPENSSL_sk_value(%struct.stack_st* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin nounwind "no-builtins" }
attributes #16 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = !{!26, !12, i64 4}
!26 = !{!"asn1_string_st", !12, i64 0, !12, i64 4, !5, i64 8, !14, i64 16}
!27 = !{!26, !5, i64 8}
!28 = !{!26, !12, i64 0}
!29 = !{!26, !14, i64 16}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
