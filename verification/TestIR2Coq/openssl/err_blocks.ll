; ModuleID = 'crypto/err/err_blocks.c'
source_filename = "crypto/err/err_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.err_state_st = type { [16 x i32], [16 x i32], [16 x i64], [16 x i8*], [16 x i64], [16 x i32], [16 x i8*], [16 x i32], [16 x i8*], i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"crypto/err/err_blocks.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"crypto/err/err_local.h\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ERR_new() local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #6
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call fastcc void @err_get_slot(%struct.err_state_st* noundef nonnull %call) #7
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %conv = sext i32 %0 to i64
  tail call fastcc void @err_clear(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.err_state_st* @ossl_err_get_state_int() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @err_get_slot(%struct.err_state_st* nocapture noundef %es) unnamed_addr #3 {
entry:
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 16
  store i32 %rem, i32* %top, align 8, !tbaa !4
  %bottom = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 10
  %1 = load i32, i32* %bottom, align 4, !tbaa !9
  %cmp = icmp eq i32 %rem, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = trunc i32 %rem to i8
  %rem5.lhs.trunc = add i8 %2, 1
  %rem512 = srem i8 %rem5.lhs.trunc, 16
  %rem5.sext = sext i8 %rem512 to i32
  store i32 %rem5.sext, i32* %bottom, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_clear(%struct.err_state_st* nocapture noundef %es, i64 noundef %i) unnamed_addr #0 {
entry:
  tail call fastcc void @err_clear_data(%struct.err_state_st* noundef %es, i64 noundef %i) #7
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 1, i64 %i
  store i32 0, i32* %arrayidx, align 4, !tbaa !10
  %arrayidx1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 0, i64 %i
  store i32 0, i32* %arrayidx1, align 4, !tbaa !10
  %arrayidx2 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 2, i64 %i
  store i64 0, i64* %arrayidx2, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 7, i64 %i
  store i32 -1, i32* %arrayidx3, align 4, !tbaa !10
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 6, i64 %i
  %0 = load i8*, i8** %arrayidx4, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 86) #6
  store i8* null, i8** %arrayidx4, align 8, !tbaa !13
  %arrayidx7 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 8, i64 %i
  %1 = load i8*, i8** %arrayidx7, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 88) #6
  store i8* null, i8** %arrayidx7, align 8, !tbaa !13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define void @ERR_set_debug(i8* noundef %file, i32 noundef %line, i8* noundef %func) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #6
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %conv = sext i32 %0 to i64
  tail call fastcc void @err_set_debug(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv, i8* noundef %file, i32 noundef %line, i8* noundef %func) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_set_debug(%struct.err_state_st* nocapture noundef %es, i64 noundef %i, i8* noundef %file, i32 noundef %line, i8* noundef %fn) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 6, i64 %i
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 56) #6
  %cmp = icmp eq i8* %file, null
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %file, align 1, !tbaa !15
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %if.end, label %if.else

if.else:                                          ; preds = %lor.lhs.false
  %call = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %file, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 60) #6
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %storemerge = phi i8* [ %call, %if.else ], [ null, %lor.lhs.false ], [ null, %entry ]
  store i8* %storemerge, i8** %arrayidx, align 8, !tbaa !13
  %arrayidx8 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 7, i64 %i
  store i32 %line, i32* %arrayidx8, align 4, !tbaa !10
  %arrayidx9 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 8, i64 %i
  %2 = load i8*, i8** %arrayidx9, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 62) #6
  %cmp10 = icmp eq i8* %fn, null
  br i1 %cmp10, label %if.end24, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %3 = load i8, i8* %fn, align 1, !tbaa !15
  %cmp15 = icmp eq i8 %3, 0
  br i1 %cmp15, label %if.end24, label %if.else20

