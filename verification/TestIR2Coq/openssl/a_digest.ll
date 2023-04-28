; ModuleID = 'crypto/asn1/a_digest.c'
source_filename = "crypto/asn1/a_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%struct.engine_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_VALUE_st = type opaque
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [23 x i8] c"crypto/asn1/a_digest.c\00", align 1
@__func__.ASN1_digest = private unnamed_addr constant [12 x i8] c"ASN1_digest\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_digest(i32 (i8*, i8**)* nocapture noundef readonly %i2d, %struct.evp_md_st* noundef %type, i8* noundef %data, i8* noundef %md, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %call = tail call i32 %i2d(i8* noundef %data, i8** noundef null) #4
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786691, i8* noundef null) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv22 = zext i32 %call to i64
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef %conv22, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 39) #4
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ASN1_digest, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786688, i8* noundef null) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  store i8* %call1, i8** %p, align 8, !tbaa !4
  %call6 = call i32 %i2d(i8* noundef %data, i8** noundef nonnull %p) #4
  %call8 = call i32 @EVP_Digest(i8* noundef nonnull %call1, i64 noundef %conv22, i8* noundef %md, i32* noundef %len, %struct.evp_md_st* noundef %type, %struct.engine_st* noundef null) #4
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 47) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 50) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end10 ], [ 0, %if.then9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_Digest(i8* noundef, i64 noundef, i8* noundef, i32* noundef, %struct.evp_md_st* noundef, %struct.engine_st* noundef) local_unnamed_addr #2

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.evp_md_st* noundef %md, i8* noundef %asn, i8* noundef %data, i32* noundef %len, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %str = alloca i8*, align 8
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  store i8* null, i8** %str, align 8, !tbaa !4
  %1 = bitcast i8* %asn to %struct.ASN1_VALUE_st*
  %call = call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %1, i8** noundef nonnull %str, %struct.ASN1_ITEM_st* noundef %it) #4
  %cmp = icmp slt i32 %call, 0
  %2 = load i8*, i8** %str, align 8
  %cmp1 = icmp eq i8* %2, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %md) #4
  %cmp3 = icmp eq %struct.ossl_provider_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @EVP_MD_get_type(%struct.evp_md_st* noundef %md) #4
  %call6 = call %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef %call5) #4
  %cmp7.not = icmp eq %struct.engine_st* %call6, null
  br i1 %cmp7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then4
  %call9 = call i32 @ENGINE_finish(%struct.engine_st* noundef nonnull %call6) #4
  br label %if.end13

if.else:                                          ; preds = %if.then4
  %call10 = call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #4
  %call11 = call %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %call10, i8* noundef %propq) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.else, %if.end
  %fetched_md.1 = phi %struct.evp_md_st* [ %md, %if.end ], [ %md, %if.then8 ], [ %call11, %if.else ]
  %cmp14 = icmp eq %struct.evp_md_st* %fetched_md.1, null
  br i1 %cmp14, label %err, label %if.end16

if.end16:                                         ; preds = %if.end13
  %3 = load i8*, i8** %str, align 8, !tbaa !4
  %conv38 = zext i32 %call to i64
  %call17 = call i32 @EVP_Digest(i8* noundef %3, i64 noundef %conv38, i8* noundef %data, i32* noundef %len, %struct.evp_md_st* noundef nonnull %fetched_md.1, %struct.engine_st* noundef null) #4
  br label %err

err:                                              ; preds = %if.end13, %if.end16
  %ret.0 = phi i32 [ 0, %if.end13 ], [ %call17, %if.end16 ]
  %4 = load i8*, i8** %str, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 noundef 83) #4
  %cmp18.not = icmp eq %struct.evp_md_st* %fetched_md.1, %md
  br i1 %cmp18.not, label %cleanup, label %if.then20

if.then20:                                        ; preds = %err
  call void @EVP_MD_free(%struct.evp_md_st* noundef %fetched_md.1) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then20, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %ret.0, %if.then20 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret i32 %retval.0
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.engine_st* @ENGINE_get_digest_engine(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_MD_get_type(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare i32 @ENGINE_finish(%struct.engine_st* noundef) local_unnamed_addr #2

declare %struct.evp_md_st* @EVP_MD_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @EVP_MD_free(%struct.evp_md_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ASN1_item_digest(%struct.ASN1_ITEM_st* noundef %it, %struct.evp_md_st* noundef %md, i8* noundef %asn, i8* noundef %data, i32* noundef %len) local_unnamed_addr #0 {
entry:
  %call = tail call i32 @ossl_asn1_item_digest_ex(%struct.ASN1_ITEM_st* noundef %it, %struct.evp_md_st* noundef %md, i8* noundef %asn, i8* noundef %data, i32* noundef %len, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret i32 %call
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }

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
