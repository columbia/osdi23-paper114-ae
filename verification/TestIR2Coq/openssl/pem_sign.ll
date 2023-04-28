; ModuleID = 'crypto/pem/pem_sign.c'
source_filename = "crypto/pem/pem_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_ctx_st = type opaque
%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type opaque

@.str = private unnamed_addr constant [22 x i8] c"crypto/pem/pem_sign.c\00", align 1
@__func__.PEM_SignFinal = private unnamed_addr constant [14 x i8] c"PEM_SignFinal\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_SignInit(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef %ctx, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef null) #3
  ret i32 %call
}

declare i32 @EVP_DigestInit_ex(%struct.evp_md_ctx_st* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_SignUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i32 noundef %count) local_unnamed_addr #0 {
entry:
  %conv = zext i32 %count to i64
  %call = tail call i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %conv) #3
  ret i32 %call
}

declare i32 @EVP_DigestUpdate(%struct.evp_md_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @PEM_SignFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %sigret, i32* nocapture noundef writeonly %siglen, %struct.evp_pkey_st* noundef %pkey) local_unnamed_addr #0 {
entry:
  %m_len = alloca i32, align 4
  %0 = bitcast i32* %m_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %call = tail call i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef %pkey) #3
  %conv = sext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 35) #3
  %cmp = icmp eq i8* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.PEM_SignFinal, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 9, i32 noundef 786688, i8* noundef null) #3
  br label %err

if.end:                                           ; preds = %entry
  %call3 = call i32 @EVP_SignFinal(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef nonnull %call1, i32* noundef nonnull %m_len, %struct.evp_pkey_st* noundef %pkey) #3
  %cmp4 = icmp slt i32 %call3, 1
  br i1 %cmp4, label %err, label %if.end7

if.end7:                                          ; preds = %if.end
  %1 = load i32, i32* %m_len, align 4, !tbaa !4
  %call8 = call i32 @EVP_EncodeBlock(i8* noundef %sigret, i8* noundef nonnull %call1, i32 noundef %1) #3
  store i32 %call8, i32* %siglen, align 4, !tbaa !4
  br label %err

err:                                              ; preds = %if.end, %if.end7, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.end ], [ 1, %if.end7 ]
  call void @CRYPTO_free(i8* noundef %call1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef 49) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EVP_PKEY_get_size(%struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare i32 @EVP_SignFinal(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef, %struct.evp_pkey_st* noundef) local_unnamed_addr #1

declare i32 @EVP_EncodeBlock(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

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