if.else20:                                        ; preds = %lor.lhs.false12
  %call21 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %fn, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end, %lor.lhs.false12, %if.else20
  %storemerge41 = phi i8* [ %call21, %if.else20 ], [ null, %lor.lhs.false12 ], [ null, %if.end ]
  store i8* %storemerge41, i8** %arrayidx9, align 8, !tbaa !13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ERR_set_error(i32 noundef %lib, i32 noundef %reason, i8* noundef %fmt, ...) local_unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %0)
  call void @ERR_vset_error(i32 noundef %lib, i32 noundef %reason, i8* noundef %fmt, %struct.__va_list_tag* noundef nonnull %arraydecay) #7
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

; Function Attrs: noinline nounwind uwtable
define void @ERR_vset_error(i32 noundef %lib, i32 noundef %reason, i8* noundef %fmt, %struct.__va_list_tag* noundef %args) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.err_state_st* @ossl_err_get_state_int() #6
  %cmp = icmp eq %struct.err_state_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %top = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 9
  %0 = load i32, i32* %top, align 8, !tbaa !4
  %conv = sext i32 %0 to i64
  %cmp1.not = icmp eq i8* %fmt, null
  br i1 %cmp1.not, label %if.end43, label %if.then3

if.then3:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 3, i64 %conv
  %1 = load i8*, i8** %arrayidx, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 4, i64 %conv
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !11
  store i8* null, i8** %arrayidx, align 8, !tbaa !13
  %arrayidx7 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %call, i64 0, i32 5, i64 %conv
  store i32 0, i32* %arrayidx7, align 4, !tbaa !10
  %cmp8 = icmp ult i64 %2, 1024
  br i1 %cmp8, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.then3
  %call10 = tail call i8* @CRYPTO_realloc(i8* noundef %1, i64 noundef 1024, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 84) #6
  %cmp11.not = icmp eq i8* %call10, null
  %spec.select = select i1 %cmp11.not, i64 %2, i64 1024
  %spec.select97 = select i1 %cmp11.not, i8* %1, i8* %call10
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %if.then3
  %buf_size.0 = phi i64 [ %2, %if.then3 ], [ %spec.select, %land.lhs.true ]
  %buf.0 = phi i8* [ %1, %if.then3 ], [ %spec.select97, %land.lhs.true ]
  %cmp15.not = icmp eq i8* %buf.0, null
  br i1 %cmp15.not, label %if.end28, label %if.end19

if.end19:                                         ; preds = %if.end14
  %call18 = tail call i32 @BIO_vsnprintf(i8* noundef nonnull %buf.0, i64 noundef %buf_size.0, i8* noundef nonnull %fmt, %struct.__va_list_tag* noundef %args) #6
  %3 = icmp sgt i32 %call18, 0
  %spec.select100 = select i1 %3, i32 %call18, i32 0
  %idxprom = zext i32 %spec.select100 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %buf.0, i64 %idxprom
  store i8 0, i8* %arrayidx27, align 1, !tbaa !15
  br label %if.end28

if.end28:                                         ; preds = %if.end14, %if.end19
  %4 = phi i32 [ %spec.select100, %if.end19 ], [ 0, %if.end14 ]
  %add = add nuw nsw i32 %4, 1
  %conv29 = zext i32 %add to i64
  %call30 = tail call i8* @CRYPTO_realloc(i8* noundef %buf.0, i64 noundef %conv29, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 103) #6
  %cmp31.not = icmp eq i8* %call30, null
  br i1 %cmp31.not, label %if.end38, label %if.then33

