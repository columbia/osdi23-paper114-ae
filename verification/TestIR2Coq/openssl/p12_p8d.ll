; ModuleID = 'crypto/pkcs12/p12_p8d.c'
source_filename = "crypto/pkcs12/p12_p8d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs8_priv_key_info_st = type opaque
%struct.X509_sig_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ASN1_ITEM_st = type opaque

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt_ex(%struct.X509_sig_st* noundef %p8, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) local_unnamed_addr #0 {
entry:
  %dalg = alloca %struct.X509_algor_st*, align 8
  %doct = alloca %struct.asn1_string_st*, align 8
  %0 = bitcast %struct.X509_algor_st** %dalg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #3
  %1 = bitcast %struct.asn1_string_st** %doct to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  call void @X509_SIG_get0(%struct.X509_sig_st* noundef %p8, %struct.X509_algor_st** noundef nonnull %dalg, %struct.asn1_string_st** noundef nonnull %doct) #4
  %2 = load %struct.X509_algor_st*, %struct.X509_algor_st** %dalg, align 8, !tbaa !4
  %call = call %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() #4
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %doct, align 8, !tbaa !4
  %call1 = call i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* noundef %2, %struct.ASN1_ITEM_st* noundef %call, i8* noundef %pass, i32 noundef %passlen, %struct.asn1_string_st* noundef %3, i32 noundef 1, %struct.ossl_lib_ctx_st* noundef %ctx, i8* noundef %propq) #4
  %4 = bitcast i8* %call1 to %struct.pkcs8_priv_key_info_st*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #3
  ret %struct.pkcs8_priv_key_info_st* %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @X509_SIG_get0(%struct.X509_sig_st* noundef, %struct.X509_algor_st** noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #2

declare i8* @PKCS12_item_decrypt_d2i_ex(%struct.X509_algor_st* noundef, %struct.ASN1_ITEM_st* noundef, i8* noundef, i32 noundef, %struct.asn1_string_st* noundef, i32 noundef, %struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #2

declare %struct.ASN1_ITEM_st* @PKCS8_PRIV_KEY_INFO_it() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt(%struct.X509_sig_st* noundef %p8, i8* noundef %pass, i32 noundef %passlen) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.pkcs8_priv_key_info_st* @PKCS8_decrypt_ex(%struct.X509_sig_st* noundef %p8, i8* noundef %pass, i32 noundef %passlen, %struct.ossl_lib_ctx_st* noundef null, i8* noundef null) #5
  ret %struct.pkcs8_priv_key_info_st* %call
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
