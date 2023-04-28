; ModuleID = 'crypto/dh/dh_kdf.c'
source_filename = "crypto/dh/dh_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.evp_kdf_st = type opaque
%struct.evp_kdf_ctx_st = type opaque
%struct.asn1_object_st = type opaque
%struct.ossl_provider_st = type opaque

@.str = private unnamed_addr constant [13 x i8] c"X942KDF-ASN1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ukm\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cekalg\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @ossl_dh_kdf_X9_42_asn1(i8* noundef %out, i64 noundef %outlen, i8* noundef %Z, i64 noundef %Zlen, i8* noundef %cek_alg, i8* noundef %ukm, i64 noundef %ukmlen, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %params = alloca [5 x %struct.ossl_param_st], align 16
  %tmp4 = alloca %struct.ossl_param_st, align 8
  %tmp8 = alloca %struct.ossl_param_st, align 8
  %tmp11 = alloca %struct.ossl_param_st, align 8
  %tmp12 = alloca %struct.ossl_param_st, align 8
  %0 = bitcast [5 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #4
  %arraydecay = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %md) #5
  %call1 = tail call %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef %propq) #5
  %call2 = tail call %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef %call1) #5
  %cmp = icmp eq %struct.evp_kdf_ctx_st* %call2, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %incdec.ptr = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 1
  %params29 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 0
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %params29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* noundef %call, i64 noundef 0) #5
  %incdec.ptr3 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 2
  %1 = bitcast %struct.ossl_param_st* %tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %Z, i64 noundef %Zlen) #5
  %2 = bitcast %struct.ossl_param_st* %incdec.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %2, i8* noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  %cmp5.not = icmp eq i8* %ukm, null
  br i1 %cmp5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.end
  %incdec.ptr7 = getelementptr inbounds [5 x %struct.ossl_param_st], [5 x %struct.ossl_param_st]* %params, i64 0, i64 3
  %3 = bitcast %struct.ossl_param_st* %tmp8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %ukm, i64 noundef %ukmlen) #5
  %4 = bitcast %struct.ossl_param_st* %incdec.ptr3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(40) %4, i8* noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  %p.0 = phi %struct.ossl_param_st* [ %incdec.ptr7, %if.then6 ], [ %incdec.ptr3, %if.end ]
  %incdec.ptr10 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %p.0, i64 1
  %5 = bitcast %struct.ossl_param_st* %tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #4
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* noundef %cek_alg, i64 noundef 0) #5
  %6 = bitcast %struct.ossl_param_st* %p.0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %6, i8* noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #4
  %7 = bitcast %struct.ossl_param_st* %tmp12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #4
  call void @OSSL_PARAM_construct_end(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp12) #5
  %8 = bitcast %struct.ossl_param_st* %incdec.ptr10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %8, i8* noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #4
  %call14 = call i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef nonnull %call2, i8* noundef %out, i64 noundef %outlen, %struct.ossl_param_st* noundef nonnull %arraydecay) #5
  %cmp15 = icmp sgt i32 %call14, 0
  %conv = zext i1 %cmp15 to i32
  br label %err

err:                                              ; preds = %entry, %if.end9
  %ret.0 = phi i32 [ 0, %entry ], [ %conv, %if.end9 ]
  call void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef %call2) #5
  call void @EVP_KDF_free(%struct.evp_kdf_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #4
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_st* @EVP_KDF_fetch(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.evp_kdf_ctx_st* @EVP_KDF_CTX_new(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_KDF_derive(%struct.evp_kdf_ctx_st* noundef, i8* noundef, i64 noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_CTX_free(%struct.evp_kdf_ctx_st* noundef) local_unnamed_addr #2

declare void @EVP_KDF_free(%struct.evp_kdf_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define i32 @DH_KDF_X9_42(i8* noundef %out, i64 noundef %outlen, i8* noundef %Z, i64 noundef %Zlen, %struct.asn1_object_st* noundef %key_oid, i8* noundef %ukm, i64 noundef %ukmlen, %struct.evp_md_st* noundef %md) local_unnamed_addr #0 {
entry:
  %key_alg = alloca [50 x i8], align 16
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %key_alg, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #4
  %call = tail call %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef %md) #5
  %call1 = tail call %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef %call) #5
  %call2 = call i32 @OBJ_obj2txt(i8* noundef nonnull %0, i32 noundef 50, %struct.asn1_object_st* noundef %key_oid, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call4 = call i32 @ossl_dh_kdf_X9_42_asn1(i8* noundef %out, i64 noundef %outlen, i8* noundef %Z, i64 noundef %Zlen, i8* noundef nonnull %0, i8* noundef %ukm, i64 noundef %ukmlen, %struct.evp_md_st* noundef %md, %struct.ossl_lib_ctx_st* noundef %call1, i8* noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #4
  ret i32 %retval.0
}

declare %struct.ossl_provider_st* @EVP_MD_get0_provider(%struct.evp_md_st* noundef) local_unnamed_addr #2

declare %struct.ossl_lib_ctx_st* @ossl_provider_libctx(%struct.ossl_provider_st* noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{i64 0, i64 8, !5, i64 8, i64 4, !9, i64 16, i64 8, !5, i64 24, i64 8, !11, i64 32, i64 8, !11}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
