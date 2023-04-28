; ModuleID = 'crypto/asn1/d2i_param.c'
source_filename = "crypto/asn1/d2i_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon }
%struct.evp_pkey_asn1_method_st = type { i32, i32, i64, i8*, i8*, i32 (%struct.evp_pkey_st*, %struct.X509_pubkey_st*)*, i32 (%struct.X509_pubkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*)*, i32 (%struct.pkcs8_priv_key_info_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.bio_st*, %struct.evp_pkey_st*, i32, %struct.asn1_pctx_st*)*, i32 (%struct.bio_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, i32, %struct.asn1_pctx_st*)*, void (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i32, i64, i8*)*, i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_md_ctx_st*, %struct.ASN1_ITEM_st*, i8*, %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.x509_sig_info_st*, %struct.X509_algor_st*, %struct.asn1_string_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i32 (%struct.evp_pkey_st*, i8*, i64*)*, i64 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, i8*, i32 (i8*, i32, %struct.ossl_param_st*)*, %struct.ossl_lib_ctx_st*, i8*)*, i32 (%struct.ossl_param_st*, i8*)*, i32 (%struct.evp_pkey_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*, %struct.pkcs8_priv_key_info_st*, %struct.ossl_lib_ctx_st*, i8*)* }
%struct.X509_pubkey_st = type opaque
%struct.pkcs8_priv_key_info_st = type opaque
%struct.bio_st = type opaque
%struct.asn1_pctx_st = type { i64, i64, i64, i64, i64 }
%struct.X509_algor_st = type opaque
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.evp_md_ctx_st = type opaque
%struct.ASN1_ITEM_st = type opaque
%struct.x509_sig_info_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.ossl_lib_ctx_st = type opaque
%struct.engine_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.evp_keymgmt_st = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon = type { i32, i32, i32 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"crypto/asn1/d2i_param.c\00", align 1
@__func__.d2i_KeyParams = private unnamed_addr constant [14 x i8] c"d2i_KeyParams\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef %type, %struct.evp_pkey_st** noundef %a, i8** noundef %pp, i64 noundef %length) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.evp_pkey_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.evp_pkey_st* %0, null
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = tail call %struct.evp_pkey_st* @EVP_PKEY_new() #3
  %cmp2 = icmp eq %struct.evp_pkey_st* %call, null
  br i1 %cmp2, label %cleanup, label %if.end4

if.end4:                                          ; preds = %lor.lhs.false, %if.then
  %ret.0 = phi %struct.evp_pkey_st* [ %call, %if.then ], [ %0, %lor.lhs.false ]
  %call5 = tail call i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef nonnull %ret.0) #3
  %cmp6.not = icmp eq i32 %call5, %type
  br i1 %cmp6.not, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %call7 = tail call i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef nonnull %ret.0, i32 noundef %type) #3
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %err, label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %ameth = getelementptr inbounds %struct.evp_pkey_st, %struct.evp_pkey_st* %ret.0, i64 0, i32 2
  %1 = load %struct.evp_pkey_asn1_method_st*, %struct.evp_pkey_asn1_method_st** %ameth, align 8, !tbaa !8
  %cmp10 = icmp eq %struct.evp_pkey_asn1_method_st* %1, null
  br i1 %cmp10, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.end9
  %param_decode = getelementptr inbounds %struct.evp_pkey_asn1_method_st, %struct.evp_pkey_asn1_method_st* %1, i64 0, i32 15
  %2 = load i32 (%struct.evp_pkey_st*, i8**, i32)*, i32 (%struct.evp_pkey_st*, i8**, i32)** %param_decode, align 8, !tbaa !14
  %cmp13 = icmp eq i32 (%struct.evp_pkey_st*, i8**, i32)* %2, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %if.end9
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.d2i_KeyParams, i64 0, i64 0)) #3
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 13, i32 noundef 196, i8* noundef null) #3
  br label %err

