; ModuleID = 'crypto/evp/e_des3.c'
source_filename = "crypto/evp/e_des3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8], i8*, %struct.evp_cipher_st* }
%struct.engine_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.ossl_provider_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.DES_ks = type { [16 x %union.anon.1] }
%union.anon.1 = type { [2 x i32] }

@des_ede_cbc = internal constant %struct.evp_cipher_st { i32 43, i32 8, i32 16, i32 8, i64 514, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede_cfb64 = internal constant %struct.evp_cipher_st { i32 60, i32 1, i32 16, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_cfb64_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede_ofb = internal constant %struct.evp_cipher_st { i32 62, i32 1, i32 16, i32 8, i64 516, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede_ecb = internal constant %struct.evp_cipher_st { i32 32, i32 8, i32 16, i32 0, i64 513, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_cbc = internal constant %struct.evp_cipher_st { i32 44, i32 8, i32 24, i32 8, i64 514, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_cbc_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_cfb64 = internal constant %struct.evp_cipher_st { i32 61, i32 1, i32 24, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_cfb64_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_ofb = internal constant %struct.evp_cipher_st { i32 63, i32 1, i32 24, i32 8, i64 516, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_ofb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_ecb = internal constant %struct.evp_cipher_st { i32 33, i32 8, i32 24, i32 0, i64 513, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede_ecb_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_cfb1 = internal constant %struct.evp_cipher_st { i32 658, i32 1, i32 24, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede3_cfb1_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des_ede3_cfb8 = internal constant %struct.evp_cipher_st { i32 659, i32 1, i32 24, i32 8, i64 515, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede3_cfb8_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* @des3_ctrl, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@des3_wrap = internal constant %struct.evp_cipher_st { i32 246, i32 8, i32 24, i32 0, i64 1114130, i32 1, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)* @des_ede3_init_key, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)* @des_ede3_wrap_cipher, i32 (%struct.evp_cipher_ctx_st*)* null, i32 392, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)* null, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)* null, i8* null, i32 0, i8* null, i8* null, %struct.ossl_provider_st* null, i32 0, i8* null, i8* (i8*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, i32 (i8*, i8*, i64*, i64)* null, i32 (i8*, i8*, i64*, i64, i8*, i64)* null, void (i8*)* null, i8* (i8*)* null, i32 (%struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, i32 (i8*, %struct.ossl_param_st*)* null, %struct.ossl_param_st* (i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null, %struct.ossl_param_st* (i8*, i8*)* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"crypto/evp/e_des3.c\00", align 1
@__func__.des_ede3_wrap_cipher = private unnamed_addr constant [21 x i8] c"des_ede3_wrap_cipher\00", align 1
@wrap_iv = internal constant [8 x i8] c"J\DD\A2,y\E8!\05", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede_cfb64() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede_cfb64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_cbc() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_cbc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_cfb64() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_cfb64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_ofb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_ofb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_ecb() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_cfb1() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_cfb1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_cfb8() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_cfb8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des_ede3_ecb
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.evp_cipher_st* @EVP_des_ede3_wrap() local_unnamed_addr #0 {
entry:
  ret %struct.evp_cipher_st* @des3_wrap
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %0 = bitcast i8* %key to [8 x i8]*
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %stream = getelementptr inbounds i8, i8* %call, i64 384
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, %struct.DES_ks*, i8*)**
  store void (i8*, i8*, i64, %struct.DES_ks*, i8*)* null, void (i8*, i8*, i64, %struct.DES_ks*, i8*)** %cbc, align 8, !tbaa !4
  %arrayidx2 = bitcast i8* %call to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef %0, %struct.DES_ks* noundef %arrayidx2) #5
  %arrayidx3 = getelementptr inbounds i8, i8* %key, i64 8
  %1 = bitcast i8* %arrayidx3 to [8 x i8]*
  %arrayidx6 = getelementptr inbounds i8, i8* %call, i64 128
  %2 = bitcast i8* %arrayidx6 to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %1, %struct.DES_ks* noundef nonnull %2) #5
  %arrayidx9 = getelementptr inbounds i8, i8* %call, i64 256
  %call13 = tail call i8* @memcpy(i8* noundef nonnull %arrayidx9, i8* noundef %call, i64 noundef 128) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %stream = getelementptr inbounds i8, i8* %call, i64 384
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, %struct.DES_ks*, i8*)**
  %0 = load void (i8*, i8*, i64, %struct.DES_ks*, i8*)*, void (i8*, i8*, i64, %struct.DES_ks*, i8*)** %cbc, align 8, !tbaa !4
  %cmp.not = icmp eq void (i8*, i8*, i64, %struct.DES_ks*, i8*)* %0, null
  br i1 %cmp.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %cmp556 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp556, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx = bitcast i8* %call to %struct.DES_ks*
  %arrayidx10 = getelementptr inbounds i8, i8* %call, i64 128
  %1 = bitcast i8* %arrayidx10 to %struct.DES_ks*
  %arrayidx13 = getelementptr inbounds i8, i8* %call, i64 256
  %2 = bitcast i8* %arrayidx13 to %struct.DES_ks*
  %arraydecay15 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %3 = bitcast i8* %arraydecay15 to [8 x i8]*
  br label %while.body

if.then:                                          ; preds = %entry
  %arraydecay = bitcast i8* %call to %struct.DES_ks*
  %arraydecay4 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  tail call void %0(i8* noundef %in, i8* noundef %out, i64 noundef %inl, %struct.DES_ks* noundef %arraydecay, i8* noundef nonnull %arraydecay4) #5
  br label %cleanup

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.059 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.058 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.057 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr17, %while.body ]
  %call16 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @DES_ede3_cbc_encrypt(i8* noundef %in.addr.058, i8* noundef %out.addr.057, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %arrayidx, %struct.DES_ks* noundef nonnull %1, %struct.DES_ks* noundef nonnull %2, [8 x i8]* noundef nonnull %3, i32 noundef %call16) #5
  %sub = add i64 %inl.addr.059, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.058, i64 4611686018427387904
  %add.ptr17 = getelementptr inbounds i8, i8* %out.addr.057, i64 4611686018427387904
  %cmp5 = icmp slt i64 %inl.addr.059, 4611686018427387904
  br i1 %cmp5, label %while.body, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %out.addr.0.lcssa = phi i8* [ %out, %while.cond.preheader ], [ %add.ptr17, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %while.cond.preheader ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %while.cond.preheader ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %cleanup, label %if.then18

if.then18:                                        ; preds = %while.end
  %arrayidx21 = bitcast i8* %call to %struct.DES_ks*
  %arrayidx24 = getelementptr inbounds i8, i8* %call, i64 128
  %4 = bitcast i8* %arrayidx24 to %struct.DES_ks*
  %arrayidx27 = getelementptr inbounds i8, i8* %call, i64 256
  %5 = bitcast i8* %arrayidx27 to %struct.DES_ks*
  %arraydecay29 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %6 = bitcast i8* %arraydecay29 to [8 x i8]*
  %call30 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @DES_ede3_cbc_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %arrayidx21, %struct.DES_ks* noundef nonnull %4, %struct.DES_ks* noundef nonnull %5, [8 x i8]* noundef nonnull %6, i32 noundef %call30) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then18, %if.then
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des3_ctrl(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %type, i32 noundef %arg, i8* noundef %ptr) #1 {
entry:
  %0 = bitcast i8* %ptr to [8 x i8]*
  %cond = icmp eq i32 %type, 6
  br i1 %cond, label %sw.bb, label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %call1 = tail call i32 @RAND_priv_bytes(i8* noundef %ptr, i32 noundef %call) #5
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  tail call void @DES_set_odd_parity([8 x i8]* noundef %0) #5
  %cmp3 = icmp ugt i32 %call, 15
  br i1 %cmp3, label %if.end5, label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, i8* %ptr, i64 8
  %1 = bitcast i8* %add.ptr to [8 x i8]*
  tail call void @DES_set_odd_parity([8 x i8]* noundef nonnull %1) #5
  %cmp6 = icmp ugt i32 %call, 23
  br i1 %cmp6, label %if.then7, label %cleanup

if.then7:                                         ; preds = %if.end5
  %add.ptr8 = getelementptr inbounds i8, i8* %ptr, i64 16
  %2 = bitcast i8* %add.ptr8 to [8 x i8]*
  tail call void @DES_set_odd_parity([8 x i8]* noundef nonnull %2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end5, %if.then7, %sw.bb, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %sw.bb ], [ 1, %if.then7 ], [ 1, %if.end5 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @DES_set_key_unchecked([8 x i8]* noundef, %struct.DES_ks* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @DES_ede3_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_get_key_length(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare i32 @RAND_priv_bytes(i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @DES_set_odd_parity([8 x i8]* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede_cfb64_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num14 = alloca i32, align 4
  %cmp52 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp52, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %1 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.055 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.054 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.053 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr13, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call, i32* %num, align 4, !tbaa !9
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx = bitcast i8* %call1 to %struct.DES_ks*
  %call3 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx6 = getelementptr inbounds i8, i8* %call3, i64 128
  %2 = bitcast i8* %arrayidx6 to %struct.DES_ks*
  %call7 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx10 = getelementptr inbounds i8, i8* %call7, i64 256
  %3 = bitcast i8* %arrayidx10 to %struct.DES_ks*
  %call11 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  call void @DES_ede3_cfb64_encrypt(i8* noundef %in.addr.054, i8* noundef %out.addr.053, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %arrayidx, %struct.DES_ks* noundef nonnull %2, %struct.DES_ks* noundef nonnull %3, [8 x i8]* noundef nonnull %1, i32* noundef nonnull %num, i32 noundef %call11) #5
  %4 = load i32, i32* %num, align 4, !tbaa !9
  %call12 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %4) #5
  %sub = add i64 %inl.addr.055, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.054, i64 4611686018427387904
  %add.ptr13 = getelementptr inbounds i8, i8* %out.addr.053, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  %cmp = icmp slt i64 %inl.addr.055, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !11

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr13, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %5 = bitcast i32* %num14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %call15 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call15, i32* %num14, align 4, !tbaa !9
  %call16 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx19 = bitcast i8* %call16 to %struct.DES_ks*
  %call20 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx23 = getelementptr inbounds i8, i8* %call20, i64 128
  %6 = bitcast i8* %arrayidx23 to %struct.DES_ks*
  %call24 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx27 = getelementptr inbounds i8, i8* %call24, i64 256
  %7 = bitcast i8* %arrayidx27 to %struct.DES_ks*
  %arraydecay29 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %8 = bitcast i8* %arraydecay29 to [8 x i8]*
  %call30 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  call void @DES_ede3_cfb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %arrayidx19, %struct.DES_ks* noundef nonnull %6, %struct.DES_ks* noundef nonnull %7, [8 x i8]* noundef nonnull %8, i32* noundef nonnull %num14, i32 noundef %call30) #5
  %9 = load i32, i32* %num14, align 4, !tbaa !9
  %call31 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %9) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @DES_ede3_cfb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef, i32 noundef) local_unnamed_addr #3

declare i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede_ofb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %num = alloca i32, align 4
  %num13 = alloca i32, align 4
  %cmp48 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp48, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i32* %num to i8*
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %1 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.051 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.050 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.049 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr12, %while.body ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6
  %call = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call, i32* %num, align 4, !tbaa !9
  %call1 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx = bitcast i8* %call1 to %struct.DES_ks*
  %call3 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx6 = getelementptr inbounds i8, i8* %call3, i64 128
  %2 = bitcast i8* %arrayidx6 to %struct.DES_ks*
  %call7 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx10 = getelementptr inbounds i8, i8* %call7, i64 256
  %3 = bitcast i8* %arrayidx10 to %struct.DES_ks*
  call void @DES_ede3_ofb64_encrypt(i8* noundef %in.addr.050, i8* noundef %out.addr.049, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %arrayidx, %struct.DES_ks* noundef nonnull %2, %struct.DES_ks* noundef nonnull %3, [8 x i8]* noundef nonnull %1, i32* noundef nonnull %num) #5
  %4 = load i32, i32* %num, align 4, !tbaa !9
  %call11 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %4) #5
  %sub = add i64 %inl.addr.051, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.050, i64 4611686018427387904
  %add.ptr12 = getelementptr inbounds i8, i8* %out.addr.049, i64 4611686018427387904
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6
  %cmp = icmp slt i64 %inl.addr.051, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr12, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %5 = bitcast i32* %num13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6
  %call14 = call i32 @EVP_CIPHER_CTX_get_num(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  store i32 %call14, i32* %num13, align 4, !tbaa !9
  %call15 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx18 = bitcast i8* %call15 to %struct.DES_ks*
  %call19 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx22 = getelementptr inbounds i8, i8* %call19, i64 128
  %6 = bitcast i8* %arrayidx22 to %struct.DES_ks*
  %call23 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx26 = getelementptr inbounds i8, i8* %call23, i64 256
  %7 = bitcast i8* %arrayidx26 to %struct.DES_ks*
  %arraydecay28 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %8 = bitcast i8* %arraydecay28 to [8 x i8]*
  call void @DES_ede3_ofb64_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %arrayidx18, %struct.DES_ks* noundef nonnull %6, %struct.DES_ks* noundef nonnull %7, [8 x i8]* noundef nonnull %8, i32* noundef nonnull %num13) #5
  %9 = load i32, i32* %num13, align 4, !tbaa !9
  %call29 = call i32 @EVP_CIPHER_CTX_set_num(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef %9) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

declare void @DES_ede3_ofb64_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede_ecb_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %call = tail call %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %block_size = getelementptr inbounds %struct.evp_cipher_st, %struct.evp_cipher_st* %call, i64 0, i32 1
  %0 = load i32, i32* %block_size, align 4, !tbaa !13
  %conv = sext i32 %0 to i64
  %cmp = icmp ugt i64 %conv, %inl
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub i64 %inl, %conv
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %i.030 = phi i64 [ 0, %if.end ], [ %add, %for.body ]
  %add.ptr = getelementptr inbounds i8, i8* %in, i64 %i.030
  %1 = bitcast i8* %add.ptr to [8 x i8]*
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %i.030
  %2 = bitcast i8* %add.ptr4 to [8 x i8]*
  %call5 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx = bitcast i8* %call5 to %struct.DES_ks*
  %call7 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx10 = getelementptr inbounds i8, i8* %call7, i64 128
  %3 = bitcast i8* %arrayidx10 to %struct.DES_ks*
  %call11 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx14 = getelementptr inbounds i8, i8* %call11, i64 256
  %4 = bitcast i8* %arrayidx14 to %struct.DES_ks*
  %call15 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @DES_ecb3_encrypt([8 x i8]* noundef %1, [8 x i8]* noundef %2, %struct.DES_ks* noundef %arrayidx, %struct.DES_ks* noundef nonnull %3, %struct.DES_ks* noundef nonnull %4, i32 noundef %call15) #5
  %add = add i64 %i.030, %conv
  %cmp2.not = icmp ugt i64 %add, %sub
  br i1 %cmp2.not, label %cleanup, label %for.body, !llvm.loop !17

cleanup:                                          ; preds = %for.body, %entry
  ret i32 1
}

declare %struct.evp_cipher_st* @EVP_CIPHER_CTX_get0_cipher(%struct.evp_cipher_ctx_st* noundef) local_unnamed_addr #3

declare void @DES_ecb3_encrypt([8 x i8]* noundef, [8 x i8]* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede3_init_key(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %key, i8* nocapture noundef readnone %iv, i32 noundef %enc) #1 {
entry:
  %0 = bitcast i8* %key to [8 x i8]*
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %stream = getelementptr inbounds i8, i8* %call, i64 384
  %cbc = bitcast i8* %stream to void (i8*, i8*, i64, %struct.DES_ks*, i8*)**
  store void (i8*, i8*, i64, %struct.DES_ks*, i8*)* null, void (i8*, i8*, i64, %struct.DES_ks*, i8*)** %cbc, align 8, !tbaa !4
  %arrayidx2 = bitcast i8* %call to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef %0, %struct.DES_ks* noundef %arrayidx2) #5
  %arrayidx3 = getelementptr inbounds i8, i8* %key, i64 8
  %1 = bitcast i8* %arrayidx3 to [8 x i8]*
  %arrayidx6 = getelementptr inbounds i8, i8* %call, i64 128
  %2 = bitcast i8* %arrayidx6 to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %1, %struct.DES_ks* noundef nonnull %2) #5
  %arrayidx7 = getelementptr inbounds i8, i8* %key, i64 16
  %3 = bitcast i8* %arrayidx7 to [8 x i8]*
  %arrayidx10 = getelementptr inbounds i8, i8* %call, i64 256
  %4 = bitcast i8* %arrayidx10 to %struct.DES_ks*
  tail call void @DES_set_key_unchecked([8 x i8]* noundef nonnull %3, %struct.DES_ks* noundef nonnull %4) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede3_cfb1_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* nocapture noundef %out, i8* nocapture noundef readonly %in, i64 noundef %inl) #1 {
entry:
  %c = alloca [1 x i8], align 1
  %d = alloca [1 x i8], align 1
  %0 = getelementptr inbounds [1 x i8], [1 x i8]* %c, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %0) #6
  %1 = getelementptr inbounds [1 x i8], [1 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #6
  %call = tail call i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef %ctx, i32 noundef 8192) #5
  %tobool.not = icmp eq i32 %call, 0
  %mul = shl i64 %inl, 3
  %spec.select = select i1 %tobool.not, i64 %mul, i64 %inl
  %cmp48.not = icmp eq i64 %spec.select, 0
  br i1 %cmp48.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay16 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %2 = bitcast i8* %arraydecay16 to [8 x i8]*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %n.049 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %div = lshr i64 %n.049, 3
  %arrayidx = getelementptr inbounds i8, i8* %in, i64 %div
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !4
  %conv = zext i8 %3 to i32
  %4 = trunc i64 %n.049 to i32
  %5 = and i32 %4, 7
  %sh_prom = xor i32 %5, 7
  %shl = shl nuw i32 1, %sh_prom
  %and = and i32 %shl, %conv
  %tobool1.not = icmp eq i32 %and, 0
  %conv2 = select i1 %tobool1.not, i8 0, i8 -128
  store i8 %conv2, i8* %0, align 1, !tbaa !4
  %call5 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx7 = bitcast i8* %call5 to %struct.DES_ks*
  %call8 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx11 = getelementptr inbounds i8, i8* %call8, i64 128
  %6 = bitcast i8* %arrayidx11 to %struct.DES_ks*
  %call12 = call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx15 = getelementptr inbounds i8, i8* %call12, i64 256
  %7 = bitcast i8* %arrayidx15 to %struct.DES_ks*
  %call17 = call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  call void @DES_ede3_cfb_encrypt(i8* noundef nonnull %0, i8* noundef nonnull %1, i32 noundef 1, i64 noundef 1, %struct.DES_ks* noundef %arrayidx7, %struct.DES_ks* noundef nonnull %6, %struct.DES_ks* noundef nonnull %7, [8 x i8]* noundef nonnull %2, i32 noundef %call17) #5
  %arrayidx19 = getelementptr inbounds i8, i8* %out, i64 %div
  %8 = load i8, i8* %arrayidx19, align 1, !tbaa !4
  %conv20 = zext i8 %8 to i32
  %neg = ashr i32 -129, %5
  %and23 = and i32 %neg, %conv20
  %9 = load i8, i8* %1, align 1, !tbaa !4
  %10 = and i8 %9, -128
  %and26 = zext i8 %10 to i32
  %shr29 = lshr i32 %and26, %5
  %or = or i32 %shr29, %and23
  %conv30 = trunc i32 %or to i8
  store i8 %conv30, i8* %arrayidx19, align 1, !tbaa !4
  %inc = add nuw i64 %n.049, 1
  %exitcond.not = icmp eq i64 %inc, %spec.select
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !18

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %0) #6
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_test_flags(%struct.evp_cipher_ctx_st* noundef, i32 noundef) local_unnamed_addr #3