if.then33:                                        ; preds = %if.end28
  %idxprom36 = zext i32 %4 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %call30, i64 %idxprom36
  store i8 0, i8* %arrayidx37, align 1, !tbaa !15
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end28
  %buf_size.1 = phi i64 [ %conv29, %if.then33 ], [ %buf_size.0, %if.end28 ]
  %buf.1 = phi i8* [ %call30, %if.then33 ], [ %buf.0, %if.end28 ]
  %cmp39.not = icmp eq i8* %buf.1, null
  %spec.select98 = select i1 %cmp39.not, i32 0, i32 3
  %.pre = load i32, i32* %top, align 8, !tbaa !4
  %.pre101 = sext i32 %.pre to i64
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.end
  %conv45.pre-phi = phi i64 [ %.pre101, %if.end38 ], [ %conv, %if.end ]
  %buf_size.2 = phi i64 [ %buf_size.1, %if.end38 ], [ 0, %if.end ]
  %flags.1 = phi i32 [ %spec.select98, %if.end38 ], [ 0, %if.end ]
  %buf.2 = phi i8* [ %buf.1, %if.end38 ], [ null, %if.end ]
  tail call fastcc void @err_clear_data(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv45.pre-phi) #7
  %5 = load i32, i32* %top, align 8, !tbaa !4
  %conv47 = sext i32 %5 to i64
  tail call fastcc void @err_set_error(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv47, i32 noundef %lib, i32 noundef %reason) #7
  br i1 %cmp1.not, label %cleanup, label %if.then50

if.then50:                                        ; preds = %if.end43
  %6 = load i32, i32* %top, align 8, !tbaa !4
  %conv52 = sext i32 %6 to i64
  tail call fastcc void @err_set_data(%struct.err_state_st* noundef nonnull %call, i64 noundef %conv52, i8* noundef %buf.2, i64 noundef %buf_size.2, i32 noundef %flags.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then50, %entry
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

declare i8* @CRYPTO_realloc(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal fastcc void @err_clear_data(%struct.err_state_st* nocapture noundef %es, i64 noundef %i) unnamed_addr #3 {
entry:
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 5, i64 %i
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %and = and i32 %0, 1
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx20 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  br i1 %tobool.not, label %if.else18, label %if.else

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %arrayidx20, align 8, !tbaa !13
  %cmp.not = icmp eq i8* %1, null
  br i1 %cmp.not, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.else
  store i8 0, i8* %1, align 1, !tbaa !15
  br label %if.end25.sink.split

if.else18:                                        ; preds = %entry
  store i8* null, i8** %arrayidx20, align 8, !tbaa !13
  %arrayidx22 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 4, i64 %i
  store i64 0, i64* %arrayidx22, align 8, !tbaa !11
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else18, %if.then11
  %.sink = phi i32 [ 1, %if.then11 ], [ 0, %if.else18 ]
  store i32 %.sink, i32* %arrayidx, align 4, !tbaa !10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal fastcc void @err_set_error(%struct.err_state_st* nocapture noundef writeonly %es, i64 noundef %i, i32 noundef %lib, i32 noundef %reason) unnamed_addr #5 {
entry:
  %cmp = icmp eq i32 %lib, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %or = or i32 %reason, -2147483648
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = shl i32 %lib, 23
  %1 = and i32 %0, 2139095040
  %2 = and i32 %reason, 8388607
  %or49 = or i32 %1, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %or, %cond.true ], [ %or49, %cond.false ]
  %cond = zext i32 %cond.in to i64
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 2, i64 %i
  store i64 %cond, i64* %arrayidx, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @err_set_data(%struct.err_state_st* nocapture noundef %es, i64 noundef %i, i8* noundef %data, i64 noundef %datasz, i32 noundef %flags) unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 5, i64 %i
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !10
  %and = and i32 %0, 1
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !13
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 3, i64 %i
  store i8* %data, i8** %arrayidx3, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds %struct.err_state_st, %struct.err_state_st* %es, i64 0, i32 4, i64 %i
  store i64 %datasz, i64* %arrayidx4, align 8, !tbaa !11
  store i32 %flags, i32* %arrayidx, align 4, !tbaa !10
  ret void
}

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !8, i64 896}
!5 = !{!"err_state_st", !6, i64 0, !6, i64 64, !6, i64 128, !6, i64 256, !6, i64 384, !6, i64 512, !6, i64 576, !6, i64 704, !6, i64 768, !8, i64 896, !8, i64 900}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!5, !8, i64 900}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!6, !6, i64 0}
