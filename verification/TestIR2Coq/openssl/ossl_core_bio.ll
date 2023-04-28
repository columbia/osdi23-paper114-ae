; ModuleID = 'crypto/bio/ossl_core_bio.c'
source_filename = "crypto/bio/ossl_core_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ossl_core_bio_st = type { i32, i8*, %struct.bio_st* }
%struct.bio_st = type { %struct.ossl_lib_ctx_st*, %struct.bio_method_st*, i64 (%struct.bio_st*, i32, i8*, i32, i64, i64)*, i64 (%struct.bio_st*, i32, i8*, i64, i32, i64, i32, i64*)*, i8*, i32, i32, i32, i32, i32, i8*, %struct.bio_st*, %struct.bio_st*, i32, i64, i64, %struct.crypto_ex_data_st, i8* }
%struct.ossl_lib_ctx_st = type opaque
%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"crypto/bio/ossl_core_bio.c\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define i32 @ossl_core_bio_up_ref(%struct.ossl_core_bio_st* nocapture noundef %cb) local_unnamed_addr #0 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %ref_cnt = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 0
  call fastcc void @CRYPTO_UP_REF(i32* noundef %ref_cnt, i32* noundef nonnull %ref) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_UP_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw add i32* %val, i32 1 monotonic, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %ret, align 4, !tbaa !4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef %cb) local_unnamed_addr #3 {
