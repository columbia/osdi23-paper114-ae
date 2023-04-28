; ModuleID = 'crypto/asn1/a_i2d_fp.c'
source_filename = "crypto/asn1/a_i2d_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ASN1_VALUE_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_i2d_fp.c\00", align 1
@__func__.ASN1_i2d_fp = private unnamed_addr constant [12 x i8] c"ASN1_i2d_fp\00", align 1
@__func__.ASN1_i2d_bio = private unnamed_addr constant [13 x i8] c"ASN1_i2d_bio\00", align 1
@__func__.ASN1_item_i2d_fp = private unnamed_addr constant [17 x i8] c"ASN1_item_i2d_fp\00", align 1
@__func__.ASN1_item_i2d_bio = private unnamed_addr constant [18 x i8] c"ASN1_item_i2d_bio\00", align 1
@__func__.ASN1_item_i2d_mem_bio = private unnamed_addr constant [22 x i8] c"ASN1_item_i2d_mem_bio\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_i2d_fp(i32 (i8*, i8**)* nocapture noundef readonly %i2d, %struct._IO_FILE* noundef %out, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_i2d_fp, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524295, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %out to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #3
  %call3 = tail call i32 @ASN1_i2d_bio(i32 (i8*, i8**)* noundef %i2d, %struct.bio_st* noundef nonnull %call1, i8* noundef %x) #4
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
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
define i32 @ASN1_i2d_bio(i32 (i8*, i8**)* nocapture noundef readonly %i2d, %struct.bio_st* noundef %out, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  %call = tail call i32 %i2d(i8* noundef %x, i8** noundef null) #3
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv39 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv39, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 44) #3
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ASN1_i2d_bio, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i8* %call1, i8** %p, align 8, !tbaa !4
  %call6 = call i32 %i2d(i8* noundef %x, i8** noundef nonnull %p) #3
  %call740 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef nonnull %call1, i32 noundef %call) #3
  %cmp841 = icmp eq i32 %call, %call740
  br i1 %cmp841, label %for.end, label %if.end11

if.end11:                                         ; preds = %if.end5, %if.end15
  %call744 = phi i32 [ %call7, %if.end15 ], [ %call740, %if.end5 ]
  %n.043 = phi i32 [ %sub, %if.end15 ], [ %call, %if.end5 ]
  %j.042 = phi i32 [ %add, %if.end15 ], [ 0, %if.end5 ]
  %cmp12 = icmp slt i32 %call744, 1
  br i1 %cmp12, label %for.end, label %if.end15

if.end15:                                         ; preds = %if.end11
  %add = add nsw i32 %call744, %j.042
  %sub = sub nsw i32 %n.043, %call744
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %call1, i64 %idxprom
  %call7 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef nonnull %arrayidx, i32 noundef %sub) #3
  %cmp8 = icmp eq i32 %sub, %call7
  br i1 %cmp8, label %for.end, label %if.end11

for.end:                                          ; preds = %if.end15, %if.end11, %if.end5
  %ret.0 = phi i32 [ 1, %if.end5 ], [ 0, %if.end11 ], [ 1, %if.end15 ]
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 64) #3
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %ret.0, %for.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_i2d_fp(%struct.ASN1_ITEM_st* noundef %it, %struct._IO_FILE* noundef %out, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.bio_method_st* @BIO_s_file() #3
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp = icmp eq %struct.bio_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ASN1_item_i2d_fp, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524295, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast %struct._IO_FILE* %out to i8*
  %call2 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef nonnull %call1, i32 noundef 106, i64 noundef 0, i8* noundef %0) #3
  %call3 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef nonnull %call1, i8* noundef %x) #4
  %call4 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.bio_st* noundef %out, i8* noundef %x) local_unnamed_addr #0 {
entry:
  %b = alloca i8*, align 8
  %0 = bitcast i8** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %b, align 8, !tbaa !4
  %1 = bitcast i8* %x to %struct.ASN1_VALUE_st*
  %call = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %1, i8** noundef nonnull %b, %struct.ASN1_ITEM_st* noundef %it) #3
  %2 = load i8*, i8** %b, align 8, !tbaa !4
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call122 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef nonnull %2, i32 noundef %call) #3
  %cmp223 = icmp eq i32 %call, %call122
  br i1 %cmp223, label %for.end, label %if.end4

if.then:                                          ; preds = %entry
  call void @ERR_new() #3
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ASN1_item_i2d_bio, i64 0, i64 0)) #3
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #3
  br label %cleanup

if.end4:                                          ; preds = %for.cond.preheader, %if.end7
  %call126 = phi i32 [ %call1, %if.end7 ], [ %call122, %for.cond.preheader ]
  %n.025 = phi i32 [ %sub, %if.end7 ], [ %call, %for.cond.preheader ]
  %j.024 = phi i32 [ %add, %if.end7 ], [ 0, %for.cond.preheader ]
  %cmp5 = icmp slt i32 %call126, 1
  br i1 %cmp5, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.end4
  %add = add nsw i32 %call126, %j.024
  %sub = sub nsw i32 %n.025, %call126
  %3 = load i8*, i8** %b, align 8, !tbaa !4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %call1 = call i32 @BIO_write(%struct.bio_st* noundef %out, i8* noundef %arrayidx, i32 noundef %sub) #3
  %cmp2 = icmp eq i32 %sub, %call1
  br i1 %cmp2, label %for.end, label %if.end4

for.end:                                          ; preds = %if.end7, %if.end4, %for.cond.preheader
  %ret.0 = phi i32 [ 1, %for.cond.preheader ], [ 0, %if.end4 ], [ 1, %if.end7 ]
  %4 = load i8*, i8** %b, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 109) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %for.end ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ASN1_item_i2d_mem_bio(%struct.ASN1_ITEM_st* noundef %it, %struct.ASN1_VALUE_st* noundef %val) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ASN1_ITEM_st* %it, null
  %cmp1 = icmp eq %struct.ASN1_VALUE_st* %val, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ASN1_item_i2d_mem_bio, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, i8* noundef null) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #3
  %call2 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #3
  %cmp3 = icmp eq %struct.bio_st* %call2, null
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %0 = bitcast %struct.ASN1_VALUE_st* %val to i8*
  %call6 = tail call i32 @ASN1_item_i2d_bio(%struct.ASN1_ITEM_st* noundef nonnull %it, %struct.bio_st* noundef nonnull %call2, i8* noundef %0) #4
  %cmp7 = icmp slt i32 %call6, 1
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then8, %if.end, %if.then
  %retval.0 = phi %struct.bio_st* [ null, %if.then ], [ null, %if.end ], [ null, %if.then8 ], [ %call2, %if.end5 ]
  ret %struct.bio_st* %retval.0
}

declare %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nounwind }

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