if.end15:                                         ; preds = %lor.lhs.false11
  %conv = trunc i64 %length to i32
  %call18 = tail call i32 %2(%struct.evp_pkey_st* noundef nonnull %ret.0, i8** noundef %pp, i32 noundef %conv) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err, label %if.end21

if.end21:                                         ; preds = %if.end15
  br i1 %cmp, label %cleanup, label %if.then24

if.then24:                                        ; preds = %if.end21
  store %struct.evp_pkey_st* %ret.0, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  br label %cleanup

err:                                              ; preds = %if.end15, %land.lhs.true, %if.then14
  br i1 %cmp, label %if.then31, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %err
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %a, align 8, !tbaa !4
  %cmp29.not = icmp eq %struct.evp_pkey_st* %3, %ret.0
  br i1 %cmp29.not, label %cleanup, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false28, %err
  tail call void @EVP_PKEY_free(%struct.evp_pkey_st* noundef nonnull %ret.0) #3
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false28, %if.then31, %if.end21, %if.then24, %if.then
  %retval.0 = phi %struct.evp_pkey_st* [ null, %if.then ], [ %ret.0, %if.then24 ], [ %ret.0, %if.end21 ], [ null, %if.then31 ], [ null, %lor.lhs.false28 ]
  ret %struct.evp_pkey_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare %struct.evp_pkey_st* @EVP_PKEY_new() local_unnamed_addr #2

declare i32 @EVP_PKEY_get_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_set_type(%struct.evp_pkey_st* noundef, i32 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #2

declare void @EVP_PKEY_free(%struct.evp_pkey_st* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.evp_pkey_st* @d2i_KeyParams_bio(i32 noundef %type, %struct.evp_pkey_st** noundef %a, %struct.bio_st* noundef %in) local_unnamed_addr #0 {
entry:
  %b = alloca %struct.buf_mem_st*, align 8
  %p = alloca i8*, align 8
  %0 = bitcast %struct.buf_mem_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  store %struct.buf_mem_st* null, %struct.buf_mem_st** %b, align 8, !tbaa !4
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %call = call i32 @asn1_d2i_read_bio(%struct.bio_st* noundef %in, %struct.buf_mem_st** noundef nonnull %b) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %2 = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %2, i64 0, i32 1
  %3 = load i8*, i8** %data, align 8, !tbaa !16
  store i8* %3, i8** %p, align 8, !tbaa !4
  %conv5 = zext i32 %call to i64
  %call1 = call %struct.evp_pkey_st* @d2i_KeyParams(i32 noundef %type, %struct.evp_pkey_st** noundef %a, i8** noundef nonnull %p, i64 noundef %conv5) #5
  br label %err

err:                                              ; preds = %entry, %if.end
  %4 = phi %struct.evp_pkey_st* [ null, %entry ], [ %call1, %if.end ]
  %5 = load %struct.buf_mem_st*, %struct.buf_mem_st** %b, align 8, !tbaa !4
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %5) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  ret %struct.evp_pkey_st* %4
}

declare i32 @asn1_d2i_read_bio(%struct.bio_st* noundef, %struct.buf_mem_st** noundef) local_unnamed_addr #2

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
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
!8 = !{!9, !5, i64 8}
!9 = !{!"evp_pkey_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !5, i64 56, !5, i64 64, !10, i64 72, !10, i64 76, !11, i64 80, !5, i64 96, !5, i64 104, !12, i64 112, !5, i64 120, !12, i64 128, !13, i64 136}
!10 = !{!"int", !6, i64 0}
!11 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!14 = !{!15, !5, i64 112}
!15 = !{!"evp_pkey_asn1_method_st", !10, i64 0, !10, i64 4, !12, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312}
!16 = !{!17, !5, i64 8}
!17 = !{!"buf_mem_st", !12, i64 0, !5, i64 8, !12, i64 16, !12, i64 24}