entry:
  %ref = alloca i32, align 4
  %0 = bitcast i32* %ref to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 0, i32* %ref, align 4, !tbaa !4
  %cmp.not = icmp eq %struct.ossl_core_bio_st* %cb, null
  br i1 %cmp.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %ref_cnt = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 0
  call fastcc void @CRYPTO_DOWN_REF(i32* noundef nonnull %ref_cnt, i32* noundef nonnull %ref) #6
  %1 = load i32, i32* %ref, align 4, !tbaa !4
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %ref_lock = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 1
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %2 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef %2) #7
  %3 = load i8*, i8** %ref_lock, align 8, !tbaa !11
  tail call void @CRYPTO_THREAD_lock_free(i8* noundef %3) #7
  %4 = bitcast %struct.ossl_core_bio_st* %cb to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 52) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then2, %entry
  %res.0 = phi i32 [ %call3, %if.then2 ], [ 1, %if.then ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind uwtable willreturn
define internal fastcc void @CRYPTO_DOWN_REF(i32* nocapture noundef %val, i32* nocapture noundef writeonly %ret) unnamed_addr #2 {
entry:
  %0 = atomicrmw sub i32* %val, i32 1 monotonic, align 4
  %sub = add nsw i32 %0, -1
  store i32 %sub, i32* %ret, align 4, !tbaa !4
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  fence acquire
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #4

declare void @CRYPTO_THREAD_lock_free(i8* noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_core_bio_st* @ossl_core_bio_new_from_bio(%struct.bio_st* noundef %bio) local_unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.ossl_core_bio_st* @core_bio_new() #6
  %cmp = icmp eq %struct.ossl_core_bio_st* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @BIO_up_ref(%struct.bio_st* noundef %bio) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call2 = tail call i32 @ossl_core_bio_free(%struct.ossl_core_bio_st* noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bio3 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %call, i64 0, i32 2
  store %struct.bio_st* %bio, %struct.bio_st** %bio3, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_core_bio_st* [ null, %if.then ], [ %call, %if.end ]
  ret %struct.ossl_core_bio_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_core_bio_st* @core_bio_new() unnamed_addr #3 {
entry:
  %call = tail call i8* @CRYPTO_malloc(i64 noundef 24, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 26) #7
  %0 = bitcast i8* %call to %struct.ossl_core_bio_st*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i8* @CRYPTO_THREAD_lock_new() #7
  %ref_lock = getelementptr inbounds i8, i8* %call, i64 8
  %1 = bitcast i8* %ref_lock to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !11
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @CRYPTO_free(i8* noundef %call, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 noundef 29) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ref_cnt = bitcast i8* %call to i32*
  store atomic i32 1, i32* %ref_cnt seq_cst, align 4, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ossl_core_bio_st* [ null, %if.then ], [ %0, %if.end ]
  ret %struct.ossl_core_bio_st* %retval.0
}

declare i32 @BIO_up_ref(%struct.bio_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_core_bio_st* @ossl_core_bio_new_file(i8* noundef %filename, i8* noundef %mode) local_unnamed_addr #3 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_file(i8* noundef %filename, i8* noundef %mode) #7
  %call1 = tail call fastcc %struct.ossl_core_bio_st* @core_bio_new_from_new_bio(%struct.bio_st* noundef %call) #6
  ret %struct.ossl_core_bio_st* %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.ossl_core_bio_st* @core_bio_new_from_new_bio(%struct.bio_st* noundef %bio) unnamed_addr #3 {
entry:
  %cmp = icmp eq %struct.bio_st* %bio, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.ossl_core_bio_st* @core_bio_new() #6
  %cmp1 = icmp eq %struct.ossl_core_bio_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @BIO_free(%struct.bio_st* noundef nonnull %bio) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %bio5 = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %call, i64 0, i32 2
  store %struct.bio_st* %bio, %struct.bio_st** %bio5, align 8, !tbaa !8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end4, %if.then2
  %retval.0 = phi %struct.ossl_core_bio_st* [ null, %if.then2 ], [ %call, %if.end4 ], [ null, %entry ]
  ret %struct.ossl_core_bio_st* %retval.0
}

declare %struct.bio_st* @BIO_new_file(i8* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define %struct.ossl_core_bio_st* @ossl_core_bio_new_mem_buf(i8* noundef %buf, i32 noundef %len) local_unnamed_addr #3 {
entry:
  %call = tail call %struct.bio_st* @BIO_new_mem_buf(i8* noundef %buf, i32 noundef %len) #7
  %call1 = tail call fastcc %struct.ossl_core_bio_st* @core_bio_new_from_new_bio(%struct.bio_st* noundef %call) #6
  ret %struct.ossl_core_bio_st* %call1
}

declare %struct.bio_st* @BIO_new_mem_buf(i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_read_ex(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i32 @BIO_read_ex(%struct.bio_st* noundef %0, i8* noundef %data, i64 noundef %dlen, i64* noundef %readbytes) #7
  ret i32 %call
}

declare i32 @BIO_read_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_write_ex(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i8* noundef %data, i64 noundef %dlen, i64* noundef %written) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i32 @BIO_write_ex(%struct.bio_st* noundef %0, i8* noundef %data, i64 noundef %dlen, i64* noundef %written) #7
  ret i32 %call
}

declare i32 @BIO_write_ex(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_gets(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i8* noundef %buf, i32 noundef %size) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i32 @BIO_gets(%struct.bio_st* noundef %0, i8* noundef %buf, i32 noundef %size) #7
  ret i32 %call
}

declare i32 @BIO_gets(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_puts(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i8* noundef %buf) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i32 @BIO_puts(%struct.bio_st* noundef %0, i8* noundef %buf) #7
  ret i32 %call
}

declare i32 @BIO_puts(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i64 @ossl_core_bio_ctrl(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %0, i32 noundef %cmd, i64 noundef %larg, i8* noundef %parg) #7
  ret i64 %call
}

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_core_bio_vprintf(%struct.ossl_core_bio_st* nocapture noundef readonly %cb, i8* noundef %format, %struct.__va_list_tag* noundef %args) local_unnamed_addr #3 {
entry:
  %bio = getelementptr inbounds %struct.ossl_core_bio_st, %struct.ossl_core_bio_st* %cb, i64 0, i32 2
  %0 = load %struct.bio_st*, %struct.bio_st** %bio, align 8, !tbaa !8
  %call = tail call i32 @BIO_vprintf(%struct.bio_st* noundef %0, i8* noundef %format, %struct.__va_list_tag* noundef %args) #7
  ret i32 %call
}

declare i32 @BIO_vprintf(%struct.bio_st* noundef, i8* noundef, %struct.__va_list_tag* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @CRYPTO_THREAD_lock_new() local_unnamed_addr #4

attributes #0 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"ossl_core_bio_st", !6, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !6, i64 0}
