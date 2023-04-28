; ModuleID = 'crypto/evp/bio_md.c'
source_filename = "crypto/evp/bio_md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_method_st = type { i32, i8*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*, i64, i64*)*, i32 (%struct.bio_st*, i8*, i32)*, i32 (%struct.bio_st*, i8*)*, i32 (%struct.bio_st*, i8*, i32)*, i64 (%struct.bio_st*, i32, i64, i8*)*, i32 (%struct.bio_st*)*, i32 (%struct.bio_st*)*, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* }
%struct.bio_st = type opaque
%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque

@methods_md = internal constant %struct.bio_method_st { i32 520, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 (%struct.bio_st*, i8*, i64, i64*)* @bwrite_conv, i32 (%struct.bio_st*, i8*, i32)* @md_write, i32 (%struct.bio_st*, i8*, i64, i64*)* @bread_conv, i32 (%struct.bio_st*, i8*, i32)* @md_read, i32 (%struct.bio_st*, i8*)* null, i32 (%struct.bio_st*, i8*, i32)* @md_gets, i64 (%struct.bio_st*, i32, i64, i8*)* @md_ctrl, i32 (%struct.bio_st*)* @md_new, i32 (%struct.bio_st*)* @md_free, i64 (%struct.bio_st*, i32, i32 (%struct.bio_st*, i32, i32)*)* @md_callback_ctrl }, align 8
@.str = private unnamed_addr constant [15 x i8] c"message digest\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.bio_method_st* @BIO_f_md() local_unnamed_addr #0 {
entry:
  ret %struct.bio_method_st* @methods_md
}

declare i32 @bwrite_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_write(%struct.bio_st* noundef %b, i8* noundef %in, i32 noundef %inl) #2 {
entry:
  %cmp = icmp eq i8* %in, null
  %cmp1 = icmp slt i32 %inl, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #4
  %0 = bitcast i8* %call to %struct.evp_md_ctx_st*
  %call2 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #4
  %cmp3 = icmp ne i8* %call, null
  %cmp4 = icmp ne %struct.bio_st* %call2, null
  %or.cond24 = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond24, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @BIO_write(%struct.bio_st* noundef nonnull %call2, i8* noundef nonnull %in, i32 noundef %inl) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.end ]
  %call8 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #4
  %tobool = icmp ne i32 %call8, 0
  %cmp10 = icmp sgt i32 %ret.0, 0
  %or.cond25 = select i1 %tobool, i1 %cmp10, i1 false
  br i1 %or.cond25, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end7
  %conv = zext i32 %ret.0 to i64
  %call12 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef nonnull %in, i64 noundef %conv) #4
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then11
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #4
  br label %cleanup

if.end17:                                         ; preds = %if.then11, %if.end7
  br i1 %cmp4, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.end17
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #4
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then20, %entry, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %entry ], [ %ret.0, %if.then20 ], [ %ret.0, %if.end17 ]
  ret i32 %retval.0
}

declare i32 @bread_conv(%struct.bio_st* noundef, i8* noundef, i64 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_read(%struct.bio_st* noundef %b, i8* noundef %out, i32 noundef %outl) #2 {
entry:
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #4
  %0 = bitcast i8* %call to %struct.evp_md_ctx_st*
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #4
  %cmp2 = icmp eq i8* %call, null
  %cmp3 = icmp eq %struct.bio_st* %call1, null
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @BIO_read(%struct.bio_st* noundef nonnull %call1, i8* noundef nonnull %out, i32 noundef %outl) #4
  %call7 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #4
  %tobool = icmp ne i32 %call7, 0
  %cmp9 = icmp sgt i32 %call6, 0
  %or.cond20 = select i1 %tobool, i1 %cmp9, i1 false
  br i1 %or.cond20, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end5
  %conv = zext i32 %call6 to i64
  %call11 = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %0, i8* noundef nonnull %out, i64 noundef %conv) #4
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end5
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #4
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %entry, %if.end17
  %retval.0 = phi i32 [ %call6, %if.end17 ], [ 0, %entry ], [ 0, %if.end ], [ -1, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_gets(%struct.bio_st* noundef %bp, i8* noundef %buf, i32 noundef %size) #2 {
entry:
  %ret = alloca i32, align 4
  %0 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %bp) #4
  %1 = bitcast i8* %call to %struct.evp_md_ctx_st*
  %call1 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %1) #4
  %call2 = tail call i32 @EVP_MD_get_size(%struct.evp_md_st* noundef %call1) #4
  %cmp = icmp sgt i32 %call2, %size
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call3 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef %1, i8* noundef %buf, i32* noundef nonnull %ret) #4
  %cmp4 = icmp slt i32 %call3, 1
  %2 = load i32, i32* %ret, align 4
  %spec.select = select i1 %cmp4, i32 -1, i32 %2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @md_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #2 {
entry:
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef %b) #4
  %0 = bitcast i8* %call to %struct.evp_md_ctx_st*
  %call1 = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #4
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 112, label %sw.bb9
    i32 120, label %sw.bb16
    i32 148, label %sw.bb17
    i32 101, label %sw.bb23
    i32 111, label %sw.bb25
    i32 12, label %sw.bb32
  ]

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #4
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %sw.bb
  %call3 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %0) #4
  %call4 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %0, %struct.evp_md_st* noundef %call3, %struct.engine_st* noundef null) #4
  %conv = sext i32 %call4 to i64
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  %call7 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 1, i64 noundef %num, i8* noundef %ptr) #4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup, label %if.then12