declare void @DES_ede3_cfb_encrypt(i8* noundef, i8* noundef, i32 noundef, i64 noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, %struct.DES_ks* noundef, [8 x i8]* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede3_cfb8_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %cmp43 = icmp ugt i64 %inl, 4611686018427387903
  br i1 %cmp43, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %0 = bitcast i8* %arraydecay to [8 x i8]*
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %inl.addr.046 = phi i64 [ %inl, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.addr.045 = phi i8* [ %in, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %out.addr.044 = phi i8* [ %out, %while.body.lr.ph ], [ %add.ptr11, %while.body ]
  %call = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx = bitcast i8* %call to %struct.DES_ks*
  %call2 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx5 = getelementptr inbounds i8, i8* %call2, i64 128
  %1 = bitcast i8* %arrayidx5 to %struct.DES_ks*
  %call6 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx9 = getelementptr inbounds i8, i8* %call6, i64 256
  %2 = bitcast i8* %arrayidx9 to %struct.DES_ks*
  %call10 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @DES_ede3_cfb_encrypt(i8* noundef %in.addr.045, i8* noundef %out.addr.044, i32 noundef 8, i64 noundef 4611686018427387904, %struct.DES_ks* noundef %arrayidx, %struct.DES_ks* noundef nonnull %1, %struct.DES_ks* noundef nonnull %2, [8 x i8]* noundef nonnull %0, i32 noundef %call10) #5
  %sub = add i64 %inl.addr.046, -4611686018427387904
  %add.ptr = getelementptr inbounds i8, i8* %in.addr.045, i64 4611686018427387904
  %add.ptr11 = getelementptr inbounds i8, i8* %out.addr.044, i64 4611686018427387904
  %cmp = icmp slt i64 %inl.addr.046, 4611686018427387904
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !19

while.end:                                        ; preds = %while.body, %entry
  %out.addr.0.lcssa = phi i8* [ %out, %entry ], [ %add.ptr11, %while.body ]
  %in.addr.0.lcssa = phi i8* [ %in, %entry ], [ %add.ptr, %while.body ]
  %inl.addr.0.lcssa = phi i64 [ %inl, %entry ], [ %sub, %while.body ]
  %tobool.not = icmp eq i64 %inl.addr.0.lcssa, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call12 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx15 = bitcast i8* %call12 to %struct.DES_ks*
  %call16 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx19 = getelementptr inbounds i8, i8* %call16, i64 128
  %3 = bitcast i8* %arrayidx19 to %struct.DES_ks*
  %call20 = tail call i8* @EVP_CIPHER_CTX_get_cipher_data(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %arrayidx23 = getelementptr inbounds i8, i8* %call20, i64 256
  %4 = bitcast i8* %arrayidx23 to %struct.DES_ks*
  %arraydecay25 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %5 = bitcast i8* %arraydecay25 to [8 x i8]*
  %call26 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  tail call void @DES_ede3_cfb_encrypt(i8* noundef %in.addr.0.lcssa, i8* noundef %out.addr.0.lcssa, i32 noundef 8, i64 noundef %inl.addr.0.lcssa, %struct.DES_ks* noundef %arrayidx15, %struct.DES_ks* noundef nonnull %3, %struct.DES_ks* noundef nonnull %4, [8 x i8]* noundef nonnull %5, i32 noundef %call26) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @des_ede3_wrap_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #1 {
entry:
  %0 = and i64 %inl, -4611686018427387897
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %if.end, label %return

if.end:                                           ; preds = %entry
  %conv = trunc i64 %inl to i32
  %call = tail call i32 @ossl_is_partially_overlapping(i8* noundef %out, i8* noundef %in, i32 noundef %conv) #5
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.des_ede3_wrap_cipher, i64 0, i64 0)) #5
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, i8* noundef null) #5
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @EVP_CIPHER_CTX_is_encrypting(%struct.evp_cipher_ctx_st* noundef %ctx) #5
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %call7 = tail call fastcc i32 @des_ede3_wrap(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #7
  br label %return

if.else:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @des_ede3_unwrap(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) #7
  br label %return

return:                                           ; preds = %entry, %if.else, %if.then6, %if.then2
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %call7, %if.then6 ], [ %call8, %if.else ], [ -1, %entry ]
  ret i32 %retval.0
}

