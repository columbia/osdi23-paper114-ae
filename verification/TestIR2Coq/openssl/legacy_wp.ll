; ModuleID = 'crypto/evp/legacy_wp.c'
source_filename = "crypto/evp/legacy_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.WHIRLPOOL_CTX = type { %union.anon, [64 x i8], i32, [4 x i64] }
%union.anon = type { [8 x double] }

@whirlpool_md = internal constant %struct.evp_md_st { i32 804, i32 0, i32 64, i64 0, i32 1, i32 (%struct.evp_md_ctx_st*)* @wp_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @wp_update, i32 (%struct.evp_md_ctx_st*, i8*)* @wp_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 64, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_whirlpool() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @whirlpool_md
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @wp_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.WHIRLPOOL_CTX*
  %call1 = tail call i32 @WHIRLPOOL_Init(%struct.WHIRLPOOL_CTX* noundef %0) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @wp_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.WHIRLPOOL_CTX*
  %call1 = tail call i32 @WHIRLPOOL_Update(%struct.WHIRLPOOL_CTX* noundef %0, i8* noundef %data, i64 noundef %count) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @wp_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.WHIRLPOOL_CTX*
  %call1 = tail call i32 @WHIRLPOOL_Final(i8* noundef %md, %struct.WHIRLPOOL_CTX* noundef %0) #3
  ret i32 %call1
}

declare i32 @WHIRLPOOL_Init(%struct.WHIRLPOOL_CTX* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @WHIRLPOOL_Update(%struct.WHIRLPOOL_CTX* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @WHIRLPOOL_Final(i8* noundef, %struct.WHIRLPOOL_CTX* noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
