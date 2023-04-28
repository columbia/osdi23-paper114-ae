; ModuleID = 'crypto/ct/ct_b64.c'
source_filename = "crypto/ct/ct_b64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sct_st = type { i32, i8*, i64, i8*, i64, i64, i8*, i64, i8, i8, i8*, i64, i32, i32, i32 }
%struct.ctlog_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [19 x i8] c"crypto/ct/ct_b64.c\00", align 1
@__func__.SCT_new_from_base64 = private unnamed_addr constant [20 x i8] c"SCT_new_from_base64\00", align 1
@__func__.CTLOG_new_from_base64_ex = private unnamed_addr constant [25 x i8] c"CTLOG_new_from_base64_ex\00", align 1
@__func__.ct_base64_decode = private unnamed_addr constant [17 x i8] c"ct_base64_decode\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.sct_st* @SCT_new_from_base64(i8 noundef zeroext %version, i8* noundef %logid_base64, i32 noundef %entry_type, i64 noundef %timestamp, i8* noundef %extensions_base64, i8* noundef %signature_base64) local_unnamed_addr #0 {
entry:
  %dec = alloca i8*, align 8
  %p = alloca i8*, align 8
  %call = tail call %struct.sct_st* @SCT_new() #4
  %0 = bitcast i8** %dec to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %dec, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  store i8* null, i8** %p, align 8, !tbaa !4
  %cmp = icmp eq %struct.sct_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SCT_new_from_base64, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %version to i32
  %call1 = tail call i32 @SCT_set_version(%struct.sct_st* noundef nonnull %call, i32 noundef %conv) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err.sink.split, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc i32 @ct_base64_decode(i8* noundef %logid_base64, i8** noundef nonnull %dec) #6
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %err.sink.split, label %if.end8

if.end8:                                          ; preds = %if.end3
  %2 = load i8*, i8** %dec, align 8, !tbaa !4
  %conv953 = zext i32 %call4 to i64
  %call10 = tail call i32 @SCT_set0_log_id(%struct.sct_st* noundef nonnull %call, i8* noundef %2, i64 noundef %conv953) #4
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %err, label %if.end13

if.end13:                                         ; preds = %if.end8
  store i8* null, i8** %dec, align 8, !tbaa !4
  %call14 = call fastcc i32 @ct_base64_decode(i8* noundef %extensions_base64, i8** noundef nonnull %dec) #6
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %err.sink.split, label %if.end18

if.end18:                                         ; preds = %if.end13
  %3 = load i8*, i8** %dec, align 8, !tbaa !4
  %conv1954 = zext i32 %call14 to i64
  tail call void @SCT_set0_extensions(%struct.sct_st* noundef nonnull %call, i8* noundef %3, i64 noundef %conv1954) #4
  store i8* null, i8** %dec, align 8, !tbaa !4
  %call20 = call fastcc i32 @ct_base64_decode(i8* noundef %signature_base64, i8** noundef nonnull %dec) #6
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %err.sink.split, label %if.end24

if.end24:                                         ; preds = %if.end18
  %4 = load i8*, i8** %dec, align 8, !tbaa !4
  store i8* %4, i8** %p, align 8, !tbaa !4
  %conv2555 = zext i32 %call20 to i64
  %call26 = call i32 @o2i_SCT_signature(%struct.sct_st* noundef nonnull %call, i8** noundef nonnull %p, i64 noundef %conv2555) #4
  %cmp27 = icmp slt i32 %call26, 1
  br i1 %cmp27, label %err, label %if.end30

if.end30:                                         ; preds = %if.end24
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 113) #4
  store i8* null, i8** %dec, align 8, !tbaa !4
  call void @SCT_set_timestamp(%struct.sct_st* noundef nonnull %call, i64 noundef %timestamp) #4
  %call31 = call i32 @SCT_set_log_entry_type(%struct.sct_st* noundef nonnull %call, i32 noundef %entry_type) #4
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %err, label %cleanup