declare i32 @ossl_is_partially_overlapping(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @des_ede3_wrap(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) unnamed_addr #1 {
entry:
  %sha1tmp = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #6
  %cmp = icmp eq i8* %out, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = trunc i64 %inl to i32
  %conv = add i32 %1, 16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %call = tail call i8* @memmove(i8* noundef nonnull %add.ptr, i8* noundef %in, i64 noundef %inl) #5
  %call1 = call i8* @ossl_sha1(i8* noundef %in, i64 noundef %inl, i8* noundef nonnull %0) #5
  %tobool.not = icmp eq i8* %call1, null
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %add.ptr4 = getelementptr inbounds i8, i8* %out, i64 %inl
  %add.ptr5 = getelementptr inbounds i8, i8* %add.ptr4, i64 8
  %call7 = call i8* @memcpy(i8* noundef nonnull %add.ptr5, i8* noundef nonnull %0, i64 noundef 8) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 20) #5
  %arraydecay9 = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call10 = call i32 @RAND_bytes(i8* noundef nonnull %arraydecay9, i32 noundef 8) #5
  %cmp11 = icmp slt i32 %call10, 1
  br i1 %cmp11, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end3
  %call17 = call i8* @memcpy(i8* noundef nonnull %out, i8* noundef nonnull %arraydecay9, i64 noundef 8) #5
  %add20 = add i64 %inl, 8
  %call21 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr, i64 noundef %add20) #7
  %add22 = add i64 %inl, 16
  call void @BUF_reverse(i8* noundef nonnull %out, i8* noundef null, i64 noundef %add22) #5
  %call25 = call i8* @memcpy(i8* noundef nonnull %arraydecay9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @wrap_iv, i64 0, i64 0), i64 noundef 8) #5
  %call27 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %out, i8* noundef nonnull %out, i64 noundef %add22) #7
  %conv29 = trunc i64 %add22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %if.end14, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ %conv29, %if.end14 ], [ -1, %if.end ], [ -1, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @des_ede3_unwrap(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef %out, i8* noundef %in, i64 noundef %inl) unnamed_addr #1 {
entry:
  %icv = alloca [8 x i8], align 1
  %iv = alloca [8 x i8], align 1
  %sha1tmp = alloca [20 x i8], align 16
  %0 = getelementptr inbounds [8 x i8], [8 x i8]* %icv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6
  %1 = getelementptr inbounds [8 x i8], [8 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #6
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %sha1tmp, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #6
  %cmp = icmp ult i64 %inl, 24
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %out, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = trunc i64 %inl to i32
  %conv = add i32 %3, -16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds %struct.evp_cipher_ctx_st, %struct.evp_cipher_ctx_st* %ctx, i64 0, i32 5, i64 0
  %call = tail call i8* @memcpy(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @wrap_iv, i64 0, i64 0), i64 noundef 8) #5
  %call6 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %0, i8* noundef %in, i64 noundef 8) #7
  %cmp7 = icmp eq i8* %out, %in
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end3
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 8
  %sub10 = add i64 %inl, -8
  %call11 = call i8* @memmove(i8* noundef nonnull %out, i8* noundef nonnull %add.ptr, i64 noundef %sub10) #5
  %add.ptr12 = getelementptr inbounds i8, i8* %out, i64 -8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end3
  %in.addr.0 = phi i8* [ %add.ptr12, %if.then9 ], [ %in, %if.end3 ]
  %add.ptr14 = getelementptr inbounds i8, i8* %in.addr.0, i64 8
  %sub15 = add i64 %inl, -16
  %call16 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %out, i8* noundef nonnull %add.ptr14, i64 noundef %sub15) #7
  %add.ptr18 = getelementptr inbounds i8, i8* %in.addr.0, i64 %inl
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr18, i64 -8
  %call20 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %1, i8* noundef nonnull %add.ptr19, i64 noundef 8) #7
  call void @BUF_reverse(i8* noundef nonnull %0, i8* noundef null, i64 noundef 8) #5
  call void @BUF_reverse(i8* noundef nonnull %out, i8* noundef null, i64 noundef %sub15) #5
  call void @BUF_reverse(i8* noundef nonnull %arraydecay, i8* noundef nonnull %1, i64 noundef 8) #5
  %call27 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %out, i8* noundef nonnull %out, i64 noundef %sub15) #7
  %call30 = call i32 @des_ede_cbc_cipher(%struct.evp_cipher_ctx_st* noundef %ctx, i8* noundef nonnull %0, i8* noundef nonnull %0, i64 noundef 8) #7
  %call33 = call i8* @ossl_sha1(i8* noundef nonnull %out, i64 noundef %sub15, i8* noundef nonnull %2) #5
  %tobool.not = icmp eq i8* %call33, null
  br i1 %tobool.not, label %if.end42, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %call36 = call i32 @CRYPTO_memcmp(i8* noundef nonnull %2, i8* noundef nonnull %0, i64 noundef 8) #5
  %cmp37 = icmp eq i32 %call36, 0
  %conv41 = trunc i64 %sub15 to i32
  %spec.select = select i1 %cmp37, i32 %conv41, i32 -1
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true, %if.end13
  %rv.0 = phi i32 [ -1, %if.end13 ], [ %spec.select, %land.lhs.true ]
  call void @OPENSSL_cleanse(i8* noundef nonnull %0, i64 noundef 8) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %2, i64 noundef 20) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %1, i64 noundef 8) #5
  call void @OPENSSL_cleanse(i8* noundef nonnull %arraydecay, i64 noundef 8) #5
  %cmp48 = icmp eq i32 %rv.0, -1
  br i1 %cmp48, label %if.then50, label %cleanup

if.then50:                                        ; preds = %if.end42
  call void @OPENSSL_cleanse(i8* noundef nonnull %out, i64 noundef %sub15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then50, %entry, %if.then2
  %retval.0 = phi i32 [ %conv, %if.then2 ], [ -1, %entry ], [ -1, %if.then50 ], [ %rv.0, %if.end42 ]
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i8* @memmove(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i8* @ossl_sha1(i8* noundef, i64 noundef, i8* noundef) local_unnamed_addr #3

declare void @OPENSSL_cleanse(i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #3

declare void @BUF_reverse(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

declare i32 @CRYPTO_memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{!14, !10, i64 4}
!14 = !{!"evp_cipher_st", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !15, i64 16, !10, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !10, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !10, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !5, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248}
!15 = !{!"long", !5, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
