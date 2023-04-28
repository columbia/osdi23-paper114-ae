; ModuleID = 'crypto/cms/cms_dd.c'
source_filename = "crypto/cms/cms_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMS_ContentInfo_st = type { %struct.asn1_object_st*, %union.anon, %struct.CMS_CTX_st }
%struct.asn1_object_st = type opaque
%union.anon = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.CMS_CTX_st = type { %struct.ossl_lib_ctx_st*, i8* }
%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_VALUE_st = type opaque
%struct.CMS_DigestedData_st = type { i32, %struct.X509_algor_st*, %struct.CMS_EncapsulatedContentInfo_st*, %struct.asn1_string_st* }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.CMS_EncapsulatedContentInfo_st = type { %struct.asn1_object_st*, %struct.asn1_string_st*, i32 }
%struct.bio_st = type opaque
%struct.evp_md_ctx_st = type opaque

@.str = private unnamed_addr constant [20 x i8] c"crypto/cms/cms_dd.c\00", align 1
@__func__.ossl_cms_DigestedData_do_final = private unnamed_addr constant [31 x i8] c"ossl_cms_DigestedData_do_final\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.CMS_ContentInfo_st* @ossl_cms_DigestedData_create(%struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) #4
  %cmp = icmp eq %struct.CMS_ContentInfo_st* %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call %struct.ASN1_ITEM_st* @CMS_DigestedData_it() #4
  %call2 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef %call1) #4
  %0 = bitcast %struct.ASN1_VALUE_st* %call2 to %struct.CMS_DigestedData_st*
  %cmp3 = icmp eq %struct.ASN1_VALUE_st* %call2, null
  br i1 %cmp3, label %err, label %if.end5

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 25) #4
  %contentType = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %call, i64 0, i32 0
  store %struct.asn1_object_st* %call6, %struct.asn1_object_st** %contentType, align 8, !tbaa !4
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %call, i64 0, i32 1
  %1 = bitcast %union.anon* %d to %struct.ASN1_VALUE_st**
  store %struct.ASN1_VALUE_st* %call2, %struct.ASN1_VALUE_st** %1, align 8, !tbaa !10
  %version = bitcast %struct.ASN1_VALUE_st* %call2 to i32*
  store i32 0, i32* %version, align 8, !tbaa !11
  %call7 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef 21) #4
  %encapContentInfo = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %0, i64 0, i32 2
  %2 = load %struct.CMS_EncapsulatedContentInfo_st*, %struct.CMS_EncapsulatedContentInfo_st** %encapContentInfo, align 8, !tbaa !14
  %eContentType = getelementptr inbounds %struct.CMS_EncapsulatedContentInfo_st, %struct.CMS_EncapsulatedContentInfo_st* %2, i64 0, i32 0
  store %struct.asn1_object_st* %call7, %struct.asn1_object_st** %eContentType, align 8, !tbaa !15
  %digestAlgorithm = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %0, i64 0, i32 1
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !17
  tail call void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef %3, %struct.evp_md_st* noundef %md) #4
  br label %cleanup

err:                                              ; preds = %if.end
  tail call void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %entry, %err, %if.end5
  %retval.0 = phi %struct.CMS_ContentInfo_st* [ null, %err ], [ %call, %if.end5 ], [ null, %entry ]
  ret %struct.CMS_ContentInfo_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.CMS_ContentInfo_st* @CMS_ContentInfo_new_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @CMS_DigestedData_it() local_unnamed_addr #2

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #2

declare void @X509_ALGOR_set_md(%struct.X509_algor_st* noundef, %struct.evp_md_st* noundef) local_unnamed_addr #2

declare void @CMS_ContentInfo_free(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.bio_st* @ossl_cms_DigestedData_init_bio(%struct.CMS_ContentInfo_st* noundef %cms) local_unnamed_addr #0 {
entry:
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %digestedData = bitcast %union.anon* %d to %struct.CMS_DigestedData_st**
  %0 = load %struct.CMS_DigestedData_st*, %struct.CMS_DigestedData_st** %digestedData, align 8, !tbaa !10
  %digestAlgorithm = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %0, i64 0, i32 1
  %1 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !17
  %call = tail call %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef %cms) #4
  %call1 = tail call %struct.bio_st* @ossl_cms_DigestAlgorithm_init_bio(%struct.X509_algor_st* noundef %1, %struct.CMS_CTX_st* noundef %call) #4
  ret %struct.bio_st* %call1
}

declare %struct.bio_st* @ossl_cms_DigestAlgorithm_init_bio(%struct.X509_algor_st* noundef, %struct.CMS_CTX_st* noundef) local_unnamed_addr #2