err.sink.split:                                   ; preds = %if.end18, %if.end13, %if.end3, %if.end
  %.sink56 = phi i32 [ 83, %if.end ], [ 89, %if.end3 ], [ 98, %if.end13 ], [ 106, %if.end18 ]
  %.sink = phi i32 [ 115, %if.end ], [ 118, %if.end3 ], [ 118, %if.end13 ], [ 118, %if.end18 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink56, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.SCT_new_from_base64, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %if.end30, %if.end24, %if.end8
  %5 = load i8*, i8** %dec, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 124) #4
  call void @SCT_free(%struct.sct_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %err, %if.then
  %retval.0 = phi %struct.sct_st* [ null, %if.then ], [ null, %err ], [ %call, %if.end30 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret %struct.sct_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.sct_st* @SCT_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @SCT_set_version(%struct.sct_st* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ct_base64_decode(i8* noundef %in, i8** nocapture noundef writeonly %out) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef %in) #7
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %out, align 8, !tbaa !4
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = lshr i64 %call, 2
  %sext = mul i64 %div, 12884901888
  %conv1 = ashr exact i64 %sext, 32
  %call2 = tail call i8* @CRYPTO_malloc(i64 noundef %conv1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 36) #4
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %err.sink.split, label %if.end6

if.end6:                                          ; preds = %if.end
  %conv7 = trunc i64 %call to i32
  %call8 = tail call i32 @EVP_DecodeBlock(i8* noundef nonnull %call2, i8* noundef %in, i32 noundef %conv7) #4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %err.sink.split, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end6
  %dec = add i64 %call, -1
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %dec
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !8
  %cmp14 = icmp eq i8 %0, 61
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader
  %dec16 = add nsw i32 %call8, -1
  %dec.1 = add i64 %call, -2
  %arrayidx.1 = getelementptr inbounds i8, i8* %in, i64 %dec.1
  %1 = load i8, i8* %arrayidx.1, align 1, !tbaa !8
  %cmp14.1 = icmp eq i8 %1, 61
  br i1 %cmp14.1, label %while.body.1, label %while.end

while.body.1:                                     ; preds = %while.body
  %dec16.1 = add nsw i32 %call8, -2
  %dec.2 = add i64 %call, -3
  %arrayidx.2 = getelementptr inbounds i8, i8* %in, i64 %dec.2
  %2 = load i8, i8* %arrayidx.2, align 1, !tbaa !8
  %cmp14.2 = icmp eq i8 %2, 61
  br i1 %cmp14.2, label %err, label %while.end

while.end:                                        ; preds = %while.body.1, %while.body, %while.cond.preheader
  %outlen.0.lcssa = phi i32 [ %call8, %while.cond.preheader ], [ %dec16, %while.body ], [ %dec16.1, %while.body.1 ]
  store i8* %call2, i8** %out, align 8, !tbaa !4
  br label %cleanup

err.sink.split:                                   ; preds = %if.end6, %if.end
  %.sink42 = phi i32 [ 38, %if.end ], [ 44, %if.end6 ]
  %.sink = phi i32 [ 786688, %if.end ], [ 108, %if.end6 ]
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink42, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.ct_base64_decode, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef %.sink, i8* noundef null) #4
  br label %err

err:                                              ; preds = %err.sink.split, %while.body.1
  tail call void @CRYPTO_free(i8* noundef %call2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 59) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %while.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %err ], [ %outlen.0.lcssa, %while.end ]
  ret i32 %retval.0
}

declare i32 @SCT_set0_log_id(%struct.sct_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @SCT_set0_extensions(%struct.sct_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @o2i_SCT_signature(%struct.sct_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @SCT_set_timestamp(%struct.sct_st* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SCT_set_log_entry_type(%struct.sct_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @SCT_free(%struct.sct_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @CTLOG_new_from_base64_ex(%struct.ctlog_st** noundef writeonly %ct_log, i8* noundef %pkey_base64, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %pkey_der = alloca i8*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast i8** %pkey_der to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i8* null, i8** %pkey_der, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5
  %cmp = icmp eq %struct.ctlog_st** %ct_log, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.CTLOG_new_from_base64_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 524550, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @ct_base64_decode(i8* noundef %pkey_base64, i8** noundef nonnull %pkey_der) #6
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.CTLOG_new_from_base64_ex, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 110, i8* noundef null) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = load i8*, i8** %pkey_der, align 8, !tbaa !4
  store i8* %2, i8** %p, align 8, !tbaa !4
  %conv26 = zext i32 %call to i64
  %call4 = call %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef null, i8** noundef nonnull %p, i64 noundef %conv26, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  call void @CRYPTO_free(i8* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 157) #4
  %cmp5 = icmp eq %struct.evp_pkey_st* %call4, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.CTLOG_new_from_base64_ex, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 50, i32 noundef 110, i8* noundef null) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call9 = call %struct.ctlog_st* @CTLOG_new_ex(%struct.evp_pkey_st* noundef nonnull %call4, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  store %struct.ctlog_st* %call9, %struct.ctlog_st** %ct_log, align 8, !tbaa !4
  %cmp10 = icmp eq %struct.ctlog_st* %call9, null
  br i1 %cmp10, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then12, %if.then7, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then7 ], [ 0, %if.then12 ], [ 1, %if.end8 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 %retval.0
}

declare %struct.evp_pkey_st* @d2i_PUBKEY_ex(%struct.evp_pkey_st** noundef, i8** noundef, i64 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ctlog_st* @CTLOG_new_ex(%struct.evp_pkey_st* noundef, i8* noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @CTLOG_new_from_base64(%struct.ctlog_st** noundef %ct_log, i8* noundef %pkey_base64, i8* noundef %name) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @CTLOG_new_from_base64_ex(%struct.ctlog_st** noundef %ct_log, i8* noundef %pkey_base64, i8* noundef %name, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #3

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DecodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nobuiltin nounwind readonly willreturn "no-builtins" }

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
