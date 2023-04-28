; ModuleID = 'crypto/ec/ec_print.c'
source_filename = "crypto/ec/ec_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_ctx = type opaque

@.str = private unnamed_addr constant [21 x i8] c"crypto/ec/ec_print.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: noinline nounwind uwtable
define i8* @EC_POINT_point2hex(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %buf = alloca i8*, align 8
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i8* null, i8** %buf, align 8, !tbaa !4
  %call = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef %point, i32 noundef %form, i8** noundef nonnull %buf, %struct.bignum_ctx* noundef %ctx) #5
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %mul = shl i64 %call, 1
  %add = add i64 %mul, 2
  %call1 = call i8* @CRYPTO_malloc(i64 noundef %add, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 30) #5
  %cmp2 = icmp eq i8* %call1, null
  %1 = load i8*, i8** %buf, align 8, !tbaa !4
  br i1 %cmp2, label %if.then3, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %xtraiter = and i64 %call, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %incdec.ptr.prol = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8, i8* %1, align 1, !tbaa !8
  %conv.prol = zext i8 %2 to i32
  %3 = lshr i32 %conv.prol, 4
  %4 = zext i32 %3 to i64
  %arrayidx.prol = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %4
  %5 = load i8, i8* %arrayidx.prol, align 1, !tbaa !8
  %incdec.ptr6.prol = getelementptr inbounds i8, i8* %call1, i64 1
  store i8 %5, i8* %call1, align 1, !tbaa !8
  %and.prol = and i32 %conv.prol, 15
  %6 = zext i32 %and.prol to i64
  %arrayidx8.prol = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %6
  %7 = load i8, i8* %arrayidx8.prol, align 1, !tbaa !8
  %incdec.ptr9.prol = getelementptr inbounds i8, i8* %call1, i64 2
  store i8 %7, i8* %incdec.ptr6.prol, align 1, !tbaa !8
  %dec.prol = add i64 %call, -1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %incdec.ptr9.lcssa.unr = phi i8* [ undef, %for.body.preheader ], [ %incdec.ptr9.prol, %for.body.prol ]
  %pbuf.032.unr = phi i8* [ %1, %for.body.preheader ], [ %incdec.ptr.prol, %for.body.prol ]
  %i.031.unr = phi i64 [ %call, %for.body.preheader ], [ %dec.prol, %for.body.prol ]
  %p.030.unr = phi i8* [ %call1, %for.body.preheader ], [ %incdec.ptr9.prol, %for.body.prol ]
  %8 = icmp eq i64 %call, 1
  br i1 %8, label %for.end, label %for.body

if.then3:                                         ; preds = %if.end
  call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 32) #5
  br label %cleanup

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %pbuf.032 = phi i8* [ %incdec.ptr.1, %for.body ], [ %pbuf.032.unr, %for.body.prol.loopexit ]
  %i.031 = phi i64 [ %dec.1, %for.body ], [ %i.031.unr, %for.body.prol.loopexit ]
  %p.030 = phi i8* [ %incdec.ptr9.1, %for.body ], [ %p.030.unr, %for.body.prol.loopexit ]
  %incdec.ptr = getelementptr inbounds i8, i8* %pbuf.032, i64 1
  %9 = load i8, i8* %pbuf.032, align 1, !tbaa !8
  %conv = zext i8 %9 to i32
  %10 = lshr i32 %conv, 4
  %11 = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %11
  %12 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %p.030, i64 1
  store i8 %12, i8* %p.030, align 1, !tbaa !8
  %and = and i32 %conv, 15
  %13 = zext i32 %and to i64
  %arrayidx8 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %13
  %14 = load i8, i8* %arrayidx8, align 1, !tbaa !8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %p.030, i64 2
  store i8 %14, i8* %incdec.ptr6, align 1, !tbaa !8
  %incdec.ptr.1 = getelementptr inbounds i8, i8* %pbuf.032, i64 2
  %15 = load i8, i8* %incdec.ptr, align 1, !tbaa !8
  %conv.1 = zext i8 %15 to i32
  %16 = lshr i32 %conv.1, 4
  %17 = zext i32 %16 to i64
  %arrayidx.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %17
  %18 = load i8, i8* %arrayidx.1, align 1, !tbaa !8
  %incdec.ptr6.1 = getelementptr inbounds i8, i8* %p.030, i64 3
  store i8 %18, i8* %incdec.ptr9, align 1, !tbaa !8
  %and.1 = and i32 %conv.1, 15
  %19 = zext i32 %and.1 to i64
  %arrayidx8.1 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.1, i64 0, i64 %19
  %20 = load i8, i8* %arrayidx8.1, align 1, !tbaa !8
  %incdec.ptr9.1 = getelementptr inbounds i8, i8* %p.030, i64 4
  store i8 %20, i8* %incdec.ptr6.1, align 1, !tbaa !8
  %dec.1 = add i64 %i.031, -2
  %cmp5.not.1 = icmp eq i64 %dec.1, 0
  br i1 %cmp5.not.1, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.body.prol.loopexit
  %incdec.ptr9.lcssa = phi i8* [ %incdec.ptr9.lcssa.unr, %for.body.prol.loopexit ], [ %incdec.ptr9.1, %for.body ]
  store i8 0, i8* %incdec.ptr9.lcssa, align 1, !tbaa !8
  %21 = load i8*, i8** %buf, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %21, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then3
  %retval.0 = phi i8* [ null, %if.then3 ], [ %call1, %for.end ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret i8* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_point_st* @EC_POINT_hex2point(%struct.ec_group_st* noundef %group, i8* noundef %hex, %struct.ec_point_st* noundef %point, %struct.bignum_ctx* noundef %ctx) local_unnamed_addr #0 {
entry:
  %oct_buf_len = alloca i64, align 8
  %0 = bitcast i64* %oct_buf_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store i64 0, i64* %oct_buf_len, align 8, !tbaa !11
  %cmp = icmp eq %struct.ec_group_st* %group, null
  %cmp1 = icmp eq i8* %hex, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq %struct.ec_point_st* %point, null
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %call = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %group) #5
  %cmp4 = icmp eq %struct.ec_point_st* %call, null
  br i1 %cmp4, label %err.thread, label %if.end7