declare %struct.CMS_CTX_st* @ossl_cms_get0_cmsctx(%struct.CMS_ContentInfo_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_cms_DigestedData_do_final(%struct.CMS_ContentInfo_st* nocapture noundef readonly %cms, %struct.bio_st* noundef %chain, i32 noundef %verify) local_unnamed_addr #0 {
entry:
  %md = alloca [64 x i8], align 16
  %mdlen = alloca i32, align 4
  %call = tail call %struct.evp_md_ctx_st* @EVP_MD_CTX_new() #4
  %0 = getelementptr inbounds [64 x i8], [64 x i8]* %md, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #5
  %1 = bitcast i32* %mdlen to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %cmp = icmp eq %struct.evp_md_ctx_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cms_DigestedData_do_final, i64 0, i64 0)) #4
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 786688, i8* noundef null) #4
  br label %err

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.CMS_ContentInfo_st, %struct.CMS_ContentInfo_st* %cms, i64 0, i32 1
  %digestedData = bitcast %union.anon* %d to %struct.CMS_DigestedData_st**
  %2 = load %struct.CMS_DigestedData_st*, %struct.CMS_DigestedData_st** %digestedData, align 8, !tbaa !10
  %digestAlgorithm = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %2, i64 0, i32 1
  %3 = load %struct.X509_algor_st*, %struct.X509_algor_st** %digestAlgorithm, align 8, !tbaa !17
  %call1 = tail call i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef nonnull %call, %struct.bio_st* noundef %chain, %struct.X509_algor_st* noundef %3) #4
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef nonnull %call, i8* noundef nonnull %0, i32* noundef nonnull %mdlen) #4
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %if.end3
  %tobool8.not = icmp eq i32 %verify, 0
  br i1 %tobool8.not, label %if.else19, label %if.then9

if.then9:                                         ; preds = %if.end7
  %4 = load i32, i32* %mdlen, align 4, !tbaa !18
  %digest = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %2, i64 0, i32 3
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %digest, align 8, !tbaa !19
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 0
  %6 = load i32, i32* %length, align 8, !tbaa !20
  %cmp10.not = icmp eq i32 %4, %6
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then9
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cms_DigestedData_do_final, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 121, i8* noundef null) #4
  br label %err

if.end12:                                         ; preds = %if.then9
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %5, i64 0, i32 2
  %7 = load i8*, i8** %data, align 8, !tbaa !23
  %conv = zext i32 %4 to i64
  %call15 = call i32 @memcmp(i8* noundef nonnull %0, i8* noundef %7, i64 noundef %conv) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %err, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @ERR_new() #4
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.ossl_cms_DigestedData_do_final, i64 0, i64 0)) #4
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 46, i32 noundef 158, i8* noundef null) #4
  br label %err

if.else19:                                        ; preds = %if.end7
  %digest20 = getelementptr inbounds %struct.CMS_DigestedData_st, %struct.CMS_DigestedData_st* %2, i64 0, i32 3
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %digest20, align 8, !tbaa !19
  %9 = load i32, i32* %mdlen, align 4, !tbaa !18
  %call22 = call i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef %8, i8* noundef nonnull %0, i32 noundef %9) #4
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %err

err:                                              ; preds = %if.else19, %if.end12, %if.then17, %if.end3, %if.end, %if.then11, %if.then
  %r.0 = phi i32 [ 0, %if.then ], [ 0, %if.end3 ], [ 0, %if.then11 ], [ 0, %if.then17 ], [ 0, %if.end ], [ 1, %if.end12 ], [ %spec.select, %if.else19 ]
  call void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef %call) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #5
  ret i32 %r.0
}

declare %struct.evp_md_ctx_st* @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare i32 @ossl_cms_DigestAlgorithm_find_ctx(%struct.evp_md_ctx_st* noundef, %struct.bio_st* noundef, %struct.X509_algor_st* noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(%struct.evp_md_ctx_st* noundef, i8* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 0}
!5 = !{!"CMS_ContentInfo_st", !6, i64 0, !7, i64 8, !9, i64 16}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"CMS_CTX_st", !6, i64 0, !6, i64 8}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"CMS_DigestedData_st", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!13 = !{!"int", !7, i64 0}
!14 = !{!12, !6, i64 16}
!15 = !{!16, !6, i64 0}
!16 = !{!"CMS_EncapsulatedContentInfo_st", !6, i64 0, !6, i64 8, !13, i64 16}
!17 = !{!12, !6, i64 8}
!18 = !{!13, !13, i64 0}
!19 = !{!12, !6, i64 24}
!20 = !{!21, !13, i64 0}
!21 = !{!"asn1_string_st", !13, i64 0, !13, i64 4, !6, i64 8, !22, i64 16}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !6, i64 8}
