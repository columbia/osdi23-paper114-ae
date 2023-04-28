; ModuleID = 'crypto/bio/bf_prefix.c'
source_filename = "crypto/bio/bf_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@prefix_meth = internal constant %struct.bio_method_st { i32 521, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @prefix_write, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*, i64, i64*)* @prefix_read, i32 (%struct.bio_st*, i8*, i32)* null, i32 (%struct.bio_st*, i8*)* @prefix_puts, i32 (%struct.bio_st*, i8*, i32)* @prefix_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @prefix_ctrl, i32 (%struct.bio_st*)* @prefix_create, i32 (%struct.bio_st*)* @prefix_destroy, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @prefix_callback_ctrl }, align 8
@.str = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"crypto/bio/bf_prefix.c\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_prefix() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @prefix_meth
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_write(%struct.bio_st* noundef %b, i8* noundef %out, i64 noundef %outl, i64* noundef %numwritten) #1 {
entry:
  %dontcare = alloca i64, align 8
  %num = alloca i64, align 8
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup76, label %if.end

if.end:                                           ; preds = %entry
  %prefix = bitcast i8* %call to i8**
  %0 = load i8*, i8** %prefix, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, i8* %0, align 1, !tbaa !10
  %cmp3 = icmp eq i8 %1, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %indent = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %indent to i32*
  %3 = load i32, i32* %2, align 8, !tbaa !11
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.then7, label %if.end17

if.then7:                                         ; preds = %land.lhs.true
  %cmp8.not = icmp eq i64 %outl, 0
  br i1 %cmp8.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.then7
  %sub = add i64 %outl, -1
  %arrayidx = getelementptr inbounds i8, i8* %out, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !10
  %cmp12 = icmp eq i8 %4, 10
  %conv13 = zext i1 %cmp12 to i32
  %linestart = getelementptr inbounds i8, i8* %call, i64 12
  %5 = bitcast i8* %linestart to i32*
  store i32 %conv13, i32* %5, align 4, !tbaa !12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then7
  %call15 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %call16 = tail call i32 @BIO_write_ex(%struct.bio_st* noundef %call15, i8* noundef %out, i64 noundef %outl, i64* noundef %numwritten) #5
  br label %cleanup76

if.end17:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store i64 0, i64* %numwritten, align 8, !tbaa !13
  %cmp18.not137 = icmp eq i64 %outl, 0
  br i1 %cmp18.not137, label %cleanup76, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end17
  %linestart20 = getelementptr inbounds i8, i8* %call, i64 12
  %6 = bitcast i8* %linestart20 to i32*
  %7 = bitcast i64* %dontcare to i8*
  %indent35 = getelementptr inbounds i8, i8* %call, i64 8
  %8 = bitcast i8* %indent35 to i32*
  %9 = bitcast i64* %num to i8*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup71
  %out.addr.0139 = phi i8* [ %out, %while.body.lr.ph ], [ %out.addr.1.lcssa, %cleanup71 ]
  %outl.addr.0138 = phi i64 [ %outl, %while.body.lr.ph ], [ %outl.addr.1.lcssa, %cleanup71 ]
  %10 = load i32, i32* %6, align 4, !tbaa !12
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.rhs.preheader, label %if.then21

land.rhs.preheader:                               ; preds = %if.end33, %while.body
  br label %land.rhs

if.then21:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6
  %11 = load i8*, i8** %prefix, align 8, !tbaa !4
  %cmp23.not = icmp eq i8* %11, null
  br i1 %cmp23.not, label %if.end33, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %if.then21
  %call26 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %12 = load i8*, i8** %prefix, align 8, !tbaa !4
  %call29 = call i64 @strlen(i8* noundef %12) #7
  %call30 = call i32 @BIO_write_ex(%struct.bio_st* noundef %call26, i8* noundef %12, i64 noundef %call29, i64* noundef nonnull %dontcare) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %if.end33