if.end7:                                          ; preds = %if.end, %if.then3
  %pt.0 = phi %struct.ec_point_st* [ %call, %if.then3 ], [ %point, %if.end ]
  %call8 = tail call i64 @strlen(i8* noundef nonnull %hex) #6
  %div = lshr i64 %call8, 1
  %call9 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 69) #5
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 @OPENSSL_hexstr2buf_ex(i8* noundef nonnull %call9, i64 noundef %div, i64* noundef nonnull %oct_buf_len, i8* noundef nonnull %hex, i8 noundef signext 0) #5
  %tobool.not = icmp eq i32 %call13, 0
  %.pre = load i64, i64* %oct_buf_len, align 8, !tbaa !11
  br i1 %tobool.not, label %err.thread, label %err

err.thread:                                       ; preds = %if.end12, %if.then3
  %1 = phi i64 [ 0, %if.then3 ], [ %.pre, %if.end12 ]
  %oct_buf.0.ph = phi i8* [ null, %if.then3 ], [ %call9, %if.end12 ]
  %pt.1.ph = phi %struct.ec_point_st* [ null, %if.then3 ], [ %pt.0, %if.end12 ]
  call void @CRYPTO_clear_free(i8* noundef %oct_buf.0.ph, i64 noundef %1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 78) #5
  br label %if.then20

err:                                              ; preds = %if.end12
  %call15 = call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef nonnull %group, %struct.ec_point_st* noundef nonnull %pt.0, i8* noundef nonnull %call9, i64 noundef %.pre, %struct.bignum_ctx* noundef %ctx) #5
  %tobool16.not = icmp eq i32 %call15, 0
  %2 = load i64, i64* %oct_buf_len, align 8, !tbaa !11
  call void @CRYPTO_clear_free(i8* noundef nonnull %call9, i64 noundef %2, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 noundef 78) #5
  br i1 %tobool16.not, label %if.then20, label %cleanup

if.then20:                                        ; preds = %err.thread, %err
  %pt.150 = phi %struct.ec_point_st* [ %pt.1.ph, %err.thread ], [ %pt.0, %err ]
  %cmp21.not = icmp eq %struct.ec_point_st* %pt.150, %point
  br i1 %cmp21.not, label %cleanup, label %if.then22

if.then22:                                        ; preds = %if.then20
  call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %pt.150) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then22, %if.then20, %if.end7, %entry
  %retval.0 = phi %struct.ec_point_st* [ null, %entry ], [ null, %if.end7 ], [ %pt.0, %err ], [ null, %if.then22 ], [ null, %if.then20 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.ec_point_st* %retval.0
}

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i32 @OPENSSL_hexstr2buf_ex(i8* noundef, i64 noundef, i64* noundef, i8* noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EC_POINT_clear_free(%struct.ec_point_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
!12 = !{!"long", !6, i64 0}