if.then12:                                        ; preds = %sw.bb9
  %1 = bitcast i8* %ptr to %struct.evp_md_st**
  %call13 = tail call %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef %0) #4
  store %struct.evp_md_st* %call13, %struct.evp_md_st** %1, align 8, !tbaa !4
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  %2 = bitcast i8* %ptr to i8**
  store i8* %call, i8** %2, align 8, !tbaa !4
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %call18 = tail call i32 @BIO_get_init(%struct.bio_st* noundef %b) #4
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %sw.bb17
  tail call void @BIO_set_data(%struct.bio_st* noundef %b, i8* noundef %ptr) #4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  tail call void @BIO_clear_flags(%struct.bio_st* noundef %b, i32 noundef 15) #4
  %call24 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 101, i64 noundef %num, i8* noundef %ptr) #4
  tail call void @BIO_copy_next_retry(%struct.bio_st* noundef %b) #4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %3 = bitcast i8* %ptr to %struct.evp_md_st*
  %call26 = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %0, %struct.evp_md_st* noundef %3, %struct.engine_st* noundef null) #4
  %conv27 = sext i32 %call26 to i64
  %cmp28 = icmp sgt i32 %call26, 0
  br i1 %cmp28, label %if.then30, label %cleanup

if.then30:                                        ; preds = %sw.bb25
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #4
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  %4 = bitcast i8* %ptr to %struct.bio_st*
  %call33 = tail call i8* @BIO_get_data(%struct.bio_st* noundef %4) #4
  %5 = bitcast i8* %call33 to %struct.evp_md_ctx_st*
  %call34 = tail call i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef %5, %struct.evp_md_ctx_st* noundef %0) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %if.end37

if.end37:                                         ; preds = %sw.bb32
  tail call void @BIO_set_init(%struct.bio_st* noundef %b, i32 noundef 1) #4
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call38 = tail call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef %cmd, i64 noundef %num, i8* noundef %ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.bb16, %sw.bb23, %if.end37, %sw.default, %if.then6, %if.end, %if.then12, %if.then20, %if.then30, %sw.bb25, %sw.bb9, %sw.bb17, %sw.bb32
  %retval.0 = phi i64 [ 0, %sw.bb32 ], [ %call38, %sw.default ], [ 1, %if.end37 ], [ %conv27, %if.then30 ], [ %conv27, %sw.bb25 ], [ %call24, %sw.bb23 ], [ 1, %if.then20 ], [ 1, %sw.bb16 ], [ 1, %if.then12 ], [ %call7, %if.then6 ], [ %conv, %if.end ], [ 0, %sw.bb9 ], [ 0, %sw.bb17 ], [ 0, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_new(%struct.bio_st* noundef %bi) #2 {
entry:
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  tail call void @BIO_set_init(%struct.bio_st* noundef %bi, i32 noundef 1) #4
  %0 = bitcast %struct.evp_md_ctx_st* %call to i8*
  tail call void @BIO_set_data(%struct.bio_st* noundef %bi, i8* noundef nonnull %0) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @md_free(%struct.bio_st* noundef %a) #2 {
entry:
  %cmp = icmp eq %struct.bio_st* %a, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i8* @BIO_get_data(%struct.bio_st* noundef nonnull %a) #4
  %0 = bitcast i8* %call to %struct.evp_md_ctx_st*
  tail call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %0) #4
  tail call void @BIO_set_data(%struct.bio_st* noundef nonnull %a, i8* noundef null) #4
  tail call void @BIO_set_init(%struct.bio_st* noundef nonnull %a, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @md_callback_ctrl(%struct.bio_st* noundef %b, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #2 {
entry:
  %call = tail call %struct.bio_st* @BIO_next(%struct.bio_st* noundef %b) #4
  %cmp = icmp eq %struct.bio_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @BIO_callback_ctrl(%struct.bio_st* noundef nonnull %call, i32 noundef %cmd, i32 (%struct.bio_st*, i32, i32)* noundef %fp) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare i8* @BIO_get_data(%struct.bio_st* noundef) local_unnamed_addr #1

declare %struct.bio_st* @BIO_next(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @BIO_write(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_get_init(%struct.bio_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare void @BIO_clear_flags(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_copy_next_retry(%struct.bio_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

declare i32 @BIO_read(%struct.bio_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_MD_get_size(%struct.evp_md_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_st* @EVP_MD_CTX_get0_md(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #1

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

declare i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare void @BIO_set_init(%struct.bio_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @BIO_set_data(%struct.bio_st* noundef, i8* noundef) local_unnamed_addr #1

declare i32 @EVP_MD_CTX_copy_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #1

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #1

declare i64 @BIO_callback_ctrl(%struct.bio_st* noundef, i32 noundef, i32 (%struct.bio_st*, i32, i32)* noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nobuiltin nounwind "no-builtins" }
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