if.end33:                                         ; preds = %land.lhs.true25, %if.then21
  %call34 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %13 = load i32, i32* %8, align 8, !tbaa !11
  %call36 = call i32 (%struct.bio_st*, i8*, ...) @BIO_printf(%struct.bio_st* noundef %call34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %13, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #5
  store i32 0, i32* %6, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %land.rhs.preheader

cleanup:                                          ; preds = %land.lhs.true25
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6
  br label %cleanup76

land.rhs:                                         ; preds = %land.rhs.preheader, %for.inc
  %i.0127 = phi i64 [ %inc, %for.inc ], [ 0, %land.rhs.preheader ]
  %arrayidx41 = getelementptr inbounds i8, i8* %out.addr.0139, i64 %i.0127
  %14 = load i8, i8* %arrayidx41, align 1, !tbaa !10
  %cmp43.not = icmp eq i8 %14, 10
  br i1 %cmp43.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw i64 %i.0127, 1
  %exitcond.not = icmp eq i64 %inc, %outl.addr.0138
  br i1 %exitcond.not, label %for.end, label %land.rhs, !llvm.loop !15

for.end:                                          ; preds = %land.rhs, %for.inc
  %i.0.lcssa = phi i64 [ %outl.addr.0138, %for.inc ], [ %i.0127, %land.rhs ]
  %cmp46 = icmp eq i8 %14, 10
  %inc49 = zext i1 %cmp46 to i64
  %spec.select = add i64 %i.0.lcssa, %inc49
  %cmp52.not131 = icmp eq i64 %spec.select, 0
  br i1 %cmp52.not131, label %while.end, label %while.body54

while.body54:                                     ; preds = %for.end, %cleanup62
  %i.2134 = phi i64 [ %sub61, %cleanup62 ], [ %spec.select, %for.end ]
  %out.addr.1133 = phi i8* [ %add.ptr, %cleanup62 ], [ %out.addr.0139, %for.end ]
  %outl.addr.1132 = phi i64 [ %sub60, %cleanup62 ], [ %outl.addr.0138, %for.end ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6
  store i64 0, i64* %num, align 8, !tbaa !13
  %call55 = call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %call56 = call i32 @BIO_write_ex(%struct.bio_st* noundef %call55, i8* noundef %out.addr.1133, i64 noundef %i.2134, i64* noundef nonnull %num) #5
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup62.thread, label %cleanup62

cleanup62.thread:                                 ; preds = %while.body54
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  br label %cleanup76

cleanup62:                                        ; preds = %while.body54
  %15 = load i64, i64* %num, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %out.addr.1133, i64 %15
  %sub60 = sub i64 %outl.addr.1132, %15
  %16 = load i64, i64* %numwritten, align 8, !tbaa !13
  %add = add i64 %16, %15
  store i64 %add, i64* %numwritten, align 8, !tbaa !13
  %sub61 = sub i64 %i.2134, %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6
  %cmp52.not = icmp eq i64 %sub61, 0
  br i1 %cmp52.not, label %while.end, label %while.body54

while.end:                                        ; preds = %cleanup62, %for.end
  %outl.addr.1.lcssa = phi i64 [ %outl.addr.0138, %for.end ], [ %sub60, %cleanup62 ]
  %out.addr.1.lcssa = phi i8* [ %out.addr.0139, %for.end ], [ %add.ptr, %cleanup62 ]
  br i1 %cmp46, label %if.then68, label %cleanup71

if.then68:                                        ; preds = %while.end
  store i32 1, i32* %6, align 4, !tbaa !12
  br label %cleanup71

cleanup71:                                        ; preds = %while.end, %if.then68
  %cmp18.not = icmp eq i64 %outl.addr.1.lcssa, 0
  br i1 %cmp18.not, label %cleanup76, label %while.body, !llvm.loop !17

cleanup76:                                        ; preds = %cleanup71, %if.end17, %cleanup62.thread, %cleanup, %entry, %if.end14
  %retval.6 = phi i32 [ %call16, %if.end14 ], [ 0, %entry ], [ 0, %cleanup ], [ 0, %cleanup62.thread ], [ 1, %if.end17 ], [ 1, %cleanup71 ]
  ret i32 %retval.6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_read(%struct.bio_st* noundef %b, i8* noundef %in, i64 noundef %size, i64* noundef %numread) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %call1 = tail call i32 @BIO_read_ex(%struct.bio_st* noundef %call, i8* noundef %in, i64 noundef %size, i64* noundef %numread) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_puts(%struct.bio_st* noundef %b, i8* noundef %str) #1 {
entry:
  %call = tail call i64 @strlen(i8* noundef %str) #7
  %conv = trunc i64 %call to i32
  %call1 = tail call i32 @BIO_write(%struct.bio_st* noundef %b, i8* noundef %str, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_gets(%struct.bio_st* noundef %b, i8* noundef %buf, i32 noundef %size) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %call1 = tail call i32 @BIO_gets(%struct.bio_st* noundef %call, i8* noundef %buf, i32 noundef %size) #5
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @prefix_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #1 {
entry:
  %cmp = icmp eq %struct.bio_st* %b, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %b) #5
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %cmd, label %sw.epilog [
    i32 79, label %sw.bb
    i32 80, label %sw.bb11
    i32 81, label %sw.bb17
    i32 128, label %sw.bb20
    i32 1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  %prefix = bitcast i8* %call to i8**
  %0 = load i8*, i8** %prefix, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 161) #5
  %cmp2 = icmp eq i8* %ptr, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  store i8* null, i8** %prefix, align 8, !tbaa !4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %call5 = tail call i8* @CRYPTO_strdup(i8* noundef nonnull %ptr, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 166) #5
  store i8* %call5, i8** %prefix, align 8, !tbaa !4
  %cmp8 = icmp ne i8* %call5, null
  %1 = zext i1 %cmp8 to i64
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %cmp12 = icmp sgt i64 %num, -1
  br i1 %cmp12, label %if.then14, label %cleanup

if.then14:                                        ; preds = %sw.bb11
  %conv15 = trunc i64 %num to i32
  %indent = getelementptr inbounds i8, i8* %call, i64 8
  %2 = bitcast i8* %indent to i32*
  store i32 %conv15, i32* %2, align 8, !tbaa !11
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %indent18 = getelementptr inbounds i8, i8* %call, i64 8
  %3 = bitcast i8* %indent18 to i32*
  %4 = load i32, i32* %3, align 8, !tbaa !11
  %conv19 = zext i32 %4 to i64
  br label %cleanup

sw.bb20:                                          ; preds = %if.end, %if.end
  %linestart = getelementptr inbounds i8, i8* %call, i64 12
  %5 = bitcast i8* %linestart to i32*
  store i32 1, i32* %5, align 4, !tbaa !12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb20
  %call21 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %b) #5
  %cmp22.not = icmp eq %struct.bio_st* %call21, null
  br i1 %cmp22.not, label %cleanup, label %if.then24

if.then24:                                        ; preds = %sw.epilog
  %call25 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef nonnull %b) #5
  %call26 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call25, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %if.else, %if.then3, %if.then14, %sw.bb11, %if.then24, %sw.epilog, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %call26, %if.then24 ], [ 0, %sw.epilog ], [ %conv19, %sw.bb17 ], [ 1, %if.then14 ], [ 0, %sw.bb11 ], [ 1, %if.then3 ], [ %1, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_create(%struct.bio_st* noundef %b) #1 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %prefix = bitcast i8* %call to i8**
  store i8* null, i8** %prefix, align 8, !tbaa !4
  %indent = getelementptr inbounds i8, i8* %call, i64 8
  %0 = bitcast i8* %indent to i32*
  store i32 0, i32* %0, align 8, !tbaa !11
  %linestart = getelementptr inbounds i8, i8* %call, i64 12
  %1 = bitcast i8* %linestart to i32*
  store i32 1, i32* %1, align 4, !tbaa !12
  tail call void @BIO_set_data(%struct.bio_st* noundef %b, i8* noundef nonnull %call) #5
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @prefix_destroy(%struct.bio_st* noundef %b) #1 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #5
  %prefix = bitcast i8* %call to i8**
  %0 = load i8*, i8** %prefix, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71) #5
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 noundef 72) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @prefix_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #1 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #5
  %call1 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef %call, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #5
  ret i64 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #3

declare i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #4

declare i32 @BIO_printf(%struct.bio_st* noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #3

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i8* @CRYPTO_strdup(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #3

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #3

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"prefix_ctx_st", !6, i64 0, !9, i64 8, !9, i64 12}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!5, !9, i64 8}
!12 = !{!5, !9, i64 12}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
