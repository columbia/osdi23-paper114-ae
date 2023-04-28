; ModuleID = 'crypto/evp/legacy_blake2.c'
source_filename = "crypto/evp/legacy_blake2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_md_ctx_st = type opaque
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.blake2b_ctx_st = type { [8 x i64], [2 x i64], [2 x i64], [128 x i8], i64, i64 }
%struct.blake2s_ctx_st = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i64, i64 }

@blake2b_md = internal constant %struct.evp_md_st { i32 1056, i32 0, i32 64, i64 0, i32 1, i32 (%struct.evp_md_ctx_st*)* @blake2b_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @blake2b_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @blake2b_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 128, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@blake2s_md = internal constant %struct.evp_md_st { i32 1057, i32 0, i32 32, i64 0, i32 1, i32 (%struct.evp_md_ctx_st*)* @blake2s_int_init, i32 (%struct.evp_md_ctx_st*, i8*, i64)* @blake2s_int_update, i32 (%struct.evp_md_ctx_st*, i8*)* @blake2s_int_final, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)* null, i32 (%struct.evp_md_ctx_st*)* null, i32 64, i32 0, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64, i8*, i64*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_blake2b512() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @blake2b_md
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_md_st* @EVP_blake2s256() local_unnamed_addr #0 {
entry:
  ret %struct.evp_md_st* @blake2s_md
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2b_int_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %call1 = tail call i32 @ossl_blake2b512_init(i8* noundef %call) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2b_int_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.blake2b_ctx_st*
  %call1 = tail call i32 @ossl_blake2b_update(%struct.blake2b_ctx_st* noundef %0, i8* noundef %data, i64 noundef %count) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2b_int_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.blake2b_ctx_st*
  %call1 = tail call i32 @ossl_blake2b_final(i8* noundef %md, %struct.blake2b_ctx_st* noundef %0) #3
  ret i32 %call1
}

declare i32 @ossl_blake2b512_init(i8* noundef) local_unnamed_addr #2

declare i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef) local_unnamed_addr #2

declare i32 @ossl_blake2b_update(%struct.blake2b_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_blake2b_final(i8* noundef, %struct.blake2b_ctx_st* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2s_int_init(%struct.evp_md_ctx_st* noundef %ctx) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %call1 = tail call i32 @ossl_blake2s256_init(i8* noundef %call) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2s_int_update(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %data, i64 noundef %count) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.blake2s_ctx_st*
  %call1 = tail call i32 @ossl_blake2s_update(%struct.blake2s_ctx_st* noundef %0, i8* noundef %data, i64 noundef %count) #3
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @blake2s_int_final(%struct.evp_md_ctx_st* noundef %ctx, i8* noundef %md) #1 {
entry:
  %call = tail call i8* @EVP_MD_CTX_get0_md_data(%struct.evp_md_ctx_st* noundef %ctx) #3
  %0 = bitcast i8* %call to %struct.blake2s_ctx_st*
  %call1 = tail call i32 @ossl_blake2s_final(i8* noundef %md, %struct.blake2s_ctx_st* noundef %0) #3
  ret i32 %call1
}

declare i32 @ossl_blake2s256_init(i8* noundef) local_unnamed_addr #2

declare i32 @ossl_blake2s_update(%struct.blake2s_ctx_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_blake2s_final(i8* noundef, %struct.blake2s_ctx_st* noundef) local_unnamed_addr #2

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
