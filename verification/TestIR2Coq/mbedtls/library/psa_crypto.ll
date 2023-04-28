; ModuleID = 'psa_crypto.c'
source_filename = "psa_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_global_data_t = type { i8, %struct.mbedtls_psa_random_context_t }
%struct.mbedtls_psa_random_context_t = type { void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)*, %struct.mbedtls_entropy_context, %struct.mbedtls_ctr_drbg_context }
%struct.mbedtls_entropy_context = type { i32, %struct.mbedtls_sha512_context, i32, [20 x %struct.mbedtls_entropy_source_state] }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }
%struct.mbedtls_entropy_source_state = type { i32 (i8*, i8*, i64, i64*)*, i8*, i64, i64, i32 }
%struct.mbedtls_ctr_drbg_context = type { [16 x i8], i32, i32, i64, i32, %struct.mbedtls_aes_context, i32 (i8*, i8*, i64)*, i8* }
%struct.mbedtls_aes_context = type { i32, i32*, [68 x i32] }
%struct.psa_key_slot_t = type { %struct.psa_core_key_attributes_t, i64, %struct.key_data }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.key_data = type { i8*, i64 }
%struct.psa_key_attributes_s = type { %struct.psa_core_key_attributes_t, i8*, i64 }
%struct.mbedtls_rsa_context = type { i32, i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, i32, i32 }
%struct.mbedtls_mpi = type { i32, i64, i64* }
%struct.psa_se_drv_table_entry_s = type opaque
%struct.psa_hash_operation_s = type { i32, %union.psa_driver_hash_context_t }
%union.psa_driver_hash_context_t = type { %struct.mbedtls_psa_hash_operation_t }
%struct.mbedtls_psa_hash_operation_t = type { i32, %union.anon }
%union.anon = type { %struct.mbedtls_sha512_context }
%struct.psa_mac_operation_s = type { i32, i8, i8, %union.psa_driver_mac_context_t }
%union.psa_driver_mac_context_t = type { %struct.mbedtls_psa_mac_operation_t }
%struct.mbedtls_psa_mac_operation_t = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.mbedtls_psa_hmac_operation_t }
%struct.mbedtls_psa_hmac_operation_t = type { i32, %struct.psa_hash_operation_s, [128 x i8] }
%struct.psa_cipher_operation_s = type { i32, i8, i8, %union.psa_driver_cipher_context_t }
%union.psa_driver_cipher_context_t = type { %struct.mbedtls_psa_cipher_operation_t }
%struct.mbedtls_psa_cipher_operation_t = type { i32, i8, i8, %union.anon.1 }
%union.anon.1 = type { %struct.mbedtls_cipher_context_t }
%struct.mbedtls_cipher_context_t = type { %struct.mbedtls_cipher_info_t*, i32, i32, void (i8*, i64, i64)*, i32 (i8*, i64, i64*)*, [16 x i8], i64, [16 x i8], i64, i8*, %struct.mbedtls_cmac_context_t* }
%struct.mbedtls_cipher_info_t = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mbedtls_cipher_base_t* }
%struct.mbedtls_cipher_base_t = type opaque
%struct.mbedtls_cmac_context_t = type { [16 x i8], [16 x i8], i64 }
%struct.psa_aead_operation_s = type { i32, i32, i16, i64, i64, i8, %union.psa_driver_aead_context_t }
%union.psa_driver_aead_context_t = type { %struct.mbedtls_psa_aead_operation_t }
%struct.mbedtls_psa_aead_operation_t = type { i32, i16, i8, i8, %union.anon.2 }
%union.anon.2 = type { %struct.mbedtls_gcm_context }
%struct.mbedtls_gcm_context = type { %struct.mbedtls_cipher_context_t, [16 x i64], [16 x i64], i64, i64, [16 x i8], [16 x i8], [16 x i8], i32 }
%struct.psa_key_derivation_s = type { i32, i8, i64, %union.anon.3 }
%union.anon.3 = type { %struct.psa_hkdf_key_derivation_t }
%struct.psa_hkdf_key_derivation_t = type { i8*, i64, i8, i8, i8, [64 x i8], [64 x i8], %struct.psa_mac_operation_s }
%struct.psa_tls12_prf_key_derivation_s = type { i8, i8, i32, i8*, i64, i8*, i64, i8*, i64, i8*, i64, [64 x i8], [64 x i8] }
%struct.mbedtls_ecp_keypair = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point }
%struct.mbedtls_ecp_group = type { i32, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi, i64, i64, i32, i32 (%struct.mbedtls_mpi*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i32 (%struct.mbedtls_ecp_point*, i8*)*, i8*, %struct.mbedtls_ecp_point*, i64 }
%struct.mbedtls_ecp_point = type { %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_ecdh_context = type { i8, i32, i32, %union.anon.4 }
%union.anon.4 = type { %struct.mbedtls_ecdh_context_mbed }
%struct.mbedtls_ecdh_context_mbed = type { %struct.mbedtls_ecp_group, %struct.mbedtls_mpi, %struct.mbedtls_ecp_point, %struct.mbedtls_ecp_point, %struct.mbedtls_mpi }

@global_data = internal global %struct.psa_global_data_t zeroinitializer, align 8
@mbedtls_psa_random_state = dso_local constant %struct.mbedtls_ctr_drbg_context* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056) to %struct.mbedtls_ctr_drbg_context*), align 8
@__const.mbedtls_psa_random_seed.drbg_seed = private unnamed_addr constant [4 x i8] c"PSA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_to_psa_error(i32 noundef %ret) #0 {
entry:
  %retval = alloca i32, align 4
  %ret.addr = alloca i32, align 4
  %low_level_ret = alloca i32, align 4
  store i32 %ret, i32* %ret.addr, align 4
  %0 = load i32, i32* %ret.addr, align 4
  %sub = sub nsw i32 0, %0
  %and = and i32 %sub, 127
  %sub1 = sub nsw i32 0, %and
  store i32 %sub1, i32* %low_level_ret, align 4
  %1 = load i32, i32* %low_level_ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %low_level_ret, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %ret.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  switch i32 %cond, label %sw.default [
    i32 0, label %sw.bb
    i32 -32, label %sw.bb2
    i32 -34, label %sw.bb2
    i32 -96, label %sw.bb3
    i32 -98, label %sw.bb3
    i32 -100, label %sw.bb3
    i32 -102, label %sw.bb3
    i32 -104, label %sw.bb3
    i32 -106, label %sw.bb4
    i32 -108, label %sw.bb5
    i32 -36, label %sw.bb6
    i32 -38, label %sw.bb6
    i32 -13, label %sw.bb7
    i32 -15, label %sw.bb8
    i32 -81, label %sw.bb9
    i32 -84, label %sw.bb10
    i32 -86, label %sw.bb11
    i32 -24704, label %sw.bb12
    i32 -24832, label %sw.bb13
    i32 -24960, label %sw.bb14
    i32 -25088, label %sw.bb15
    i32 -25216, label %sw.bb16
    i32 -25344, label %sw.bb17
    i32 -25472, label %sw.bb18
    i32 -52, label %sw.bb19
    i32 -54, label %sw.bb20
    i32 -56, label %sw.bb20
    i32 -58, label %sw.bb21
    i32 -50, label %sw.bb22
    i32 -64, label %sw.bb23
    i32 -61, label %sw.bb23
    i32 -60, label %sw.bb23
    i32 -18, label %sw.bb24
    i32 -22, label %sw.bb25
    i32 -20, label %sw.bb26
    i32 -20608, label %sw.bb27
    i32 -20736, label %sw.bb28
    i32 -20864, label %sw.bb29
    i32 -20992, label %sw.bb30
    i32 -2, label %sw.bb31
    i32 -4, label %sw.bb32
    i32 -6, label %sw.bb33
    i32 -8, label %sw.bb34
    i32 -10, label %sw.bb35
    i32 -12, label %sw.bb36
    i32 -14, label %sw.bb37
    i32 -16, label %sw.bb38
    i32 -16256, label %sw.bb39
    i32 -16128, label %sw.bb40
    i32 -16000, label %sw.bb40
    i32 -15872, label %sw.bb41
    i32 -15744, label %sw.bb42
    i32 -15616, label %sw.bb42
    i32 -15488, label %sw.bb43
    i32 -15360, label %sw.bb44
    i32 -15232, label %sw.bb44
    i32 -15104, label %sw.bb45
    i32 -14976, label %sw.bb46
    i32 -14848, label %sw.bb46
    i32 -14720, label %sw.bb46
    i32 -14592, label %sw.bb47
    i32 -14464, label %sw.bb48
    i32 -112, label %sw.bb49
    i32 -114, label %sw.bb50
    i32 -16512, label %sw.bb51
    i32 -16640, label %sw.bb52
    i32 -16768, label %sw.bb53
    i32 -16896, label %sw.bb54
    i32 -17024, label %sw.bb55
    i32 -17152, label %sw.bb55
    i32 -17280, label %sw.bb56
    i32 -17408, label %sw.bb57
    i32 -17536, label %sw.bb58
    i32 -20352, label %sw.bb59
    i32 -19584, label %sw.bb59
    i32 -20224, label %sw.bb60
    i32 -20096, label %sw.bb61
    i32 -19456, label %sw.bb62
    i32 -19968, label %sw.bb62
    i32 -19840, label %sw.bb63
    i32 -19712, label %sw.bb64
    i32 -110, label %sw.bb65
  ]

sw.bb:                                            ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %cond.end, %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %cond.end, %cond.end, %cond.end, %cond.end, %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %cond.end, %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %cond.end
  store i32 -137, i32* %retval, align 4
  br label %return

sw.bb11:                                          ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb12:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %cond.end
  store i32 -150, i32* %retval, align 4
  br label %return

sw.bb16:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb18:                                          ; preds = %cond.end
  store i32 -151, i32* %retval, align 4
  br label %return

sw.bb19:                                          ; preds = %cond.end
  store i32 -148, i32* %retval, align 4
  br label %return

sw.bb20:                                          ; preds = %cond.end, %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %cond.end
  store i32 -148, i32* %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb23:                                          ; preds = %cond.end, %cond.end, %cond.end
  store i32 -148, i32* %retval, align 4
  br label %return

sw.bb24:                                          ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb26:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb27:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb28:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb29:                                          ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb30:                                          ; preds = %cond.end
  store i32 -146, i32* %retval, align 4
  br label %return

sw.bb31:                                          ; preds = %cond.end
  store i32 -146, i32* %retval, align 4
  br label %return

sw.bb32:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb34:                                          ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb35:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb36:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb37:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb38:                                          ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb39:                                          ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb40:                                          ; preds = %cond.end, %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb41:                                          ; preds = %cond.end
  store i32 -146, i32* %retval, align 4
  br label %return

sw.bb42:                                          ; preds = %cond.end, %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb43:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb44:                                          ; preds = %cond.end, %cond.end
  store i32 -133, i32* %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb46:                                          ; preds = %cond.end, %cond.end, %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb47:                                          ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb48:                                          ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb49:                                          ; preds = %cond.end
  store i32 -147, i32* %retval, align 4
  br label %return

sw.bb50:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb51:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb52:                                          ; preds = %cond.end
  store i32 -150, i32* %retval, align 4
  br label %return

sw.bb53:                                          ; preds = %cond.end
  store i32 -147, i32* %retval, align 4
  br label %return

sw.bb54:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb55:                                          ; preds = %cond.end, %cond.end
  store i32 -151, i32* %retval, align 4
  br label %return

sw.bb56:                                          ; preds = %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb57:                                          ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb58:                                          ; preds = %cond.end
  store i32 -148, i32* %retval, align 4
  br label %return

sw.bb59:                                          ; preds = %cond.end, %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

sw.bb60:                                          ; preds = %cond.end
  store i32 -138, i32* %retval, align 4
  br label %return

sw.bb61:                                          ; preds = %cond.end
  store i32 -134, i32* %retval, align 4
  br label %return

sw.bb62:                                          ; preds = %cond.end, %cond.end
  store i32 -149, i32* %retval, align 4
  br label %return

sw.bb63:                                          ; preds = %cond.end
  store i32 -141, i32* %retval, align 4
  br label %return

sw.bb64:                                          ; preds = %cond.end
  store i32 -148, i32* %retval, align 4
  br label %return

sw.bb65:                                          ; preds = %cond.end
  store i32 -151, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %cond.end
  store i32 -132, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecc_group_of_psa(i8 noundef zeroext %curve, i64 noundef %bits, i32 noundef %bits_is_sloppy) #0 {
entry:
  %retval = alloca i32, align 4
  %curve.addr = alloca i8, align 1
  %bits.addr = alloca i64, align 8
  %bits_is_sloppy.addr = alloca i32, align 4
  store i8 %curve, i8* %curve.addr, align 1
  store i64 %bits, i64* %bits.addr, align 8
  store i32 %bits_is_sloppy, i32* %bits_is_sloppy.addr, align 4
  %0 = load i8, i8* %curve.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.epilog24 [
    i32 18, label %sw.bb
    i32 48, label %sw.bb7
    i32 65, label %sw.bb12
    i32 23, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %bits.addr, align 8
  switch i64 %1, label %sw.epilog [
    i64 192, label %sw.bb1
    i64 224, label %sw.bb2
    i64 256, label %sw.bb3
    i64 384, label %sw.bb4
    i64 521, label %sw.bb5
    i64 528, label %sw.bb6
  ]

sw.bb1:                                           ; preds = %sw.bb
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %sw.bb
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %sw.bb
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %sw.bb
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %sw.bb
  %2 = load i32, i32* %bits_is_sloppy.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb6
  store i32 5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end
  br label %sw.epilog24

sw.bb7:                                           ; preds = %entry
  %3 = load i64, i64* %bits.addr, align 8
  switch i64 %3, label %sw.epilog11 [
    i64 256, label %sw.bb8
    i64 384, label %sw.bb9
    i64 512, label %sw.bb10
  ]

sw.bb8:                                           ; preds = %sw.bb7
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %sw.bb7
  store i32 7, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %sw.bb7
  store i32 8, i32* %retval, align 4
  br label %return

sw.epilog11:                                      ; preds = %sw.bb7
  br label %sw.epilog24

sw.bb12:                                          ; preds = %entry
  %4 = load i64, i64* %bits.addr, align 8
  switch i64 %4, label %sw.epilog19 [
    i64 255, label %sw.bb13
    i64 256, label %sw.bb14
    i64 448, label %sw.bb18
  ]

sw.bb13:                                          ; preds = %sw.bb12
  store i32 9, i32* %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %sw.bb12
  %5 = load i32, i32* %bits_is_sloppy.addr, align 4
  %tobool15 = icmp ne i32 %5, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %sw.bb14
  store i32 9, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %sw.bb14
  br label %sw.epilog19

sw.bb18:                                          ; preds = %sw.bb12
  store i32 13, i32* %retval, align 4
  br label %return

sw.epilog19:                                      ; preds = %sw.bb12, %if.end17
  br label %sw.epilog24

sw.bb20:                                          ; preds = %entry
  %6 = load i64, i64* %bits.addr, align 8
  switch i64 %6, label %sw.epilog23 [
    i64 192, label %sw.bb21
    i64 256, label %sw.bb22
  ]

sw.bb21:                                          ; preds = %sw.bb20
  store i32 10, i32* %retval, align 4
  br label %return

sw.bb22:                                          ; preds = %sw.bb20
  store i32 12, i32* %retval, align 4
  br label %return

sw.epilog23:                                      ; preds = %sw.bb20
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %entry, %sw.epilog23, %sw.epilog19, %sw.epilog11, %sw.epilog
  %7 = load i32, i32* %bits_is_sloppy.addr, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog24, %sw.bb22, %sw.bb21, %sw.bb18, %if.then16, %sw.bb13, %sw.bb10, %sw.bb9, %sw.bb8, %if.then, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %type, i64 noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %bits.addr = alloca i64, align 8
  store i16 %type, i16* %type.addr, align 2
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 4097, label %sw.bb
    i32 4352, label %sw.bb
    i32 4608, label %sw.bb
    i32 9216, label %sw.bb1
    i32 9222, label %sw.bb8
    i32 9219, label %sw.bb19
    i32 8961, label %sw.bb30
    i32 8196, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ne i64 %1, 128
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb1
  %2 = load i64, i64* %bits.addr, align 8
  %cmp3 = icmp ne i64 %2, 192
  br i1 %cmp3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load i64, i64* %bits.addr, align 8
  %cmp6 = icmp ne i64 %3, 256
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true, %sw.bb1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %4 = load i64, i64* %bits.addr, align 8
  %cmp9 = icmp ne i64 %4, 128
  br i1 %cmp9, label %land.lhs.true11, label %if.end18

land.lhs.true11:                                  ; preds = %sw.bb8
  %5 = load i64, i64* %bits.addr, align 8
  %cmp12 = icmp ne i64 %5, 192
  br i1 %cmp12, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %6 = load i64, i64* %bits.addr, align 8
  %cmp15 = icmp ne i64 %6, 256
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  store i32 -135, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true14, %land.lhs.true11, %sw.bb8
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %7 = load i64, i64* %bits.addr, align 8
  %cmp20 = icmp ne i64 %7, 128
  br i1 %cmp20, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %sw.bb19
  %8 = load i64, i64* %bits.addr, align 8
  %cmp23 = icmp ne i64 %8, 192
  br i1 %cmp23, label %land.lhs.true25, label %if.end29

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %9 = load i64, i64* %bits.addr, align 8
  %cmp26 = icmp ne i64 %9, 256
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true25
  store i32 -135, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true25, %land.lhs.true22, %sw.bb19
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %10 = load i64, i64* %bits.addr, align 8
  %cmp31 = icmp ne i64 %10, 64
  br i1 %cmp31, label %land.lhs.true33, label %if.end40

land.lhs.true33:                                  ; preds = %sw.bb30
  %11 = load i64, i64* %bits.addr, align 8
  %cmp34 = icmp ne i64 %11, 128
  br i1 %cmp34, label %land.lhs.true36, label %if.end40

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %12 = load i64, i64* %bits.addr, align 8
  %cmp37 = icmp ne i64 %12, 192
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true36
  store i32 -135, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %land.lhs.true36, %land.lhs.true33, %sw.bb30
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %13 = load i64, i64* %bits.addr, align 8
  %cmp42 = icmp ne i64 %13, 256
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %sw.bb41
  store i32 -135, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %sw.bb41
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end45, %if.end40, %if.end29, %if.end18, %if.end, %sw.bb
  %14 = load i64, i64* %bits.addr, align 8
  %rem = urem i64 %14, 8
  %cmp46 = icmp ne i64 %rem, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.epilog
  store i32 -135, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %sw.epilog
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %if.then48, %sw.default, %if.then44, %if.then39, %if.then28, %if.then17, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %slot, i64 noundef %buffer_length) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %buffer_length.addr = alloca i64, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store i64 %buffer_length, i64* %buffer_length.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -139, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %buffer_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %2) #5
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key1 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %3, i32 0, i32 2
  %data2 = getelementptr inbounds %struct.key_data, %struct.key_data* %key1, i32 0, i32 0
  store i8* %call, i8** %data2, align 8
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 2
  %data4 = getelementptr inbounds %struct.key_data, %struct.key_data* %key3, i32 0, i32 0
  %5 = load i8*, i8** %data4, align 8
  %cmp5 = icmp eq i8* %5, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 -141, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %6 = load i64, i64* %buffer_length.addr, align 8
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key8, i32 0, i32 1
  store i64 %6, i64* %bytes, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_copy_key_material_into_slot(%struct.psa_key_slot_t* noundef %slot, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %1 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %0, i64 noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 2
  %data1 = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %5 = load i8*, i8** %data1, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %data_length.addr, align 8
  %call2 = call i8* @memcpy(i8* noundef %5, i8* noundef %6, i64 noundef %7) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_import_key_into_slot(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length, i64* noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %bits.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %type = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i64* %bits, i64** %bits.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type1, align 8
  store i16 %1, i16* %type, align 2
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %type, align 2
  %call = call i32 @key_type_is_raw_bytes(i16 noundef zeroext %3) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load i64, i64* %data_length.addr, align 8
  %mul = mul i64 %4, 8
  %5 = load i64*, i64** %bits.addr, align 8
  store i64 %mul, i64* %5, align 8
  %6 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core3 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %6, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core3, i32 0, i32 0
  %7 = load i16, i16* %type4, align 8
  %8 = load i64*, i64** %bits.addr, align 8
  %9 = load i64, i64* %8, align 8
  %call5 = call i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %7, i64 noundef %9) #6
  store i32 %call5, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then2
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then2
  %12 = load i8*, i8** %key_buffer.addr, align 8
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i64, i64* %data_length.addr, align 8
  %call9 = call i8* @memcpy(i8* noundef %12, i8* noundef %13, i64 noundef %14) #5
  %15 = load i64, i64* %data_length.addr, align 8
  %16 = load i64*, i64** %key_buffer_length.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64, i64* %key_buffer_size.addr, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %18 = load i16, i16* %type, align 2
  %conv = zext i16 %18 to i32
  %and = and i32 %conv, 28672
  %and10 = and i32 %and, -12289
  %cmp11 = icmp eq i32 %and10, 16384
  br i1 %cmp11, label %if.then13, label %if.end29

if.then13:                                        ; preds = %if.else
  %19 = load i16, i16* %type, align 2
  %conv14 = zext i16 %19 to i32
  %and15 = and i32 %conv14, -12289
  %and16 = and i32 %and15, -256
  %cmp17 = icmp eq i32 %and16, 16640
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then13
  %20 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %21 = load i8*, i8** %data.addr, align 8
  %22 = load i64, i64* %data_length.addr, align 8
  %23 = load i8*, i8** %key_buffer.addr, align 8
  %24 = load i64, i64* %key_buffer_size.addr, align 8
  %25 = load i64*, i64** %key_buffer_length.addr, align 8
  %26 = load i64*, i64** %bits.addr, align 8
  %call20 = call i32 @mbedtls_psa_ecp_import_key(%struct.psa_key_attributes_s* noundef %20, i8* noundef %21, i64 noundef %22, i8* noundef %23, i64 noundef %24, i64* noundef %25, i64* noundef %26) #6
  store i32 %call20, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then13
  %27 = load i16, i16* %type, align 2
  %conv22 = zext i16 %27 to i32
  %and23 = and i32 %conv22, -12289
  %cmp24 = icmp eq i32 %and23, 16385
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end21
  %28 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %29 = load i8*, i8** %data.addr, align 8
  %30 = load i64, i64* %data_length.addr, align 8
  %31 = load i8*, i8** %key_buffer.addr, align 8
  %32 = load i64, i64* %key_buffer_size.addr, align 8
  %33 = load i64*, i64** %key_buffer_length.addr, align 8
  %34 = load i64*, i64** %bits.addr, align 8
  %call27 = call i32 @mbedtls_psa_rsa_import_key(%struct.psa_key_attributes_s* noundef %28, i8* noundef %29, i64 noundef %30, i8* noundef %31, i64 noundef %32, i64* noundef %33, i64* noundef %34) #6
  store i32 %call27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then26, %if.then19, %if.end8, %if.then7, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_type_is_raw_bytes(i16 noundef zeroext %type) #0 {
entry:
  %type.addr = alloca i16, align 2
  store i16 %type, i16* %type.addr, align 2
  %0 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 4096
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i16, i16* %type.addr, align 2
  %conv2 = zext i16 %1 to i32
  %and3 = and i32 %conv2, 28672
  %cmp4 = icmp eq i32 %and3, 8192
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare dso_local i32 @mbedtls_psa_ecp_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_psa_rsa_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_remove_key_data_from_memory(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key1 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 2
  %data2 = getelementptr inbounds %struct.key_data, %struct.key_data* %key1, i32 0, i32 0
  %3 = load i8*, i8** %data2, align 8
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key3, i32 0, i32 1
  %5 = load i64, i64* %bytes, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %3, i64 noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key4 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 2
  %data5 = getelementptr inbounds %struct.key_data, %struct.key_data* %key4, i32 0, i32 0
  %7 = load i8*, i8** %data5, align 8
  call void @free(i8* noundef %7) #5
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 2
  %data7 = getelementptr inbounds %struct.key_data, %struct.key_data* %key6, i32 0, i32 0
  store i8* null, i8** %data7, align 8
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 2
  %bytes9 = getelementptr inbounds %struct.key_data, %struct.key_data* %key8, i32 0, i32 1
  store i64 0, i64* %bytes9, align 8
  ret i32 0
}

declare dso_local void @mbedtls_platform_zeroize(i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %slot) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %status = alloca i32, align 4
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %call = call i32 @psa_remove_key_data_from_memory(%struct.psa_key_slot_t* noundef %0) #6
  store i32 %call, i32* %status, align 4
  %1 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %1, i32 0, i32 1
  %2 = load i64, i64* %lock_count, align 8
  %cmp = icmp ne i64 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -151, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %4 = bitcast %struct.psa_key_slot_t* %3 to i8*
  %call1 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 56) #5
  %5 = load i32, i32* %status, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_destroy_key(i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %status = alloca i32, align 4
  %overall_status = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  store i32 0, i32* %overall_status, align 4
  %0 = load i32, i32* %key.addr, align 4
  %call = call i32 @mbedtls_svc_key_id_is_null(i32 noundef %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %key.addr, align 4
  %call1 = call i32 @psa_get_and_lock_key_slot(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot) #6
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %lock_count = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 1
  %5 = load i64, i64* %lock_count, align 8
  %cmp4 = icmp ugt i64 %5, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call6 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %6) #6
  store i32 -132, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %8 = load i32, i32* %lifetime, align 4
  %and = and i32 %8, 255
  %conv = trunc i32 %and to i8
  %conv8 = zext i8 %conv to i32
  %cmp9 = icmp eq i32 %conv8, 255
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 -133, i32* %overall_status, align 4
  br label %exit

if.end12:                                         ; preds = %if.end7
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr13 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 0
  %lifetime14 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr13, i32 0, i32 2
  %10 = load i32, i32* %lifetime14, align 4
  %and15 = and i32 %10, 255
  %conv16 = trunc i32 %and15 to i8
  %conv17 = zext i8 %conv16 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end12
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr21 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr21, i32 0, i32 3
  %12 = load i32, i32* %id, align 8
  %call22 = call i32 @psa_destroy_persistent_key(i32 noundef %12) #6
  store i32 %call22, i32* %status, align 4
  %13 = load i32, i32* %overall_status, align 4
  %cmp23 = icmp eq i32 %13, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then20
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* %overall_status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end12
  br label %exit

exit:                                             ; preds = %if.end27, %if.then11
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call28 = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %15) #6
  store i32 %call28, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp29 = icmp ne i32 %16, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %exit
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %overall_status, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %exit
  %18 = load i32, i32* %overall_status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then5, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_svc_key_id_is_null(i32 noundef %key) #0 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @psa_get_and_lock_key_slot(i32 noundef, %struct.psa_key_slot_t** noundef) #2

declare dso_local i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef) #2

declare dso_local i32 @psa_destroy_persistent_key(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_get_key_attributes(i32 noundef %key, %struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  call void @psa_reset_key_attributes(%struct.psa_key_attributes_s* noundef %0) #6
  %1 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot, i32 noundef 0, i32 noundef 0) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %4, i32 0, i32 0
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %6 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %7 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 28, i1 false)
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core1 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %flags = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core1, i32 0, i32 5
  %9 = load i16, i16* %flags, align 8
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 1
  %conv2 = trunc i32 %and to i16
  store i16 %conv2, i16* %flags, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr3, i32 0, i32 0
  %11 = load i16, i16* %type, align 8
  %conv4 = zext i16 %11 to i32
  switch i32 %conv4, label %sw.default [
    i32 28673, label %sw.bb
    i32 16385, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr5 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr5, i32 0, i32 2
  %13 = load i32, i32* %lifetime, align 4
  %call6 = call i32 @psa_key_lifetime_is_external(i32 noundef %13) #6
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end18, label %if.then7

if.then7:                                         ; preds = %sw.bb
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %type9 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr8, i32 0, i32 0
  %15 = load i16, i16* %type9, align 8
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 0
  %17 = load i8*, i8** %data, align 8
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key11 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key11, i32 0, i32 1
  %19 = load i64, i64* %bytes, align 8
  %call12 = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %15, i8* noundef %17, i64 noundef %19, %struct.mbedtls_rsa_context** noundef %rsa) #6
  store i32 %call12, i32* %status, align 4
  %20 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %20, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then7
  br label %sw.epilog

if.end16:                                         ; preds = %if.then7
  %21 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %22 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call17 = call i32 @psa_get_rsa_public_exponent(%struct.mbedtls_rsa_context* noundef %21, %struct.psa_key_attributes_s* noundef %22) #6
  store i32 %call17, i32* %status, align 4
  %23 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %23) #6
  %24 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %25 = bitcast %struct.mbedtls_rsa_context* %24 to i8*
  call void @free(i8* noundef %25) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end18, %if.then15
  %26 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %26, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.epilog
  %27 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  call void @psa_reset_key_attributes(%struct.psa_key_attributes_s* noundef %27) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %sw.epilog
  %28 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call23 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %28) #6
  store i32 %call23, i32* %unlock_status, align 4
  %29 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %29, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  %30 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  %31 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

declare dso_local void @psa_reset_key_attributes(%struct.psa_key_attributes_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %key, %struct.psa_key_slot_t** noundef %p_slot, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %key, i32* %key.addr, align 4
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store i32 %usage, i32* %usage.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %key.addr, align 4
  %1 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %call = call i32 @psa_get_and_lock_key_slot(i32 noundef %0, %struct.psa_key_slot_t** noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %4, align 8
  store %struct.psa_key_slot_t* %5, %struct.psa_key_slot_t** %slot, align 8
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %7 = load i16, i16* %type, align 8
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 28672
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %usage.addr, align 4
  %and4 = and i32 %8, -2
  store i32 %and4, i32* %usage.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr6, i32 0, i32 4
  %usage7 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 0
  %10 = load i32, i32* %usage7, align 4
  %11 = load i32, i32* %usage.addr, align 4
  %and8 = and i32 %10, %11
  %12 = load i32, i32* %usage.addr, align 4
  %cmp9 = icmp ne i32 %and8, %12
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  store i32 -133, i32* %status, align 4
  br label %error

if.end12:                                         ; preds = %if.end5
  %13 = load i32, i32* %alg.addr, align 4
  %cmp13 = icmp ne i32 %13, 0
  br i1 %cmp13, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end12
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr16 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %policy17 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr16, i32 0, i32 4
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr18 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %15, i32 0, i32 0
  %type19 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr18, i32 0, i32 0
  %16 = load i16, i16* %type19, align 8
  %17 = load i32, i32* %alg.addr, align 4
  %call20 = call i32 @psa_key_policy_permits(%struct.psa_key_policy_s* noundef %policy17, i16 noundef zeroext %16, i32 noundef %17) #6
  store i32 %call20, i32* %status, align 4
  %18 = load i32, i32* %status, align 4
  %cmp21 = icmp ne i32 %18, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then15
  br label %error

if.end24:                                         ; preds = %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

error:                                            ; preds = %if.then23, %if.then11
  %19 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %19, align 8
  %20 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call26 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %20) #6
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

return:                                           ; preds = %error, %if.end25, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_lifetime_is_external(i32 noundef %lifetime) #0 {
entry:
  %lifetime.addr = alloca i32, align 4
  store i32 %lifetime, i32* %lifetime.addr, align 4
  %0 = load i32, i32* %lifetime.addr, align 4
  %shr = lshr i32 %0, 8
  %cmp = icmp ne i32 %shr, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare dso_local i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext, i8* noundef, i64 noundef, %struct.mbedtls_rsa_context** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_rsa_public_exponent(%struct.mbedtls_rsa_context* noundef %rsa, %struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %rsa.addr = alloca %struct.mbedtls_rsa_context*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %mpi = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %buflen = alloca i64, align 8
  store %struct.mbedtls_rsa_context* %rsa, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 -110, i32* %ret, align 4
  store i8* null, i8** %buffer, align 8
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %mpi) #6
  %0 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa.addr, align 8
  %call = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %0, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %mpi) #6
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = call i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef %mpi, i64 noundef 65537) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef %mpi) #6
  store i64 %call5, i64* %buflen, align 8
  %2 = load i64, i64* %buflen, align 8
  %call6 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %2) #5
  store i8* %call6, i8** %buffer, align 8
  %3 = load i8*, i8** %buffer, align 8
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i32 -16, i32* %ret, align 4
  br label %exit

if.end9:                                          ; preds = %if.end4
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i64, i64* %buflen, align 8
  %call10 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %mpi, i8* noundef %4, i64 noundef %5) #6
  store i32 %call10, i32* %ret, align 4
  %6 = load i32, i32* %ret, align 4
  %cmp11 = icmp ne i32 %6, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  br label %exit

if.end13:                                         ; preds = %if.end9
  %7 = load i8*, i8** %buffer, align 8
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 1
  store i8* %7, i8** %domain_parameters, align 8
  %9 = load i64, i64* %buflen, align 8
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 2
  store i64 %9, i64* %domain_parameters_size, align 8
  br label %exit

exit:                                             ; preds = %if.end13, %if.then12, %if.then8, %if.then3, %if.then
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %mpi) #6
  %11 = load i32, i32* %ret, align 4
  %cmp14 = icmp ne i32 %11, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %exit
  %12 = load i8*, i8** %buffer, align 8
  call void @free(i8* noundef %12) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %exit
  %13 = load i32, i32* %ret, align 4
  %call17 = call i32 @mbedtls_to_psa_error(i32 noundef %13) #6
  ret i32 %call17
}

declare dso_local void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_export_key_internal(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %type = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type1, align 8
  store i16 %1, i16* %type, align 2
  %2 = load i16, i16* %type, align 2
  %call = call i32 @key_type_is_raw_bytes(i16 noundef zeroext %2) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %type, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, -12289
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i16, i16* %type, align 2
  %conv4 = zext i16 %4 to i32
  %and5 = and i32 %conv4, -12289
  %and6 = and i32 %and5, -256
  %cmp7 = icmp eq i32 %and6, 16640
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %data_size.addr, align 8
  %9 = load i64*, i64** %data_length.addr, align 8
  %call9 = call i32 @psa_export_key_buffer_internal(i8* noundef %5, i64 noundef %6, i8* noundef %7, i64 noundef %8, i64* noundef %9) #6
  store i32 %call9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false3
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_export_key_buffer_internal(i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load i64, i64* %key_buffer_size.addr, align 8
  %1 = load i64, i64* %data_size.addr, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i8*, i8** %key_buffer.addr, align 8
  %4 = load i64, i64* %key_buffer_size.addr, align 8
  %call = call i8* @memcpy(i8* noundef %2, i8* noundef %3, i64 noundef %4) #5
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i64, i64* %data_size.addr, align 8
  %8 = load i64, i64* %key_buffer_size.addr, align 8
  %sub = sub i64 %7, %8
  %call1 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 0, i64 noundef %sub) #5
  %9 = load i64, i64* %key_buffer_size.addr, align 8
  %10 = load i64*, i64** %data_length.addr, align 8
  store i64 %9, i64* %10, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_export_key(i32 noundef %key, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i64, i64* %data_size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** %data_length.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, %struct.psa_key_slot_t** noundef %slot, i32 noundef 1, i32 noundef 0) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %6 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %7 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key4 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 2
  %data5 = getelementptr inbounds %struct.key_data, %struct.key_data* %key4, i32 0, i32 0
  %9 = load i8*, i8** %data5, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key6, i32 0, i32 1
  %11 = load i64, i64* %bytes, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i64, i64* %data_size.addr, align 8
  %14 = load i64*, i64** %data_length.addr, align 8
  %call7 = call i32 @psa_driver_wrapper_export_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %9, i64 noundef %11, i8* noundef %12, i64 noundef %13, i64* noundef %14) #6
  store i32 %call7, i32* %status, align 4
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call8 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %15) #6
  store i32 %call8, i32* %unlock_status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %17 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  %18 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @psa_driver_wrapper_export_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_export_public_key_internal(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %type = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type1, align 8
  store i16 %1, i16* %type, align 2
  %2 = load i16, i16* %type, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, -12289
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %type, align 2
  %conv3 = zext i16 %3 to i32
  %and4 = and i32 %conv3, -12289
  %and5 = and i32 %and4, -256
  %cmp6 = icmp eq i32 %and5, 16640
  br i1 %cmp6, label %if.then, label %if.else20

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %type, align 2
  %conv8 = zext i16 %4 to i32
  %and9 = and i32 %conv8, 28672
  %cmp10 = icmp eq i32 %and9, 16384
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %5 = load i8*, i8** %key_buffer.addr, align 8
  %6 = load i64, i64* %key_buffer_size.addr, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load i64, i64* %data_size.addr, align 8
  %9 = load i64*, i64** %data_length.addr, align 8
  %call = call i32 @psa_export_key_buffer_internal(i8* noundef %5, i64 noundef %6, i8* noundef %7, i64 noundef %8, i64* noundef %9) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i16, i16* %type, align 2
  %conv13 = zext i16 %10 to i32
  %and14 = and i32 %conv13, -12289
  %cmp15 = icmp eq i32 %and14, 16385
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %12 = load i8*, i8** %key_buffer.addr, align 8
  %13 = load i64, i64* %key_buffer_size.addr, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i64, i64* %data_size.addr, align 8
  %16 = load i64*, i64** %data_length.addr, align 8
  %call18 = call i32 @mbedtls_psa_rsa_export_public_key(%struct.psa_key_attributes_s* noundef %11, i8* noundef %12, i64 noundef %13, i8* noundef %14, i64 noundef %15, i64* noundef %16) #6
  store i32 %call18, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %17 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %18 = load i8*, i8** %key_buffer.addr, align 8
  %19 = load i64, i64* %key_buffer_size.addr, align 8
  %20 = load i8*, i8** %data.addr, align 8
  %21 = load i64, i64* %data_size.addr, align 8
  %22 = load i64*, i64** %data_length.addr, align 8
  %call19 = call i32 @mbedtls_psa_ecp_export_public_key(%struct.psa_key_attributes_s* noundef %17, i8* noundef %18, i64 noundef %19, i8* noundef %20, i64 noundef %21, i64* noundef %22) #6
  store i32 %call19, i32* %retval, align 4
  br label %return

if.else20:                                        ; preds = %lor.lhs.false
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else20, %if.else, %if.then17, %if.then12
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @mbedtls_psa_rsa_export_public_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_psa_ecp_export_public_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_export_public_key(i32 noundef %key, i8* noundef %data, i64 noundef %data_size, i64* noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %data_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64* %data_length, i64** %data_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i64, i64* %data_size.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -138, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** %data_length.addr, align 8
  store i64 0, i64* %1, align 8
  %2 = load i32, i32* %key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, %struct.psa_key_slot_t** noundef %slot, i32 noundef 0, i32 noundef 0) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %6 = load i16, i16* %type, align 8
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 28672
  %and4 = and i32 %and, -12289
  %cmp5 = icmp eq i32 %and4, 16384
  br i1 %cmp5, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end3
  store i32 -135, i32* %status, align 4
  br label %exit

if.end8:                                          ; preds = %if.end3
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 0
  %8 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %9 = bitcast %struct.psa_core_key_attributes_t* %attr9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 2
  %data11 = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 0
  %11 = load i8*, i8** %data11, align 8
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key12, i32 0, i32 1
  %13 = load i64, i64* %bytes, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i64, i64* %data_size.addr, align 8
  %16 = load i64*, i64** %data_length.addr, align 8
  %call13 = call i32 @psa_driver_wrapper_export_public_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %11, i64 noundef %13, i8* noundef %14, i64 noundef %15, i64* noundef %16) #6
  store i32 %call13, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call14 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %17) #6
  store i32 %call14, i32* %unlock_status, align 4
  %18 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %exit
  %19 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %exit
  %20 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @psa_driver_wrapper_export_public_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %data, i64 noundef %data_length, i32* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %driver = alloca %struct.psa_se_drv_table_entry_s*, align 8
  %bits = alloca i64, align 8
  %storage_size = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  store %struct.psa_se_drv_table_entry_s* null, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %0 = load i64, i64* %data_length.addr, align 8
  store i64 %0, i64* %storage_size, align 8
  %1 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %data_length.addr, align 8
  %cmp1 = icmp ugt i64 %3, 2305843009213693951
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -134, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i32 @psa_start_key_creation(i32 noundef 0, %struct.psa_key_attributes_s* noundef %4, %struct.psa_key_slot_t** noundef %slot, %struct.psa_se_drv_table_entry_s** noundef %driver) #6
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %exit

if.end6:                                          ; preds = %if.end3
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 2
  %data8 = getelementptr inbounds %struct.key_data, %struct.key_data* %key7, i32 0, i32 0
  %7 = load i8*, i8** %data8, align 8
  %cmp9 = icmp eq i8* %7, null
  br i1 %cmp9, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end6
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %9 = load i32, i32* %lifetime, align 4
  %call11 = call i32 @psa_key_lifetime_is_external(i32 noundef %9) #6
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.then10
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i64, i64* %data_length.addr, align 8
  %call13 = call i32 @psa_driver_wrapper_get_key_buffer_size_from_key_data(%struct.psa_key_attributes_s* noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %storage_size) #6
  store i32 %call13, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then12
  br label %exit

if.end16:                                         ; preds = %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %15 = load i64, i64* %storage_size, align 8
  %call18 = call i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %14, i64 noundef %15) #6
  store i32 %call18, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %16, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br label %exit

if.end21:                                         ; preds = %if.end17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end6
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %17, i32 0, i32 0
  %bits23 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 1
  %18 = load i16, i16* %bits23, align 2
  %conv = zext i16 %18 to i64
  store i64 %conv, i64* %bits, align 8
  %19 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %20 = load i8*, i8** %data.addr, align 8
  %21 = load i64, i64* %data_length.addr, align 8
  %22 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key24 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %22, i32 0, i32 2
  %data25 = getelementptr inbounds %struct.key_data, %struct.key_data* %key24, i32 0, i32 0
  %23 = load i8*, i8** %data25, align 8
  %24 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key26 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %24, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key26, i32 0, i32 1
  %25 = load i64, i64* %bytes, align 8
  %26 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key27 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %26, i32 0, i32 2
  %bytes28 = getelementptr inbounds %struct.key_data, %struct.key_data* %key27, i32 0, i32 1
  %call29 = call i32 @psa_driver_wrapper_import_key(%struct.psa_key_attributes_s* noundef %19, i8* noundef %20, i64 noundef %21, i8* noundef %23, i64 noundef %25, i64* noundef %bytes28, i64* noundef %bits) #6
  store i32 %call29, i32* %status, align 4
  %27 = load i32, i32* %status, align 4
  %cmp30 = icmp ne i32 %27, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end22
  br label %exit

if.end33:                                         ; preds = %if.end22
  %28 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr34 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %28, i32 0, i32 0
  %bits35 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr34, i32 0, i32 1
  %29 = load i16, i16* %bits35, align 2
  %conv36 = zext i16 %29 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end33
  %30 = load i64, i64* %bits, align 8
  %conv40 = trunc i64 %30 to i16
  %31 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr41 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %31, i32 0, i32 0
  %bits42 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr41, i32 0, i32 1
  store i16 %conv40, i16* %bits42, align 2
  br label %if.end50

if.else:                                          ; preds = %if.end33
  %32 = load i64, i64* %bits, align 8
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr43 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %33, i32 0, i32 0
  %bits44 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr43, i32 0, i32 1
  %34 = load i16, i16* %bits44, align 2
  %conv45 = zext i16 %34 to i64
  %cmp46 = icmp ne i64 %32, %conv45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else
  store i32 -135, i32* %status, align 4
  br label %exit

if.end49:                                         ; preds = %if.else
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then39
  %35 = load i64, i64* %bits, align 8
  %cmp51 = icmp ugt i64 %35, 65528
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end50
  store i32 -134, i32* %status, align 4
  br label %exit

if.end54:                                         ; preds = %if.end50
  %36 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %37 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call55 = call i32 @psa_validate_optional_attributes(%struct.psa_key_slot_t* noundef %36, %struct.psa_key_attributes_s* noundef %37) #6
  store i32 %call55, i32* %status, align 4
  %38 = load i32, i32* %status, align 4
  %cmp56 = icmp ne i32 %38, 0
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  br label %exit

if.end59:                                         ; preds = %if.end54
  %39 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %40 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %41 = load i32*, i32** %key.addr, align 8
  %call60 = call i32 @psa_finish_key_creation(%struct.psa_key_slot_t* noundef %39, %struct.psa_se_drv_table_entry_s* noundef %40, i32* noundef %41) #6
  store i32 %call60, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end59, %if.then58, %if.then53, %if.then48, %if.then32, %if.then20, %if.then15, %if.then5
  %42 = load i32, i32* %status, align 4
  %cmp61 = icmp ne i32 %42, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %exit
  %43 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %44 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  call void @psa_fail_key_creation(%struct.psa_key_slot_t* noundef %43, %struct.psa_se_drv_table_entry_s* noundef %44) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %exit
  %45 = load i32, i32* %status, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then2, %if.then
  %46 = load i32, i32* %retval, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_start_key_creation(i32 noundef %method, %struct.psa_key_attributes_s* noundef %attributes, %struct.psa_key_slot_t** noundef %p_slot, %struct.psa_se_drv_table_entry_s** noundef %p_drv) #0 {
entry:
  %retval = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %p_drv.addr = alloca %struct.psa_se_drv_table_entry_s**, align 8
  %status = alloca i32, align 4
  %volatile_key_id = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store i32 %method, i32* %method.addr, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_se_drv_table_entry_s** %p_drv, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  %0 = load i32, i32* %method.addr, align 4
  %1 = load %struct.psa_se_drv_table_entry_s**, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  store %struct.psa_se_drv_table_entry_s* null, %struct.psa_se_drv_table_entry_s** %1, align 8
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %3 = load %struct.psa_se_drv_table_entry_s**, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  %call = call i32 @psa_validate_key_attributes(%struct.psa_key_attributes_s* noundef %2, %struct.psa_se_drv_table_entry_s** noundef %3) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %call1 = call i32 @psa_get_empty_key_slot(i32* noundef %volatile_key_id, %struct.psa_key_slot_t** noundef %6) #6
  store i32 %call1, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %9, align 8
  store %struct.psa_key_slot_t* %10, %struct.psa_key_slot_t** %slot, align 8
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %12 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %12, i32 0, i32 0
  %13 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  %14 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 28, i1 false)
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr5 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %15, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr5, i32 0, i32 2
  %16 = load i32, i32* %lifetime, align 4
  %and = and i32 %16, 255
  %conv = trunc i32 %and to i8
  %conv6 = zext i8 %conv to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %17 = load i32, i32* %volatile_key_id, align 4
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr10, i32 0, i32 3
  store i32 %17, i32* %id, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %19, i32 0, i32 0
  %flags = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr12, i32 0, i32 5
  %20 = load i16, i16* %flags, align 8
  %conv13 = zext i16 %20 to i32
  %and14 = and i32 %conv13, -2
  %conv15 = trunc i32 %and14 to i16
  store i16 %conv15, i16* %flags, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then3, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @psa_driver_wrapper_get_key_buffer_size_from_key_data(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @psa_driver_wrapper_import_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_validate_optional_attributes(%struct.psa_key_slot_t* noundef %slot, %struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %rsa = alloca %struct.mbedtls_rsa_context*, align 8
  %actual = alloca %struct.mbedtls_mpi, align 8
  %required = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %type3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 0
  %3 = load i16, i16* %type3, align 8
  %conv4 = zext i16 %3 to i32
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %type5 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %5 = load i16, i16* %type5, align 8
  %conv6 = zext i16 %5 to i32
  %cmp7 = icmp ne i32 %conv4, %conv6
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %6 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %6, i32 0, i32 2
  %7 = load i64, i64* %domain_parameters_size, align 8
  %cmp11 = icmp ne i64 %7, 0
  br i1 %cmp11, label %if.then13, label %if.end49

if.then13:                                        ; preds = %if.end10
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr14 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 0
  %type15 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr14, i32 0, i32 0
  %9 = load i16, i16* %type15, align 8
  %conv16 = zext i16 %9 to i32
  %and = and i32 %conv16, -12289
  %cmp17 = icmp eq i32 %and, 16385
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then13
  store %struct.mbedtls_rsa_context* null, %struct.mbedtls_rsa_context** %rsa, align 8
  store i32 -110, i32* %ret, align 4
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr20 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %type21 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr20, i32 0, i32 0
  %11 = load i16, i16* %type21, align 8
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key22 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key22, i32 0, i32 1
  %15 = load i64, i64* %bytes, align 8
  %call = call i32 @mbedtls_psa_rsa_load_representation(i16 noundef zeroext %11, i8* noundef %13, i64 noundef %15, %struct.mbedtls_rsa_context** noundef %rsa) #6
  store i32 %call, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp23 = icmp ne i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then19
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then19
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %actual) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %required) #6
  %18 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %call27 = call i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef %18, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef null, %struct.mbedtls_mpi* noundef %actual) #6
  store i32 %call27, i32* %ret, align 4
  %19 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  call void @mbedtls_rsa_free(%struct.mbedtls_rsa_context* noundef %19) #6
  %20 = load %struct.mbedtls_rsa_context*, %struct.mbedtls_rsa_context** %rsa, align 8
  %21 = bitcast %struct.mbedtls_rsa_context* %20 to i8*
  call void @free(i8* noundef %21) #5
  %22 = load i32, i32* %ret, align 4
  %cmp28 = icmp ne i32 %22, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  br label %rsa_exit

if.end31:                                         ; preds = %if.end26
  %23 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %23, i32 0, i32 1
  %24 = load i8*, i8** %domain_parameters, align 8
  %25 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size32 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %25, i32 0, i32 2
  %26 = load i64, i64* %domain_parameters_size32, align 8
  %call33 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %required, i8* noundef %24, i64 noundef %26) #6
  store i32 %call33, i32* %ret, align 4
  %27 = load i32, i32* %ret, align 4
  %cmp34 = icmp ne i32 %27, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  br label %rsa_exit

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef %actual, %struct.mbedtls_mpi* noundef %required) #6
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 -16512, i32* %ret, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37
  br label %rsa_exit

rsa_exit:                                         ; preds = %if.end42, %if.then36, %if.then30
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %actual) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %required) #6
  %28 = load i32, i32* %ret, align 4
  %cmp43 = icmp ne i32 %28, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %rsa_exit
  %29 = load i32, i32* %ret, align 4
  %call46 = call i32 @mbedtls_to_psa_error(i32 noundef %29) #6
  store i32 %call46, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %rsa_exit
  br label %if.end48

if.else:                                          ; preds = %if.then13
  store i32 -135, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end10
  %30 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core50 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %30, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core50, i32 0, i32 1
  %31 = load i16, i16* %bits, align 2
  %conv51 = zext i16 %31 to i32
  %cmp52 = icmp ne i32 %conv51, 0
  br i1 %cmp52, label %if.then54, label %if.end65

if.then54:                                        ; preds = %if.end49
  %32 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core55 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %32, i32 0, i32 0
  %bits56 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core55, i32 0, i32 1
  %33 = load i16, i16* %bits56, align 2
  %conv57 = zext i16 %33 to i32
  %34 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr58 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %34, i32 0, i32 0
  %bits59 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr58, i32 0, i32 1
  %35 = load i16, i16* %bits59, align 2
  %conv60 = zext i16 %35 to i32
  %cmp61 = icmp ne i32 %conv57, %conv60
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then54
  store i32 -135, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.then54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end49
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then63, %if.else, %if.then45, %if.then25, %if.then9
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_finish_key_creation(%struct.psa_key_slot_t* noundef %slot, %struct.psa_se_drv_table_entry_s* noundef %driver, i32* noundef %key) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %driver.addr = alloca %struct.psa_se_drv_table_entry_s*, align 8
  %key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store %struct.psa_se_drv_table_entry_s* %driver, %struct.psa_se_drv_table_entry_s** %driver.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %1 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver.addr, align 8
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %3 = load i32, i32* %lifetime, align 4
  %and = and i32 %3, 255
  %conv = trunc i32 %and to i8
  %conv1 = zext i8 %conv to i32
  %cmp = icmp eq i32 %conv1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key4 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key4, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key5 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key5, i32 0, i32 1
  %8 = load i64, i64* %bytes, align 8
  %call = call i32 @psa_save_persistent_key(%struct.psa_core_key_attributes_t* noundef %attr3, i8* noundef %6, i64 noundef %8) #6
  store i32 %call, i32* %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %status, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr9, i32 0, i32 3
  %11 = load i32, i32* %id, align 8
  %12 = load i32*, i32** %key.addr, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %call10 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %13) #6
  store i32 %call10, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp11 = icmp ne i32 %14, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then8
  %15 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %15, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %16 = load i32, i32* %status, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_fail_key_creation(%struct.psa_key_slot_t* noundef %slot, %struct.psa_se_drv_table_entry_s* noundef %driver) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %driver.addr = alloca %struct.psa_se_drv_table_entry_s*, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store %struct.psa_se_drv_table_entry_s* %driver, %struct.psa_se_drv_table_entry_s** %driver.addr, align 8
  %0 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver.addr, align 8
  %1 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %cmp = icmp eq %struct.psa_key_slot_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %call = call i32 @psa_wipe_key_slot(%struct.psa_key_slot_t* noundef %2) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_copy_key(i32 noundef %source_key, %struct.psa_key_attributes_s* noundef %specified_attributes, i32* noundef %target_key) #0 {
entry:
  %source_key.addr = alloca i32, align 4
  %specified_attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %target_key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %source_slot = alloca %struct.psa_key_slot_t*, align 8
  %target_slot = alloca %struct.psa_key_slot_t*, align 8
  %actual_attributes = alloca %struct.psa_key_attributes_s, align 8
  %driver = alloca %struct.psa_se_drv_table_entry_s*, align 8
  %storage_size = alloca i64, align 8
  store i32 %source_key, i32* %source_key.addr, align 4
  store %struct.psa_key_attributes_s* %specified_attributes, %struct.psa_key_attributes_s** %specified_attributes.addr, align 8
  store i32* %target_key, i32** %target_key.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %source_slot, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %target_slot, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %specified_attributes.addr, align 8
  %1 = bitcast %struct.psa_key_attributes_s* %actual_attributes to i8*
  %2 = bitcast %struct.psa_key_attributes_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  store %struct.psa_se_drv_table_entry_s* null, %struct.psa_se_drv_table_entry_s** %driver, align 8
  store i64 0, i64* %storage_size, align 8
  %3 = load i32*, i32** %target_key.addr, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %source_key.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %4, %struct.psa_key_slot_t** noundef %source_slot, i32 noundef 2, i32 noundef 0) #6
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %7 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %specified_attributes.addr, align 8
  %call1 = call i32 @psa_validate_optional_attributes(%struct.psa_key_slot_t* noundef %6, %struct.psa_key_attributes_s* noundef %7) #6
  store i32 %call1, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 1
  %10 = load i16, i16* %bits, align 2
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %actual_attributes, i32 0, i32 0
  %bits5 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  store i16 %10, i16* %bits5, align 2
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %attr6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr6, i32 0, i32 0
  %12 = load i16, i16* %type, align 8
  %core7 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %actual_attributes, i32 0, i32 0
  %type8 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core7, i32 0, i32 0
  store i16 %12, i16* %type8, align 8
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %attr9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %13, i32 0, i32 0
  %type10 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr9, i32 0, i32 0
  %14 = load i16, i16* %type10, align 8
  %core11 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %actual_attributes, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core11, i32 0, i32 4
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %attr12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %15, i32 0, i32 0
  %policy13 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr12, i32 0, i32 4
  %call14 = call i32 @psa_restrict_key_policy(i16 noundef zeroext %14, %struct.psa_key_policy_s* noundef %policy, %struct.psa_key_policy_s* noundef %policy13) #6
  store i32 %call14, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %16, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end4
  br label %exit

if.end17:                                         ; preds = %if.end4
  %call18 = call i32 @psa_start_key_creation(i32 noundef 3, %struct.psa_key_attributes_s* noundef %actual_attributes, %struct.psa_key_slot_t** noundef %target_slot, %struct.psa_se_drv_table_entry_s** noundef %driver) #6
  store i32 %call18, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp19 = icmp ne i32 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br label %exit

if.end21:                                         ; preds = %if.end17
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %attr22 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr22, i32 0, i32 2
  %19 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %19, 8
  %20 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %attr23 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %20, i32 0, i32 0
  %lifetime24 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr23, i32 0, i32 2
  %21 = load i32, i32* %lifetime24, align 4
  %shr25 = lshr i32 %21, 8
  %cmp26 = icmp ne i32 %shr, %shr25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  store i32 -134, i32* %status, align 4
  br label %exit

if.end28:                                         ; preds = %if.end21
  %core29 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %actual_attributes, i32 0, i32 0
  %lifetime30 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core29, i32 0, i32 2
  %22 = load i32, i32* %lifetime30, align 4
  %call31 = call i32 @psa_key_lifetime_is_external(i32 noundef %22) #6
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  %call33 = call i32 @psa_driver_wrapper_get_key_buffer_size(%struct.psa_key_attributes_s* noundef %actual_attributes, i64* noundef %storage_size) #6
  store i32 %call33, i32* %status, align 4
  %23 = load i32, i32* %status, align 4
  %cmp34 = icmp ne i32 %23, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  br label %exit

if.end36:                                         ; preds = %if.then32
  %24 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %25 = load i64, i64* %storage_size, align 8
  %call37 = call i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %24, i64 noundef %25) #6
  store i32 %call37, i32* %status, align 4
  %26 = load i32, i32* %status, align 4
  %cmp38 = icmp ne i32 %26, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  br label %exit

if.end40:                                         ; preds = %if.end36
  %27 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %27, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %28 = load i8*, i8** %data, align 8
  %29 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %key41 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %29, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key41, i32 0, i32 1
  %30 = load i64, i64* %bytes, align 8
  %31 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %key42 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %31, i32 0, i32 2
  %data43 = getelementptr inbounds %struct.key_data, %struct.key_data* %key42, i32 0, i32 0
  %32 = load i8*, i8** %data43, align 8
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %key44 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %33, i32 0, i32 2
  %bytes45 = getelementptr inbounds %struct.key_data, %struct.key_data* %key44, i32 0, i32 1
  %34 = load i64, i64* %bytes45, align 8
  %35 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %key46 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %35, i32 0, i32 2
  %bytes47 = getelementptr inbounds %struct.key_data, %struct.key_data* %key46, i32 0, i32 1
  %call48 = call i32 @psa_driver_wrapper_copy_key(%struct.psa_key_attributes_s* noundef %actual_attributes, i8* noundef %28, i64 noundef %30, i8* noundef %32, i64 noundef %34, i64* noundef %bytes47) #6
  store i32 %call48, i32* %status, align 4
  %36 = load i32, i32* %status, align 4
  %cmp49 = icmp ne i32 %36, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end40
  br label %exit

if.end51:                                         ; preds = %if.end40
  br label %if.end60

if.else:                                          ; preds = %if.end28
  %37 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %38 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %key52 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %38, i32 0, i32 2
  %data53 = getelementptr inbounds %struct.key_data, %struct.key_data* %key52, i32 0, i32 0
  %39 = load i8*, i8** %data53, align 8
  %40 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %key54 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %40, i32 0, i32 2
  %bytes55 = getelementptr inbounds %struct.key_data, %struct.key_data* %key54, i32 0, i32 1
  %41 = load i64, i64* %bytes55, align 8
  %call56 = call i32 @psa_copy_key_material_into_slot(%struct.psa_key_slot_t* noundef %37, i8* noundef %39, i64 noundef %41) #6
  store i32 %call56, i32* %status, align 4
  %42 = load i32, i32* %status, align 4
  %cmp57 = icmp ne i32 %42, 0
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else
  br label %exit

if.end59:                                         ; preds = %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end51
  %43 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %44 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %45 = load i32*, i32** %target_key.addr, align 8
  %call61 = call i32 @psa_finish_key_creation(%struct.psa_key_slot_t* noundef %43, %struct.psa_se_drv_table_entry_s* noundef %44, i32* noundef %45) #6
  store i32 %call61, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end60, %if.then58, %if.then50, %if.then39, %if.then35, %if.then27, %if.then20, %if.then16, %if.then3, %if.then
  %46 = load i32, i32* %status, align 4
  %cmp62 = icmp ne i32 %46, 0
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %exit
  %47 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %target_slot, align 8
  %48 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  call void @psa_fail_key_creation(%struct.psa_key_slot_t* noundef %47, %struct.psa_se_drv_table_entry_s* noundef %48) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %exit
  %49 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %source_slot, align 8
  %call65 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %49) #6
  store i32 %call65, i32* %unlock_status, align 4
  %50 = load i32, i32* %status, align 4
  %cmp66 = icmp eq i32 %50, 0
  br i1 %cmp66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %51 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %52 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %51, %cond.true ], [ %52, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_restrict_key_policy(i16 noundef zeroext %key_type, %struct.psa_key_policy_s* noundef %policy, %struct.psa_key_policy_s* noundef %constraint) #0 {
entry:
  %retval = alloca i32, align 4
  %key_type.addr = alloca i16, align 2
  %policy.addr = alloca %struct.psa_key_policy_s*, align 8
  %constraint.addr = alloca %struct.psa_key_policy_s*, align 8
  %intersection_alg = alloca i32, align 4
  %intersection_alg2 = alloca i32, align 4
  store i16 %key_type, i16* %key_type.addr, align 2
  store %struct.psa_key_policy_s* %policy, %struct.psa_key_policy_s** %policy.addr, align 8
  store %struct.psa_key_policy_s* %constraint, %struct.psa_key_policy_s** %constraint.addr, align 8
  %0 = load i16, i16* %key_type.addr, align 2
  %1 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %1, i32 0, i32 1
  %2 = load i32, i32* %alg, align 4
  %3 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %constraint.addr, align 8
  %alg1 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %3, i32 0, i32 1
  %4 = load i32, i32* %alg1, align 4
  %call = call i32 @psa_key_policy_algorithm_intersection(i16 noundef zeroext %0, i32 noundef %2, i32 noundef %4) #6
  store i32 %call, i32* %intersection_alg, align 4
  %5 = load i16, i16* %key_type.addr, align 2
  %6 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg2 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %6, i32 0, i32 2
  %7 = load i32, i32* %alg2, align 4
  %8 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %constraint.addr, align 8
  %alg22 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %8, i32 0, i32 2
  %9 = load i32, i32* %alg22, align 4
  %call3 = call i32 @psa_key_policy_algorithm_intersection(i16 noundef zeroext %5, i32 noundef %7, i32 noundef %9) #6
  store i32 %call3, i32* %intersection_alg2, align 4
  %10 = load i32, i32* %intersection_alg, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg4 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %11, i32 0, i32 1
  %12 = load i32, i32* %alg4, align 4
  %cmp5 = icmp ne i32 %12, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %constraint.addr, align 8
  %alg7 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %13, i32 0, i32 1
  %14 = load i32, i32* %alg7, align 4
  %cmp8 = icmp ne i32 %14, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true6, %land.lhs.true, %entry
  %15 = load i32, i32* %intersection_alg2, align 4
  %cmp9 = icmp eq i32 %15, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end17

land.lhs.true10:                                  ; preds = %if.end
  %16 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg211 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %16, i32 0, i32 2
  %17 = load i32, i32* %alg211, align 4
  %cmp12 = icmp ne i32 %17, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end17

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %18 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %constraint.addr, align 8
  %alg214 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %18, i32 0, i32 2
  %19 = load i32, i32* %alg214, align 4
  %cmp15 = icmp ne i32 %19, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true13
  store i32 -135, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true13, %land.lhs.true10, %if.end
  %20 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %constraint.addr, align 8
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %20, i32 0, i32 0
  %21 = load i32, i32* %usage, align 4
  %22 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %usage18 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %22, i32 0, i32 0
  %23 = load i32, i32* %usage18, align 4
  %and = and i32 %23, %21
  store i32 %and, i32* %usage18, align 4
  %24 = load i32, i32* %intersection_alg, align 4
  %25 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg19 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %25, i32 0, i32 1
  store i32 %24, i32* %alg19, align 4
  %26 = load i32, i32* %intersection_alg2, align 4
  %27 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg220 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %27, i32 0, i32 2
  store i32 %26, i32* %alg220, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @psa_driver_wrapper_get_key_buffer_size(%struct.psa_key_attributes_s* noundef, i64* noundef) #2

declare dso_local i32 @psa_driver_wrapper_copy_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %call = call i32 @psa_driver_wrapper_hash_abort(%struct.psa_hash_operation_s* noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id1 = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %3, i32 0, i32 0
  store i32 0, i32* %id1, align 8
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @psa_driver_wrapper_hash_abort(%struct.psa_hash_operation_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_setup(%struct.psa_hash_operation_s* noundef %operation, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and = and i32 %2, 2130706432
  %cmp1 = icmp eq i32 %and, 33554432
  br i1 %cmp1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 -135, i32* %status, align 4
  br label %exit

if.end3:                                          ; preds = %if.end
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %3, i32 0, i32 1
  %4 = bitcast %union.psa_driver_hash_context_t* %ctx to i8*
  %call = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 224) #5
  %5 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %call4 = call i32 @psa_driver_wrapper_hash_setup(%struct.psa_hash_operation_s* noundef %5, i32 noundef %6) #6
  store i32 %call4, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %exit
  %8 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %call7 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %8) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %exit
  %9 = load i32, i32* %status, align 4
  ret i32 %9
}

declare dso_local i32 @psa_driver_wrapper_hash_setup(%struct.psa_hash_operation_s* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_update(%struct.psa_hash_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %input_length.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_hash_update(%struct.psa_hash_operation_s* noundef %3, i8* noundef %4, i64 noundef %5) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end3, %if.then
  %6 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %exit
  %7 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %call6 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %7) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %exit
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then2
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_driver_wrapper_hash_update(%struct.psa_hash_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_finish(%struct.psa_hash_operation_s* noundef %operation, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  %0 = load i64*, i64** %hash_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %4 = load i8*, i8** %hash.addr, align 8
  %5 = load i64, i64* %hash_size.addr, align 8
  %6 = load i64*, i64** %hash_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_hash_finish(%struct.psa_hash_operation_s* noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6) #6
  store i32 %call, i32* %status, align 4
  %7 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %call1 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %7) #6
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_driver_wrapper_hash_finish(%struct.psa_hash_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_verify(%struct.psa_hash_operation_s* noundef %operation, i8* noundef %hash, i64 noundef %hash_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %actual_hash = alloca [64 x i8], align 16
  %actual_hash_length = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %operation, %struct.psa_hash_operation_s** %operation.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  %call = call i32 @psa_hash_finish(%struct.psa_hash_operation_s* noundef %0, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %actual_hash_length) #6
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %actual_hash_length, align 8
  %3 = load i64, i64* %hash_length.addr, align 8
  %cmp1 = icmp ne i64 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -149, i32* %status, align 4
  br label %exit

if.end3:                                          ; preds = %if.end
  %4 = load i8*, i8** %hash.addr, align 8
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  %5 = load i64, i64* %actual_hash_length, align 8
  %call5 = call i32 @mbedtls_psa_safer_memcmp(i8* noundef %4, i8* noundef %arraydecay4, i64 noundef %5) #6
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  store i32 -149, i32* %status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  br label %exit

exit:                                             ; preds = %if.end8, %if.then2, %if.then
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay9, i64 noundef 64) #6
  %6 = load i32, i32* %status, align 4
  %cmp10 = icmp ne i32 %6, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %exit
  %7 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %operation.addr, align 8
  %call12 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %7) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %exit
  %8 = load i32, i32* %status, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_psa_safer_memcmp(i8* noundef %a, i8* noundef %b, i64 noundef %n) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %diff = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8 0, i8* %diff, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %a.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i8*, i8** %b.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %7 to i32
  %xor = xor i32 %conv, %conv2
  %8 = load i8, i8* %diff, align 1
  %conv3 = zext i8 %8 to i32
  %or = or i32 %conv3, %xor
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %diff, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i8, i8* %diff, align 1
  %conv5 = zext i8 %10 to i32
  ret i32 %conv5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_compute(i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %hash, i64 noundef %hash_size, i64* noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %hash.addr = alloca i8*, align 8
  %hash_size.addr = alloca i64, align 8
  %hash_length.addr = alloca i64*, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_size, i64* %hash_size.addr, align 8
  store i64* %hash_length, i64** %hash_length.addr, align 8
  %0 = load i64*, i64** %hash_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i32, i32* %alg.addr, align 4
  %and = and i32 %1, 2130706432
  %cmp = icmp eq i32 %and, 33554432
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %3 = load i8*, i8** %input.addr, align 8
  %4 = load i64, i64* %input_length.addr, align 8
  %5 = load i8*, i8** %hash.addr, align 8
  %6 = load i64, i64* %hash_size.addr, align 8
  %7 = load i64*, i64** %hash_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_hash_compute(i32 noundef %2, i8* noundef %3, i64 noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #6
  store i32 %call, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare dso_local i32 @psa_driver_wrapper_hash_compute(i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_compare(i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %hash, i64 noundef %hash_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %actual_hash = alloca [64 x i8], align 16
  %actual_hash_length = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 33554432
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  %call = call i32 @psa_driver_wrapper_hash_compute(i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %actual_hash_length) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %5 = load i64, i64* %actual_hash_length, align 8
  %6 = load i64, i64* %hash_length.addr, align 8
  %cmp4 = icmp ne i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 -149, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %if.end3
  %7 = load i8*, i8** %hash.addr, align 8
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  %8 = load i64, i64* %actual_hash_length, align 8
  %call8 = call i32 @mbedtls_psa_safer_memcmp(i8* noundef %7, i8* noundef %arraydecay7, i64 noundef %8) #6
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 -149, i32* %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6
  br label %exit

exit:                                             ; preds = %if.end11, %if.then5, %if.then2
  %arraydecay12 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_hash, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay12, i64 noundef 64) #6
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_hash_clone(%struct.psa_hash_operation_s* noundef %source_operation, %struct.psa_hash_operation_s* noundef %target_operation) #0 {
entry:
  %retval = alloca i32, align 4
  %source_operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %target_operation.addr = alloca %struct.psa_hash_operation_s*, align 8
  %status = alloca i32, align 4
  store %struct.psa_hash_operation_s* %source_operation, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  store %struct.psa_hash_operation_s* %target_operation, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %0 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %id1 = getelementptr inbounds %struct.psa_hash_operation_s, %struct.psa_hash_operation_s* %2, i32 0, i32 0
  %3 = load i32, i32* %id1, align 8
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %source_operation.addr, align 8
  %5 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %call = call i32 @psa_driver_wrapper_hash_clone(%struct.psa_hash_operation_s* noundef %4, %struct.psa_hash_operation_s* noundef %5) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load %struct.psa_hash_operation_s*, %struct.psa_hash_operation_s** %target_operation.addr, align 8
  %call5 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %7) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_driver_wrapper_hash_clone(%struct.psa_hash_operation_s* noundef, %struct.psa_hash_operation_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %status = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %call = call i32 @psa_driver_wrapper_mac_abort(%struct.psa_mac_operation_s* noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %3, i32 0, i32 1
  store i8 0, i8* %mac_size, align 4
  %4 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %is_sign = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %4, i32 0, i32 2
  %bf.load = load i8, i8* %is_sign, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* %is_sign, align 1
  %5 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id1 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %5, i32 0, i32 0
  store i32 0, i32* %id1, align 8
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @psa_driver_wrapper_mac_abort(%struct.psa_mac_operation_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_sign_setup(%struct.psa_mac_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_mac_setup(%struct.psa_mac_operation_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_setup(%struct.psa_mac_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg, i32 noundef %is_sign) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %is_sign.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i32 %is_sign, i32* %is_sign.addr, align 4
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %key.addr, align 4
  %3 = load i32, i32* %is_sign.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1024, i32 2048
  %5 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %2, %struct.psa_key_slot_t** noundef %slot, i32 noundef %cond, i32 noundef %5) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 0
  %8 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %9 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %10 = load i32, i32* %alg.addr, align 4
  %11 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %11, i32 0, i32 1
  %call4 = call i32 @psa_mac_finalize_alg_and_key_validation(i32 noundef %10, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %mac_size) #6
  store i32 %call4, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %12, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %exit

if.end7:                                          ; preds = %if.end3
  %13 = load i32, i32* %is_sign.addr, align 4
  %14 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %is_sign8 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %14, i32 0, i32 2
  %15 = trunc i32 %13 to i8
  %bf.load = load i8, i8* %is_sign8, align 1
  %bf.value = and i8 %15, 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, i8* %is_sign8, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  %16 = load i32, i32* %is_sign.addr, align 4
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %17 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key11 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key11, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %20, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key12, i32 0, i32 1
  %21 = load i64, i64* %bytes, align 8
  %22 = load i32, i32* %alg.addr, align 4
  %call13 = call i32 @psa_driver_wrapper_mac_sign_setup(%struct.psa_mac_operation_s* noundef %17, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %19, i64 noundef %21, i32 noundef %22) #6
  store i32 %call13, i32* %status, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end7
  %23 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %24 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key14 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %24, i32 0, i32 2
  %data15 = getelementptr inbounds %struct.key_data, %struct.key_data* %key14, i32 0, i32 0
  %25 = load i8*, i8** %data15, align 8
  %26 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key16 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %26, i32 0, i32 2
  %bytes17 = getelementptr inbounds %struct.key_data, %struct.key_data* %key16, i32 0, i32 1
  %27 = load i64, i64* %bytes17, align 8
  %28 = load i32, i32* %alg.addr, align 4
  %call18 = call i32 @psa_driver_wrapper_mac_verify_setup(%struct.psa_mac_operation_s* noundef %23, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %25, i64 noundef %27, i32 noundef %28) #6
  store i32 %call18, i32* %status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  br label %exit

exit:                                             ; preds = %if.end19, %if.then6, %if.then2, %if.then
  %29 = load i32, i32* %status, align 4
  %cmp20 = icmp ne i32 %29, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %exit
  %30 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %call22 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %30) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %exit
  %31 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call24 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %31) #6
  store i32 %call24, i32* %unlock_status, align 4
  %32 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %32, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end23
  %33 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  %34 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  ret i32 %cond26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_verify_setup(%struct.psa_mac_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_mac_setup(%struct.psa_mac_operation_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %input_length.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %4 = load i8*, i8** %input.addr, align 8
  %5 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_mac_update(%struct.psa_mac_operation_s* noundef %3, i8* noundef %4, i64 noundef %5) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %7 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %call6 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %7) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

declare dso_local i32 @psa_driver_wrapper_mac_update(%struct.psa_mac_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %abort_status = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %abort_status, align 4
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %is_sign = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 2
  %bf.load = load i8, i8* %is_sign, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size3 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %3, i32 0, i32 1
  %4 = load i8, i8* %mac_size3, align 4
  %conv = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  store i32 -137, i32* %status, align 4
  br label %exit

if.end7:                                          ; preds = %if.end2
  %5 = load i64, i64* %mac_size.addr, align 8
  %6 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size8 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %6, i32 0, i32 1
  %7 = load i8, i8* %mac_size8, align 4
  %conv9 = zext i8 %7 to i64
  %cmp10 = icmp ult i64 %5, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 -138, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %if.end7
  %8 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %9 = load i8*, i8** %mac.addr, align 8
  %10 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size14 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %10, i32 0, i32 1
  %11 = load i8, i8* %mac_size14, align 4
  %conv15 = zext i8 %11 to i64
  %12 = load i64*, i64** %mac_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_mac_sign_finish(%struct.psa_mac_operation_s* noundef %8, i8* noundef %9, i64 noundef %conv15, i64* noundef %12) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end13, %if.then12, %if.then6, %if.then1, %if.then
  %13 = load i32, i32* %status, align 4
  %cmp16 = icmp ne i32 %13, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %exit
  %14 = load i64, i64* %mac_size.addr, align 8
  %15 = load i64*, i64** %mac_length.addr, align 8
  store i64 %14, i64* %15, align 8
  %16 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size19 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %16, i32 0, i32 1
  store i8 0, i8* %mac_size19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %exit
  %17 = load i64, i64* %mac_size.addr, align 8
  %18 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size21 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %18, i32 0, i32 1
  %19 = load i8, i8* %mac_size21, align 4
  %conv22 = zext i8 %19 to i64
  %cmp23 = icmp ugt i64 %17, %conv22
  br i1 %cmp23, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end20
  %20 = load i8*, i8** %mac.addr, align 8
  %21 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size26 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %21, i32 0, i32 1
  %22 = load i8, i8* %mac_size26, align 4
  %idxprom = zext i8 %22 to i64
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %23 = load i64, i64* %mac_size.addr, align 8
  %24 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size27 = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %24, i32 0, i32 1
  %25 = load i8, i8* %mac_size27, align 4
  %conv28 = zext i8 %25 to i64
  %sub = sub i64 %23, %conv28
  %call29 = call i8* @memset(i8* noundef %arrayidx, i32 noundef 33, i64 noundef %sub) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end20
  %26 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %call31 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %26) #6
  store i32 %call31, i32* %abort_status, align 4
  %27 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %27, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end30
  %28 = load i32, i32* %abort_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end30
  %29 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  ret i32 %cond
}

declare dso_local i32 @psa_driver_wrapper_mac_sign_finish(%struct.psa_mac_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_verify_finish(%struct.psa_mac_operation_s* noundef %operation, i8* noundef %mac, i64 noundef %mac_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %mac.addr = alloca i8*, align 8
  %mac_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %abort_status = alloca i32, align 4
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_length, i64* %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %abort_status, align 4
  %0 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %is_sign = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 2
  %bf.load = load i8, i8* %is_sign, align 1
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %3 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %3, i32 0, i32 1
  %4 = load i8, i8* %mac_size, align 4
  %conv = zext i8 %4 to i64
  %5 = load i64, i64* %mac_length.addr, align 8
  %cmp3 = icmp ne i64 %conv, %5
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  store i32 -149, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %if.end2
  %6 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %7 = load i8*, i8** %mac.addr, align 8
  %8 = load i64, i64* %mac_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_mac_verify_finish(%struct.psa_mac_operation_s* noundef %6, i8* noundef %7, i64 noundef %8) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end6, %if.then5, %if.then1, %if.then
  %9 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %call7 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %9) #6
  store i32 %call7, i32* %abort_status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %exit
  %11 = load i32, i32* %abort_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %exit
  %12 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  ret i32 %cond
}

declare dso_local i32 @psa_driver_wrapper_mac_verify_finish(%struct.psa_mac_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_compute(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %4 = load i8*, i8** %mac.addr, align 8
  %5 = load i64, i64* %mac_size.addr, align 8
  %6 = load i64*, i64** %mac_length.addr, align 8
  %call = call i32 @psa_mac_compute_internal(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_compute_internal(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %mac, i64 noundef %mac_size, i64* noundef %mac_length, i32 noundef %is_sign) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %mac.addr = alloca i8*, align 8
  %mac_size.addr = alloca i64, align 8
  %mac_length.addr = alloca i64*, align 8
  %is_sign.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %operation_mac_size = alloca i8, align 1
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_size, i64* %mac_size.addr, align 8
  store i64* %mac_length, i64** %mac_length.addr, align 8
  store i32 %is_sign, i32* %is_sign.addr, align 4
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store i8 0, i8* %operation_mac_size, align 1
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %is_sign.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1024, i32 2048
  %3 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %0, %struct.psa_key_slot_t** noundef %slot, i32 noundef %cond, i32 noundef %3) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %6 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %7 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_mac_finalize_alg_and_key_validation(i32 noundef %8, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %operation_mac_size) #6
  store i32 %call1, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit

if.end4:                                          ; preds = %if.end
  %10 = load i64, i64* %mac_size.addr, align 8
  %11 = load i8, i8* %operation_mac_size, align 1
  %conv = zext i8 %11 to i64
  %cmp5 = icmp ult i64 %10, %conv
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 -138, i32* %status, align 4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key9, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 1
  %15 = load i64, i64* %bytes, align 8
  %16 = load i32, i32* %alg.addr, align 4
  %17 = load i8*, i8** %input.addr, align 8
  %18 = load i64, i64* %input_length.addr, align 8
  %19 = load i8*, i8** %mac.addr, align 8
  %20 = load i8, i8* %operation_mac_size, align 1
  %conv11 = zext i8 %20 to i64
  %21 = load i64*, i64** %mac_length.addr, align 8
  %call12 = call i32 @psa_driver_wrapper_mac_compute(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %13, i64 noundef %15, i32 noundef %16, i8* noundef %17, i64 noundef %18, i8* noundef %19, i64 noundef %conv11, i64* noundef %21) #6
  store i32 %call12, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %22 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %22, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %exit
  %23 = load i64, i64* %mac_size.addr, align 8
  %24 = load i64*, i64** %mac_length.addr, align 8
  store i64 %23, i64* %24, align 8
  store i8 0, i8* %operation_mac_size, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %exit
  %25 = load i64, i64* %mac_size.addr, align 8
  %26 = load i8, i8* %operation_mac_size, align 1
  %conv17 = zext i8 %26 to i64
  %cmp18 = icmp ugt i64 %25, %conv17
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  %27 = load i8*, i8** %mac.addr, align 8
  %28 = load i8, i8* %operation_mac_size, align 1
  %idxprom = zext i8 %28 to i64
  %arrayidx = getelementptr inbounds i8, i8* %27, i64 %idxprom
  %29 = load i64, i64* %mac_size.addr, align 8
  %30 = load i8, i8* %operation_mac_size, align 1
  %conv21 = zext i8 %30 to i64
  %sub = sub i64 %29, %conv21
  %call22 = call i8* @memset(i8* noundef %arrayidx, i32 noundef 33, i64 noundef %sub) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16
  %31 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call24 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %31) #6
  store i32 %call24, i32* %unlock_status, align 4
  %32 = load i32, i32* %status, align 4
  %cmp25 = icmp eq i32 %32, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end23
  %33 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  %34 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond27 = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  ret i32 %cond27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_mac_verify(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %mac, i64 noundef %mac_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %mac.addr = alloca i8*, align 8
  %mac_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %actual_mac = alloca [64 x i8], align 16
  %actual_mac_length = alloca i64, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %mac, i8** %mac.addr, align 8
  store i64 %mac_length, i64* %mac_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  %call = call i32 @psa_mac_compute_internal(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %actual_mac_length, i32 noundef 0) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %mac_length.addr, align 8
  %6 = load i64, i64* %actual_mac_length, align 8
  %cmp1 = icmp ne i64 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -149, i32* %status, align 4
  br label %exit

if.end3:                                          ; preds = %if.end
  %7 = load i8*, i8** %mac.addr, align 8
  %arraydecay4 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  %8 = load i64, i64* %actual_mac_length, align 8
  %call5 = call i32 @mbedtls_psa_safer_memcmp(i8* noundef %7, i8* noundef %arraydecay4, i64 noundef %8) #6
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  store i32 -149, i32* %status, align 4
  br label %exit

if.end8:                                          ; preds = %if.end3
  br label %exit

exit:                                             ; preds = %if.end8, %if.then7, %if.then2, %if.then
  %arraydecay9 = getelementptr inbounds [64 x i8], [64 x i8]* %actual_mac, i64 0, i64 0
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay9, i64 noundef 64) #6
  %9 = load i32, i32* %status, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_sign_message_builtin(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %hash_length = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 100664064
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -256
  %cmp2 = icmp eq i32 %and1, 100668160
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %2, -256
  %cmp5 = icmp eq i32 %and4, 100663808
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %3, -256
  %and8 = and i32 %and7, -257
  %cmp9 = icmp eq i32 %and8, 100664832
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %4 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %4, -256
  %cmp12 = icmp eq i32 %and11, 100665600
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %5 = load i32, i32* %alg.addr, align 4
  %and14 = and i32 %5, -256
  %and15 = and i32 %and14, -257
  %cmp16 = icmp eq i32 %and15, 100664320
  br i1 %cmp16, label %if.then, label %if.end43

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %6, -256
  %cmp18 = icmp eq i32 %and17, 100664064
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then
  %7 = load i32, i32* %alg.addr, align 4
  %and20 = and i32 %7, -256
  %cmp21 = icmp eq i32 %and20, 100668160
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %8 = load i32, i32* %alg.addr, align 4
  %and23 = and i32 %8, -256
  %cmp24 = icmp eq i32 %and23, 100663808
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %9 = load i32, i32* %alg.addr, align 4
  %and26 = and i32 %9, -256
  %and27 = and i32 %and26, -257
  %cmp28 = icmp eq i32 %and27, 100664832
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %10 = load i32, i32* %alg.addr, align 4
  %and30 = and i32 %10, -256
  %cmp31 = icmp eq i32 %and30, 100665600
  br i1 %cmp31, label %land.lhs.true, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %11 = load i32, i32* %alg.addr, align 4
  %and33 = and i32 %11, -256
  %and34 = and i32 %and33, -257
  %cmp35 = icmp eq i32 %and34, 100664320
  br i1 %cmp35, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %if.then
  %12 = load i32, i32* %alg.addr, align 4
  %and36 = and i32 %12, 255
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %alg.addr, align 4
  %and38 = and i32 %13, 255
  %or = or i32 %and38, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i64, i64* %input_length.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call = call i32 @psa_driver_wrapper_hash_compute(i32 noundef %cond, i8* noundef %14, i64 noundef %15, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %hash_length) #6
  store i32 %call, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp39 = icmp ne i32 %16, 0
  br i1 %cmp39, label %if.then40, label %if.end

if.then40:                                        ; preds = %cond.end
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %18 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %19 = load i8*, i8** %key_buffer.addr, align 8
  %20 = load i64, i64* %key_buffer_size.addr, align 8
  %21 = load i32, i32* %alg.addr, align 4
  %arraydecay41 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %22 = load i64, i64* %hash_length, align 8
  %23 = load i8*, i8** %signature.addr, align 8
  %24 = load i64, i64* %signature_size.addr, align 8
  %25 = load i64*, i64** %signature_length.addr, align 8
  %call42 = call i32 @psa_driver_wrapper_sign_hash(%struct.psa_key_attributes_s* noundef %18, i8* noundef %19, i64 noundef %20, i32 noundef %21, i8* noundef %arraydecay41, i64 noundef %22, i8* noundef %23, i64 noundef %24, i64* noundef %25) #6
  store i32 %call42, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false13
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.end, %if.then40
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

declare dso_local i32 @psa_driver_wrapper_sign_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_sign_message(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %4 = load i8*, i8** %signature.addr, align 8
  %5 = load i64, i64* %signature_size.addr, align 8
  %6 = load i64*, i64** %signature_length.addr, align 8
  %call = call i32 @psa_sign_internal(i32 noundef %0, i32 noundef 1, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_sign_internal(i32 noundef %key, i32 noundef %input_is_message, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %input_is_message.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %input_is_message, i32* %input_is_message.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i64*, i64** %signature_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i32, i32* %input_is_message.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_sign_verify_check_alg(i32 noundef %1, i32 noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %signature_size.addr, align 8
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -138, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i32, i32* %key.addr, align 4
  %7 = load i32, i32* %input_is_message.addr, align 4
  %tobool = icmp ne i32 %7, 0
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1024, i32 4096
  %9 = load i32, i32* %alg.addr, align 4
  %call4 = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %6, %struct.psa_key_slot_t** noundef %slot, i32 noundef %cond, i32 noundef %9) #6
  store i32 %call4, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  br label %exit

if.end7:                                          ; preds = %if.end3
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %12 = load i16, i16* %type, align 8
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 28672
  %cmp8 = icmp eq i32 %and, 28672
  br i1 %cmp8, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end7
  store i32 -135, i32* %status, align 4
  br label %exit

if.end11:                                         ; preds = %if.end7
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %13, i32 0, i32 0
  %14 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %15 = bitcast %struct.psa_core_key_attributes_t* %attr12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %16 = load i32, i32* %input_is_message.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key15 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %17, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key15, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key16 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %19, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key16, i32 0, i32 1
  %20 = load i64, i64* %bytes, align 8
  %21 = load i32, i32* %alg.addr, align 4
  %22 = load i8*, i8** %input.addr, align 8
  %23 = load i64, i64* %input_length.addr, align 8
  %24 = load i8*, i8** %signature.addr, align 8
  %25 = load i64, i64* %signature_size.addr, align 8
  %26 = load i64*, i64** %signature_length.addr, align 8
  %call17 = call i32 @psa_driver_wrapper_sign_message(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %18, i64 noundef %20, i32 noundef %21, i8* noundef %22, i64 noundef %23, i8* noundef %24, i64 noundef %25, i64* noundef %26) #6
  store i32 %call17, i32* %status, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end11
  %27 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key18 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %27, i32 0, i32 2
  %data19 = getelementptr inbounds %struct.key_data, %struct.key_data* %key18, i32 0, i32 0
  %28 = load i8*, i8** %data19, align 8
  %29 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key20 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %29, i32 0, i32 2
  %bytes21 = getelementptr inbounds %struct.key_data, %struct.key_data* %key20, i32 0, i32 1
  %30 = load i64, i64* %bytes21, align 8
  %31 = load i32, i32* %alg.addr, align 4
  %32 = load i8*, i8** %input.addr, align 8
  %33 = load i64, i64* %input_length.addr, align 8
  %34 = load i8*, i8** %signature.addr, align 8
  %35 = load i64, i64* %signature_size.addr, align 8
  %36 = load i64*, i64** %signature_length.addr, align 8
  %call22 = call i32 @psa_driver_wrapper_sign_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %28, i64 noundef %30, i32 noundef %31, i8* noundef %32, i64 noundef %33, i8* noundef %34, i64 noundef %35, i64* noundef %36) #6
  store i32 %call22, i32* %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then14
  br label %exit

exit:                                             ; preds = %if.end23, %if.then10, %if.then6
  %37 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %37, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %exit
  %38 = load i8*, i8** %signature.addr, align 8
  %39 = load i64*, i64** %signature_length.addr, align 8
  %40 = load i64, i64* %39, align 8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %40
  %41 = load i64, i64* %signature_size.addr, align 8
  %42 = load i64*, i64** %signature_length.addr, align 8
  %43 = load i64, i64* %42, align 8
  %sub = sub i64 %41, %43
  %call27 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 33, i64 noundef %sub) #5
  br label %if.end30

if.else28:                                        ; preds = %exit
  %44 = load i8*, i8** %signature.addr, align 8
  %45 = load i64, i64* %signature_size.addr, align 8
  %call29 = call i8* @memset(i8* noundef %44, i32 noundef 33, i64 noundef %45) #5
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %46 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call31 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %46) #6
  store i32 %call31, i32* %unlock_status, align 4
  %47 = load i32, i32* %status, align 4
  %cmp32 = icmp eq i32 %47, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end30
  %48 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end30
  %49 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond34 = phi i32 [ %48, %cond.true ], [ %49, %cond.false ]
  store i32 %cond34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_verify_message_builtin(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %hash_length = alloca i64, align 8
  %hash = alloca [64 x i8], align 16
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 100664064
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -256
  %cmp2 = icmp eq i32 %and1, 100668160
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %2, -256
  %cmp5 = icmp eq i32 %and4, 100663808
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %3, -256
  %and8 = and i32 %and7, -257
  %cmp9 = icmp eq i32 %and8, 100664832
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %4 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %4, -256
  %cmp12 = icmp eq i32 %and11, 100665600
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %5 = load i32, i32* %alg.addr, align 4
  %and14 = and i32 %5, -256
  %and15 = and i32 %and14, -257
  %cmp16 = icmp eq i32 %and15, 100664320
  br i1 %cmp16, label %if.then, label %if.end43

if.then:                                          ; preds = %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %6, -256
  %cmp18 = icmp eq i32 %and17, 100664064
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then
  %7 = load i32, i32* %alg.addr, align 4
  %and20 = and i32 %7, -256
  %cmp21 = icmp eq i32 %and20, 100668160
  br i1 %cmp21, label %land.lhs.true, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %8 = load i32, i32* %alg.addr, align 4
  %and23 = and i32 %8, -256
  %cmp24 = icmp eq i32 %and23, 100663808
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %9 = load i32, i32* %alg.addr, align 4
  %and26 = and i32 %9, -256
  %and27 = and i32 %and26, -257
  %cmp28 = icmp eq i32 %and27, 100664832
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %10 = load i32, i32* %alg.addr, align 4
  %and30 = and i32 %10, -256
  %cmp31 = icmp eq i32 %and30, 100665600
  br i1 %cmp31, label %land.lhs.true, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %11 = load i32, i32* %alg.addr, align 4
  %and33 = and i32 %11, -256
  %and34 = and i32 %and33, -257
  %cmp35 = icmp eq i32 %and34, 100664320
  br i1 %cmp35, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false32, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false22, %lor.lhs.false19, %if.then
  %12 = load i32, i32* %alg.addr, align 4
  %and36 = and i32 %12, 255
  %cmp37 = icmp ne i32 %and36, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %alg.addr, align 4
  %and38 = and i32 %13, 255
  %or = or i32 %and38, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i64, i64* %input_length.addr, align 8
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %call = call i32 @psa_driver_wrapper_hash_compute(i32 noundef %cond, i8* noundef %14, i64 noundef %15, i8* noundef %arraydecay, i64 noundef 64, i64* noundef %hash_length) #6
  store i32 %call, i32* %status, align 4
  %16 = load i32, i32* %status, align 4
  %cmp39 = icmp ne i32 %16, 0
  br i1 %cmp39, label %if.then40, label %if.end

if.then40:                                        ; preds = %cond.end
  %17 = load i32, i32* %status, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %18 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %19 = load i8*, i8** %key_buffer.addr, align 8
  %20 = load i64, i64* %key_buffer_size.addr, align 8
  %21 = load i32, i32* %alg.addr, align 4
  %arraydecay41 = getelementptr inbounds [64 x i8], [64 x i8]* %hash, i64 0, i64 0
  %22 = load i64, i64* %hash_length, align 8
  %23 = load i8*, i8** %signature.addr, align 8
  %24 = load i64, i64* %signature_length.addr, align 8
  %call42 = call i32 @psa_driver_wrapper_verify_hash(%struct.psa_key_attributes_s* noundef %18, i8* noundef %19, i64 noundef %20, i32 noundef %21, i8* noundef %arraydecay41, i64 noundef %22, i8* noundef %23, i64 noundef %24) #6
  store i32 %call42, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %lor.lhs.false13
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.end, %if.then40
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local i32 @psa_driver_wrapper_verify_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_verify_message(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i64, i64* %input_length.addr, align 8
  %4 = load i8*, i8** %signature.addr, align 8
  %5 = load i64, i64* %signature_length.addr, align 8
  %call = call i32 @psa_verify_internal(i32 noundef %0, i32 noundef 1, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_verify_internal(i32 noundef %key, i32 noundef %input_is_message, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %input_is_message.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %input_is_message, i32* %input_is_message.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i32, i32* %input_is_message.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_sign_verify_check_alg(i32 noundef %0, i32 noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32, i32* %input_is_message.addr, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2048, i32 8192
  %7 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %4, %struct.psa_key_slot_t** noundef %slot, i32 noundef %cond, i32 noundef %7) #6
  store i32 %call1, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %11 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %12 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %13 = load i32, i32* %input_is_message.addr, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key7, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key8, i32 0, i32 1
  %17 = load i64, i64* %bytes, align 8
  %18 = load i32, i32* %alg.addr, align 4
  %19 = load i8*, i8** %input.addr, align 8
  %20 = load i64, i64* %input_length.addr, align 8
  %21 = load i8*, i8** %signature.addr, align 8
  %22 = load i64, i64* %signature_length.addr, align 8
  %call9 = call i32 @psa_driver_wrapper_verify_message(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %15, i64 noundef %17, i32 noundef %18, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64 noundef %22) #6
  store i32 %call9, i32* %status, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %23 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %23, i32 0, i32 2
  %data11 = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 0
  %24 = load i8*, i8** %data11, align 8
  %25 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %25, i32 0, i32 2
  %bytes13 = getelementptr inbounds %struct.key_data, %struct.key_data* %key12, i32 0, i32 1
  %26 = load i64, i64* %bytes13, align 8
  %27 = load i32, i32* %alg.addr, align 4
  %28 = load i8*, i8** %input.addr, align 8
  %29 = load i64, i64* %input_length.addr, align 8
  %30 = load i8*, i8** %signature.addr, align 8
  %31 = load i64, i64* %signature_length.addr, align 8
  %call14 = call i32 @psa_driver_wrapper_verify_hash(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %24, i64 noundef %26, i32 noundef %27, i8* noundef %28, i64 noundef %29, i8* noundef %30, i64 noundef %31) #6
  store i32 %call14, i32* %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6
  %32 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call16 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %32) #6
  store i32 %call16, i32* %unlock_status, align 4
  %33 = load i32, i32* %status, align 4
  %cmp17 = icmp eq i32 %33, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %34 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  %35 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %34, %cond.true ], [ %35, %cond.false ]
  store i32 %cond18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_sign_hash_builtin(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 28673
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and = and i32 %2, -256
  %cmp2 = icmp eq i32 %and, 100663808
  br i1 %cmp2, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %3, -256
  %cmp5 = icmp eq i32 %and4, 100664064
  br i1 %cmp5, label %if.then11, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %4, -256
  %cmp9 = icmp eq i32 %and8, 100668160
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.then
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %6 = load i8*, i8** %key_buffer.addr, align 8
  %7 = load i64, i64* %key_buffer_size.addr, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %9 = load i8*, i8** %hash.addr, align 8
  %10 = load i64, i64* %hash_length.addr, align 8
  %11 = load i8*, i8** %signature.addr, align 8
  %12 = load i64, i64* %signature_size.addr, align 8
  %13 = load i64*, i64** %signature_length.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_sign_hash(%struct.psa_key_attributes_s* noundef %5, i8* noundef %6, i64 noundef %7, i32 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12, i64* noundef %13) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false7
  store i32 -135, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %entry
  %14 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core13 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %14, i32 0, i32 0
  %type14 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core13, i32 0, i32 0
  %15 = load i16, i16* %type14, align 8
  %conv15 = zext i16 %15 to i32
  %and16 = and i32 %conv15, -12289
  %and17 = and i32 %and16, -256
  %cmp18 = icmp eq i32 %and17, 16640
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.else12
  %16 = load i32, i32* %alg.addr, align 4
  %and21 = and i32 %16, -256
  %and22 = and i32 %and21, -257
  %cmp23 = icmp eq i32 %and22, 100664832
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then20
  %17 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %18 = load i8*, i8** %key_buffer.addr, align 8
  %19 = load i64, i64* %key_buffer_size.addr, align 8
  %20 = load i32, i32* %alg.addr, align 4
  %21 = load i8*, i8** %hash.addr, align 8
  %22 = load i64, i64* %hash_length.addr, align 8
  %23 = load i8*, i8** %signature.addr, align 8
  %24 = load i64, i64* %signature_size.addr, align 8
  %25 = load i64*, i64** %signature_length.addr, align 8
  %call26 = call i32 @mbedtls_psa_ecdsa_sign_hash(%struct.psa_key_attributes_s* noundef %17, i8* noundef %18, i64 noundef %19, i32 noundef %20, i8* noundef %21, i64 noundef %22, i8* noundef %23, i64 noundef %24, i64* noundef %25) #6
  store i32 %call26, i32* %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.then20
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else12
  br label %if.end28

if.end28:                                         ; preds = %if.end
  %26 = load i8*, i8** %key_buffer.addr, align 8
  %27 = load i64, i64* %key_buffer_size.addr, align 8
  %28 = load i8*, i8** %hash.addr, align 8
  %29 = load i64, i64* %hash_length.addr, align 8
  %30 = load i8*, i8** %signature.addr, align 8
  %31 = load i64, i64* %signature_size.addr, align 8
  %32 = load i64*, i64** %signature_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.else27, %if.then25, %if.else, %if.then11
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @mbedtls_psa_rsa_sign_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_psa_ecdsa_sign_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_sign_hash(i32 noundef %key, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_size, i64* noundef %signature_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_size.addr = alloca i64, align 8
  %signature_length.addr = alloca i64*, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_size, i64* %signature_size.addr, align 8
  store i64* %signature_length, i64** %signature_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %hash.addr, align 8
  %3 = load i64, i64* %hash_length.addr, align 8
  %4 = load i8*, i8** %signature.addr, align 8
  %5 = load i64, i64* %signature_size.addr, align 8
  %6 = load i64*, i64** %signature_length.addr, align 8
  %call = call i32 @psa_sign_internal(i32 noundef %0, i32 noundef 0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5, i64* noundef %6) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_verify_hash_builtin(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, -12289
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and2 = and i32 %2, -256
  %cmp3 = icmp eq i32 %and2, 100663808
  br i1 %cmp3, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %alg.addr, align 4
  %and5 = and i32 %3, -256
  %cmp6 = icmp eq i32 %and5, 100664064
  br i1 %cmp6, label %if.then12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %alg.addr, align 4
  %and9 = and i32 %4, -256
  %cmp10 = icmp eq i32 %and9, 100668160
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.then
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %6 = load i8*, i8** %key_buffer.addr, align 8
  %7 = load i64, i64* %key_buffer_size.addr, align 8
  %8 = load i32, i32* %alg.addr, align 4
  %9 = load i8*, i8** %hash.addr, align 8
  %10 = load i64, i64* %hash_length.addr, align 8
  %11 = load i8*, i8** %signature.addr, align 8
  %12 = load i64, i64* %signature_length.addr, align 8
  %call = call i32 @mbedtls_psa_rsa_verify_hash(%struct.psa_key_attributes_s* noundef %5, i8* noundef %6, i64 noundef %7, i32 noundef %8, i8* noundef %9, i64 noundef %10, i8* noundef %11, i64 noundef %12) #6
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false8
  store i32 -135, i32* %retval, align 4
  br label %return

if.else13:                                        ; preds = %entry
  %13 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core14 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %13, i32 0, i32 0
  %type15 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core14, i32 0, i32 0
  %14 = load i16, i16* %type15, align 8
  %conv16 = zext i16 %14 to i32
  %and17 = and i32 %conv16, -12289
  %and18 = and i32 %and17, -256
  %cmp19 = icmp eq i32 %and18, 16640
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else13
  %15 = load i32, i32* %alg.addr, align 4
  %and22 = and i32 %15, -256
  %and23 = and i32 %and22, -257
  %cmp24 = icmp eq i32 %and23, 100664832
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.then21
  %16 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %17 = load i8*, i8** %key_buffer.addr, align 8
  %18 = load i64, i64* %key_buffer_size.addr, align 8
  %19 = load i32, i32* %alg.addr, align 4
  %20 = load i8*, i8** %hash.addr, align 8
  %21 = load i64, i64* %hash_length.addr, align 8
  %22 = load i8*, i8** %signature.addr, align 8
  %23 = load i64, i64* %signature_length.addr, align 8
  %call27 = call i32 @mbedtls_psa_ecdsa_verify_hash(%struct.psa_key_attributes_s* noundef %16, i8* noundef %17, i64 noundef %18, i32 noundef %19, i8* noundef %20, i64 noundef %21, i8* noundef %22, i64 noundef %23) #6
  store i32 %call27, i32* %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.then21
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else13
  br label %if.end29

if.end29:                                         ; preds = %if.end
  %24 = load i8*, i8** %key_buffer.addr, align 8
  %25 = load i64, i64* %key_buffer_size.addr, align 8
  %26 = load i8*, i8** %hash.addr, align 8
  %27 = load i64, i64* %hash_length.addr, align 8
  %28 = load i8*, i8** %signature.addr, align 8
  %29 = load i64, i64* %signature_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.else28, %if.then26, %if.else, %if.then12
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local i32 @mbedtls_psa_rsa_verify_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_psa_ecdsa_verify_hash(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_verify_hash(i32 noundef %key, i32 noundef %alg, i8* noundef %hash, i64 noundef %hash_length, i8* noundef %signature, i64 noundef %signature_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %hash.addr = alloca i8*, align 8
  %hash_length.addr = alloca i64, align 8
  %signature.addr = alloca i8*, align 8
  %signature_length.addr = alloca i64, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %hash, i8** %hash.addr, align 8
  store i64 %hash_length, i64* %hash_length.addr, align 8
  store i8* %signature, i8** %signature.addr, align 8
  store i64 %signature_length, i64* %signature_length.addr, align 8
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32, i32* %alg.addr, align 4
  %2 = load i8*, i8** %hash.addr, align 8
  %3 = load i64, i64* %hash_length.addr, align 8
  %4 = load i8*, i8** %signature.addr, align 8
  %5 = load i64, i64* %signature_length.addr, align 8
  %call = call i32 @psa_verify_internal(i32 noundef %0, i32 noundef 0, i32 noundef %1, i8* noundef %2, i64 noundef %3, i8* noundef %4, i64 noundef %5) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_asymmetric_encrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %salt_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_length, i64* %salt_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i64, i64* %input_length.addr, align 8
  %2 = load i8*, i8** %salt.addr, align 8
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %output_size.addr, align 8
  %5 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %and = and i32 %6, -256
  %cmp = icmp eq i32 %and, 117441280
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %salt_length.addr, align 8
  %cmp1 = icmp ne i64 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %key.addr, align 4
  %9 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %8, %struct.psa_key_slot_t** noundef %slot, i32 noundef 256, i32 noundef %9) #6
  store i32 %call, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %13 = load i16, i16* %type, align 8
  %conv = zext i16 %13 to i32
  %and5 = and i32 %conv, 28672
  %cmp6 = icmp eq i32 %and5, 16384
  br i1 %cmp6, label %if.end15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %type9 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr8, i32 0, i32 0
  %15 = load i16, i16* %type9, align 8
  %conv10 = zext i16 %15 to i32
  %and11 = and i32 %conv10, 28672
  %cmp12 = icmp eq i32 %and11, 28672
  br i1 %cmp12, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false
  store i32 -135, i32* %status, align 4
  br label %exit

if.end15:                                         ; preds = %lor.lhs.false, %if.end4
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr16 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 0
  %17 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %18 = bitcast %struct.psa_core_key_attributes_t* %attr16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key17 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %19, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key17, i32 0, i32 0
  %20 = load i8*, i8** %data, align 8
  %21 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key18 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %21, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key18, i32 0, i32 1
  %22 = load i64, i64* %bytes, align 8
  %23 = load i32, i32* %alg.addr, align 4
  %24 = load i8*, i8** %input.addr, align 8
  %25 = load i64, i64* %input_length.addr, align 8
  %26 = load i8*, i8** %salt.addr, align 8
  %27 = load i64, i64* %salt_length.addr, align 8
  %28 = load i8*, i8** %output.addr, align 8
  %29 = load i64, i64* %output_size.addr, align 8
  %30 = load i64*, i64** %output_length.addr, align 8
  %call19 = call i32 @psa_driver_wrapper_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %20, i64 noundef %22, i32 noundef %23, i8* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %27, i8* noundef %28, i64 noundef %29, i64* noundef %30) #6
  store i32 %call19, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end15, %if.then14
  %31 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call20 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %31) #6
  store i32 %call20, i32* %unlock_status, align 4
  %32 = load i32, i32* %status, align 4
  %cmp21 = icmp eq i32 %32, 0
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %exit
  %33 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %exit
  %34 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %key, %struct.psa_key_slot_t** noundef %p_slot, i32 noundef %usage, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %p_slot.addr = alloca %struct.psa_key_slot_t**, align 8
  %usage.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  store %struct.psa_key_slot_t** %p_slot, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store i32 %usage, i32* %usage.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %1 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %2 = load i32, i32* %usage.addr, align 4
  %3 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %0, %struct.psa_key_slot_t** noundef %1, i32 noundef %2, i32 noundef %3) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %6, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 2
  %8 = load i32, i32* %lifetime, align 4
  %call1 = call i32 @psa_key_lifetime_is_external(i32 noundef %8) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %9 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %9, align 8
  %call3 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %10) #6
  %11 = load %struct.psa_key_slot_t**, %struct.psa_key_slot_t*** %p_slot.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %11, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

declare dso_local i32 @psa_driver_wrapper_asymmetric_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_asymmetric_decrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %salt, i64 noundef %salt_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %salt.addr = alloca i8*, align 8
  %salt_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %salt, i8** %salt.addr, align 8
  store i64 %salt_length, i64* %salt_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i64, i64* %input_length.addr, align 8
  %2 = load i8*, i8** %salt.addr, align 8
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %output_size.addr, align 8
  %5 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %alg.addr, align 4
  %and = and i32 %6, -256
  %cmp = icmp eq i32 %and, 117441280
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %salt_length.addr, align 8
  %cmp1 = icmp ne i64 %7, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %key.addr, align 4
  %9 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %8, %struct.psa_key_slot_t** noundef %slot, i32 noundef 512, i32 noundef %9) #6
  store i32 %call, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %10, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %11 = load i32, i32* %status, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %13 = load i16, i16* %type, align 8
  %conv = zext i16 %13 to i32
  %and5 = and i32 %conv, 28672
  %cmp6 = icmp eq i32 %and5, 28672
  br i1 %cmp6, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  store i32 -135, i32* %status, align 4
  br label %exit

if.end9:                                          ; preds = %if.end4
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %15 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %16 = bitcast %struct.psa_core_key_attributes_t* %attr10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key11 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %17, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key11, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key12 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %19, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key12, i32 0, i32 1
  %20 = load i64, i64* %bytes, align 8
  %21 = load i32, i32* %alg.addr, align 4
  %22 = load i8*, i8** %input.addr, align 8
  %23 = load i64, i64* %input_length.addr, align 8
  %24 = load i8*, i8** %salt.addr, align 8
  %25 = load i64, i64* %salt_length.addr, align 8
  %26 = load i8*, i8** %output.addr, align 8
  %27 = load i64, i64* %output_size.addr, align 8
  %28 = load i64*, i64** %output_length.addr, align 8
  %call13 = call i32 @psa_driver_wrapper_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %18, i64 noundef %20, i32 noundef %21, i8* noundef %22, i64 noundef %23, i8* noundef %24, i64 noundef %25, i8* noundef %26, i64 noundef %27, i64* noundef %28) #6
  store i32 %call13, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8
  %29 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call14 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %29) #6
  store i32 %call14, i32* %unlock_status, align 4
  %30 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %30, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %exit
  %31 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %exit
  %32 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @psa_driver_wrapper_asymmetric_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_cipher_setup(%struct.psa_cipher_operation_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_cipher_setup(%struct.psa_cipher_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg, i32 noundef %cipher_operation) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %cipher_operation.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %usage = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i32 %cipher_operation, i32* %cipher_operation.addr, align 4
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  %0 = load i32, i32* %cipher_operation.addr, align 4
  %cmp = icmp eq i32 %0, 1
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 256, i32 512
  store i32 %cond, i32* %usage, align 4
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 0
  %3 = load i32, i32* %id, align 8
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %alg.addr, align 4
  %and = and i32 %4, 2130706432
  %cmp2 = icmp eq i32 %and, 67108864
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -135, i32* %status, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %key.addr, align 4
  %6 = load i32, i32* %usage, align 4
  %7 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %5, %struct.psa_key_slot_t** noundef %slot, i32 noundef %6, i32 noundef %7) #6
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %8, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  br label %exit

if.end7:                                          ; preds = %if.end4
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %9, i32 0, i32 1
  %bf.load = load i8, i8* %iv_set, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* %iv_set, align 4
  %10 = load i32, i32* %alg.addr, align 4
  %cmp8 = icmp eq i32 %10, 71320576
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %11 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %11, i32 0, i32 1
  %bf.load10 = load i8, i8* %iv_required, align 4
  %bf.clear11 = and i8 %bf.load10, -2
  %bf.set12 = or i8 %bf.clear11, 0
  store i8 %bf.set12, i8* %iv_required, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end7
  %12 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required13 = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %12, i32 0, i32 1
  %bf.load14 = load i8, i8* %iv_required13, align 4
  %bf.clear15 = and i8 %bf.load14, -2
  %bf.set16 = or i8 %bf.clear15, 1
  store i8 %bf.set16, i8* %iv_required13, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %13, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %14 = load i16, i16* %type, align 8
  %conv = zext i16 %14 to i32
  %and18 = and i32 %conv, 28672
  %cmp19 = icmp eq i32 %and18, 8192
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end17
  %15 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr21 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %15, i32 0, i32 0
  %type22 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr21, i32 0, i32 0
  %16 = load i16, i16* %type22, align 8
  %conv23 = zext i16 %16 to i32
  %shr = ashr i32 %conv23, 8
  %and24 = and i32 %shr, 7
  %shl = shl i32 1, %and24
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond25 = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp26 = icmp ugt i32 %cond25, 1
  br i1 %cmp26, label %land.lhs.true, label %cond.false61

land.lhs.true:                                    ; preds = %cond.end
  %17 = load i32, i32* %alg.addr, align 4
  %cmp28 = icmp eq i32 %17, 79695872
  br i1 %cmp28, label %cond.true44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i32, i32* %alg.addr, align 4
  %cmp30 = icmp eq i32 %18, 79696128
  br i1 %cmp30, label %cond.true44, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %19 = load i32, i32* %alg.addr, align 4
  %cmp33 = icmp eq i32 %19, 79696384
  br i1 %cmp33, label %cond.true44, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %20 = load i32, i32* %alg.addr, align 4
  %cmp36 = icmp eq i32 %20, 71368448
  br i1 %cmp36, label %cond.true44, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %21 = load i32, i32* %alg.addr, align 4
  %cmp39 = icmp eq i32 %21, 71319552
  br i1 %cmp39, label %cond.true44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  %22 = load i32, i32* %alg.addr, align 4
  %cmp42 = icmp eq i32 %22, 71319808
  br i1 %cmp42, label %cond.true44, label %cond.false61

cond.true44:                                      ; preds = %lor.lhs.false41, %lor.lhs.false38, %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false, %land.lhs.true
  %23 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr45 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %23, i32 0, i32 0
  %type46 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr45, i32 0, i32 0
  %24 = load i16, i16* %type46, align 8
  %conv47 = zext i16 %24 to i32
  %and48 = and i32 %conv47, 28672
  %cmp49 = icmp eq i32 %and48, 8192
  br i1 %cmp49, label %cond.true51, label %cond.false58

cond.true51:                                      ; preds = %cond.true44
  %25 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr52 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %25, i32 0, i32 0
  %type53 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr52, i32 0, i32 0
  %26 = load i16, i16* %type53, align 8
  %conv54 = zext i16 %26 to i32
  %shr55 = ashr i32 %conv54, 8
  %and56 = and i32 %shr55, 7
  %shl57 = shl i32 1, %and56
  br label %cond.end59

cond.false58:                                     ; preds = %cond.true44
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %cond.true51
  %cond60 = phi i32 [ %shl57, %cond.true51 ], [ 0, %cond.false58 ]
  br label %cond.end77

cond.false61:                                     ; preds = %lor.lhs.false41, %cond.end
  %27 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr62 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %27, i32 0, i32 0
  %type63 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr62, i32 0, i32 0
  %28 = load i16, i16* %type63, align 8
  %conv64 = zext i16 %28 to i32
  %cmp65 = icmp eq i32 %conv64, 8196
  br i1 %cmp65, label %land.lhs.true67, label %cond.false71

land.lhs.true67:                                  ; preds = %cond.false61
  %29 = load i32, i32* %alg.addr, align 4
  %cmp68 = icmp eq i32 %29, 75497728
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %land.lhs.true67
  br label %cond.end75

cond.false71:                                     ; preds = %land.lhs.true67, %cond.false61
  %30 = load i32, i32* %alg.addr, align 4
  %cmp72 = icmp eq i32 %30, 79696640
  %31 = zext i1 %cmp72 to i64
  %cond74 = select i1 %cmp72, i32 13, i32 0
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false71, %cond.true70
  %cond76 = phi i32 [ 12, %cond.true70 ], [ %cond74, %cond.false71 ]
  br label %cond.end77

cond.end77:                                       ; preds = %cond.end75, %cond.end59
  %cond78 = phi i32 [ %cond60, %cond.end59 ], [ %cond76, %cond.end75 ]
  %conv79 = trunc i32 %cond78 to i8
  %32 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %default_iv_length = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %32, i32 0, i32 2
  store i8 %conv79, i8* %default_iv_length, align 1
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr80 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %33, i32 0, i32 0
  %34 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %35 = bitcast %struct.psa_core_key_attributes_t* %attr80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %36 = load i32, i32* %cipher_operation.addr, align 4
  %cmp81 = icmp eq i32 %36, 1
  br i1 %cmp81, label %if.then83, label %if.else87

if.then83:                                        ; preds = %cond.end77
  %37 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %38 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key84 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %38, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key84, i32 0, i32 0
  %39 = load i8*, i8** %data, align 8
  %40 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key85 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %40, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key85, i32 0, i32 1
  %41 = load i64, i64* %bytes, align 8
  %42 = load i32, i32* %alg.addr, align 4
  %call86 = call i32 @psa_driver_wrapper_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef %37, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %39, i64 noundef %41, i32 noundef %42) #6
  store i32 %call86, i32* %status, align 4
  br label %if.end93

if.else87:                                        ; preds = %cond.end77
  %43 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %44 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key88 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %44, i32 0, i32 2
  %data89 = getelementptr inbounds %struct.key_data, %struct.key_data* %key88, i32 0, i32 0
  %45 = load i8*, i8** %data89, align 8
  %46 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key90 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %46, i32 0, i32 2
  %bytes91 = getelementptr inbounds %struct.key_data, %struct.key_data* %key90, i32 0, i32 1
  %47 = load i64, i64* %bytes91, align 8
  %48 = load i32, i32* %alg.addr, align 4
  %call92 = call i32 @psa_driver_wrapper_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef %43, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %45, i64 noundef %47, i32 noundef %48) #6
  store i32 %call92, i32* %status, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %if.then83
  br label %exit

exit:                                             ; preds = %if.end93, %if.then6, %if.then3, %if.then
  %49 = load i32, i32* %status, align 4
  %cmp94 = icmp ne i32 %49, 0
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %exit
  %50 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call97 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %50) #6
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %exit
  %51 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call99 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %51) #6
  store i32 %call99, i32* %unlock_status, align 4
  %52 = load i32, i32* %status, align 4
  %cmp100 = icmp eq i32 %52, 0
  br i1 %cmp100, label %cond.true102, label %cond.false103

cond.true102:                                     ; preds = %if.end98
  %53 = load i32, i32* %unlock_status, align 4
  br label %cond.end104

cond.false103:                                    ; preds = %if.end98
  %54 = load i32, i32* %status, align 4
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi i32 [ %53, %cond.true102 ], [ %54, %cond.false103 ]
  ret i32 %cond105
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_cipher_setup(%struct.psa_cipher_operation_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_generate_iv(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %iv, i64 noundef %iv_size, i64* noundef %iv_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_size.addr = alloca i64, align 8
  %iv_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %local_iv = alloca [16 x i8], align 16
  %default_iv_length = alloca i64, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_size, i64* %iv_size.addr, align 8
  store i64* %iv_length, i64** %iv_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 1
  %bf.load = load i8, i8* %iv_set, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 1
  %bf.load1 = load i8, i8* %iv_required, align 4
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %default_iv_length7 = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %4, i32 0, i32 2
  %5 = load i8, i8* %default_iv_length7, align 1
  %conv = zext i8 %5 to i64
  store i64 %conv, i64* %default_iv_length, align 8
  %6 = load i64, i64* %iv_size.addr, align 8
  %7 = load i64, i64* %default_iv_length, align 8
  %cmp8 = icmp ult i64 %6, %7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 -138, i32* %status, align 4
  br label %exit

if.end11:                                         ; preds = %if.end6
  %8 = load i64, i64* %default_iv_length, align 8
  %cmp12 = icmp ugt i64 %8, 16
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  store i32 -132, i32* %status, align 4
  br label %exit

if.end15:                                         ; preds = %if.end11
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %9 = load i64, i64* %default_iv_length, align 8
  %call = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef %9) #6
  store i32 %call, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp16 = icmp ne i32 %10, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  br label %exit

if.end19:                                         ; preds = %if.end15
  %11 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %12 = load i64, i64* %default_iv_length, align 8
  %call21 = call i32 @psa_driver_wrapper_cipher_set_iv(%struct.psa_cipher_operation_s* noundef %11, i8* noundef %arraydecay20, i64 noundef %12) #6
  store i32 %call21, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end19, %if.then18, %if.then14, %if.then10, %if.then5, %if.then
  %13 = load i32, i32* %status, align 4
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %exit
  %14 = load i8*, i8** %iv.addr, align 8
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %15 = load i64, i64* %default_iv_length, align 8
  %call26 = call i8* @memcpy(i8* noundef %14, i8* noundef %arraydecay25, i64 noundef %15) #5
  %16 = load i64, i64* %default_iv_length, align 8
  %17 = load i64*, i64** %iv_length.addr, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set27 = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %18, i32 0, i32 1
  %bf.load28 = load i8, i8* %iv_set27, align 4
  %bf.clear29 = and i8 %bf.load28, -3
  %bf.set = or i8 %bf.clear29, 2
  store i8 %bf.set, i8* %iv_set27, align 4
  br label %if.end31

if.else:                                          ; preds = %exit
  %19 = load i64*, i64** %iv_length.addr, align 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call30 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %20) #6
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %21 = load i32, i32* %status, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_generate_random(i8* noundef %output, i64 noundef %output_size) #0 {
entry:
  %retval = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %request_size = alloca i64, align 8
  %ret = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %0 = load i64, i64* %output_size.addr, align 8
  %cmp1 = icmp ugt i64 %0, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %output_size.addr, align 8
  %cmp2 = icmp ugt i64 %1, 1024
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %2 = load i64, i64* %output_size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1024, %cond.true ], [ %2, %cond.false ]
  store i64 %cond, i64* %request_size, align 8
  %3 = load i8*, i8** %output.addr, align 8
  %4 = load i64, i64* %request_size, align 8
  %call = call i32 @mbedtls_ctr_drbg_random(i8* noundef getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056), i8* noundef %3, i64 noundef %4) #6
  store i32 %call, i32* %ret, align 4
  %5 = load i32, i32* %ret, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %cond.end
  %6 = load i32, i32* %ret, align 4
  %call5 = call i32 @mbedtls_to_psa_error(i32 noundef %6) #6
  store i32 %call5, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %cond.end
  %7 = load i64, i64* %request_size, align 8
  %8 = load i64, i64* %output_size.addr, align 8
  %sub = sub i64 %8, %7
  store i64 %sub, i64* %output_size.addr, align 8
  %9 = load i64, i64* %request_size, align 8
  %10 = load i8*, i8** %output.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %9
  store i8* %add.ptr, i8** %output.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then4, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @psa_driver_wrapper_cipher_set_iv(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call = call i32 @psa_driver_wrapper_cipher_abort(%struct.psa_cipher_operation_s* noundef %2) #6
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id1 = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 0
  store i32 0, i32* %id1, align 8
  %4 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %4, i32 0, i32 1
  %bf.load = load i8, i8* %iv_set, align 4
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, i8* %iv_set, align 4
  %5 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %5, i32 0, i32 1
  %bf.load2 = load i8, i8* %iv_required, align 4
  %bf.clear3 = and i8 %bf.load2, -2
  %bf.set4 = or i8 %bf.clear3, 0
  store i8 %bf.set4, i8* %iv_required, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_set_iv(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %iv, i64 noundef %iv_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %iv.addr = alloca i8*, align 8
  %iv_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %iv, i8** %iv.addr, align 8
  store i64 %iv_length, i64* %iv_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 1
  %bf.load = load i8, i8* %iv_set, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 1
  %bf.load1 = load i8, i8* %iv_required, align 4
  %bf.clear2 = and i8 %bf.load1, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load i64, i64* %iv_length.addr, align 8
  %cmp7 = icmp ugt i64 %4, 16
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 -135, i32* %status, align 4
  br label %exit

if.end9:                                          ; preds = %if.end6
  %5 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %6 = load i8*, i8** %iv.addr, align 8
  %7 = load i64, i64* %iv_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_cipher_set_iv(%struct.psa_cipher_operation_s* noundef %5, i8* noundef %6, i64 noundef %7) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end9, %if.then8, %if.then5, %if.then
  %8 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %8, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %exit
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set12 = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %9, i32 0, i32 1
  %bf.load13 = load i8, i8* %iv_set12, align 4
  %bf.clear14 = and i8 %bf.load13, -3
  %bf.set = or i8 %bf.clear14, 2
  store i8 %bf.set, i8* %iv_set12, align 4
  br label %if.end16

if.else:                                          ; preds = %exit
  %10 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call15 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %10) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %11 = load i32, i32* %status, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_update(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 1
  %bf.load = load i8, i8* %iv_required, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 1
  %bf.load1 = load i8, i8* %iv_set, align 4
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %4 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i64, i64* %input_length.addr, align 8
  %7 = load i8*, i8** %output.addr, align 8
  %8 = load i64, i64* %output_size.addr, align 8
  %9 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_cipher_update(%struct.psa_cipher_operation_s* noundef %4, i8* noundef %5, i64 noundef %6, i8* noundef %7, i64 noundef %8, i64* noundef %9) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end6, %if.then5, %if.then
  %10 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %exit
  %11 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call9 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %11) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %exit
  %12 = load i32, i32* %status, align 4
  ret i32 %12
}

declare dso_local i32 @psa_driver_wrapper_cipher_update(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_finish(%struct.psa_cipher_operation_s* noundef %operation, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_cipher_operation_s*, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.psa_cipher_operation_s* %operation, %struct.psa_cipher_operation_s** %operation.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -132, i32* %status, align 4
  %0 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_required = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %2, i32 0, i32 1
  %bf.load = load i8, i8* %iv_required, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %iv_set = getelementptr inbounds %struct.psa_cipher_operation_s, %struct.psa_cipher_operation_s* %3, i32 0, i32 1
  %bf.load1 = load i8, i8* %iv_set, align 4
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %4 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %5 = load i8*, i8** %output.addr, align 8
  %6 = load i64, i64* %output_size.addr, align 8
  %7 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_cipher_finish(%struct.psa_cipher_operation_s* noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end6, %if.then5, %if.then
  %8 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %exit
  %9 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call9 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %9) #6
  store i32 %call9, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %exit
  %10 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.psa_cipher_operation_s*, %struct.psa_cipher_operation_s** %operation.addr, align 8
  %call10 = call i32 @psa_cipher_abort(%struct.psa_cipher_operation_s* noundef %11) #6
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then8
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @psa_driver_wrapper_cipher_finish(%struct.psa_cipher_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @psa_driver_wrapper_cipher_abort(%struct.psa_cipher_operation_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_encrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %local_iv = alloca [16 x i8], align 16
  %default_iv_length = alloca i64, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  store i64 0, i64* %default_iv_length, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 67108864
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot, i32 noundef 256, i32 noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %5 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %6 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr4 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr4, i32 0, i32 0
  %8 = load i16, i16* %type, align 8
  %conv = zext i16 %8 to i32
  %and5 = and i32 %conv, 28672
  %cmp6 = icmp eq i32 %and5, 8192
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr8 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 0
  %type9 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr8, i32 0, i32 0
  %10 = load i16, i16* %type9, align 8
  %conv10 = zext i16 %10 to i32
  %shr = ashr i32 %conv10, 8
  %and11 = and i32 %shr, 7
  %shl = shl i32 1, %and11
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp12 = icmp ugt i32 %cond, 1
  br i1 %cmp12, label %land.lhs.true, label %cond.false47

land.lhs.true:                                    ; preds = %cond.end
  %11 = load i32, i32* %alg.addr, align 4
  %cmp14 = icmp eq i32 %11, 79695872
  br i1 %cmp14, label %cond.true30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, i32* %alg.addr, align 4
  %cmp16 = icmp eq i32 %12, 79696128
  br i1 %cmp16, label %cond.true30, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %13 = load i32, i32* %alg.addr, align 4
  %cmp19 = icmp eq i32 %13, 79696384
  br i1 %cmp19, label %cond.true30, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %14 = load i32, i32* %alg.addr, align 4
  %cmp22 = icmp eq i32 %14, 71368448
  br i1 %cmp22, label %cond.true30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %15 = load i32, i32* %alg.addr, align 4
  %cmp25 = icmp eq i32 %15, 71319552
  br i1 %cmp25, label %cond.true30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %16 = load i32, i32* %alg.addr, align 4
  %cmp28 = icmp eq i32 %16, 71319808
  br i1 %cmp28, label %cond.true30, label %cond.false47

cond.true30:                                      ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false21, %lor.lhs.false18, %lor.lhs.false, %land.lhs.true
  %17 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr31 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %17, i32 0, i32 0
  %type32 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr31, i32 0, i32 0
  %18 = load i16, i16* %type32, align 8
  %conv33 = zext i16 %18 to i32
  %and34 = and i32 %conv33, 28672
  %cmp35 = icmp eq i32 %and34, 8192
  br i1 %cmp35, label %cond.true37, label %cond.false44

cond.true37:                                      ; preds = %cond.true30
  %19 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr38 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %19, i32 0, i32 0
  %type39 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr38, i32 0, i32 0
  %20 = load i16, i16* %type39, align 8
  %conv40 = zext i16 %20 to i32
  %shr41 = ashr i32 %conv40, 8
  %and42 = and i32 %shr41, 7
  %shl43 = shl i32 1, %and42
  br label %cond.end45

cond.false44:                                     ; preds = %cond.true30
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true37
  %cond46 = phi i32 [ %shl43, %cond.true37 ], [ 0, %cond.false44 ]
  br label %cond.end63

cond.false47:                                     ; preds = %lor.lhs.false27, %cond.end
  %21 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr48 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %21, i32 0, i32 0
  %type49 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr48, i32 0, i32 0
  %22 = load i16, i16* %type49, align 8
  %conv50 = zext i16 %22 to i32
  %cmp51 = icmp eq i32 %conv50, 8196
  br i1 %cmp51, label %land.lhs.true53, label %cond.false57

land.lhs.true53:                                  ; preds = %cond.false47
  %23 = load i32, i32* %alg.addr, align 4
  %cmp54 = icmp eq i32 %23, 75497728
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %land.lhs.true53
  br label %cond.end61

cond.false57:                                     ; preds = %land.lhs.true53, %cond.false47
  %24 = load i32, i32* %alg.addr, align 4
  %cmp58 = icmp eq i32 %24, 79696640
  %25 = zext i1 %cmp58 to i64
  %cond60 = select i1 %cmp58, i32 13, i32 0
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false57, %cond.true56
  %cond62 = phi i32 [ 12, %cond.true56 ], [ %cond60, %cond.false57 ]
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end61, %cond.end45
  %cond64 = phi i32 [ %cond46, %cond.end45 ], [ %cond62, %cond.end61 ]
  %conv65 = zext i32 %cond64 to i64
  store i64 %conv65, i64* %default_iv_length, align 8
  %26 = load i64, i64* %default_iv_length, align 8
  %cmp66 = icmp ugt i64 %26, 16
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %cond.end63
  store i32 -132, i32* %status, align 4
  br label %exit

if.end69:                                         ; preds = %cond.end63
  %27 = load i64, i64* %default_iv_length, align 8
  %cmp70 = icmp ugt i64 %27, 0
  br i1 %cmp70, label %if.then72, label %if.end82

if.then72:                                        ; preds = %if.end69
  %28 = load i64, i64* %output_size.addr, align 8
  %29 = load i64, i64* %default_iv_length, align 8
  %cmp73 = icmp ult i64 %28, %29
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  store i32 -138, i32* %status, align 4
  br label %exit

if.end76:                                         ; preds = %if.then72
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %30 = load i64, i64* %default_iv_length, align 8
  %call77 = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef %30) #6
  store i32 %call77, i32* %status, align 4
  %31 = load i32, i32* %status, align 4
  %cmp78 = icmp ne i32 %31, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end76
  br label %exit

if.end81:                                         ; preds = %if.end76
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end69
  %32 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key83 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %32, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key83, i32 0, i32 0
  %33 = load i8*, i8** %data, align 8
  %34 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key84 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %34, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key84, i32 0, i32 1
  %35 = load i64, i64* %bytes, align 8
  %36 = load i32, i32* %alg.addr, align 4
  %arraydecay85 = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %37 = load i64, i64* %default_iv_length, align 8
  %38 = load i8*, i8** %input.addr, align 8
  %39 = load i64, i64* %input_length.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %41 = load i64, i64* %default_iv_length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %41
  %42 = load i64, i64* %output_size.addr, align 8
  %43 = load i64, i64* %default_iv_length, align 8
  %sub = sub i64 %42, %43
  %44 = load i64*, i64** %output_length.addr, align 8
  %call86 = call i32 @psa_driver_wrapper_cipher_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %33, i64 noundef %35, i32 noundef %36, i8* noundef %arraydecay85, i64 noundef %37, i8* noundef %38, i64 noundef %39, i8* noundef %add.ptr, i64 noundef %sub, i64* noundef %44) #6
  store i32 %call86, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end82, %if.then80, %if.then75, %if.then68, %if.then2, %if.then
  %45 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call87 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %45) #6
  store i32 %call87, i32* %unlock_status, align 4
  %46 = load i32, i32* %status, align 4
  %cmp88 = icmp eq i32 %46, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %exit
  %47 = load i32, i32* %unlock_status, align 4
  store i32 %47, i32* %status, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %exit
  %48 = load i32, i32* %status, align 4
  %cmp92 = icmp eq i32 %48, 0
  br i1 %cmp92, label %if.then94, label %if.else

if.then94:                                        ; preds = %if.end91
  %49 = load i64, i64* %default_iv_length, align 8
  %cmp95 = icmp ugt i64 %49, 0
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.then94
  %50 = load i8*, i8** %output.addr, align 8
  %arraydecay98 = getelementptr inbounds [16 x i8], [16 x i8]* %local_iv, i64 0, i64 0
  %51 = load i64, i64* %default_iv_length, align 8
  %call99 = call i8* @memcpy(i8* noundef %50, i8* noundef %arraydecay98, i64 noundef %51) #5
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.then94
  %52 = load i64, i64* %default_iv_length, align 8
  %53 = load i64*, i64** %output_length.addr, align 8
  %54 = load i64, i64* %53, align 8
  %add = add i64 %54, %52
  store i64 %add, i64* %53, align 8
  br label %if.end101

if.else:                                          ; preds = %if.end91
  %55 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %55, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.end100
  %56 = load i32, i32* %status, align 4
  ret i32 %56
}

declare dso_local i32 @psa_driver_wrapper_cipher_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_cipher_decrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 67108864
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot, i32 noundef 512, i32 noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %5 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %6 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %7 = load i32, i32* %alg.addr, align 4
  %cmp4 = icmp eq i32 %7, 79696640
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr5 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr5, i32 0, i32 0
  %10 = load i16, i16* %type, align 8
  %conv = zext i16 %10 to i32
  %and6 = and i32 %conv, 28672
  %cmp7 = icmp eq i32 %and6, 8192
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %11, i32 0, i32 0
  %type10 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr9, i32 0, i32 0
  %12 = load i16, i16* %type10, align 8
  %conv11 = zext i16 %12 to i32
  %shr = ashr i32 %conv11, 8
  %and12 = and i32 %shr, 7
  %shl = shl i32 1, %and12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %conv13 = zext i32 %cond to i64
  %cmp14 = icmp ult i64 %8, %conv13
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %cond.end
  store i32 -135, i32* %status, align 4
  br label %exit

if.else:                                          ; preds = %cond.end, %if.end3
  %13 = load i64, i64* %input_length.addr, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr17 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 0
  %type18 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr17, i32 0, i32 0
  %15 = load i16, i16* %type18, align 8
  %conv19 = zext i16 %15 to i32
  %and20 = and i32 %conv19, 28672
  %cmp21 = icmp eq i32 %and20, 8192
  br i1 %cmp21, label %cond.true23, label %cond.false30

cond.true23:                                      ; preds = %if.else
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr24 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 0
  %type25 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr24, i32 0, i32 0
  %17 = load i16, i16* %type25, align 8
  %conv26 = zext i16 %17 to i32
  %shr27 = ashr i32 %conv26, 8
  %and28 = and i32 %shr27, 7
  %shl29 = shl i32 1, %and28
  br label %cond.end31

cond.false30:                                     ; preds = %if.else
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true23
  %cond32 = phi i32 [ %shl29, %cond.true23 ], [ 0, %cond.false30 ]
  %cmp33 = icmp ugt i32 %cond32, 1
  br i1 %cmp33, label %land.lhs.true35, label %cond.false69

land.lhs.true35:                                  ; preds = %cond.end31
  %18 = load i32, i32* %alg.addr, align 4
  %cmp36 = icmp eq i32 %18, 79695872
  br i1 %cmp36, label %cond.true52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true35
  %19 = load i32, i32* %alg.addr, align 4
  %cmp38 = icmp eq i32 %19, 79696128
  br i1 %cmp38, label %cond.true52, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %20 = load i32, i32* %alg.addr, align 4
  %cmp41 = icmp eq i32 %20, 79696384
  br i1 %cmp41, label %cond.true52, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %21 = load i32, i32* %alg.addr, align 4
  %cmp44 = icmp eq i32 %21, 71368448
  br i1 %cmp44, label %cond.true52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %22 = load i32, i32* %alg.addr, align 4
  %cmp47 = icmp eq i32 %22, 71319552
  br i1 %cmp47, label %cond.true52, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %23 = load i32, i32* %alg.addr, align 4
  %cmp50 = icmp eq i32 %23, 71319808
  br i1 %cmp50, label %cond.true52, label %cond.false69

cond.true52:                                      ; preds = %lor.lhs.false49, %lor.lhs.false46, %lor.lhs.false43, %lor.lhs.false40, %lor.lhs.false, %land.lhs.true35
  %24 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr53 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %24, i32 0, i32 0
  %type54 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr53, i32 0, i32 0
  %25 = load i16, i16* %type54, align 8
  %conv55 = zext i16 %25 to i32
  %and56 = and i32 %conv55, 28672
  %cmp57 = icmp eq i32 %and56, 8192
  br i1 %cmp57, label %cond.true59, label %cond.false66

cond.true59:                                      ; preds = %cond.true52
  %26 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr60 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %26, i32 0, i32 0
  %type61 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr60, i32 0, i32 0
  %27 = load i16, i16* %type61, align 8
  %conv62 = zext i16 %27 to i32
  %shr63 = ashr i32 %conv62, 8
  %and64 = and i32 %shr63, 7
  %shl65 = shl i32 1, %and64
  br label %cond.end67

cond.false66:                                     ; preds = %cond.true52
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false66, %cond.true59
  %cond68 = phi i32 [ %shl65, %cond.true59 ], [ 0, %cond.false66 ]
  br label %cond.end85

cond.false69:                                     ; preds = %lor.lhs.false49, %cond.end31
  %28 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr70 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %28, i32 0, i32 0
  %type71 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr70, i32 0, i32 0
  %29 = load i16, i16* %type71, align 8
  %conv72 = zext i16 %29 to i32
  %cmp73 = icmp eq i32 %conv72, 8196
  br i1 %cmp73, label %land.lhs.true75, label %cond.false79

land.lhs.true75:                                  ; preds = %cond.false69
  %30 = load i32, i32* %alg.addr, align 4
  %cmp76 = icmp eq i32 %30, 75497728
  br i1 %cmp76, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %land.lhs.true75
  br label %cond.end83

cond.false79:                                     ; preds = %land.lhs.true75, %cond.false69
  %31 = load i32, i32* %alg.addr, align 4
  %cmp80 = icmp eq i32 %31, 79696640
  %32 = zext i1 %cmp80 to i64
  %cond82 = select i1 %cmp80, i32 13, i32 0
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false79, %cond.true78
  %cond84 = phi i32 [ 12, %cond.true78 ], [ %cond82, %cond.false79 ]
  br label %cond.end85

cond.end85:                                       ; preds = %cond.end83, %cond.end67
  %cond86 = phi i32 [ %cond68, %cond.end67 ], [ %cond84, %cond.end83 ]
  %conv87 = zext i32 %cond86 to i64
  %cmp88 = icmp ult i64 %13, %conv87
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %cond.end85
  store i32 -135, i32* %status, align 4
  br label %exit

if.end91:                                         ; preds = %cond.end85
  br label %if.end92

if.end92:                                         ; preds = %if.end91
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key93 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %33, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key93, i32 0, i32 0
  %34 = load i8*, i8** %data, align 8
  %35 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key94 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %35, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key94, i32 0, i32 1
  %36 = load i64, i64* %bytes, align 8
  %37 = load i32, i32* %alg.addr, align 4
  %38 = load i8*, i8** %input.addr, align 8
  %39 = load i64, i64* %input_length.addr, align 8
  %40 = load i8*, i8** %output.addr, align 8
  %41 = load i64, i64* %output_size.addr, align 8
  %42 = load i64*, i64** %output_length.addr, align 8
  %call95 = call i32 @psa_driver_wrapper_cipher_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %34, i64 noundef %36, i32 noundef %37, i8* noundef %38, i64 noundef %39, i8* noundef %40, i64 noundef %41, i64* noundef %42) #6
  store i32 %call95, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end92, %if.then90, %if.then16, %if.then2, %if.then
  %43 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call96 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %43) #6
  store i32 %call96, i32* %unlock_status, align 4
  %44 = load i32, i32* %status, align 4
  %cmp97 = icmp eq i32 %44, 0
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %exit
  %45 = load i32, i32* %unlock_status, align 4
  store i32 %45, i32* %status, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %exit
  %46 = load i32, i32* %status, align 4
  %cmp101 = icmp ne i32 %46, 0
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end100
  %47 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %47, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end100
  %48 = load i32, i32* %status, align 4
  ret i32 %48
}

declare dso_local i32 @psa_driver_wrapper_cipher_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_encrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %plaintext, i64 noundef %plaintext_length, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %additional_data.addr = alloca i8*, align 8
  %additional_data_length.addr = alloca i64, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_length.addr = alloca i64, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_size.addr = alloca i64, align 8
  %ciphertext_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i8* %additional_data, i8** %additional_data.addr, align 8
  store i64 %additional_data_length, i64* %additional_data_length.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_length, i64* %plaintext_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_size, i64* %ciphertext_size.addr, align 8
  store i64* %ciphertext_length, i64** %ciphertext_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %ciphertext_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_check_algorithm(i32 noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %4, %struct.psa_key_slot_t** noundef %slot, i32 noundef 256, i32 noundef %5) #6
  store i32 %call1, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 0
  %9 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %10 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %11 = load i32, i32* %alg.addr, align 4
  %12 = load i64, i64* %nonce_length.addr, align 8
  %call5 = call i32 @psa_aead_check_nonce_length(i32 noundef %11, i64 noundef %12) #6
  store i32 %call5, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key9, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 1
  %17 = load i64, i64* %bytes, align 8
  %18 = load i32, i32* %alg.addr, align 4
  %19 = load i8*, i8** %nonce.addr, align 8
  %20 = load i64, i64* %nonce_length.addr, align 8
  %21 = load i8*, i8** %additional_data.addr, align 8
  %22 = load i64, i64* %additional_data_length.addr, align 8
  %23 = load i8*, i8** %plaintext.addr, align 8
  %24 = load i64, i64* %plaintext_length.addr, align 8
  %25 = load i8*, i8** %ciphertext.addr, align 8
  %26 = load i64, i64* %ciphertext_size.addr, align 8
  %27 = load i64*, i64** %ciphertext_length.addr, align 8
  %call11 = call i32 @psa_driver_wrapper_aead_encrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %15, i64 noundef %17, i32 noundef %18, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64 noundef %22, i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i64* noundef %27) #6
  store i32 %call11, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %28, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %29 = load i64, i64* %ciphertext_size.addr, align 8
  %cmp13 = icmp ne i64 %29, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  %30 = load i8*, i8** %ciphertext.addr, align 8
  %31 = load i64, i64* %ciphertext_size.addr, align 8
  %call15 = call i8* @memset(i8* noundef %30, i32 noundef 0, i64 noundef %31) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %if.end8
  br label %exit

exit:                                             ; preds = %if.end16, %if.then7
  %32 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call17 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %32) #6
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_check_algorithm(i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 83886080
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -256
  %cmp2 = icmp eq i32 %and1, 100664064
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %2, -256
  %cmp5 = icmp eq i32 %and4, 100668160
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %3, -256
  %cmp8 = icmp eq i32 %and7, 100663808
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load i32, i32* %alg.addr, align 4
  %and10 = and i32 %4, -256
  %and11 = and i32 %and10, -257
  %cmp12 = icmp eq i32 %and11, 100664832
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %5 = load i32, i32* %alg.addr, align 4
  %and14 = and i32 %5, -256
  %cmp15 = icmp eq i32 %and14, 100665600
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %6 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %6, -256
  %and18 = and i32 %and17, -257
  %cmp19 = icmp eq i32 %and18, 100664320
  br i1 %cmp19, label %land.lhs.true, label %cond.false47

land.lhs.true:                                    ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false
  %7 = load i32, i32* %alg.addr, align 4
  %and20 = and i32 %7, 255
  %cmp21 = icmp ne i32 %and20, 0
  br i1 %cmp21, label %cond.true, label %cond.false47

cond.true:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %alg.addr, align 4
  %and22 = and i32 %8, -256
  %cmp23 = icmp eq i32 %and22, 100664064
  br i1 %cmp23, label %land.lhs.true41, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %cond.true
  %9 = load i32, i32* %alg.addr, align 4
  %and25 = and i32 %9, -256
  %cmp26 = icmp eq i32 %and25, 100668160
  br i1 %cmp26, label %land.lhs.true41, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %10 = load i32, i32* %alg.addr, align 4
  %and28 = and i32 %10, -256
  %cmp29 = icmp eq i32 %and28, 100663808
  br i1 %cmp29, label %land.lhs.true41, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %11 = load i32, i32* %alg.addr, align 4
  %and31 = and i32 %11, -256
  %and32 = and i32 %and31, -257
  %cmp33 = icmp eq i32 %and32, 100664832
  br i1 %cmp33, label %land.lhs.true41, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %12 = load i32, i32* %alg.addr, align 4
  %and35 = and i32 %12, -256
  %cmp36 = icmp eq i32 %and35, 100665600
  br i1 %cmp36, label %land.lhs.true41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false34
  %13 = load i32, i32* %alg.addr, align 4
  %and38 = and i32 %13, -256
  %and39 = and i32 %and38, -257
  %cmp40 = icmp eq i32 %and39, 100664320
  br i1 %cmp40, label %land.lhs.true41, label %cond.false

land.lhs.true41:                                  ; preds = %lor.lhs.false37, %lor.lhs.false34, %lor.lhs.false30, %lor.lhs.false27, %lor.lhs.false24, %cond.true
  %14 = load i32, i32* %alg.addr, align 4
  %and42 = and i32 %14, 255
  %cmp43 = icmp ne i32 %and42, 0
  br i1 %cmp43, label %cond.true44, label %cond.false

cond.true44:                                      ; preds = %land.lhs.true41
  %15 = load i32, i32* %alg.addr, align 4
  %and45 = and i32 %15, 255
  %or = or i32 %and45, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true41, %lor.lhs.false37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true44
  %cond = phi i32 [ %or, %cond.true44 ], [ 0, %cond.false ]
  %cmp46 = icmp eq i32 %cond, 33554687
  br i1 %cmp46, label %if.then, label %if.end

cond.false47:                                     ; preds = %land.lhs.true, %lor.lhs.false16
  %16 = load i32, i32* %alg.addr, align 4
  %and48 = and i32 %16, 2130706432
  %cmp49 = icmp eq i32 %and48, 50331648
  br i1 %cmp49, label %cond.true50, label %cond.false53

cond.true50:                                      ; preds = %cond.false47
  %17 = load i32, i32* %alg.addr, align 4
  %and51 = and i32 %17, 32768
  %cmp52 = icmp ne i32 %and51, 0
  br i1 %cmp52, label %if.then, label %if.end

cond.false53:                                     ; preds = %cond.false47
  %18 = load i32, i32* %alg.addr, align 4
  %and54 = and i32 %18, 2130706432
  %cmp55 = icmp eq i32 %and54, 83886080
  br i1 %cmp55, label %cond.true56, label %cond.false59

cond.true56:                                      ; preds = %cond.false53
  %19 = load i32, i32* %alg.addr, align 4
  %and57 = and i32 %19, 32768
  %cmp58 = icmp ne i32 %and57, 0
  br i1 %cmp58, label %if.then, label %if.end

cond.false59:                                     ; preds = %cond.false53
  %20 = load i32, i32* %alg.addr, align 4
  %cmp60 = icmp eq i32 %20, 33554687
  br i1 %cmp60, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false59, %cond.true56, %cond.true50, %cond.end, %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.false59, %cond.true56, %cond.true50, %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_check_nonce_length(i32 noundef %alg, i64 noundef %nonce_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %nonce_length.addr = alloca i64, align 8
  %base_alg = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_get_base_algorithm(i32 noundef %0) #6
  store i32 %call, i32* %base_alg, align 4
  %1 = load i32, i32* %base_alg, align 4
  switch i32 %1, label %sw.default [
    i32 89129472, label %sw.bb
    i32 89129216, label %sw.bb1
    i32 84935936, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i64, i64* %nonce_length.addr, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %3 = load i64, i64* %nonce_length.addr, align 8
  %cmp2 = icmp uge i64 %3, 7
  br i1 %cmp2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %sw.bb1
  %4 = load i64, i64* %nonce_length.addr, align 8
  %cmp3 = icmp ule i64 %4, 13
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %sw.bb1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load i64, i64* %nonce_length.addr, align 8
  %cmp7 = icmp eq i64 %5, 12
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb6
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %sw.bb6
  %6 = load i64, i64* %nonce_length.addr, align 8
  %cmp9 = icmp eq i64 %6, 8
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  store i32 -134, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end12, %if.end5, %if.end
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then10, %if.then8, %if.then4, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @psa_driver_wrapper_aead_encrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_decrypt(i32 noundef %key, i32 noundef %alg, i8* noundef %nonce, i64 noundef %nonce_length, i8* noundef %additional_data, i64 noundef %additional_data_length, i8* noundef %ciphertext, i64 noundef %ciphertext_length, i8* noundef %plaintext, i64 noundef %plaintext_size, i64* noundef %plaintext_length) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %additional_data.addr = alloca i8*, align 8
  %additional_data_length.addr = alloca i64, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_length.addr = alloca i64, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_size.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i8* %additional_data, i8** %additional_data.addr, align 8
  store i64 %additional_data_length, i64* %additional_data_length.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_length, i64* %ciphertext_length.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_size, i64* %plaintext_size.addr, align 8
  store i64* %plaintext_length, i64** %plaintext_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %plaintext_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_check_algorithm(i32 noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %status, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32, i32* %alg.addr, align 4
  %call1 = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %4, %struct.psa_key_slot_t** noundef %slot, i32 noundef 512, i32 noundef %5) #6
  store i32 %call1, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %status, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 0
  %9 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %10 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %11 = load i32, i32* %alg.addr, align 4
  %12 = load i64, i64* %nonce_length.addr, align 8
  %call5 = call i32 @psa_aead_check_nonce_length(i32 noundef %11, i64 noundef %12) #6
  store i32 %call5, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit

if.end8:                                          ; preds = %if.end4
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key9 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key9, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %16, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 1
  %17 = load i64, i64* %bytes, align 8
  %18 = load i32, i32* %alg.addr, align 4
  %19 = load i8*, i8** %nonce.addr, align 8
  %20 = load i64, i64* %nonce_length.addr, align 8
  %21 = load i8*, i8** %additional_data.addr, align 8
  %22 = load i64, i64* %additional_data_length.addr, align 8
  %23 = load i8*, i8** %ciphertext.addr, align 8
  %24 = load i64, i64* %ciphertext_length.addr, align 8
  %25 = load i8*, i8** %plaintext.addr, align 8
  %26 = load i64, i64* %plaintext_size.addr, align 8
  %27 = load i64*, i64** %plaintext_length.addr, align 8
  %call11 = call i32 @psa_driver_wrapper_aead_decrypt(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %15, i64 noundef %17, i32 noundef %18, i8* noundef %19, i64 noundef %20, i8* noundef %21, i64 noundef %22, i8* noundef %23, i64 noundef %24, i8* noundef %25, i64 noundef %26, i64* noundef %27) #6
  store i32 %call11, i32* %status, align 4
  %28 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %28, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %29 = load i64, i64* %plaintext_size.addr, align 8
  %cmp13 = icmp ne i64 %29, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  %30 = load i8*, i8** %plaintext.addr, align 8
  %31 = load i64, i64* %plaintext_size.addr, align 8
  %call15 = call i8* @memset(i8* noundef %30, i32 noundef 0, i64 noundef %31) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %if.end8
  br label %exit

exit:                                             ; preds = %if.end16, %if.then7
  %32 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call17 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %32) #6
  %33 = load i32, i32* %status, align 4
  store i32 %33, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

declare dso_local i32 @psa_driver_wrapper_aead_decrypt(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.psa_aead_operation_s* noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_setup(%struct.psa_aead_operation_s* noundef %operation, i32 noundef %is_encrypt, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %is_encrypt.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %key_usage = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i32 %is_encrypt, i32* %is_encrypt.addr, align 4
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  store i32 0, i32* %key_usage, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_check_algorithm(i32 noundef %0) #6
  store i32 %call, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 0
  %3 = load i32, i32* %id, align 8
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end3:                                          ; preds = %if.end
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 5
  %bf.load4 = load i8, i8* %lengths_set, align 8
  %bf.lshr = lshr i8 %bf.load4, 1
  %bf.clear5 = and i8 %bf.lshr, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %if.then20, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %6 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %6, i32 0, i32 5
  %bf.load9 = load i8, i8* %ad_started, align 8
  %bf.lshr10 = lshr i8 %bf.load9, 2
  %bf.clear11 = and i8 %bf.lshr10, 1
  %bf.cast12 = zext i8 %bf.clear11 to i32
  %tobool13 = icmp ne i32 %bf.cast12, 0
  br i1 %tobool13, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %7 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %7, i32 0, i32 5
  %bf.load15 = load i8, i8* %body_started, align 8
  %bf.lshr16 = lshr i8 %bf.load15, 3
  %bf.clear17 = and i8 %bf.lshr16, 1
  %bf.cast18 = zext i8 %bf.clear17 to i32
  %tobool19 = icmp ne i32 %bf.cast18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false14, %lor.lhs.false8, %lor.lhs.false, %if.end3
  store i32 -137, i32* %status, align 4
  br label %exit

if.end21:                                         ; preds = %lor.lhs.false14
  %8 = load i32, i32* %is_encrypt.addr, align 4
  %tobool22 = icmp ne i32 %8, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  store i32 256, i32* %key_usage, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end21
  store i32 512, i32* %key_usage, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then23
  %9 = load i32, i32* %key.addr, align 4
  %10 = load i32, i32* %key_usage, align 4
  %11 = load i32, i32* %alg.addr, align 4
  %call25 = call i32 @psa_get_and_lock_key_slot_with_policy(i32 noundef %9, %struct.psa_key_slot_t** noundef %slot, i32 noundef %10, i32 noundef %11) #6
  store i32 %call25, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp26 = icmp ne i32 %12, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  br label %exit

if.end28:                                         ; preds = %if.end24
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %13 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %13, i32 0, i32 0
  %14 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %15 = bitcast %struct.psa_core_key_attributes_t* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %16 = load i32, i32* %is_encrypt.addr, align 4
  %tobool29 = icmp ne i32 %16, 0
  br i1 %tobool29, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.end28
  %17 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key31 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key31, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8
  %20 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key32 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %20, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key32, i32 0, i32 1
  %21 = load i64, i64* %bytes, align 8
  %22 = load i32, i32* %alg.addr, align 4
  %call33 = call i32 @psa_driver_wrapper_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef %17, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %19, i64 noundef %21, i32 noundef %22) #6
  store i32 %call33, i32* %status, align 4
  br label %if.end40

if.else34:                                        ; preds = %if.end28
  %23 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %24 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key35 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %24, i32 0, i32 2
  %data36 = getelementptr inbounds %struct.key_data, %struct.key_data* %key35, i32 0, i32 0
  %25 = load i8*, i8** %data36, align 8
  %26 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key37 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %26, i32 0, i32 2
  %bytes38 = getelementptr inbounds %struct.key_data, %struct.key_data* %key37, i32 0, i32 1
  %27 = load i64, i64* %bytes38, align 8
  %28 = load i32, i32* %alg.addr, align 4
  %call39 = call i32 @psa_driver_wrapper_aead_decrypt_setup(%struct.psa_aead_operation_s* noundef %23, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %25, i64 noundef %27, i32 noundef %28) #6
  store i32 %call39, i32* %status, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else34, %if.then30
  %29 = load i32, i32* %status, align 4
  %cmp41 = icmp ne i32 %29, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end40
  br label %exit

if.end43:                                         ; preds = %if.end40
  %30 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %31 = load i32, i32* %alg.addr, align 4
  %call44 = call i32 @psa_validate_tag_length(%struct.psa_aead_operation_s* noundef %30, i32 noundef %31) #6
  store i32 %call44, i32* %status, align 4
  %cmp45 = icmp ne i32 %call44, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  br label %exit

if.end47:                                         ; preds = %if.end43
  %call48 = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #6
  %32 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %key_type = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %32, i32 0, i32 2
  store i16 %call48, i16* %key_type, align 8
  br label %exit

exit:                                             ; preds = %if.end47, %if.then46, %if.then42, %if.then27, %if.then20, %if.then2, %if.then
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call49 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %33) #6
  store i32 %call49, i32* %unlock_status, align 4
  %34 = load i32, i32* %status, align 4
  %cmp50 = icmp eq i32 %34, 0
  br i1 %cmp50, label %if.then51, label %if.else57

if.then51:                                        ; preds = %exit
  %35 = load i32, i32* %unlock_status, align 4
  store i32 %35, i32* %status, align 4
  %36 = load i32, i32* %alg.addr, align 4
  %call52 = call i32 @psa_aead_get_base_algorithm(i32 noundef %36) #6
  %37 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg53 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %37, i32 0, i32 1
  store i32 %call52, i32* %alg53, align 4
  %38 = load i32, i32* %is_encrypt.addr, align 4
  %39 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %is_encrypt54 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %39, i32 0, i32 5
  %40 = trunc i32 %38 to i8
  %bf.load55 = load i8, i8* %is_encrypt54, align 8
  %bf.value = and i8 %40, 1
  %bf.shl = shl i8 %bf.value, 4
  %bf.clear56 = and i8 %bf.load55, -17
  %bf.set = or i8 %bf.clear56, %bf.shl
  store i8 %bf.set, i8* %is_encrypt54, align 8
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end59

if.else57:                                        ; preds = %exit
  %41 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call58 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %41) #6
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then51
  %42 = load i32, i32* %status, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_decrypt_setup(%struct.psa_aead_operation_s* noundef %operation, i32 noundef %key, i32 noundef %alg) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %key.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %1 = load i32, i32* %key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_aead_setup(%struct.psa_aead_operation_s* noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef %2) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_generate_nonce(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %nonce, i64 noundef %nonce_size, i64* noundef %nonce_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %nonce.addr = alloca i8*, align 8
  %nonce_size.addr = alloca i64, align 8
  %nonce_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %local_nonce = alloca [13 x i8], align 1
  %required_nonce_size = alloca i64, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_size, i64* %nonce_size.addr, align 8
  store i64* %nonce_length, i64** %nonce_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %nonce_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 5
  %bf.load1 = load i8, i8* %is_encrypt, align 8
  %bf.lshr = lshr i8 %bf.load1, 4
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %lor.lhs.false
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %key_type = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 2
  %6 = load i16, i16* %key_type, align 8
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 28672
  %cmp7 = icmp eq i32 %and, 8192
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  %7 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %key_type9 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %7, i32 0, i32 2
  %8 = load i16, i16* %key_type9, align 8
  %conv10 = zext i16 %8 to i32
  %shr = ashr i32 %conv10, 8
  %and11 = and i32 %shr, 7
  %shl = shl i32 1, %and11
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp12 = icmp eq i32 %cond, 16
  br i1 %cmp12, label %cond.true14, label %cond.false26

cond.true14:                                      ; preds = %cond.end
  %9 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %9, i32 0, i32 1
  %10 = load i32, i32* %alg, align 4
  %xor = xor i32 %10, 89129216
  %and15 = and i32 %xor, -4161537
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.false18, label %cond.true17

cond.true17:                                      ; preds = %cond.true14
  br label %cond.end24

cond.false18:                                     ; preds = %cond.true14
  %11 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg19 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %11, i32 0, i32 1
  %12 = load i32, i32* %alg19, align 4
  %xor20 = xor i32 %12, 89129472
  %and21 = and i32 %xor20, -4161537
  %tobool22 = icmp ne i32 %and21, 0
  %lnot = xor i1 %tobool22, true
  %13 = zext i1 %lnot to i64
  %cond23 = select i1 %lnot, i32 12, i32 0
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false18, %cond.true17
  %cond25 = phi i32 [ 13, %cond.true17 ], [ %cond23, %cond.false18 ]
  br label %cond.end37

cond.false26:                                     ; preds = %cond.end
  %14 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %key_type27 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %14, i32 0, i32 2
  %15 = load i16, i16* %key_type27, align 8
  %conv28 = zext i16 %15 to i32
  %cmp29 = icmp eq i32 %conv28, 8196
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.false26
  %16 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg31 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %16, i32 0, i32 1
  %17 = load i32, i32* %alg31, align 4
  %xor32 = xor i32 %17, 84935936
  %and33 = and i32 %xor32, -4161537
  %tobool34 = icmp ne i32 %and33, 0
  %lnot35 = xor i1 %tobool34, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false26
  %18 = phi i1 [ false, %cond.false26 ], [ %lnot35, %land.rhs ]
  %19 = zext i1 %18 to i64
  %cond36 = select i1 %18, i32 12, i32 0
  br label %cond.end37

cond.end37:                                       ; preds = %land.end, %cond.end24
  %cond38 = phi i32 [ %cond25, %cond.end24 ], [ %cond36, %land.end ]
  %conv39 = sext i32 %cond38 to i64
  store i64 %conv39, i64* %required_nonce_size, align 8
  %20 = load i64, i64* %nonce_size.addr, align 8
  %21 = load i64, i64* %required_nonce_size, align 8
  %cmp40 = icmp ult i64 %20, %21
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %cond.end37
  store i32 -138, i32* %status, align 4
  br label %exit

if.end43:                                         ; preds = %cond.end37
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %local_nonce, i64 0, i64 0
  %22 = load i64, i64* %required_nonce_size, align 8
  %call = call i32 @psa_generate_random(i8* noundef %arraydecay, i64 noundef %22) #6
  store i32 %call, i32* %status, align 4
  %23 = load i32, i32* %status, align 4
  %cmp44 = icmp ne i32 %23, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  br label %exit

if.end47:                                         ; preds = %if.end43
  %24 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %arraydecay48 = getelementptr inbounds [13 x i8], [13 x i8]* %local_nonce, i64 0, i64 0
  %25 = load i64, i64* %required_nonce_size, align 8
  %call49 = call i32 @psa_aead_set_nonce(%struct.psa_aead_operation_s* noundef %24, i8* noundef %arraydecay48, i64 noundef %25) #6
  store i32 %call49, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end47, %if.then46, %if.then42, %if.then5, %if.then
  %26 = load i32, i32* %status, align 4
  %cmp50 = icmp eq i32 %26, 0
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %exit
  %27 = load i8*, i8** %nonce.addr, align 8
  %arraydecay53 = getelementptr inbounds [13 x i8], [13 x i8]* %local_nonce, i64 0, i64 0
  %28 = load i64, i64* %required_nonce_size, align 8
  %call54 = call i8* @memcpy(i8* noundef %27, i8* noundef %arraydecay53, i64 noundef %28) #5
  %29 = load i64, i64* %required_nonce_size, align 8
  %30 = load i64*, i64** %nonce_length.addr, align 8
  store i64 %29, i64* %30, align 8
  br label %if.end56

if.else:                                          ; preds = %exit
  %31 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call55 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %31) #6
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then52
  %32 = load i32, i32* %status, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_set_nonce(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %nonce, i64 noundef %nonce_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %nonce.addr = alloca i8*, align 8
  %nonce_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %nonce, i8** %nonce.addr, align 8
  store i64 %nonce_length, i64* %nonce_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 1
  %4 = load i32, i32* %alg, align 4
  %5 = load i64, i64* %nonce_length.addr, align 8
  %call = call i32 @psa_aead_check_nonce_length(i32 noundef %4, i64 noundef %5) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store i32 -135, i32* %status, align 4
  br label %exit

if.end5:                                          ; preds = %if.end2
  %7 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %8 = load i8*, i8** %nonce.addr, align 8
  %9 = load i64, i64* %nonce_length.addr, align 8
  %call6 = call i32 @psa_driver_wrapper_aead_set_nonce(%struct.psa_aead_operation_s* noundef %7, i8* noundef %8, i64 noundef %9) #6
  store i32 %call6, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end5, %if.then4, %if.then1, %if.then
  %10 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %exit
  %11 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set9 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %11, i32 0, i32 5
  %bf.load10 = load i8, i8* %nonce_set9, align 8
  %bf.clear11 = and i8 %bf.load10, -2
  %bf.set = or i8 %bf.clear11, 1
  store i8 %bf.set, i8* %nonce_set9, align 8
  br label %if.end13

if.else:                                          ; preds = %exit
  %12 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call12 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %12) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %13 = load i32, i32* %status, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call = call i32 @psa_driver_wrapper_aead_abort(%struct.psa_aead_operation_s* noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %4 = bitcast %struct.psa_aead_operation_s* %3 to i8*
  %call1 = call i8* @memset(i8* noundef %4, i32 noundef 0, i64 noundef 472) #5
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @psa_driver_wrapper_aead_set_nonce(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_set_lengths(%struct.psa_aead_operation_s* noundef %operation, i64 noundef %ad_length, i64 noundef %plaintext_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %ad_length.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i64 %ad_length, i64* %ad_length.addr, align 8
  store i64 %plaintext_length, i64* %plaintext_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 5
  %bf.load = load i8, i8* %lengths_set, align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load1 = load i8, i8* %ad_started, align 8
  %bf.lshr2 = lshr i8 %bf.load1, 2
  %bf.clear3 = and i8 %bf.lshr2, 1
  %bf.cast4 = zext i8 %bf.clear3 to i32
  %tobool5 = icmp ne i32 %bf.cast4, 0
  br i1 %tobool5, label %if.then12, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 5
  %bf.load7 = load i8, i8* %body_started, align 8
  %bf.lshr8 = lshr i8 %bf.load7, 3
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = zext i8 %bf.clear9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %lor.lhs.false6
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 1
  %6 = load i32, i32* %alg, align 4
  switch i32 %6, label %sw.default [
    i32 89129472, label %sw.bb
    i32 89129216, label %sw.bb19
    i32 84935936, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end13
  %7 = load i64, i64* %ad_length.addr, align 8
  %shr = lshr i64 %7, 61
  %cmp14 = icmp ne i64 %shr, 0
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %sw.bb
  %8 = load i64, i64* %plaintext_length.addr, align 8
  %cmp16 = icmp ugt i64 %8, 68719476704
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false15, %sw.bb
  store i32 -135, i32* %status, align 4
  br label %exit

if.end18:                                         ; preds = %lor.lhs.false15
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13
  %9 = load i64, i64* %ad_length.addr, align 8
  %cmp20 = icmp ugt i64 %9, 65280
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %sw.bb19
  store i32 -135, i32* %status, align 4
  br label %exit

if.end22:                                         ; preds = %sw.bb19
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb23, %if.end22, %if.end18
  %10 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %11 = load i64, i64* %ad_length.addr, align 8
  %12 = load i64, i64* %plaintext_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_aead_set_lengths(%struct.psa_aead_operation_s* noundef %10, i64 noundef %11, i64 noundef %12) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %sw.epilog, %if.then21, %if.then17, %if.then12, %if.then
  %13 = load i32, i32* %status, align 4
  %cmp24 = icmp eq i32 %13, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %exit
  %14 = load i64, i64* %ad_length.addr, align 8
  %15 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %15, i32 0, i32 3
  store i64 %14, i64* %ad_remaining, align 8
  %16 = load i64, i64* %plaintext_length.addr, align 8
  %17 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %17, i32 0, i32 4
  store i64 %16, i64* %body_remaining, align 8
  %18 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set26 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %18, i32 0, i32 5
  %bf.load27 = load i8, i8* %lengths_set26, align 8
  %bf.clear28 = and i8 %bf.load27, -3
  %bf.set = or i8 %bf.clear28, 2
  store i8 %bf.set, i8* %lengths_set26, align 8
  br label %if.end30

if.else:                                          ; preds = %exit
  %19 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call29 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %19) #6
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then25
  %20 = load i32, i32* %status, align 4
  ret i32 %20
}

declare dso_local i32 @psa_driver_wrapper_aead_set_lengths(%struct.psa_aead_operation_s* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_update_ad(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load1 = load i8, i8* %body_started, align 8
  %bf.lshr = lshr i8 %bf.load1, 3
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end6:                                          ; preds = %lor.lhs.false
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 5
  %bf.load7 = load i8, i8* %lengths_set, align 8
  %bf.lshr8 = lshr i8 %bf.load7, 1
  %bf.clear9 = and i8 %bf.lshr8, 1
  %bf.cast10 = zext i8 %bf.clear9 to i32
  %tobool11 = icmp ne i32 %bf.cast10, 0
  br i1 %tobool11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end6
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 3
  %6 = load i64, i64* %ad_remaining, align 8
  %7 = load i64, i64* %input_length.addr, align 8
  %cmp13 = icmp ult i64 %6, %7
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then12
  store i32 -135, i32* %status, align 4
  br label %exit

if.end15:                                         ; preds = %if.then12
  %8 = load i64, i64* %input_length.addr, align 8
  %9 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_remaining16 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %9, i32 0, i32 3
  %10 = load i64, i64* %ad_remaining16, align 8
  %sub = sub i64 %10, %8
  store i64 %sub, i64* %ad_remaining16, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end6
  %11 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %11, i32 0, i32 1
  %12 = load i32, i32* %alg, align 4
  %cmp17 = icmp eq i32 %12, 89129216
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  store i32 -137, i32* %status, align 4
  br label %exit

if.end19:                                         ; preds = %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end15
  %13 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i64, i64* %input_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_aead_update_ad(%struct.psa_aead_operation_s* noundef %13, i8* noundef %14, i64 noundef %15) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end20, %if.then18, %if.then14, %if.then5, %if.then
  %16 = load i32, i32* %status, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %exit
  %17 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %17, i32 0, i32 5
  %bf.load23 = load i8, i8* %ad_started, align 8
  %bf.clear24 = and i8 %bf.load23, -5
  %bf.set = or i8 %bf.clear24, 4
  store i8 %bf.set, i8* %ad_started, align 8
  br label %if.end27

if.else25:                                        ; preds = %exit
  %18 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call26 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %18) #6
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then22
  %19 = load i32, i32* %status, align 4
  ret i32 %19
}

declare dso_local i32 @psa_driver_wrapper_aead_update_ad(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_update(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %input, i64 noundef %input_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %input.addr = alloca i8*, align 8
  %input_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %input, i8** %input.addr, align 8
  store i64 %input_length, i64* %input_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %output_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %1, i32 0, i32 0
  %2 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 5
  %bf.load3 = load i8, i8* %lengths_set, align 8
  %bf.lshr = lshr i8 %bf.load3, 1
  %bf.clear4 = and i8 %bf.lshr, 1
  %bf.cast5 = zext i8 %bf.clear4 to i32
  %tobool6 = icmp ne i32 %bf.cast5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end2
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 3
  %6 = load i64, i64* %ad_remaining, align 8
  %cmp8 = icmp ne i64 %6, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then7
  store i32 -135, i32* %status, align 4
  br label %exit

if.end10:                                         ; preds = %if.then7
  %7 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %7, i32 0, i32 4
  %8 = load i64, i64* %body_remaining, align 8
  %9 = load i64, i64* %input_length.addr, align 8
  %cmp11 = icmp ult i64 %8, %9
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 -135, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %if.end10
  %10 = load i64, i64* %input_length.addr, align 8
  %11 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_remaining14 = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %11, i32 0, i32 4
  %12 = load i64, i64* %body_remaining14, align 8
  %sub = sub i64 %12, %10
  store i64 %sub, i64* %body_remaining14, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end2
  %13 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %13, i32 0, i32 1
  %14 = load i32, i32* %alg, align 4
  %cmp15 = icmp eq i32 %14, 89129216
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  store i32 -137, i32* %status, align 4
  br label %exit

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end13
  %15 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %16 = load i8*, i8** %input.addr, align 8
  %17 = load i64, i64* %input_length.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %19 = load i64, i64* %output_size.addr, align 8
  %20 = load i64*, i64** %output_length.addr, align 8
  %call = call i32 @psa_driver_wrapper_aead_update(%struct.psa_aead_operation_s* noundef %15, i8* noundef %16, i64 noundef %17, i8* noundef %18, i64 noundef %19, i64* noundef %20) #6
  store i32 %call, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end18, %if.then16, %if.then12, %if.then9, %if.then1, %if.then
  %21 = load i32, i32* %status, align 4
  %cmp19 = icmp eq i32 %21, 0
  br i1 %cmp19, label %if.then20, label %if.else23

if.then20:                                        ; preds = %exit
  %22 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_started = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %22, i32 0, i32 5
  %bf.load21 = load i8, i8* %body_started, align 8
  %bf.clear22 = and i8 %bf.load21, -9
  %bf.set = or i8 %bf.clear22, 8
  store i8 %bf.set, i8* %body_started, align 8
  br label %if.end25

if.else23:                                        ; preds = %exit
  %23 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call24 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %23) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then20
  %24 = load i32, i32* %status, align 4
  ret i32 %24
}

declare dso_local i32 @psa_driver_wrapper_aead_update(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_finish(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %ciphertext, i64 noundef %ciphertext_size, i64* noundef %ciphertext_length, i8* noundef %tag, i64 noundef %tag_size, i64* noundef %tag_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %ciphertext.addr = alloca i8*, align 8
  %ciphertext_size.addr = alloca i64, align 8
  %ciphertext_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_size.addr = alloca i64, align 8
  %tag_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %ciphertext, i8** %ciphertext.addr, align 8
  store i64 %ciphertext_size, i64* %ciphertext_size.addr, align 8
  store i64* %ciphertext_length, i64** %ciphertext_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_size, i64* %tag_size.addr, align 8
  store i64* %tag_length, i64** %tag_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %ciphertext_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i64, i64* %tag_size.addr, align 8
  %2 = load i64*, i64** %tag_length.addr, align 8
  store i64 %1, i64* %2, align 8
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call = call i32 @psa_aead_final_checks(%struct.psa_aead_operation_s* noundef %3) #6
  store i32 %call, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %5 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %5, i32 0, i32 5
  %bf.load = load i8, i8* %is_encrypt, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %6 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %7 = load i8*, i8** %ciphertext.addr, align 8
  %8 = load i64, i64* %ciphertext_size.addr, align 8
  %9 = load i64*, i64** %ciphertext_length.addr, align 8
  %10 = load i8*, i8** %tag.addr, align 8
  %11 = load i64, i64* %tag_size.addr, align 8
  %12 = load i64*, i64** %tag_length.addr, align 8
  %call3 = call i32 @psa_driver_wrapper_aead_finish(%struct.psa_aead_operation_s* noundef %6, i8* noundef %7, i64 noundef %8, i64* noundef %9, i8* noundef %10, i64 noundef %11, i64* noundef %12) #6
  store i32 %call3, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  %13 = load i8*, i8** %tag.addr, align 8
  %cmp4 = icmp ne i8* %13, null
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %exit
  %14 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %15 = load i8*, i8** %tag.addr, align 8
  %16 = load i64, i64* %tag_size.addr, align 8
  %call8 = call i8* @memset(i8* noundef %15, i32 noundef 33, i64 noundef %16) #5
  br label %if.end13

if.else:                                          ; preds = %if.then5
  %17 = load i64*, i64** %tag_length.addr, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %tag_size.addr, align 8
  %cmp9 = icmp ult i64 %18, %19
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %20 = load i8*, i8** %tag.addr, align 8
  %21 = load i64*, i64** %tag_length.addr, align 8
  %22 = load i64, i64* %21, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %22
  %23 = load i64, i64* %tag_size.addr, align 8
  %24 = load i64*, i64** %tag_length.addr, align 8
  %25 = load i64, i64* %24, align 8
  %sub = sub i64 %23, %25
  %call11 = call i8* @memset(i8* noundef %add.ptr, i32 noundef 33, i64 noundef %sub) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %exit
  %26 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call15 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %26) #6
  %27 = load i32, i32* %status, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_final_checks(%struct.psa_aead_operation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %id = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %nonce_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %2, i32 0, i32 5
  %bf.load = load i8, i8* %nonce_set, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %lengths_set = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load1 = load i8, i8* %lengths_set, align 8
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast3 = zext i8 %bf.clear2 to i32
  %tobool4 = icmp ne i32 %bf.cast3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %ad_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %4, i32 0, i32 3
  %5 = load i64, i64* %ad_remaining, align 8
  %cmp5 = icmp ne i64 %5, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true
  %6 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %body_remaining = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %6, i32 0, i32 4
  %7 = load i64, i64* %body_remaining, align 8
  %cmp7 = icmp ne i64 %7, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %land.lhs.true
  store i32 -135, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

declare dso_local i32 @psa_driver_wrapper_aead_finish(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_aead_verify(%struct.psa_aead_operation_s* noundef %operation, i8* noundef %plaintext, i64 noundef %plaintext_size, i64* noundef %plaintext_length, i8* noundef %tag, i64 noundef %tag_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %plaintext.addr = alloca i8*, align 8
  %plaintext_size.addr = alloca i64, align 8
  %plaintext_length.addr = alloca i64*, align 8
  %tag.addr = alloca i8*, align 8
  %tag_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i8* %plaintext, i8** %plaintext.addr, align 8
  store i64 %plaintext_size, i64* %plaintext_size.addr, align 8
  store i64* %plaintext_length, i64** %plaintext_length.addr, align 8
  store i8* %tag, i8** %tag.addr, align 8
  store i64 %tag_length, i64* %tag_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64*, i64** %plaintext_length.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call = call i32 @psa_aead_final_checks(%struct.psa_aead_operation_s* noundef %1) #6
  store i32 %call, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %is_encrypt = getelementptr inbounds %struct.psa_aead_operation_s, %struct.psa_aead_operation_s* %3, i32 0, i32 5
  %bf.load = load i8, i8* %is_encrypt, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -137, i32* %status, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %4 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %5 = load i8*, i8** %plaintext.addr, align 8
  %6 = load i64, i64* %plaintext_size.addr, align 8
  %7 = load i64*, i64** %plaintext_length.addr, align 8
  %8 = load i8*, i8** %tag.addr, align 8
  %9 = load i64, i64* %tag_length.addr, align 8
  %call3 = call i32 @psa_driver_wrapper_aead_verify(%struct.psa_aead_operation_s* noundef %4, i8* noundef %5, i64 noundef %6, i64* noundef %7, i8* noundef %8, i64 noundef %9) #6
  store i32 %call3, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  %10 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call4 = call i32 @psa_aead_abort(%struct.psa_aead_operation_s* noundef %10) #6
  %11 = load i32, i32* %status, align 4
  ret i32 %11
}

declare dso_local i32 @psa_driver_wrapper_aead_verify(%struct.psa_aead_operation_s* noundef, i8* noundef, i64 noundef, i64* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @psa_driver_wrapper_aead_abort(%struct.psa_aead_operation_s* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %operation) #0 {
entry:
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %status = alloca i32, align 4
  %kdf_alg = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i32 0, i32* %status, align 4
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call = call i32 @psa_key_derivation_get_kdf_alg(%struct.psa_key_derivation_s* noundef %0) #6
  store i32 %call, i32* %kdf_alg, align 4
  %1 = load i32, i32* %kdf_alg, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end71

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %kdf_alg, align 4
  %and = and i32 %2, -256
  %cmp1 = icmp eq i32 %and, 134217984
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load i32, i32* %kdf_alg, align 4
  %and2 = and i32 %3, -256
  %cmp3 = icmp eq i32 %and2, 134218752
  br i1 %cmp3, label %if.then7, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %kdf_alg, align 4
  %and5 = and i32 %4, -256
  %cmp6 = icmp eq i32 %and5, 134219008
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %lor.lhs.false4, %lor.lhs.false, %if.else
  %5 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %5, i32 0, i32 3
  %hkdf = bitcast %union.anon.3* %ctx to %struct.psa_hkdf_key_derivation_t*
  %info = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %hkdf, i32 0, i32 0
  %6 = load i8*, i8** %info, align 8
  call void @free(i8* noundef %6) #5
  %7 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx8 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %7, i32 0, i32 3
  %hkdf9 = bitcast %union.anon.3* %ctx8 to %struct.psa_hkdf_key_derivation_t*
  %hmac = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %hkdf9, i32 0, i32 7
  %call10 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %hmac) #6
  store i32 %call10, i32* %status, align 4
  br label %if.end70

if.else11:                                        ; preds = %lor.lhs.false4
  %8 = load i32, i32* %kdf_alg, align 4
  %and12 = and i32 %8, -256
  %cmp13 = icmp eq i32 %and12, 134218240
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.else11
  %9 = load i32, i32* %kdf_alg, align 4
  %and15 = and i32 %9, -256
  %cmp16 = icmp eq i32 %and15, 134218496
  br i1 %cmp16, label %if.then17, label %if.else68

if.then17:                                        ; preds = %lor.lhs.false14, %if.else11
  %10 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx18 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %10, i32 0, i32 3
  %tls12_prf = bitcast %union.anon.3* %ctx18 to %struct.psa_tls12_prf_key_derivation_s*
  %secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf, i32 0, i32 3
  %11 = load i8*, i8** %secret, align 8
  %cmp19 = icmp ne i8* %11, null
  br i1 %cmp19, label %if.then20, label %if.end

if.then20:                                        ; preds = %if.then17
  %12 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx21 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %12, i32 0, i32 3
  %tls12_prf22 = bitcast %union.anon.3* %ctx21 to %struct.psa_tls12_prf_key_derivation_s*
  %secret23 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf22, i32 0, i32 3
  %13 = load i8*, i8** %secret23, align 8
  %14 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx24 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %14, i32 0, i32 3
  %tls12_prf25 = bitcast %union.anon.3* %ctx24 to %struct.psa_tls12_prf_key_derivation_s*
  %secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf25, i32 0, i32 4
  %15 = load i64, i64* %secret_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %13, i64 noundef %15) #6
  %16 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx26 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %16, i32 0, i32 3
  %tls12_prf27 = bitcast %union.anon.3* %ctx26 to %struct.psa_tls12_prf_key_derivation_s*
  %secret28 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf27, i32 0, i32 3
  %17 = load i8*, i8** %secret28, align 8
  call void @free(i8* noundef %17) #5
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then17
  %18 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx29 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %18, i32 0, i32 3
  %tls12_prf30 = bitcast %union.anon.3* %ctx29 to %struct.psa_tls12_prf_key_derivation_s*
  %seed = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf30, i32 0, i32 5
  %19 = load i8*, i8** %seed, align 8
  %cmp31 = icmp ne i8* %19, null
  br i1 %cmp31, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end
  %20 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx33 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %20, i32 0, i32 3
  %tls12_prf34 = bitcast %union.anon.3* %ctx33 to %struct.psa_tls12_prf_key_derivation_s*
  %seed35 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf34, i32 0, i32 5
  %21 = load i8*, i8** %seed35, align 8
  %22 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx36 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %22, i32 0, i32 3
  %tls12_prf37 = bitcast %union.anon.3* %ctx36 to %struct.psa_tls12_prf_key_derivation_s*
  %seed_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf37, i32 0, i32 6
  %23 = load i64, i64* %seed_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %21, i64 noundef %23) #6
  %24 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx38 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %24, i32 0, i32 3
  %tls12_prf39 = bitcast %union.anon.3* %ctx38 to %struct.psa_tls12_prf_key_derivation_s*
  %seed40 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf39, i32 0, i32 5
  %25 = load i8*, i8** %seed40, align 8
  call void @free(i8* noundef %25) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then32, %if.end
  %26 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx42 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %26, i32 0, i32 3
  %tls12_prf43 = bitcast %union.anon.3* %ctx42 to %struct.psa_tls12_prf_key_derivation_s*
  %label = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf43, i32 0, i32 7
  %27 = load i8*, i8** %label, align 8
  %cmp44 = icmp ne i8* %27, null
  br i1 %cmp44, label %if.then45, label %if.end54

if.then45:                                        ; preds = %if.end41
  %28 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx46 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %28, i32 0, i32 3
  %tls12_prf47 = bitcast %union.anon.3* %ctx46 to %struct.psa_tls12_prf_key_derivation_s*
  %label48 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf47, i32 0, i32 7
  %29 = load i8*, i8** %label48, align 8
  %30 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx49 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %30, i32 0, i32 3
  %tls12_prf50 = bitcast %union.anon.3* %ctx49 to %struct.psa_tls12_prf_key_derivation_s*
  %label_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf50, i32 0, i32 8
  %31 = load i64, i64* %label_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %29, i64 noundef %31) #6
  %32 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx51 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %32, i32 0, i32 3
  %tls12_prf52 = bitcast %union.anon.3* %ctx51 to %struct.psa_tls12_prf_key_derivation_s*
  %label53 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf52, i32 0, i32 7
  %33 = load i8*, i8** %label53, align 8
  call void @free(i8* noundef %33) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %if.end41
  %34 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx55 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %34, i32 0, i32 3
  %tls12_prf56 = bitcast %union.anon.3* %ctx55 to %struct.psa_tls12_prf_key_derivation_s*
  %other_secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf56, i32 0, i32 9
  %35 = load i8*, i8** %other_secret, align 8
  %cmp57 = icmp ne i8* %35, null
  br i1 %cmp57, label %if.then58, label %if.end67

if.then58:                                        ; preds = %if.end54
  %36 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx59 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %36, i32 0, i32 3
  %tls12_prf60 = bitcast %union.anon.3* %ctx59 to %struct.psa_tls12_prf_key_derivation_s*
  %other_secret61 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf60, i32 0, i32 9
  %37 = load i8*, i8** %other_secret61, align 8
  %38 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx62 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %38, i32 0, i32 3
  %tls12_prf63 = bitcast %union.anon.3* %ctx62 to %struct.psa_tls12_prf_key_derivation_s*
  %other_secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf63, i32 0, i32 10
  %39 = load i64, i64* %other_secret_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %37, i64 noundef %39) #6
  %40 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx64 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %40, i32 0, i32 3
  %tls12_prf65 = bitcast %union.anon.3* %ctx64 to %struct.psa_tls12_prf_key_derivation_s*
  %other_secret66 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %tls12_prf65, i32 0, i32 9
  %41 = load i8*, i8** %other_secret66, align 8
  call void @free(i8* noundef %41) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then58, %if.end54
  store i32 0, i32* %status, align 4
  br label %if.end69

if.else68:                                        ; preds = %lor.lhs.false14
  store i32 -137, i32* %status, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.end67
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then7
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then
  %42 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %43 = bitcast %struct.psa_key_derivation_s* %42 to i8*
  call void @mbedtls_platform_zeroize(i8* noundef %43, i64 noundef 552) #6
  %44 = load i32, i32* %status, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_get_kdf_alg(%struct.psa_key_derivation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, 2130706432
  %cmp = icmp eq i32 %and, 150994944
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %2, i32 0, i32 0
  %3 = load i32, i32* %alg1, align 8
  %and2 = and i32 %3, -33488897
  %or = or i32 %and2, 134217728
  store i32 %or, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg3 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %4, i32 0, i32 0
  %5 = load i32, i32* %alg3, align 8
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_get_capacity(%struct.psa_key_derivation_s* noundef %operation, i64* noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %capacity.addr = alloca i64*, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i64* %capacity, i64** %capacity.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity1 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %2, i32 0, i32 2
  %3 = load i64, i64* %capacity1, align 8
  %4 = load i64*, i64** %capacity.addr, align 8
  store i64 %3, i64* %4, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_set_capacity(%struct.psa_key_derivation_s* noundef %operation, i64 noundef %capacity) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %capacity.addr = alloca i64, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %capacity.addr, align 8
  %3 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity1 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %3, i32 0, i32 2
  %4 = load i64, i64* %capacity1, align 8
  %cmp2 = icmp ugt i64 %2, %4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load i64, i64* %capacity.addr, align 8
  %6 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity5 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %6, i32 0, i32 2
  store i64 %5, i64* %capacity5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_output_bytes(%struct.psa_key_derivation_s* noundef %operation, i8* noundef %output, i64 noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %output.addr = alloca i8*, align 8
  %output_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %kdf_alg = alloca i32, align 4
  %alg32 = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_length, i64* %output_length.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call = call i32 @psa_key_derivation_get_kdf_alg(%struct.psa_key_derivation_s* noundef %0) #6
  store i32 %call, i32* %kdf_alg, align 4
  %1 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %1, i32 0, i32 0
  %2 = load i32, i32* %alg, align 8
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %output_length.addr, align 8
  %4 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %4, i32 0, i32 2
  %5 = load i64, i64* %capacity, align 8
  %cmp1 = icmp ugt i64 %3, %5
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity3 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %6, i32 0, i32 2
  store i64 0, i64* %capacity3, align 8
  store i32 -143, i32* %status, align 4
  br label %exit

if.end4:                                          ; preds = %if.end
  %7 = load i64, i64* %output_length.addr, align 8
  %cmp5 = icmp eq i64 %7, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %8 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity6 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %8, i32 0, i32 2
  %9 = load i64, i64* %capacity6, align 8
  %cmp7 = icmp eq i64 %9, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i32 -143, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %10 = load i64, i64* %output_length.addr, align 8
  %11 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity10 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %11, i32 0, i32 2
  %12 = load i64, i64* %capacity10, align 8
  %sub = sub i64 %12, %10
  store i64 %sub, i64* %capacity10, align 8
  %13 = load i32, i32* %kdf_alg, align 4
  %and = and i32 %13, -256
  %cmp11 = icmp eq i32 %and, 134217984
  br i1 %cmp11, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %14 = load i32, i32* %kdf_alg, align 4
  %and12 = and i32 %14, -256
  %cmp13 = icmp eq i32 %and12, 134218752
  br i1 %cmp13, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = load i32, i32* %kdf_alg, align 4
  %and15 = and i32 %15, -256
  %cmp16 = icmp eq i32 %and15, 134219008
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.end9
  %16 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %16, i32 0, i32 3
  %hkdf = bitcast %union.anon.3* %ctx to %struct.psa_hkdf_key_derivation_t*
  %17 = load i32, i32* %kdf_alg, align 4
  %18 = load i8*, i8** %output.addr, align 8
  %19 = load i64, i64* %output_length.addr, align 8
  %call18 = call i32 @psa_key_derivation_hkdf_read(%struct.psa_hkdf_key_derivation_t* noundef %hkdf, i32 noundef %17, i8* noundef %18, i64 noundef %19) #6
  store i32 %call18, i32* %status, align 4
  br label %if.end29

if.else:                                          ; preds = %lor.lhs.false14
  %20 = load i32, i32* %kdf_alg, align 4
  %and19 = and i32 %20, -256
  %cmp20 = icmp eq i32 %and19, 134218240
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.else
  %21 = load i32, i32* %kdf_alg, align 4
  %and22 = and i32 %21, -256
  %cmp23 = icmp eq i32 %and22, 134218496
  br i1 %cmp23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %lor.lhs.false21, %if.else
  %22 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx25 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %22, i32 0, i32 3
  %tls12_prf = bitcast %union.anon.3* %ctx25 to %struct.psa_tls12_prf_key_derivation_s*
  %23 = load i32, i32* %kdf_alg, align 4
  %24 = load i8*, i8** %output.addr, align 8
  %25 = load i64, i64* %output_length.addr, align 8
  %call26 = call i32 @psa_key_derivation_tls12_prf_read(%struct.psa_tls12_prf_key_derivation_s* noundef %tls12_prf, i32 noundef %23, i8* noundef %24, i64 noundef %25) #6
  store i32 %call26, i32* %status, align 4
  br label %if.end28

if.else27:                                        ; preds = %lor.lhs.false21
  %26 = load i32, i32* %kdf_alg, align 4
  store i32 -137, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %exit

exit:                                             ; preds = %if.end29, %if.then2
  %27 = load i32, i32* %status, align 4
  %cmp30 = icmp ne i32 %27, 0
  br i1 %cmp30, label %if.then31, label %if.end37

if.then31:                                        ; preds = %exit
  %28 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg33 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %28, i32 0, i32 0
  %29 = load i32, i32* %alg33, align 8
  store i32 %29, i32* %alg32, align 4
  %30 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call34 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %30) #6
  %31 = load i32, i32* %alg32, align 4
  %32 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg35 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %32, i32 0, i32 0
  store i32 %31, i32* %alg35, align 8
  %33 = load i8*, i8** %output.addr, align 8
  %34 = load i64, i64* %output_length.addr, align 8
  %call36 = call i8* @memset(i8* noundef %33, i32 noundef 33, i64 noundef %34) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %exit
  %35 = load i32, i32* %status, align 4
  store i32 %35, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.else27, %if.then8, %if.then
  %36 = load i32, i32* %retval, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_hkdf_read(%struct.psa_hkdf_key_derivation_t* noundef %hkdf, i32 noundef %kdf_alg, i8* noundef %output, i64 noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %hkdf.addr = alloca %struct.psa_hkdf_key_derivation_t*, align 8
  %kdf_alg.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %output_length.addr = alloca i64, align 8
  %hash_alg = alloca i32, align 4
  %hash_length = alloca i8, align 1
  %hmac_output_length = alloca i64, align 8
  %status = alloca i32, align 4
  %last_block = alloca i8, align 1
  %n = alloca i8, align 1
  store %struct.psa_hkdf_key_derivation_t* %hkdf, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  store i32 %kdf_alg, i32* %kdf_alg.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_length, i64* %output_length.addr, align 8
  %0 = load i32, i32* %kdf_alg.addr, align 4
  %and = and i32 %0, 255
  %or = or i32 33554432, %and
  store i32 %or, i32* %hash_alg, align 4
  %1 = load i32, i32* %hash_alg, align 4
  %and1 = and i32 %1, 255
  %or2 = or i32 33554432, %and1
  %cmp = icmp eq i32 %or2, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end82

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %hash_alg, align 4
  %and3 = and i32 %2, 255
  %or4 = or i32 33554432, %and3
  %cmp5 = icmp eq i32 %or4, 33554436
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false
  br label %cond.end80

cond.false7:                                      ; preds = %cond.false
  %3 = load i32, i32* %hash_alg, align 4
  %and8 = and i32 %3, 255
  %or9 = or i32 33554432, %and8
  %cmp10 = icmp eq i32 %or9, 33554437
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false7
  br label %cond.end78

cond.false12:                                     ; preds = %cond.false7
  %4 = load i32, i32* %hash_alg, align 4
  %and13 = and i32 %4, 255
  %or14 = or i32 33554432, %and13
  %cmp15 = icmp eq i32 %or14, 33554440
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end76

cond.false17:                                     ; preds = %cond.false12
  %5 = load i32, i32* %hash_alg, align 4
  %and18 = and i32 %5, 255
  %or19 = or i32 33554432, %and18
  %cmp20 = icmp eq i32 %or19, 33554441
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end74

cond.false22:                                     ; preds = %cond.false17
  %6 = load i32, i32* %hash_alg, align 4
  %and23 = and i32 %6, 255
  %or24 = or i32 33554432, %and23
  %cmp25 = icmp eq i32 %or24, 33554442
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end72

cond.false27:                                     ; preds = %cond.false22
  %7 = load i32, i32* %hash_alg, align 4
  %and28 = and i32 %7, 255
  %or29 = or i32 33554432, %and28
  %cmp30 = icmp eq i32 %or29, 33554443
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end70

cond.false32:                                     ; preds = %cond.false27
  %8 = load i32, i32* %hash_alg, align 4
  %and33 = and i32 %8, 255
  %or34 = or i32 33554432, %and33
  %cmp35 = icmp eq i32 %or34, 33554444
  br i1 %cmp35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end68

cond.false37:                                     ; preds = %cond.false32
  %9 = load i32, i32* %hash_alg, align 4
  %and38 = and i32 %9, 255
  %or39 = or i32 33554432, %and38
  %cmp40 = icmp eq i32 %or39, 33554445
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end66

cond.false42:                                     ; preds = %cond.false37
  %10 = load i32, i32* %hash_alg, align 4
  %and43 = and i32 %10, 255
  %or44 = or i32 33554432, %and43
  %cmp45 = icmp eq i32 %or44, 33554448
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end64

cond.false47:                                     ; preds = %cond.false42
  %11 = load i32, i32* %hash_alg, align 4
  %and48 = and i32 %11, 255
  %or49 = or i32 33554432, %and48
  %cmp50 = icmp eq i32 %or49, 33554449
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end62

cond.false52:                                     ; preds = %cond.false47
  %12 = load i32, i32* %hash_alg, align 4
  %and53 = and i32 %12, 255
  %or54 = or i32 33554432, %and53
  %cmp55 = icmp eq i32 %or54, 33554450
  br i1 %cmp55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end

cond.false57:                                     ; preds = %cond.false52
  %13 = load i32, i32* %hash_alg, align 4
  %and58 = and i32 %13, 255
  %or59 = or i32 33554432, %and58
  %cmp60 = icmp eq i32 %or59, 33554451
  %14 = zext i1 %cmp60 to i64
  %cond = select i1 %cmp60, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false57, %cond.true56
  %cond61 = phi i32 [ 48, %cond.true56 ], [ %cond, %cond.false57 ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end, %cond.true51
  %cond63 = phi i32 [ 32, %cond.true51 ], [ %cond61, %cond.end ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true46
  %cond65 = phi i32 [ 28, %cond.true46 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true41
  %cond67 = phi i32 [ 32, %cond.true41 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true36
  %cond69 = phi i32 [ 28, %cond.true36 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true31
  %cond71 = phi i32 [ 64, %cond.true31 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true26
  %cond73 = phi i32 [ 48, %cond.true26 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true21
  %cond75 = phi i32 [ 32, %cond.true21 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true16
  %cond77 = phi i32 [ 28, %cond.true16 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true11
  %cond79 = phi i32 [ 20, %cond.true11 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true6
  %cond81 = phi i32 [ 20, %cond.true6 ], [ %cond79, %cond.end78 ]
  br label %cond.end82

cond.end82:                                       ; preds = %cond.end80, %cond.true
  %cond83 = phi i32 [ 16, %cond.true ], [ %cond81, %cond.end80 ]
  %conv = trunc i32 %cond83 to i8
  store i8 %conv, i8* %hash_length, align 1
  %15 = load i32, i32* %kdf_alg.addr, align 4
  %and84 = and i32 %15, -256
  %cmp85 = icmp eq i32 %and84, 134218752
  %16 = zext i1 %cmp85 to i64
  %cond87 = select i1 %cmp85, i32 0, i32 255
  %conv88 = trunc i32 %cond87 to i8
  store i8 %conv88, i8* %last_block, align 1
  %17 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %17, i32 0, i32 4
  %bf.load = load i8, i8* %state, align 2
  %bf.clear = and i8 %bf.load, 3
  %bf.cast = zext i8 %bf.clear to i32
  %cmp89 = icmp slt i32 %bf.cast, 2
  br i1 %cmp89, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end82
  %18 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info_set = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %18, i32 0, i32 4
  %bf.load91 = load i8, i8* %info_set, align 2
  %bf.lshr = lshr i8 %bf.load91, 2
  %bf.clear92 = and i8 %bf.lshr, 1
  %bf.cast93 = zext i8 %bf.clear92 to i32
  %tobool = icmp ne i32 %bf.cast93, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i32, i32* %kdf_alg.addr, align 4
  %and94 = and i32 %19, -256
  %cmp95 = icmp eq i32 %and94, 134218752
  br i1 %cmp95, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %cond.end82
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state97 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %20, i32 0, i32 4
  %bf.load98 = load i8, i8* %state97, align 2
  %bf.clear99 = and i8 %bf.load98, -4
  %bf.set = or i8 %bf.clear99, 3
  store i8 %bf.set, i8* %state97, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end177, %if.end
  %21 = load i64, i64* %output_length.addr, align 8
  %cmp100 = icmp ne i64 %21, 0
  br i1 %cmp100, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i8, i8* %hash_length, align 1
  %conv102 = zext i8 %22 to i32
  %23 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %23, i32 0, i32 2
  %24 = load i8, i8* %offset_in_block, align 8
  %conv103 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv102, %conv103
  %conv104 = trunc i32 %sub to i8
  store i8 %conv104, i8* %n, align 1
  %25 = load i8, i8* %n, align 1
  %conv105 = zext i8 %25 to i64
  %26 = load i64, i64* %output_length.addr, align 8
  %cmp106 = icmp ugt i64 %conv105, %26
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %while.body
  %27 = load i64, i64* %output_length.addr, align 8
  %conv109 = trunc i64 %27 to i8
  store i8 %conv109, i8* %n, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %while.body
  %28 = load i8*, i8** %output.addr, align 8
  %29 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %output_block = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %29, i32 0, i32 5
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %output_block, i64 0, i64 0
  %30 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block111 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %30, i32 0, i32 2
  %31 = load i8, i8* %offset_in_block111, align 8
  %conv112 = zext i8 %31 to i32
  %idx.ext = sext i32 %conv112 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %32 = load i8, i8* %n, align 1
  %conv113 = zext i8 %32 to i64
  %call = call i8* @memcpy(i8* noundef %28, i8* noundef %add.ptr, i64 noundef %conv113) #5
  %33 = load i8, i8* %n, align 1
  %conv114 = zext i8 %33 to i32
  %34 = load i8*, i8** %output.addr, align 8
  %idx.ext115 = sext i32 %conv114 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %34, i64 %idx.ext115
  store i8* %add.ptr116, i8** %output.addr, align 8
  %35 = load i8, i8* %n, align 1
  %conv117 = zext i8 %35 to i64
  %36 = load i64, i64* %output_length.addr, align 8
  %sub118 = sub i64 %36, %conv117
  store i64 %sub118, i64* %output_length.addr, align 8
  %37 = load i8, i8* %n, align 1
  %conv119 = zext i8 %37 to i32
  %38 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block120 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %38, i32 0, i32 2
  %39 = load i8, i8* %offset_in_block120, align 8
  %conv121 = zext i8 %39 to i32
  %add = add nsw i32 %conv121, %conv119
  %conv122 = trunc i32 %add to i8
  store i8 %conv122, i8* %offset_in_block120, align 8
  %40 = load i64, i64* %output_length.addr, align 8
  %cmp123 = icmp eq i64 %40, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end110
  br label %while.end

if.end126:                                        ; preds = %if.end110
  %41 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %block_number = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %41, i32 0, i32 3
  %42 = load i8, i8* %block_number, align 1
  %conv127 = zext i8 %42 to i32
  %43 = load i8, i8* %last_block, align 1
  %conv128 = zext i8 %43 to i32
  %cmp129 = icmp eq i32 %conv127, %conv128
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end126
  store i32 -137, i32* %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.end126
  %44 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %block_number133 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %44, i32 0, i32 3
  %45 = load i8, i8* %block_number133, align 1
  %inc = add i8 %45, 1
  store i8 %inc, i8* %block_number133, align 1
  %46 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block134 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %46, i32 0, i32 2
  store i8 0, i8* %offset_in_block134, align 8
  %47 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %47, i32 0, i32 7
  %48 = load i32, i32* %hash_alg, align 4
  %49 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %prk = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %49, i32 0, i32 6
  %arraydecay135 = getelementptr inbounds [64 x i8], [64 x i8]* %prk, i64 0, i64 0
  %50 = load i8, i8* %hash_length, align 1
  %conv136 = zext i8 %50 to i64
  %call137 = call i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %hmac, i32 noundef %48, i8* noundef %arraydecay135, i64 noundef %conv136) #6
  store i32 %call137, i32* %status, align 4
  %51 = load i32, i32* %status, align 4
  %cmp138 = icmp ne i32 %51, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end132
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.end132
  %53 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %block_number142 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %53, i32 0, i32 3
  %54 = load i8, i8* %block_number142, align 1
  %conv143 = zext i8 %54 to i32
  %cmp144 = icmp ne i32 %conv143, 1
  br i1 %cmp144, label %if.then146, label %if.end156

if.then146:                                       ; preds = %if.end141
  %55 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac147 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %55, i32 0, i32 7
  %56 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %output_block148 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %56, i32 0, i32 5
  %arraydecay149 = getelementptr inbounds [64 x i8], [64 x i8]* %output_block148, i64 0, i64 0
  %57 = load i8, i8* %hash_length, align 1
  %conv150 = zext i8 %57 to i64
  %call151 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac147, i8* noundef %arraydecay149, i64 noundef %conv150) #6
  store i32 %call151, i32* %status, align 4
  %58 = load i32, i32* %status, align 4
  %cmp152 = icmp ne i32 %58, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.then146
  %59 = load i32, i32* %status, align 4
  store i32 %59, i32* %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.then146
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end141
  %60 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac157 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %60, i32 0, i32 7
  %61 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %61, i32 0, i32 0
  %62 = load i8*, i8** %info, align 8
  %63 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info_length = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %63, i32 0, i32 1
  %64 = load i64, i64* %info_length, align 8
  %call158 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac157, i8* noundef %62, i64 noundef %64) #6
  store i32 %call158, i32* %status, align 4
  %65 = load i32, i32* %status, align 4
  %cmp159 = icmp ne i32 %65, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end156
  %66 = load i32, i32* %status, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.end156
  %67 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac163 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %67, i32 0, i32 7
  %68 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %block_number164 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %68, i32 0, i32 3
  %call165 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac163, i8* noundef %block_number164, i64 noundef 1) #6
  store i32 %call165, i32* %status, align 4
  %69 = load i32, i32* %status, align 4
  %cmp166 = icmp ne i32 %69, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end162
  %70 = load i32, i32* %status, align 4
  store i32 %70, i32* %retval, align 4
  br label %return

if.end169:                                        ; preds = %if.end162
  %71 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac170 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %71, i32 0, i32 7
  %72 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %output_block171 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %72, i32 0, i32 5
  %arraydecay172 = getelementptr inbounds [64 x i8], [64 x i8]* %output_block171, i64 0, i64 0
  %call173 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %hmac170, i8* noundef %arraydecay172, i64 noundef 64, i64* noundef %hmac_output_length) #6
  store i32 %call173, i32* %status, align 4
  %73 = load i32, i32* %status, align 4
  %cmp174 = icmp ne i32 %73, 0
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end169
  %74 = load i32, i32* %status, align 4
  store i32 %74, i32* %retval, align 4
  br label %return

if.end177:                                        ; preds = %if.end169
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then125, %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then176, %if.then168, %if.then161, %if.then154, %if.then140, %if.then131, %if.then
  %75 = load i32, i32* %retval, align 4
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_tls12_prf_read(%struct.psa_tls12_prf_key_derivation_s* noundef %tls12_prf, i32 noundef %alg, i8* noundef %output, i64 noundef %output_length) #0 {
entry:
  %retval = alloca i32, align 4
  %tls12_prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %alg.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %output_length.addr = alloca i64, align 8
  %hash_alg = alloca i32, align 4
  %hash_length = alloca i8, align 1
  %status = alloca i32, align 4
  %offset = alloca i8, align 1
  %length = alloca i8, align 1
  store %struct.psa_tls12_prf_key_derivation_s* %tls12_prf, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_length, i64* %output_length.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 255
  %or = or i32 33554432, %and
  store i32 %or, i32* %hash_alg, align 4
  %1 = load i32, i32* %hash_alg, align 4
  %and1 = and i32 %1, 255
  %or2 = or i32 33554432, %and1
  %cmp = icmp eq i32 %or2, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end82

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %hash_alg, align 4
  %and3 = and i32 %2, 255
  %or4 = or i32 33554432, %and3
  %cmp5 = icmp eq i32 %or4, 33554436
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false
  br label %cond.end80

cond.false7:                                      ; preds = %cond.false
  %3 = load i32, i32* %hash_alg, align 4
  %and8 = and i32 %3, 255
  %or9 = or i32 33554432, %and8
  %cmp10 = icmp eq i32 %or9, 33554437
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false7
  br label %cond.end78

cond.false12:                                     ; preds = %cond.false7
  %4 = load i32, i32* %hash_alg, align 4
  %and13 = and i32 %4, 255
  %or14 = or i32 33554432, %and13
  %cmp15 = icmp eq i32 %or14, 33554440
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end76

cond.false17:                                     ; preds = %cond.false12
  %5 = load i32, i32* %hash_alg, align 4
  %and18 = and i32 %5, 255
  %or19 = or i32 33554432, %and18
  %cmp20 = icmp eq i32 %or19, 33554441
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end74

cond.false22:                                     ; preds = %cond.false17
  %6 = load i32, i32* %hash_alg, align 4
  %and23 = and i32 %6, 255
  %or24 = or i32 33554432, %and23
  %cmp25 = icmp eq i32 %or24, 33554442
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end72

cond.false27:                                     ; preds = %cond.false22
  %7 = load i32, i32* %hash_alg, align 4
  %and28 = and i32 %7, 255
  %or29 = or i32 33554432, %and28
  %cmp30 = icmp eq i32 %or29, 33554443
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end70

cond.false32:                                     ; preds = %cond.false27
  %8 = load i32, i32* %hash_alg, align 4
  %and33 = and i32 %8, 255
  %or34 = or i32 33554432, %and33
  %cmp35 = icmp eq i32 %or34, 33554444
  br i1 %cmp35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end68

cond.false37:                                     ; preds = %cond.false32
  %9 = load i32, i32* %hash_alg, align 4
  %and38 = and i32 %9, 255
  %or39 = or i32 33554432, %and38
  %cmp40 = icmp eq i32 %or39, 33554445
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end66

cond.false42:                                     ; preds = %cond.false37
  %10 = load i32, i32* %hash_alg, align 4
  %and43 = and i32 %10, 255
  %or44 = or i32 33554432, %and43
  %cmp45 = icmp eq i32 %or44, 33554448
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end64

cond.false47:                                     ; preds = %cond.false42
  %11 = load i32, i32* %hash_alg, align 4
  %and48 = and i32 %11, 255
  %or49 = or i32 33554432, %and48
  %cmp50 = icmp eq i32 %or49, 33554449
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end62

cond.false52:                                     ; preds = %cond.false47
  %12 = load i32, i32* %hash_alg, align 4
  %and53 = and i32 %12, 255
  %or54 = or i32 33554432, %and53
  %cmp55 = icmp eq i32 %or54, 33554450
  br i1 %cmp55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end

cond.false57:                                     ; preds = %cond.false52
  %13 = load i32, i32* %hash_alg, align 4
  %and58 = and i32 %13, 255
  %or59 = or i32 33554432, %and58
  %cmp60 = icmp eq i32 %or59, 33554451
  %14 = zext i1 %cmp60 to i64
  %cond = select i1 %cmp60, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false57, %cond.true56
  %cond61 = phi i32 [ 48, %cond.true56 ], [ %cond, %cond.false57 ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end, %cond.true51
  %cond63 = phi i32 [ 32, %cond.true51 ], [ %cond61, %cond.end ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true46
  %cond65 = phi i32 [ 28, %cond.true46 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true41
  %cond67 = phi i32 [ 32, %cond.true41 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true36
  %cond69 = phi i32 [ 28, %cond.true36 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true31
  %cond71 = phi i32 [ 64, %cond.true31 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true26
  %cond73 = phi i32 [ 48, %cond.true26 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true21
  %cond75 = phi i32 [ 32, %cond.true21 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true16
  %cond77 = phi i32 [ 28, %cond.true16 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true11
  %cond79 = phi i32 [ 20, %cond.true11 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true6
  %cond81 = phi i32 [ 20, %cond.true6 ], [ %cond79, %cond.end78 ]
  br label %cond.end82

cond.end82:                                       ; preds = %cond.end80, %cond.true
  %cond83 = phi i32 [ 16, %cond.true ], [ %cond81, %cond.end80 ]
  %conv = trunc i32 %cond83 to i8
  store i8 %conv, i8* %hash_length, align 1
  %15 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %15, i32 0, i32 2
  %16 = load i32, i32* %state, align 4
  switch i32 %16, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb85
  ]

sw.bb:                                            ; preds = %cond.end82
  %17 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %state84 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %17, i32 0, i32 2
  store i32 5, i32* %state84, align 4
  br label %sw.epilog

sw.bb85:                                          ; preds = %cond.end82
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end82
  store i32 -137, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb85, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %if.end102, %if.end, %sw.epilog
  %18 = load i64, i64* %output_length.addr, align 8
  %cmp86 = icmp ne i64 %18, 0
  br i1 %cmp86, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %19, i32 0, i32 0
  %20 = load i8, i8* %left_in_block, align 8
  %conv88 = zext i8 %20 to i32
  %cmp89 = icmp eq i32 %conv88, 0
  br i1 %cmp89, label %if.then, label %if.end94

if.then:                                          ; preds = %while.body
  %21 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %22 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_key_derivation_tls12_prf_generate_next_block(%struct.psa_tls12_prf_key_derivation_s* noundef %21, i32 noundef %22) #6
  store i32 %call, i32* %status, align 4
  %23 = load i32, i32* %status, align 4
  %cmp91 = icmp ne i32 %23, 0
  br i1 %cmp91, label %if.then93, label %if.end

if.then93:                                        ; preds = %if.then
  %24 = load i32, i32* %status, align 4
  store i32 %24, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond, !llvm.loop !8

if.end94:                                         ; preds = %while.body
  %25 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block95 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %25, i32 0, i32 0
  %26 = load i8, i8* %left_in_block95, align 8
  %conv96 = zext i8 %26 to i64
  %27 = load i64, i64* %output_length.addr, align 8
  %cmp97 = icmp ugt i64 %conv96, %27
  br i1 %cmp97, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.end94
  %28 = load i64, i64* %output_length.addr, align 8
  %conv100 = trunc i64 %28 to i8
  store i8 %conv100, i8* %length, align 1
  br label %if.end102

if.else:                                          ; preds = %if.end94
  %29 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block101 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %29, i32 0, i32 0
  %30 = load i8, i8* %left_in_block101, align 8
  store i8 %30, i8* %length, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then99
  %31 = load i8, i8* %hash_length, align 1
  %conv103 = zext i8 %31 to i32
  %32 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block104 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %32, i32 0, i32 0
  %33 = load i8, i8* %left_in_block104, align 8
  %conv105 = zext i8 %33 to i32
  %sub = sub nsw i32 %conv103, %conv105
  %conv106 = trunc i32 %sub to i8
  store i8 %conv106, i8* %offset, align 1
  %34 = load i8*, i8** %output.addr, align 8
  %35 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %output_block = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %35, i32 0, i32 12
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %output_block, i64 0, i64 0
  %36 = load i8, i8* %offset, align 1
  %conv107 = zext i8 %36 to i32
  %idx.ext = sext i32 %conv107 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %37 = load i8, i8* %length, align 1
  %conv108 = zext i8 %37 to i64
  %call109 = call i8* @memcpy(i8* noundef %34, i8* noundef %add.ptr, i64 noundef %conv108) #5
  %38 = load i8, i8* %length, align 1
  %conv110 = zext i8 %38 to i32
  %39 = load i8*, i8** %output.addr, align 8
  %idx.ext111 = sext i32 %conv110 to i64
  %add.ptr112 = getelementptr inbounds i8, i8* %39, i64 %idx.ext111
  store i8* %add.ptr112, i8** %output.addr, align 8
  %40 = load i8, i8* %length, align 1
  %conv113 = zext i8 %40 to i64
  %41 = load i64, i64* %output_length.addr, align 8
  %sub114 = sub i64 %41, %conv113
  store i64 %sub114, i64* %output_length.addr, align 8
  %42 = load i8, i8* %length, align 1
  %conv115 = zext i8 %42 to i32
  %43 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block116 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %43, i32 0, i32 0
  %44 = load i8, i8* %left_in_block116, align 8
  %conv117 = zext i8 %44 to i32
  %sub118 = sub nsw i32 %conv117, %conv115
  %conv119 = trunc i32 %sub118 to i8
  store i8 %conv119, i8* %left_in_block116, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then93, %sw.default
  %45 = load i32, i32* %retval, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_output_key(%struct.psa_key_attributes_s* noundef %attributes, %struct.psa_key_derivation_s* noundef %operation, i32* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %driver = alloca %struct.psa_se_drv_table_entry_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  store %struct.psa_se_drv_table_entry_s* null, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %0 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %1) #6
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %2, i32 0, i32 0
  %3 = load i32, i32* %alg, align 8
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -137, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %can_output_key = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %4, i32 0, i32 1
  %bf.load = load i8, i8* %can_output_key, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end3
  store i32 -133, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end3
  %5 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call6 = call i32 @psa_start_key_creation(i32 noundef 2, %struct.psa_key_attributes_s* noundef %5, %struct.psa_key_slot_t** noundef %slot, %struct.psa_se_drv_table_entry_s** noundef %driver) #6
  store i32 %call6, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp7 = icmp eq i32 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  %9 = load i16, i16* %bits, align 2
  %conv = zext i16 %9 to i64
  %10 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call9 = call i32 @psa_generate_derived_key_internal(%struct.psa_key_slot_t* noundef %7, i64 noundef %conv, %struct.psa_key_derivation_s* noundef %10) #6
  store i32 %call9, i32* %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %11 = load i32, i32* %status, align 4
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %13 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %14 = load i32*, i32** %key.addr, align 8
  %call14 = call i32 @psa_finish_key_creation(%struct.psa_key_slot_t* noundef %12, %struct.psa_se_drv_table_entry_s* noundef %13, i32* noundef %14) #6
  store i32 %call14, i32* %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %15 = load i32, i32* %status, align 4
  %cmp16 = icmp ne i32 %15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %17 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  call void @psa_fail_key_creation(%struct.psa_key_slot_t* noundef %16, %struct.psa_se_drv_table_entry_s* noundef %17) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then4, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  %1 = load i16, i16* %bits, align 2
  %conv = zext i16 %1 to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_generate_derived_key_internal(%struct.psa_key_slot_t* noundef %slot, i64 noundef %bits, %struct.psa_key_derivation_s* noundef %operation) #0 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %bits.addr = alloca i64, align 8
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %data = alloca i8*, align 8
  %bytes = alloca i64, align 8
  %storage_size = alloca i64, align 8
  %status = alloca i32, align 4
  %curve = alloca i8, align 1
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i8* null, i8** %data, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %add = add i64 %0, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %bytes, align 8
  %1 = load i64, i64* %bytes, align 8
  store i64 %1, i64* %storage_size, align 8
  store i32 -151, i32* %status, align 4
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 28672
  %cmp = icmp eq i32 %and, 16384
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr2 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %type3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr2, i32 0, i32 0
  %5 = load i16, i16* %type3, align 8
  %conv4 = zext i16 %5 to i32
  %and5 = and i32 %conv4, -12289
  %and6 = and i32 %and5, -256
  %cmp7 = icmp eq i32 %and6, 16640
  br i1 %cmp7, label %if.then9, label %if.else37

if.then9:                                         ; preds = %if.end
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 0
  %type11 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr10, i32 0, i32 0
  %7 = load i16, i16* %type11, align 8
  %conv12 = zext i16 %7 to i32
  %and13 = and i32 %conv12, -12289
  %and14 = and i32 %and13, -256
  %cmp15 = icmp eq i32 %and14, 16640
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %8 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr17 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %8, i32 0, i32 0
  %type18 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr17, i32 0, i32 0
  %9 = load i16, i16* %type18, align 8
  %conv19 = zext i16 %9 to i32
  %and20 = and i32 %conv19, 255
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and20, %cond.true ], [ 0, %cond.false ]
  %conv21 = trunc i32 %cond to i8
  store i8 %conv21, i8* %curve, align 1
  %10 = load i8, i8* %curve, align 1
  %conv22 = zext i8 %10 to i32
  %and23 = and i32 %conv22, 192
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %cond.end
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %12 = load i64, i64* %bits.addr, align 8
  %13 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call = call i32 @psa_generate_derived_ecc_key_weierstrass_helper(%struct.psa_key_slot_t* noundef %11, i64 noundef %12, %struct.psa_key_derivation_s* noundef %13, i8** noundef %data) #6
  store i32 %call, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp27 = icmp ne i32 %14, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  br label %exit

if.end30:                                         ; preds = %if.then26
  br label %if.end36

if.else:                                          ; preds = %cond.end
  %15 = load i64, i64* %bits.addr, align 8
  %16 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call31 = call i32 @psa_generate_derived_ecc_key_montgomery_helper(i64 noundef %15, %struct.psa_key_derivation_s* noundef %16, i8** noundef %data) #6
  store i32 %call31, i32* %status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp32 = icmp ne i32 %17, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  br label %exit

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end30
  br label %if.end65

if.else37:                                        ; preds = %if.end
  %18 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr38 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %18, i32 0, i32 0
  %type39 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr38, i32 0, i32 0
  %19 = load i16, i16* %type39, align 8
  %call40 = call i32 @key_type_is_raw_bytes(i16 noundef zeroext %19) #6
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.then41, label %if.else63

if.then41:                                        ; preds = %if.else37
  %20 = load i64, i64* %bits.addr, align 8
  %rem = urem i64 %20, 8
  %cmp42 = icmp ne i64 %rem, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then41
  store i32 -135, i32* %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then41
  %21 = load i64, i64* %bytes, align 8
  %call46 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %21) #5
  store i8* %call46, i8** %data, align 8
  %22 = load i8*, i8** %data, align 8
  %cmp47 = icmp eq i8* %22, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  store i32 -141, i32* %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end45
  %23 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %24 = load i8*, i8** %data, align 8
  %25 = load i64, i64* %bytes, align 8
  %call51 = call i32 @psa_key_derivation_output_bytes(%struct.psa_key_derivation_s* noundef %23, i8* noundef %24, i64 noundef %25) #6
  store i32 %call51, i32* %status, align 4
  %26 = load i32, i32* %status, align 4
  %cmp52 = icmp ne i32 %26, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end50
  br label %exit

if.end55:                                         ; preds = %if.end50
  %27 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr56 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %27, i32 0, i32 0
  %type57 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr56, i32 0, i32 0
  %28 = load i16, i16* %type57, align 8
  %conv58 = zext i16 %28 to i32
  %cmp59 = icmp eq i32 %conv58, 8961
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end55
  %29 = load i8*, i8** %data, align 8
  %30 = load i64, i64* %bytes, align 8
  call void @psa_des_set_key_parity(i8* noundef %29, i64 noundef %30) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end55
  br label %if.end64

if.else63:                                        ; preds = %if.else37
  store i32 -134, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end62
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end36
  %31 = load i64, i64* %bits.addr, align 8
  %conv66 = trunc i64 %31 to i16
  %32 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr67 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %32, i32 0, i32 0
  %bits68 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr67, i32 0, i32 1
  store i16 %conv66, i16* %bits68, align 2
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %33 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr69 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %33, i32 0, i32 0
  %34 = bitcast %struct.psa_core_key_attributes_t* %core to i8*
  %35 = bitcast %struct.psa_core_key_attributes_t* %attr69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 28, i1 false)
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 1
  store i8* null, i8** %domain_parameters, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 2
  store i64 0, i64* %domain_parameters_size, align 8
  %core70 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %attributes, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core70, i32 0, i32 2
  %36 = load i32, i32* %lifetime, align 4
  %call71 = call i32 @psa_key_lifetime_is_external(i32 noundef %36) #6
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end65
  %call74 = call i32 @psa_driver_wrapper_get_key_buffer_size(%struct.psa_key_attributes_s* noundef %attributes, i64* noundef %storage_size) #6
  store i32 %call74, i32* %status, align 4
  %37 = load i32, i32* %status, align 4
  %cmp75 = icmp ne i32 %37, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then73
  br label %exit

if.end78:                                         ; preds = %if.then73
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end65
  %38 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %39 = load i64, i64* %storage_size, align 8
  %call80 = call i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %38, i64 noundef %39) #6
  store i32 %call80, i32* %status, align 4
  %40 = load i32, i32* %status, align 4
  %cmp81 = icmp ne i32 %40, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  br label %exit

if.end84:                                         ; preds = %if.end79
  %41 = load i8*, i8** %data, align 8
  %42 = load i64, i64* %bytes, align 8
  %43 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %43, i32 0, i32 2
  %data85 = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %44 = load i8*, i8** %data85, align 8
  %45 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key86 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %45, i32 0, i32 2
  %bytes87 = getelementptr inbounds %struct.key_data, %struct.key_data* %key86, i32 0, i32 1
  %46 = load i64, i64* %bytes87, align 8
  %47 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %key88 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %47, i32 0, i32 2
  %bytes89 = getelementptr inbounds %struct.key_data, %struct.key_data* %key88, i32 0, i32 1
  %call90 = call i32 @psa_driver_wrapper_import_key(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %41, i64 noundef %42, i8* noundef %44, i64 noundef %46, i64* noundef %bytes89, i64* noundef %bits.addr) #6
  store i32 %call90, i32* %status, align 4
  %48 = load i64, i64* %bits.addr, align 8
  %49 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr91 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %49, i32 0, i32 0
  %bits92 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr91, i32 0, i32 1
  %50 = load i16, i16* %bits92, align 2
  %conv93 = zext i16 %50 to i64
  %cmp94 = icmp ne i64 %48, %conv93
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end84
  store i32 -135, i32* %status, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end84
  br label %exit

exit:                                             ; preds = %if.end97, %if.then83, %if.then77, %if.then54, %if.then34, %if.then29
  %51 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %51) #5
  %52 = load i32, i32* %status, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

return:                                           ; preds = %exit, %if.else63, %if.then49, %if.then44, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_setup(%struct.psa_key_derivation_s* noundef %operation, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %alg.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %kdf_alg = alloca i32, align 4
  %ka_alg = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg1, align 8
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %alg.addr, align 4
  %and = and i32 %2, 2130706432
  %cmp2 = icmp eq i32 %and, 150994944
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %alg.addr, align 4
  %and3 = and i32 %3, -33488897
  %or = or i32 %and3, 134217728
  %cmp4 = icmp eq i32 %or, 134217728
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  store i32 -135, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i32, i32* %alg.addr, align 4
  %and6 = and i32 %4, 2130706432
  %cmp7 = icmp eq i32 %and6, 150994944
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.else
  %5 = load i32, i32* %alg.addr, align 4
  %and9 = and i32 %5, -33488897
  %or10 = or i32 %and9, 134217728
  store i32 %or10, i32* %kdf_alg, align 4
  %6 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %6, -65536
  %or12 = or i32 %and11, 150994944
  store i32 %or12, i32* %ka_alg, align 4
  %7 = load i32, i32* %ka_alg, align 4
  %call = call i32 @psa_key_agreement_try_support(i32 noundef %7) #6
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp13 = icmp ne i32 %8, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then8
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then8
  %10 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %11 = load i32, i32* %kdf_alg, align 4
  %call16 = call i32 @psa_key_derivation_setup_kdf(%struct.psa_key_derivation_s* noundef %10, i32 noundef %11) #6
  store i32 %call16, i32* %status, align 4
  br label %if.end24

if.else17:                                        ; preds = %if.else
  %12 = load i32, i32* %alg.addr, align 4
  %and18 = and i32 %12, 2130706432
  %cmp19 = icmp eq i32 %and18, 134217728
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %13 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %14 = load i32, i32* %alg.addr, align 4
  %call21 = call i32 @psa_key_derivation_setup_kdf(%struct.psa_key_derivation_s* noundef %13, i32 noundef %14) #6
  store i32 %call21, i32* %status, align 4
  br label %if.end23

if.else22:                                        ; preds = %if.else17
  store i32 -135, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then20
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end15
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  %15 = load i32, i32* %status, align 4
  %cmp26 = icmp eq i32 %15, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %16 = load i32, i32* %alg.addr, align 4
  %17 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg28 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %17, i32 0, i32 0
  store i32 %16, i32* %alg28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  %18 = load i32, i32* %status, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.else22, %if.then14, %if.then5, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_agreement_try_support(i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %cmp = icmp eq i32 %0, 151126016
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_setup_kdf(%struct.psa_key_derivation_s* noundef %operation, i32 noundef %kdf_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %kdf_alg.addr = alloca i32, align 4
  %hash_alg = alloca i32, align 4
  %hash_size = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i32 %kdf_alg, i32* %kdf_alg.addr, align 4
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 3
  %1 = bitcast %union.anon.3* %ctx to i8*
  %call = call i8* @memset(i8* noundef %1, i32 noundef 0, i64 noundef 536) #5
  %2 = load i32, i32* %kdf_alg.addr, align 4
  %call1 = call i32 @is_kdf_alg_supported(i32 noundef %2) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -134, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %kdf_alg.addr, align 4
  %and = and i32 %3, 255
  %or = or i32 33554432, %and
  store i32 %or, i32* %hash_alg, align 4
  %4 = load i32, i32* %hash_alg, align 4
  %and2 = and i32 %4, 255
  %or3 = or i32 33554432, %and2
  %cmp = icmp eq i32 %or3, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end83

cond.false:                                       ; preds = %if.end
  %5 = load i32, i32* %hash_alg, align 4
  %and4 = and i32 %5, 255
  %or5 = or i32 33554432, %and4
  %cmp6 = icmp eq i32 %or5, 33554436
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.false
  br label %cond.end81

cond.false8:                                      ; preds = %cond.false
  %6 = load i32, i32* %hash_alg, align 4
  %and9 = and i32 %6, 255
  %or10 = or i32 33554432, %and9
  %cmp11 = icmp eq i32 %or10, 33554437
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.false8
  br label %cond.end79

cond.false13:                                     ; preds = %cond.false8
  %7 = load i32, i32* %hash_alg, align 4
  %and14 = and i32 %7, 255
  %or15 = or i32 33554432, %and14
  %cmp16 = icmp eq i32 %or15, 33554440
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.false13
  br label %cond.end77

cond.false18:                                     ; preds = %cond.false13
  %8 = load i32, i32* %hash_alg, align 4
  %and19 = and i32 %8, 255
  %or20 = or i32 33554432, %and19
  %cmp21 = icmp eq i32 %or20, 33554441
  br i1 %cmp21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.false18
  br label %cond.end75

cond.false23:                                     ; preds = %cond.false18
  %9 = load i32, i32* %hash_alg, align 4
  %and24 = and i32 %9, 255
  %or25 = or i32 33554432, %and24
  %cmp26 = icmp eq i32 %or25, 33554442
  br i1 %cmp26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.false23
  br label %cond.end73

cond.false28:                                     ; preds = %cond.false23
  %10 = load i32, i32* %hash_alg, align 4
  %and29 = and i32 %10, 255
  %or30 = or i32 33554432, %and29
  %cmp31 = icmp eq i32 %or30, 33554443
  br i1 %cmp31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %cond.false28
  br label %cond.end71

cond.false33:                                     ; preds = %cond.false28
  %11 = load i32, i32* %hash_alg, align 4
  %and34 = and i32 %11, 255
  %or35 = or i32 33554432, %and34
  %cmp36 = icmp eq i32 %or35, 33554444
  br i1 %cmp36, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %cond.false33
  br label %cond.end69

cond.false38:                                     ; preds = %cond.false33
  %12 = load i32, i32* %hash_alg, align 4
  %and39 = and i32 %12, 255
  %or40 = or i32 33554432, %and39
  %cmp41 = icmp eq i32 %or40, 33554445
  br i1 %cmp41, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %cond.false38
  br label %cond.end67

cond.false43:                                     ; preds = %cond.false38
  %13 = load i32, i32* %hash_alg, align 4
  %and44 = and i32 %13, 255
  %or45 = or i32 33554432, %and44
  %cmp46 = icmp eq i32 %or45, 33554448
  br i1 %cmp46, label %cond.true47, label %cond.false48

cond.true47:                                      ; preds = %cond.false43
  br label %cond.end65

cond.false48:                                     ; preds = %cond.false43
  %14 = load i32, i32* %hash_alg, align 4
  %and49 = and i32 %14, 255
  %or50 = or i32 33554432, %and49
  %cmp51 = icmp eq i32 %or50, 33554449
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %cond.false48
  br label %cond.end63

cond.false53:                                     ; preds = %cond.false48
  %15 = load i32, i32* %hash_alg, align 4
  %and54 = and i32 %15, 255
  %or55 = or i32 33554432, %and54
  %cmp56 = icmp eq i32 %or55, 33554450
  br i1 %cmp56, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %cond.false53
  br label %cond.end

cond.false58:                                     ; preds = %cond.false53
  %16 = load i32, i32* %hash_alg, align 4
  %and59 = and i32 %16, 255
  %or60 = or i32 33554432, %and59
  %cmp61 = icmp eq i32 %or60, 33554451
  %17 = zext i1 %cmp61 to i64
  %cond = select i1 %cmp61, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false58, %cond.true57
  %cond62 = phi i32 [ 48, %cond.true57 ], [ %cond, %cond.false58 ]
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end, %cond.true52
  %cond64 = phi i32 [ 32, %cond.true52 ], [ %cond62, %cond.end ]
  br label %cond.end65

cond.end65:                                       ; preds = %cond.end63, %cond.true47
  %cond66 = phi i32 [ 28, %cond.true47 ], [ %cond64, %cond.end63 ]
  br label %cond.end67

cond.end67:                                       ; preds = %cond.end65, %cond.true42
  %cond68 = phi i32 [ 32, %cond.true42 ], [ %cond66, %cond.end65 ]
  br label %cond.end69

cond.end69:                                       ; preds = %cond.end67, %cond.true37
  %cond70 = phi i32 [ 28, %cond.true37 ], [ %cond68, %cond.end67 ]
  br label %cond.end71

cond.end71:                                       ; preds = %cond.end69, %cond.true32
  %cond72 = phi i32 [ 64, %cond.true32 ], [ %cond70, %cond.end69 ]
  br label %cond.end73

cond.end73:                                       ; preds = %cond.end71, %cond.true27
  %cond74 = phi i32 [ 48, %cond.true27 ], [ %cond72, %cond.end71 ]
  br label %cond.end75

cond.end75:                                       ; preds = %cond.end73, %cond.true22
  %cond76 = phi i32 [ 32, %cond.true22 ], [ %cond74, %cond.end73 ]
  br label %cond.end77

cond.end77:                                       ; preds = %cond.end75, %cond.true17
  %cond78 = phi i32 [ 28, %cond.true17 ], [ %cond76, %cond.end75 ]
  br label %cond.end79

cond.end79:                                       ; preds = %cond.end77, %cond.true12
  %cond80 = phi i32 [ 20, %cond.true12 ], [ %cond78, %cond.end77 ]
  br label %cond.end81

cond.end81:                                       ; preds = %cond.end79, %cond.true7
  %cond82 = phi i32 [ 20, %cond.true7 ], [ %cond80, %cond.end79 ]
  br label %cond.end83

cond.end83:                                       ; preds = %cond.end81, %cond.true
  %cond84 = phi i32 [ 16, %cond.true ], [ %cond82, %cond.end81 ]
  %conv = sext i32 %cond84 to i64
  store i64 %conv, i64* %hash_size, align 8
  %18 = load i64, i64* %hash_size, align 8
  %cmp85 = icmp eq i64 %18, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %cond.end83
  store i32 -134, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %cond.end83
  %19 = load i32, i32* %hash_alg, align 4
  %call89 = call i32 @psa_hash_try_support(i32 noundef %19) #6
  store i32 %call89, i32* %status, align 4
  %20 = load i32, i32* %status, align 4
  %cmp90 = icmp ne i32 %20, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  %21 = load i32, i32* %status, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.end88
  %22 = load i32, i32* %kdf_alg.addr, align 4
  %and94 = and i32 %22, -256
  %cmp95 = icmp eq i32 %and94, 134218240
  br i1 %cmp95, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end93
  %23 = load i32, i32* %kdf_alg.addr, align 4
  %and97 = and i32 %23, -256
  %cmp98 = icmp eq i32 %and97, 134218496
  br i1 %cmp98, label %land.lhs.true, label %if.end106

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end93
  %24 = load i32, i32* %hash_alg, align 4
  %cmp100 = icmp eq i32 %24, 33554441
  br i1 %cmp100, label %if.end106, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %land.lhs.true
  %25 = load i32, i32* %hash_alg, align 4
  %cmp103 = icmp eq i32 %25, 33554442
  br i1 %cmp103, label %if.end106, label %if.then105

if.then105:                                       ; preds = %lor.lhs.false102
  store i32 -134, i32* %retval, align 4
  br label %return

if.end106:                                        ; preds = %lor.lhs.false102, %land.lhs.true, %lor.lhs.false
  %26 = load i32, i32* %kdf_alg.addr, align 4
  %and107 = and i32 %26, -256
  %cmp108 = icmp eq i32 %and107, 134218752
  br i1 %cmp108, label %if.then110, label %if.else

if.then110:                                       ; preds = %if.end106
  %27 = load i64, i64* %hash_size, align 8
  %28 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %28, i32 0, i32 2
  store i64 %27, i64* %capacity, align 8
  br label %if.end112

if.else:                                          ; preds = %if.end106
  %29 = load i64, i64* %hash_size, align 8
  %mul = mul i64 255, %29
  %30 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %capacity111 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %30, i32 0, i32 2
  store i64 %mul, i64* %capacity111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.else, %if.then110
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then105, %if.then92, %if.then87, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_input_bytes(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext %step, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %1 = load i16, i16* %step.addr, align 2
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_key_derivation_input_internal(%struct.psa_key_derivation_s* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext 0, i8* noundef %2, i64 noundef %3) #6
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_input_internal(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext %step, i16 noundef zeroext %key_type, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %key_type.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %kdf_alg = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i16 %key_type, i16* %key_type.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call = call i32 @psa_key_derivation_get_kdf_alg(%struct.psa_key_derivation_s* noundef %0) #6
  store i32 %call, i32* %kdf_alg, align 4
  %1 = load i16, i16* %step.addr, align 2
  %2 = load i16, i16* %key_type.addr, align 2
  %call1 = call i32 @psa_key_derivation_check_input_type(i16 noundef zeroext %1, i16 noundef zeroext %2) #6
  store i32 %call1, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %kdf_alg, align 4
  %and = and i32 %4, -256
  %cmp2 = icmp eq i32 %and, 134217984
  br i1 %cmp2, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %kdf_alg, align 4
  %and3 = and i32 %5, -256
  %cmp4 = icmp eq i32 %and3, 134218752
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %kdf_alg, align 4
  %and6 = and i32 %6, -256
  %cmp7 = icmp eq i32 %and6, 134219008
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.end
  %7 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %7, i32 0, i32 3
  %hkdf = bitcast %union.anon.3* %ctx to %struct.psa_hkdf_key_derivation_t*
  %8 = load i32, i32* %kdf_alg, align 4
  %9 = load i16, i16* %step.addr, align 2
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i64, i64* %data_length.addr, align 8
  %call9 = call i32 @psa_hkdf_input(%struct.psa_hkdf_key_derivation_t* noundef %hkdf, i32 noundef %8, i16 noundef zeroext %9, i8* noundef %10, i64 noundef %11) #6
  store i32 %call9, i32* %status, align 4
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false5
  %12 = load i32, i32* %kdf_alg, align 4
  %and10 = and i32 %12, -256
  %cmp11 = icmp eq i32 %and10, 134218240
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else
  %13 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx13 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %13, i32 0, i32 3
  %tls12_prf = bitcast %union.anon.3* %ctx13 to %struct.psa_tls12_prf_key_derivation_s*
  %14 = load i16, i16* %step.addr, align 2
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i64, i64* %data_length.addr, align 8
  %call14 = call i32 @psa_tls12_prf_input(%struct.psa_tls12_prf_key_derivation_s* noundef %tls12_prf, i16 noundef zeroext %14, i8* noundef %15, i64 noundef %16) #6
  store i32 %call14, i32* %status, align 4
  br label %if.end24

if.else15:                                        ; preds = %if.else
  %17 = load i32, i32* %kdf_alg, align 4
  %and16 = and i32 %17, -256
  %cmp17 = icmp eq i32 %and16, 134218496
  br i1 %cmp17, label %if.then18, label %if.else22

if.then18:                                        ; preds = %if.else15
  %18 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %ctx19 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %18, i32 0, i32 3
  %tls12_prf20 = bitcast %union.anon.3* %ctx19 to %struct.psa_tls12_prf_key_derivation_s*
  %19 = load i16, i16* %step.addr, align 2
  %20 = load i8*, i8** %data.addr, align 8
  %21 = load i64, i64* %data_length.addr, align 8
  %call21 = call i32 @psa_tls12_prf_psk_to_ms_input(%struct.psa_tls12_prf_key_derivation_s* noundef %tls12_prf20, i16 noundef zeroext %19, i8* noundef %20, i64 noundef %21) #6
  store i32 %call21, i32* %status, align 4
  br label %if.end23

if.else22:                                        ; preds = %if.else15
  %22 = load i8*, i8** %data.addr, align 8
  %23 = load i64, i64* %data_length.addr, align 8
  %24 = load i32, i32* %kdf_alg, align 4
  store i32 -137, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then8
  br label %exit

exit:                                             ; preds = %if.end25, %if.then
  %25 = load i32, i32* %status, align 4
  %cmp26 = icmp ne i32 %25, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %exit
  %26 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call28 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %26) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %exit
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.else22
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_input_key(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext %step, i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %key.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i32 %key, i32* %key.addr, align 4
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load i32, i32* %key.addr, align 4
  %1 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %1, i32 0, i32 0
  %2 = load i32, i32* %alg, align 8
  %call = call i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %0, %struct.psa_key_slot_t** noundef %slot, i32 noundef 16384, i32 noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call1 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %4) #6
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %6 to i32
  %cmp2 = icmp eq i32 %conv, 257
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %7 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %can_output_key = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %7, i32 0, i32 1
  %bf.load = load i8, i8* %can_output_key, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %can_output_key, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %9 = load i16, i16* %step.addr, align 2
  %10 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %10, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %11 = load i16, i16* %type, align 8
  %12 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %12, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key6, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %14, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key7, i32 0, i32 1
  %15 = load i64, i64* %bytes, align 8
  %call8 = call i32 @psa_key_derivation_input_internal(%struct.psa_key_derivation_s* noundef %8, i16 noundef zeroext %9, i16 noundef zeroext %11, i8* noundef %13, i64 noundef %15) #6
  store i32 %call8, i32* %status, align 4
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call9 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %16) #6
  store i32 %call9, i32* %unlock_status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %18 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  %19 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_key_derivation_key_agreement(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext %step, i32 noundef %private_key, i8* noundef %peer_key, i64 noundef %peer_key_length) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %private_key.addr = alloca i32, align 4
  %peer_key.addr = alloca i8*, align 8
  %peer_key_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i32 %private_key, i32* %private_key.addr, align 4
  store i8* %peer_key, i8** %peer_key.addr, align 8
  store i64 %peer_key_length, i64* %peer_key_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, 2130706432
  %cmp = icmp eq i32 %and, 150994944
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %private_key.addr, align 4
  %3 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg1 = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %3, i32 0, i32 0
  %4 = load i32, i32* %alg1, align 8
  %call = call i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %2, %struct.psa_key_slot_t** noundef %slot, i32 noundef 16384, i32 noundef %4) #6
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %8 = load i16, i16* %step.addr, align 2
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %10 = load i8*, i8** %peer_key.addr, align 8
  %11 = load i64, i64* %peer_key_length.addr, align 8
  %call5 = call i32 @psa_key_agreement_internal(%struct.psa_key_derivation_s* noundef %7, i16 noundef zeroext %8, %struct.psa_key_slot_t* noundef %9, i8* noundef %10, i64 noundef %11) #6
  store i32 %call5, i32* %status, align 4
  %12 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end4
  %13 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %call8 = call i32 @psa_key_derivation_abort(%struct.psa_key_derivation_s* noundef %13) #6
  br label %if.end13

if.else:                                          ; preds = %if.end4
  %14 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %14 to i32
  %cmp9 = icmp eq i32 %conv, 257
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %15 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %can_output_key = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %15, i32 0, i32 1
  %bf.load = load i8, i8* %can_output_key, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %can_output_key, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then7
  %16 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call14 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %16) #6
  store i32 %call14, i32* %unlock_status, align 4
  %17 = load i32, i32* %status, align 4
  %cmp15 = icmp eq i32 %17, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  %18 = load i32, i32* %unlock_status, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %19 = load i32, i32* %status, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_agreement_internal(%struct.psa_key_derivation_s* noundef %operation, i16 noundef zeroext %step, %struct.psa_key_slot_t* noundef %private_key, i8* noundef %peer_key, i64 noundef %peer_key_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %private_key.addr = alloca %struct.psa_key_slot_t*, align 8
  %peer_key.addr = alloca i8*, align 8
  %peer_key_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %shared_secret = alloca [66 x i8], align 16
  %shared_secret_length = alloca i64, align 8
  %ka_alg = alloca i32, align 4
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store %struct.psa_key_slot_t* %private_key, %struct.psa_key_slot_t** %private_key.addr, align 8
  store i8* %peer_key, i8** %peer_key.addr, align 8
  store i64 %peer_key_length, i64* %peer_key_length.addr, align 8
  store i64 0, i64* %shared_secret_length, align 8
  %0 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %alg = getelementptr inbounds %struct.psa_key_derivation_s, %struct.psa_key_derivation_s* %0, i32 0, i32 0
  %1 = load i32, i32* %alg, align 8
  %and = and i32 %1, -65536
  %or = or i32 %and, 150994944
  store i32 %or, i32* %ka_alg, align 4
  %2 = load i32, i32* %ka_alg, align 4
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %4 = load i8*, i8** %peer_key.addr, align 8
  %5 = load i64, i64* %peer_key_length.addr, align 8
  %arraydecay = getelementptr inbounds [66 x i8], [66 x i8]* %shared_secret, i64 0, i64 0
  %call = call i32 @psa_key_agreement_raw_internal(i32 noundef %2, %struct.psa_key_slot_t* noundef %3, i8* noundef %4, i64 noundef %5, i8* noundef %arraydecay, i64 noundef 66, i64* noundef %shared_secret_length) #6
  store i32 %call, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %7 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %8 = load i16, i16* %step.addr, align 2
  %arraydecay1 = getelementptr inbounds [66 x i8], [66 x i8]* %shared_secret, i64 0, i64 0
  %9 = load i64, i64* %shared_secret_length, align 8
  %call2 = call i32 @psa_key_derivation_input_internal(%struct.psa_key_derivation_s* noundef %7, i16 noundef zeroext %8, i16 noundef zeroext 4608, i8* noundef %arraydecay1, i64 noundef %9) #6
  store i32 %call2, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %arraydecay3 = getelementptr inbounds [66 x i8], [66 x i8]* %shared_secret, i64 0, i64 0
  %10 = load i64, i64* %shared_secret_length, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %arraydecay3, i64 noundef %10) #6
  %11 = load i32, i32* %status, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_raw_key_agreement(i32 noundef %alg, i32 noundef %private_key, i8* noundef %peer_key, i64 noundef %peer_key_length, i8* noundef %output, i64 noundef %output_size, i64* noundef %output_length) #0 {
entry:
  %alg.addr = alloca i32, align 4
  %private_key.addr = alloca i32, align 4
  %peer_key.addr = alloca i8*, align 8
  %peer_key_length.addr = alloca i64, align 8
  %output.addr = alloca i8*, align 8
  %output_size.addr = alloca i64, align 8
  %output_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %unlock_status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %expected_length = alloca i64, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i32 %private_key, i32* %private_key.addr, align 4
  store i8* %peer_key, i8** %peer_key.addr, align 8
  store i64 %peer_key_length, i64* %peer_key_length.addr, align 8
  store i8* %output, i8** %output.addr, align 8
  store i64 %output_size, i64* %output_size.addr, align 8
  store i64* %output_length, i64** %output_length.addr, align 8
  store i32 -151, i32* %status, align 4
  store i32 -151, i32* %unlock_status, align 4
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 2130706432
  %cmp = icmp eq i32 %and, 150994944
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %status, align 4
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %private_key.addr, align 4
  %2 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_get_and_lock_transparent_key_slot_with_policy(i32 noundef %1, %struct.psa_key_slot_t** noundef %slot, i32 noundef 16384, i32 noundef %2) #6
  store i32 %call, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit

if.end3:                                          ; preds = %if.end
  %4 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %4, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %5 = load i16, i16* %type, align 8
  %conv = zext i16 %5 to i32
  %and4 = and i32 %conv, -256
  %cmp5 = icmp eq i32 %and4, 28928
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %attr7 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr7, i32 0, i32 1
  %7 = load i16, i16* %bits, align 2
  %conv8 = zext i16 %7 to i32
  %add = add nsw i32 %conv8, 7
  %div = sdiv i32 %add, 8
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 0, %cond.false ]
  %conv9 = sext i32 %cond to i64
  store i64 %conv9, i64* %expected_length, align 8
  %8 = load i64, i64* %output_size.addr, align 8
  %9 = load i64, i64* %expected_length, align 8
  %cmp10 = icmp ult i64 %8, %9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %cond.end
  store i32 -138, i32* %status, align 4
  br label %exit

if.end13:                                         ; preds = %cond.end
  %10 = load i32, i32* %alg.addr, align 4
  %11 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %12 = load i8*, i8** %peer_key.addr, align 8
  %13 = load i64, i64* %peer_key_length.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %15 = load i64, i64* %output_size.addr, align 8
  %16 = load i64*, i64** %output_length.addr, align 8
  %call14 = call i32 @psa_key_agreement_raw_internal(i32 noundef %10, %struct.psa_key_slot_t* noundef %11, i8* noundef %12, i64 noundef %13, i8* noundef %14, i64 noundef %15, i64* noundef %16) #6
  store i32 %call14, i32* %status, align 4
  br label %exit

exit:                                             ; preds = %if.end13, %if.then12, %if.then2, %if.then
  %17 = load i32, i32* %status, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %exit
  %18 = load i8*, i8** %output.addr, align 8
  %19 = load i64, i64* %output_size.addr, align 8
  %call18 = call i32 @psa_generate_random(i8* noundef %18, i64 noundef %19) #6
  %20 = load i64, i64* %output_size.addr, align 8
  %21 = load i64*, i64** %output_length.addr, align 8
  store i64 %20, i64* %21, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %exit
  %22 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call20 = call i32 @psa_unlock_key_slot(%struct.psa_key_slot_t* noundef %22) #6
  store i32 %call20, i32* %unlock_status, align 4
  %23 = load i32, i32* %status, align 4
  %cmp21 = icmp eq i32 %23, 0
  br i1 %cmp21, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %if.end19
  %24 = load i32, i32* %unlock_status, align 4
  br label %cond.end25

cond.false24:                                     ; preds = %if.end19
  %25 = load i32, i32* %status, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true23
  %cond26 = phi i32 [ %24, %cond.true23 ], [ %25, %cond.false24 ]
  ret i32 %cond26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_agreement_raw_internal(i32 noundef %alg, %struct.psa_key_slot_t* noundef %private_key, i8* noundef %peer_key, i64 noundef %peer_key_length, i8* noundef %shared_secret, i64 noundef %shared_secret_size, i64* noundef %shared_secret_length) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %private_key.addr = alloca %struct.psa_key_slot_t*, align 8
  %peer_key.addr = alloca i8*, align 8
  %peer_key_length.addr = alloca i64, align 8
  %shared_secret.addr = alloca i8*, align 8
  %shared_secret_size.addr = alloca i64, align 8
  %shared_secret_length.addr = alloca i64*, align 8
  %ecp = alloca %struct.mbedtls_ecp_keypair*, align 8
  %status = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  store %struct.psa_key_slot_t* %private_key, %struct.psa_key_slot_t** %private_key.addr, align 8
  store i8* %peer_key, i8** %peer_key.addr, align 8
  store i64 %peer_key_length, i64* %peer_key_length.addr, align 8
  store i8* %shared_secret, i8** %shared_secret.addr, align 8
  store i64 %shared_secret_size, i64* %shared_secret_size.addr, align 8
  store i64* %shared_secret_length, i64** %shared_secret_length.addr, align 8
  %0 = load i32, i32* %alg.addr, align 4
  switch i32 %0, label %sw.default [
    i32 151126016, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %1, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %2 = load i16, i16* %type, align 8
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, -256
  %cmp = icmp eq i32 %and, 28928
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %3 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %attr2 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %3, i32 0, i32 0
  %type3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr2, i32 0, i32 0
  %4 = load i16, i16* %type3, align 8
  %5 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %attr4 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %5, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr4, i32 0, i32 1
  %6 = load i16, i16* %bits, align 2
  %conv5 = zext i16 %6 to i64
  %7 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %key = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %7, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %key6 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %9, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key6, i32 0, i32 1
  %10 = load i64, i64* %bytes, align 8
  %call = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %4, i64 noundef %conv5, i8* noundef %8, i64 noundef %10, %struct.mbedtls_ecp_keypair** noundef %ecp) #6
  store i32 %call, i32* %status, align 4
  %11 = load i32, i32* %status, align 4
  %cmp7 = icmp ne i32 %11, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %12 = load i32, i32* %status, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %13 = load i8*, i8** %peer_key.addr, align 8
  %14 = load i64, i64* %peer_key_length.addr, align 8
  %15 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %16 = load i8*, i8** %shared_secret.addr, align 8
  %17 = load i64, i64* %shared_secret_size.addr, align 8
  %18 = load i64*, i64** %shared_secret_length.addr, align 8
  %call11 = call i32 @psa_key_agreement_ecdh(i8* noundef %13, i64 noundef %14, %struct.mbedtls_ecp_keypair* noundef %15, i8* noundef %16, i64 noundef %17, i64* noundef %18) #6
  store i32 %call11, i32* %status, align 4
  %19 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %19) #6
  %20 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %ecp, align 8
  %21 = bitcast %struct.mbedtls_ecp_keypair* %20 to i8*
  call void @free(i8* noundef %21) #5
  %22 = load i32, i32* %status, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %23 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %private_key.addr, align 8
  %24 = load i8*, i8** %peer_key.addr, align 8
  %25 = load i64, i64* %peer_key_length.addr, align 8
  %26 = load i8*, i8** %shared_secret.addr, align 8
  %27 = load i64, i64* %shared_secret_size.addr, align 8
  %28 = load i64*, i64** %shared_secret_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end10, %if.then9, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

declare dso_local i32 @mbedtls_ctr_drbg_random(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_generate_key_internal(%struct.psa_key_attributes_s* noundef %attributes, i8* noundef %key_buffer, i64 noundef %key_buffer_size, i64* noundef %key_buffer_length) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key_buffer.addr = alloca i8*, align 8
  %key_buffer_size.addr = alloca i64, align 8
  %key_buffer_length.addr = alloca i64*, align 8
  %status = alloca i32, align 4
  %type = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %key_buffer, i8** %key_buffer.addr, align 8
  store i64 %key_buffer_size, i64* %key_buffer_size.addr, align 8
  store i64* %key_buffer_length, i64** %key_buffer_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type1, align 8
  store i16 %1, i16* %type, align 2
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %domain_parameters, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters_size = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %4, i32 0, i32 2
  %5 = load i64, i64* %domain_parameters_size, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i16, i16* %type, align 2
  %call = call i32 @key_type_is_raw_bytes(i16 noundef zeroext %6) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load i8*, i8** %key_buffer.addr, align 8
  %8 = load i64, i64* %key_buffer_size.addr, align 8
  %call4 = call i32 @psa_generate_random(i8* noundef %7, i64 noundef %8) #6
  store i32 %call4, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp5 = icmp ne i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then3
  %11 = load i16, i16* %type, align 2
  %conv = zext i16 %11 to i32
  %cmp8 = icmp eq i32 %conv, 8961
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %12 = load i8*, i8** %key_buffer.addr, align 8
  %13 = load i64, i64* %key_buffer_size.addr, align 8
  call void @psa_des_set_key_parity(i8* noundef %12, i64 noundef %13) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7
  br label %if.end30

if.else:                                          ; preds = %if.end
  %14 = load i16, i16* %type, align 2
  %conv12 = zext i16 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 28673
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %15 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %16 = load i8*, i8** %key_buffer.addr, align 8
  %17 = load i64, i64* %key_buffer_size.addr, align 8
  %18 = load i64*, i64** %key_buffer_length.addr, align 8
  %call16 = call i32 @mbedtls_psa_rsa_generate_key(%struct.psa_key_attributes_s* noundef %15, i8* noundef %16, i64 noundef %17, i64* noundef %18) #6
  store i32 %call16, i32* %retval, align 4
  br label %return

if.else17:                                        ; preds = %if.else
  %19 = load i16, i16* %type, align 2
  %conv18 = zext i16 %19 to i32
  %and = and i32 %conv18, -12289
  %and19 = and i32 %and, -256
  %cmp20 = icmp eq i32 %and19, 16640
  br i1 %cmp20, label %land.lhs.true22, label %if.else29

land.lhs.true22:                                  ; preds = %if.else17
  %20 = load i16, i16* %type, align 2
  %conv23 = zext i16 %20 to i32
  %and24 = and i32 %conv23, 28672
  %cmp25 = icmp eq i32 %and24, 28672
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %land.lhs.true22
  %21 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %22 = load i8*, i8** %key_buffer.addr, align 8
  %23 = load i64, i64* %key_buffer_size.addr, align 8
  %24 = load i64*, i64** %key_buffer_length.addr, align 8
  %call28 = call i32 @mbedtls_psa_ecp_generate_key(%struct.psa_key_attributes_s* noundef %21, i8* noundef %22, i64 noundef %23, i64* noundef %24) #6
  store i32 %call28, i32* %retval, align 4
  br label %return

if.else29:                                        ; preds = %land.lhs.true22, %if.else17
  %25 = load i64*, i64** %key_buffer_length.addr, align 8
  store i32 -134, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.else29, %if.then27, %if.then15, %if.then6, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_des_set_key_parity(i8* noundef %data, i64 noundef %data_size) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %cmp = icmp uge i64 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  call void @mbedtls_des_key_set_parity(i8* noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %data_size.addr, align 8
  %cmp1 = icmp uge i64 %2, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %data.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8
  call void @mbedtls_des_key_set_parity(i8* noundef %add.ptr) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %data_size.addr, align 8
  %cmp4 = icmp uge i64 %4, 24
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %5 = load i8*, i8** %data.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %5, i64 16
  call void @mbedtls_des_key_set_parity(i8* noundef %add.ptr6) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  ret void
}

declare dso_local i32 @mbedtls_psa_rsa_generate_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @mbedtls_psa_ecp_generate_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_generate_key(%struct.psa_key_attributes_s* noundef %attributes, i32* noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %key.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %slot = alloca %struct.psa_key_slot_t*, align 8
  %driver = alloca %struct.psa_se_drv_table_entry_s*, align 8
  %key_buffer_size = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32* %key, i32** %key.addr, align 8
  store %struct.psa_key_slot_t* null, %struct.psa_key_slot_t** %slot, align 8
  store %struct.psa_se_drv_table_entry_s* null, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %0 = load i32*, i32** %key.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %1) #6
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %2, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %3 = load i16, i16* %type, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 28672
  %cmp1 = icmp eq i32 %and, 16384
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call5 = call i32 @psa_start_key_creation(i32 noundef 1, %struct.psa_key_attributes_s* noundef %4, %struct.psa_key_slot_t** noundef %slot, %struct.psa_se_drv_table_entry_s** noundef %driver) #6
  store i32 %call5, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  br label %exit

if.end9:                                          ; preds = %if.end4
  %6 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key10 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %6, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_data, %struct.key_data* %key10, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %cmp11 = icmp eq i8* %7, null
  br i1 %cmp11, label %if.then13, label %if.end150

if.then13:                                        ; preds = %if.end9
  %8 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core14 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %8, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core14, i32 0, i32 2
  %9 = load i32, i32* %lifetime, align 4
  %shr = lshr i32 %9, 8
  %cmp15 = icmp eq i32 %shr, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then13
  %10 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core18 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %10, i32 0, i32 0
  %type19 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core18, i32 0, i32 0
  %11 = load i16, i16* %type19, align 8
  %12 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core20 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %12, i32 0, i32 0
  %bits = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core20, i32 0, i32 1
  %13 = load i16, i16* %bits, align 2
  %conv21 = zext i16 %13 to i64
  %call22 = call i32 @psa_validate_key_type_and_size_for_key_generation(i16 noundef zeroext %11, i64 noundef %conv21) #6
  store i32 %call22, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp23 = icmp ne i32 %14, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then17
  br label %exit

if.end26:                                         ; preds = %if.then17
  %15 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core27 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %15, i32 0, i32 0
  %type28 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core27, i32 0, i32 0
  %16 = load i16, i16* %type28, align 8
  %conv29 = zext i16 %16 to i32
  %and30 = and i32 %conv29, 28672
  %cmp31 = icmp eq i32 %and30, 4096
  br i1 %cmp31, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end26
  %17 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core33 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %17, i32 0, i32 0
  %type34 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core33, i32 0, i32 0
  %18 = load i16, i16* %type34, align 8
  %conv35 = zext i16 %18 to i32
  %and36 = and i32 %conv35, 28672
  %cmp37 = icmp eq i32 %and36, 8192
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end26
  %19 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core39 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %19, i32 0, i32 0
  %bits40 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core39, i32 0, i32 1
  %20 = load i16, i16* %bits40, align 2
  %conv41 = zext i16 %20 to i32
  %add = add nsw i32 %conv41, 7
  %div = sdiv i32 %add, 8
  br label %cond.end136

cond.false:                                       ; preds = %lor.lhs.false
  %21 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core42 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %21, i32 0, i32 0
  %type43 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core42, i32 0, i32 0
  %22 = load i16, i16* %type43, align 8
  %conv44 = zext i16 %22 to i32
  %cmp45 = icmp eq i32 %conv44, 28673
  br i1 %cmp45, label %cond.true47, label %cond.false56

cond.true47:                                      ; preds = %cond.false
  %23 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core48 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %23, i32 0, i32 0
  %bits49 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core48, i32 0, i32 1
  %24 = load i16, i16* %bits49, align 2
  %conv50 = zext i16 %24 to i32
  %div51 = sdiv i32 %conv50, 2
  %add52 = add nsw i32 %div51, 1
  %div53 = sdiv i32 %add52, 8
  %add54 = add nsw i32 %div53, 5
  %mul = mul nsw i32 9, %add54
  %add55 = add nsw i32 %mul, 14
  br label %cond.end134

cond.false56:                                     ; preds = %cond.false
  %25 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core57 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %25, i32 0, i32 0
  %type58 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core57, i32 0, i32 0
  %26 = load i16, i16* %type58, align 8
  %conv59 = zext i16 %26 to i32
  %cmp60 = icmp eq i32 %conv59, 16385
  br i1 %cmp60, label %cond.true62, label %cond.false69

cond.true62:                                      ; preds = %cond.false56
  %27 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core63 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %27, i32 0, i32 0
  %bits64 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core63, i32 0, i32 1
  %28 = load i16, i16* %bits64, align 2
  %conv65 = zext i16 %28 to i32
  %div66 = sdiv i32 %conv65, 8
  %add67 = add nsw i32 %div66, 5
  %add68 = add nsw i32 %add67, 11
  br label %cond.end132

cond.false69:                                     ; preds = %cond.false56
  %29 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core70 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %29, i32 0, i32 0
  %type71 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core70, i32 0, i32 0
  %30 = load i16, i16* %type71, align 8
  %conv72 = zext i16 %30 to i32
  %cmp73 = icmp eq i32 %conv72, 28674
  br i1 %cmp73, label %cond.true75, label %cond.false83

cond.true75:                                      ; preds = %cond.false69
  %31 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core76 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %31, i32 0, i32 0
  %bits77 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core76, i32 0, i32 1
  %32 = load i16, i16* %bits77, align 2
  %conv78 = zext i16 %32 to i32
  %div79 = sdiv i32 %conv78, 8
  %add80 = add nsw i32 %div79, 5
  %mul81 = mul nsw i32 %add80, 3
  %add82 = add nsw i32 %mul81, 75
  br label %cond.end130

cond.false83:                                     ; preds = %cond.false69
  %33 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core84 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %33, i32 0, i32 0
  %type85 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core84, i32 0, i32 0
  %34 = load i16, i16* %type85, align 8
  %conv86 = zext i16 %34 to i32
  %cmp87 = icmp eq i32 %conv86, 16386
  br i1 %cmp87, label %cond.true89, label %cond.false97

cond.true89:                                      ; preds = %cond.false83
  %35 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core90 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %35, i32 0, i32 0
  %bits91 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core90, i32 0, i32 1
  %36 = load i16, i16* %bits91, align 2
  %conv92 = zext i16 %36 to i32
  %div93 = sdiv i32 %conv92, 8
  %add94 = add nsw i32 %div93, 5
  %mul95 = mul nsw i32 %add94, 3
  %add96 = add nsw i32 %mul95, 59
  br label %cond.end128

cond.false97:                                     ; preds = %cond.false83
  %37 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core98 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %37, i32 0, i32 0
  %type99 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core98, i32 0, i32 0
  %38 = load i16, i16* %type99, align 8
  %conv100 = zext i16 %38 to i32
  %and101 = and i32 %conv100, -256
  %cmp102 = icmp eq i32 %and101, 28928
  br i1 %cmp102, label %cond.true104, label %cond.false110

cond.true104:                                     ; preds = %cond.false97
  %39 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core105 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %39, i32 0, i32 0
  %bits106 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core105, i32 0, i32 1
  %40 = load i16, i16* %bits106, align 2
  %conv107 = zext i16 %40 to i32
  %add108 = add nsw i32 %conv107, 7
  %div109 = sdiv i32 %add108, 8
  br label %cond.end126

cond.false110:                                    ; preds = %cond.false97
  %41 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core111 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %41, i32 0, i32 0
  %type112 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core111, i32 0, i32 0
  %42 = load i16, i16* %type112, align 8
  %conv113 = zext i16 %42 to i32
  %and114 = and i32 %conv113, -256
  %cmp115 = icmp eq i32 %and114, 16640
  br i1 %cmp115, label %cond.true117, label %cond.false125

cond.true117:                                     ; preds = %cond.false110
  %43 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core118 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %43, i32 0, i32 0
  %bits119 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core118, i32 0, i32 1
  %44 = load i16, i16* %bits119, align 2
  %conv120 = zext i16 %44 to i32
  %add121 = add nsw i32 %conv120, 7
  %div122 = sdiv i32 %add121, 8
  %mul123 = mul nsw i32 2, %div122
  %add124 = add nsw i32 %mul123, 1
  br label %cond.end

cond.false125:                                    ; preds = %cond.false110
  br label %cond.end

cond.end:                                         ; preds = %cond.false125, %cond.true117
  %cond = phi i32 [ %add124, %cond.true117 ], [ 0, %cond.false125 ]
  br label %cond.end126

cond.end126:                                      ; preds = %cond.end, %cond.true104
  %cond127 = phi i32 [ %div109, %cond.true104 ], [ %cond, %cond.end ]
  br label %cond.end128

cond.end128:                                      ; preds = %cond.end126, %cond.true89
  %cond129 = phi i32 [ %add96, %cond.true89 ], [ %cond127, %cond.end126 ]
  br label %cond.end130

cond.end130:                                      ; preds = %cond.end128, %cond.true75
  %cond131 = phi i32 [ %add82, %cond.true75 ], [ %cond129, %cond.end128 ]
  br label %cond.end132

cond.end132:                                      ; preds = %cond.end130, %cond.true62
  %cond133 = phi i32 [ %add68, %cond.true62 ], [ %cond131, %cond.end130 ]
  br label %cond.end134

cond.end134:                                      ; preds = %cond.end132, %cond.true47
  %cond135 = phi i32 [ %add55, %cond.true47 ], [ %cond133, %cond.end132 ]
  br label %cond.end136

cond.end136:                                      ; preds = %cond.end134, %cond.true
  %cond137 = phi i32 [ %div, %cond.true ], [ %cond135, %cond.end134 ]
  %conv138 = sext i32 %cond137 to i64
  store i64 %conv138, i64* %key_buffer_size, align 8
  br label %if.end144

if.else:                                          ; preds = %if.then13
  %45 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call139 = call i32 @psa_driver_wrapper_get_key_buffer_size(%struct.psa_key_attributes_s* noundef %45, i64* noundef %key_buffer_size) #6
  store i32 %call139, i32* %status, align 4
  %46 = load i32, i32* %status, align 4
  %cmp140 = icmp ne i32 %46, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.else
  br label %exit

if.end143:                                        ; preds = %if.else
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %cond.end136
  %47 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %48 = load i64, i64* %key_buffer_size, align 8
  %call145 = call i32 @psa_allocate_buffer_to_slot(%struct.psa_key_slot_t* noundef %47, i64 noundef %48) #6
  store i32 %call145, i32* %status, align 4
  %49 = load i32, i32* %status, align 4
  %cmp146 = icmp ne i32 %49, 0
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.end144
  br label %exit

if.end149:                                        ; preds = %if.end144
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.end9
  %50 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %51 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key151 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %51, i32 0, i32 2
  %data152 = getelementptr inbounds %struct.key_data, %struct.key_data* %key151, i32 0, i32 0
  %52 = load i8*, i8** %data152, align 8
  %53 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key153 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %53, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.key_data, %struct.key_data* %key153, i32 0, i32 1
  %54 = load i64, i64* %bytes, align 8
  %55 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %key154 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %55, i32 0, i32 2
  %bytes155 = getelementptr inbounds %struct.key_data, %struct.key_data* %key154, i32 0, i32 1
  %call156 = call i32 @psa_driver_wrapper_generate_key(%struct.psa_key_attributes_s* noundef %50, i8* noundef %52, i64 noundef %54, i64* noundef %bytes155) #6
  store i32 %call156, i32* %status, align 4
  %56 = load i32, i32* %status, align 4
  %cmp157 = icmp ne i32 %56, 0
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.end150
  %57 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %call160 = call i32 @psa_remove_key_data_from_memory(%struct.psa_key_slot_t* noundef %57) #6
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end150
  br label %exit

exit:                                             ; preds = %if.end161, %if.then148, %if.then142, %if.then25, %if.then8
  %58 = load i32, i32* %status, align 4
  %cmp162 = icmp eq i32 %58, 0
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %exit
  %59 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %60 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  %61 = load i32*, i32** %key.addr, align 8
  %call165 = call i32 @psa_finish_key_creation(%struct.psa_key_slot_t* noundef %59, %struct.psa_se_drv_table_entry_s* noundef %60, i32* noundef %61) #6
  store i32 %call165, i32* %status, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then164, %exit
  %62 = load i32, i32* %status, align 4
  %cmp167 = icmp ne i32 %62, 0
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.end166
  %63 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot, align 8
  %64 = load %struct.psa_se_drv_table_entry_s*, %struct.psa_se_drv_table_entry_s** %driver, align 8
  call void @psa_fail_key_creation(%struct.psa_key_slot_t* noundef %63, %struct.psa_se_drv_table_entry_s* noundef %64) #6
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.end166
  %65 = load i32, i32* %status, align 4
  store i32 %65, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end170, %if.then3, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_validate_key_type_and_size_for_key_generation(i16 noundef zeroext %type, i64 noundef %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i16, align 2
  %bits.addr = alloca i64, align 8
  %status = alloca i32, align 4
  store i16 %type, i16* %type.addr, align 2
  store i64 %bits, i64* %bits.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i16, i16* %type.addr, align 2
  %call = call i32 @key_type_is_raw_bytes(i16 noundef zeroext %0) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %type.addr, align 2
  %2 = load i64, i64* %bits.addr, align 8
  %call1 = call i32 @psa_validate_unstructured_key_bit_size(i16 noundef zeroext %1, i64 noundef %2) #6
  store i32 %call1, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end32

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %type.addr, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, -12289
  %cmp3 = icmp eq i32 %and, 16385
  br i1 %cmp3, label %land.lhs.true, label %if.else18

land.lhs.true:                                    ; preds = %if.else
  %6 = load i16, i16* %type.addr, align 2
  %conv5 = zext i16 %6 to i32
  %and6 = and i32 %conv5, 28672
  %cmp7 = icmp eq i32 %and6, 28672
  br i1 %cmp7, label %if.then9, label %if.else18

if.then9:                                         ; preds = %land.lhs.true
  %7 = load i64, i64* %bits.addr, align 8
  %cmp10 = icmp ugt i64 %7, 4096
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  store i32 -134, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then9
  %8 = load i64, i64* %bits.addr, align 8
  %rem = urem i64 %8, 8
  %cmp14 = icmp ne i64 %rem, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 -134, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  br label %if.end31

if.else18:                                        ; preds = %land.lhs.true, %if.else
  %9 = load i16, i16* %type.addr, align 2
  %conv19 = zext i16 %9 to i32
  %and20 = and i32 %conv19, -12289
  %and21 = and i32 %and20, -256
  %cmp22 = icmp eq i32 %and21, 16640
  br i1 %cmp22, label %land.lhs.true24, label %if.else30

land.lhs.true24:                                  ; preds = %if.else18
  %10 = load i16, i16* %type.addr, align 2
  %conv25 = zext i16 %10 to i32
  %and26 = and i32 %conv25, 28672
  %cmp27 = icmp eq i32 %and26, 28672
  br i1 %cmp27, label %if.then29, label %if.else30

if.then29:                                        ; preds = %land.lhs.true24
  store i32 0, i32* %retval, align 4
  br label %return

if.else30:                                        ; preds = %land.lhs.true24, %if.else18
  store i32 -134, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end17
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.else30, %if.then29, %if.then16, %if.then12, %if.then2
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @psa_driver_wrapper_generate_key(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_psa_crypto_configure_entropy_sources(void (%struct.mbedtls_entropy_context*)* noundef %entropy_init, void (%struct.mbedtls_entropy_context*)* noundef %entropy_free) #0 {
entry:
  %retval = alloca i32, align 4
  %entropy_init.addr = alloca void (%struct.mbedtls_entropy_context*)*, align 8
  %entropy_free.addr = alloca void (%struct.mbedtls_entropy_context*)*, align 8
  store void (%struct.mbedtls_entropy_context*)* %entropy_init, void (%struct.mbedtls_entropy_context*)** %entropy_init.addr, align 8
  store void (%struct.mbedtls_entropy_context*)* %entropy_free, void (%struct.mbedtls_entropy_context*)** %entropy_free.addr, align 8
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_init.addr, align 8
  store void (%struct.mbedtls_entropy_context*)* %0, void (%struct.mbedtls_entropy_context*)** getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1, i32 0), align 8
  %1 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_free.addr, align 8
  store void (%struct.mbedtls_entropy_context*)* %1, void (%struct.mbedtls_entropy_context*)** getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1, i32 1), align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_psa_crypto_free() #0 {
entry:
  call void @psa_wipe_all_key_slots() #6
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @mbedtls_psa_random_free(%struct.mbedtls_psa_random_context_t* noundef getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @mbedtls_platform_zeroize(i8* noundef getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 noundef 1400) #6
  call void @psa_driver_wrapper_free() #6
  ret void
}

declare dso_local void @psa_wipe_all_key_slots() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_psa_random_free(%struct.mbedtls_psa_random_context_t* noundef %rng) #0 {
entry:
  %rng.addr = alloca %struct.mbedtls_psa_random_context_t*, align 8
  store %struct.mbedtls_psa_random_context_t* %rng, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  call void @mbedtls_psa_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef bitcast (i8* getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056) to %struct.mbedtls_ctr_drbg_context*)) #6
  %0 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_free = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %0, i32 0, i32 1
  %1 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_free, align 8
  %2 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %2, i32 0, i32 2
  call void %1(%struct.mbedtls_entropy_context* noundef %entropy) #6
  ret void
}

declare dso_local void @psa_driver_wrapper_free() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psa_crypto_init() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %bf.load = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp ne i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @mbedtls_psa_random_init(%struct.mbedtls_psa_random_context_t* noundef getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1)) #6
  %bf.load1 = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.clear2 = and i8 %bf.load1, -7
  %bf.set = or i8 %bf.clear2, 2
  store i8 %bf.set, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %call = call i32 @mbedtls_psa_random_seed(%struct.mbedtls_psa_random_context_t* noundef getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 1)) #6
  store i32 %call, i32* %status, align 4
  %0 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %0, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %exit

if.end5:                                          ; preds = %if.end
  %bf.load6 = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.clear7 = and i8 %bf.load6, -7
  %bf.set8 = or i8 %bf.clear7, 4
  store i8 %bf.set8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %call9 = call i32 @psa_initialize_key_slots() #6
  store i32 %call9, i32* %status, align 4
  %1 = load i32, i32* %status, align 4
  %cmp10 = icmp ne i32 %1, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  br label %exit

if.end12:                                         ; preds = %if.end5
  %call13 = call i32 @psa_driver_wrapper_init() #6
  store i32 %call13, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp14 = icmp ne i32 %2, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  br label %exit

if.end16:                                         ; preds = %if.end12
  %bf.load17 = load i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  %bf.clear18 = and i8 %bf.load17, -2
  %bf.set19 = or i8 %bf.clear18, 1
  store i8 %bf.set19, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), align 8
  br label %exit

exit:                                             ; preds = %if.end16, %if.then15, %if.then11, %if.then4
  %3 = load i32, i32* %status, align 4
  %cmp20 = icmp ne i32 %3, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %exit
  call void @mbedtls_psa_crypto_free() #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %exit
  %4 = load i32, i32* %status, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_psa_random_init(%struct.mbedtls_psa_random_context_t* noundef %rng) #0 {
entry:
  %rng.addr = alloca %struct.mbedtls_psa_random_context_t*, align 8
  store %struct.mbedtls_psa_random_context_t* %rng, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %0 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_init = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %0, i32 0, i32 0
  %1 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_init, align 8
  %cmp = icmp eq void (%struct.mbedtls_entropy_context*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_init1 = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %2, i32 0, i32 0
  store void (%struct.mbedtls_entropy_context*)* @mbedtls_entropy_init, void (%struct.mbedtls_entropy_context*)** %entropy_init1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_free = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %3, i32 0, i32 1
  %4 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_free, align 8
  %cmp2 = icmp eq void (%struct.mbedtls_entropy_context*)* %4, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_free4 = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %5, i32 0, i32 1
  store void (%struct.mbedtls_entropy_context*)* @mbedtls_entropy_free, void (%struct.mbedtls_entropy_context*)** %entropy_free4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %6 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy_init6 = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %6, i32 0, i32 0
  %7 = load void (%struct.mbedtls_entropy_context*)*, void (%struct.mbedtls_entropy_context*)** %entropy_init6, align 8
  %8 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %8, i32 0, i32 2
  call void %7(%struct.mbedtls_entropy_context* noundef %entropy) #6
  call void @mbedtls_psa_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef bitcast (i8* getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056) to %struct.mbedtls_ctr_drbg_context*)) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_psa_random_seed(%struct.mbedtls_psa_random_context_t* noundef %rng) #0 {
entry:
  %rng.addr = alloca %struct.mbedtls_psa_random_context_t*, align 8
  %drbg_seed = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.mbedtls_psa_random_context_t* %rng, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %0 = bitcast [4 x i8]* %drbg_seed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.mbedtls_psa_random_seed.drbg_seed, i32 0, i32 0), i64 4, i1 false)
  %1 = load %struct.mbedtls_psa_random_context_t*, %struct.mbedtls_psa_random_context_t** %rng.addr, align 8
  %entropy = getelementptr inbounds %struct.mbedtls_psa_random_context_t, %struct.mbedtls_psa_random_context_t* %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %drbg_seed, i64 0, i64 0
  %call = call i32 @mbedtls_psa_drbg_seed(%struct.mbedtls_entropy_context* noundef %entropy, i8* noundef %arraydecay, i64 noundef 3) #6
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %call1 = call i32 @mbedtls_to_psa_error(i32 noundef %2) #6
  ret i32 %call1
}

declare dso_local i32 @psa_initialize_key_slots() #2

declare dso_local i32 @psa_driver_wrapper_init() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_policy_permits(%struct.psa_key_policy_s* noundef %policy, i16 noundef zeroext %key_type, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca %struct.psa_key_policy_s*, align 8
  %key_type.addr = alloca i16, align 2
  %alg.addr = alloca i32, align 4
  store %struct.psa_key_policy_s* %policy, %struct.psa_key_policy_s** %policy.addr, align 8
  store i16 %key_type, i16* %key_type.addr, align 2
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and = and i32 %1, -256
  %cmp1 = icmp eq i32 %and, 100664064
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %alg.addr, align 4
  %and2 = and i32 %2, -256
  %cmp3 = icmp eq i32 %and2, 100668160
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %alg.addr, align 4
  %and5 = and i32 %3, -256
  %cmp6 = icmp eq i32 %and5, 100663808
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %4 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %4, -256
  %and9 = and i32 %and8, -257
  %cmp10 = icmp eq i32 %and9, 100664832
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %5 = load i32, i32* %alg.addr, align 4
  %and12 = and i32 %5, -256
  %cmp13 = icmp eq i32 %and12, 100665600
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %6 = load i32, i32* %alg.addr, align 4
  %and15 = and i32 %6, -256
  %and16 = and i32 %and15, -257
  %cmp17 = icmp eq i32 %and16, 100664320
  br i1 %cmp17, label %land.lhs.true, label %cond.false45

land.lhs.true:                                    ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  %7 = load i32, i32* %alg.addr, align 4
  %and18 = and i32 %7, 255
  %cmp19 = icmp ne i32 %and18, 0
  br i1 %cmp19, label %cond.true, label %cond.false45

cond.true:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %alg.addr, align 4
  %and20 = and i32 %8, -256
  %cmp21 = icmp eq i32 %and20, 100664064
  br i1 %cmp21, label %land.lhs.true39, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %cond.true
  %9 = load i32, i32* %alg.addr, align 4
  %and23 = and i32 %9, -256
  %cmp24 = icmp eq i32 %and23, 100668160
  br i1 %cmp24, label %land.lhs.true39, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %10 = load i32, i32* %alg.addr, align 4
  %and26 = and i32 %10, -256
  %cmp27 = icmp eq i32 %and26, 100663808
  br i1 %cmp27, label %land.lhs.true39, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %11 = load i32, i32* %alg.addr, align 4
  %and29 = and i32 %11, -256
  %and30 = and i32 %and29, -257
  %cmp31 = icmp eq i32 %and30, 100664832
  br i1 %cmp31, label %land.lhs.true39, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %12 = load i32, i32* %alg.addr, align 4
  %and33 = and i32 %12, -256
  %cmp34 = icmp eq i32 %and33, 100665600
  br i1 %cmp34, label %land.lhs.true39, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %13 = load i32, i32* %alg.addr, align 4
  %and36 = and i32 %13, -256
  %and37 = and i32 %and36, -257
  %cmp38 = icmp eq i32 %and37, 100664320
  br i1 %cmp38, label %land.lhs.true39, label %cond.false

land.lhs.true39:                                  ; preds = %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false22, %cond.true
  %14 = load i32, i32* %alg.addr, align 4
  %and40 = and i32 %14, 255
  %cmp41 = icmp ne i32 %and40, 0
  br i1 %cmp41, label %cond.true42, label %cond.false

cond.true42:                                      ; preds = %land.lhs.true39
  %15 = load i32, i32* %alg.addr, align 4
  %and43 = and i32 %15, 255
  %or = or i32 %and43, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true39, %lor.lhs.false35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true42
  %cond = phi i32 [ %or, %cond.true42 ], [ 0, %cond.false ]
  %cmp44 = icmp eq i32 %cond, 33554687
  br i1 %cmp44, label %if.then59, label %if.end60

cond.false45:                                     ; preds = %land.lhs.true, %lor.lhs.false14
  %16 = load i32, i32* %alg.addr, align 4
  %and46 = and i32 %16, 2130706432
  %cmp47 = icmp eq i32 %and46, 50331648
  br i1 %cmp47, label %cond.true48, label %cond.false51

cond.true48:                                      ; preds = %cond.false45
  %17 = load i32, i32* %alg.addr, align 4
  %and49 = and i32 %17, 32768
  %cmp50 = icmp ne i32 %and49, 0
  br i1 %cmp50, label %if.then59, label %if.end60

cond.false51:                                     ; preds = %cond.false45
  %18 = load i32, i32* %alg.addr, align 4
  %and52 = and i32 %18, 2130706432
  %cmp53 = icmp eq i32 %and52, 83886080
  br i1 %cmp53, label %cond.true54, label %cond.false57

cond.true54:                                      ; preds = %cond.false51
  %19 = load i32, i32* %alg.addr, align 4
  %and55 = and i32 %19, 32768
  %cmp56 = icmp ne i32 %and55, 0
  br i1 %cmp56, label %if.then59, label %if.end60

cond.false57:                                     ; preds = %cond.false51
  %20 = load i32, i32* %alg.addr, align 4
  %cmp58 = icmp eq i32 %20, 33554687
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %cond.false57, %cond.true54, %cond.true48, %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end60:                                         ; preds = %cond.false57, %cond.true54, %cond.true48, %cond.end
  %21 = load i16, i16* %key_type.addr, align 2
  %22 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg61 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %22, i32 0, i32 1
  %23 = load i32, i32* %alg61, align 4
  %24 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_key_algorithm_permits(i16 noundef zeroext %21, i32 noundef %23, i32 noundef %24) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then65, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.end60
  %25 = load i16, i16* %key_type.addr, align 2
  %26 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %alg2 = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %26, i32 0, i32 2
  %27 = load i32, i32* %alg2, align 4
  %28 = load i32, i32* %alg.addr, align 4
  %call63 = call i32 @psa_key_algorithm_permits(i16 noundef zeroext %25, i32 noundef %27, i32 noundef %28) #6
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then65, label %if.else

if.then65:                                        ; preds = %lor.lhs.false62, %if.end60
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false62
  store i32 -133, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then65, %if.then59, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_algorithm_permits(i16 noundef zeroext %key_type, i32 noundef %policy_alg, i32 noundef %requested_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %key_type.addr = alloca i16, align 2
  %policy_alg.addr = alloca i32, align 4
  %requested_alg.addr = alloca i32, align 4
  %requested_output_length = alloca i64, align 8
  %default_output_length = alloca i64, align 8
  store i16 %key_type, i16* %key_type.addr, align 2
  store i32 %policy_alg, i32* %policy_alg.addr, align 4
  store i32 %requested_alg, i32* %requested_alg.addr, align 4
  %0 = load i32, i32* %requested_alg.addr, align 4
  %1 = load i32, i32* %policy_alg.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %requested_alg.addr, align 4
  %and = and i32 %2, -256
  %cmp1 = icmp eq i32 %and, 100664064
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %requested_alg.addr, align 4
  %and2 = and i32 %3, -256
  %cmp3 = icmp eq i32 %and2, 100668160
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %requested_alg.addr, align 4
  %and5 = and i32 %4, -256
  %cmp6 = icmp eq i32 %and5, 100663808
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %5 = load i32, i32* %requested_alg.addr, align 4
  %and8 = and i32 %5, -256
  %and9 = and i32 %and8, -257
  %cmp10 = icmp eq i32 %and9, 100664832
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %6 = load i32, i32* %requested_alg.addr, align 4
  %and12 = and i32 %6, -256
  %cmp13 = icmp eq i32 %and12, 100665600
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %7 = load i32, i32* %requested_alg.addr, align 4
  %and15 = and i32 %7, -256
  %and16 = and i32 %and15, -257
  %cmp17 = icmp eq i32 %and16, 100664320
  br i1 %cmp17, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  %8 = load i32, i32* %policy_alg.addr, align 4
  %and18 = and i32 %8, -256
  %cmp19 = icmp eq i32 %and18, 100664064
  br i1 %cmp19, label %land.lhs.true37, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %policy_alg.addr, align 4
  %and21 = and i32 %9, -256
  %cmp22 = icmp eq i32 %and21, 100668160
  br i1 %cmp22, label %land.lhs.true37, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %10 = load i32, i32* %policy_alg.addr, align 4
  %and24 = and i32 %10, -256
  %cmp25 = icmp eq i32 %and24, 100663808
  br i1 %cmp25, label %land.lhs.true37, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %11 = load i32, i32* %policy_alg.addr, align 4
  %and27 = and i32 %11, -256
  %and28 = and i32 %and27, -257
  %cmp29 = icmp eq i32 %and28, 100664832
  br i1 %cmp29, label %land.lhs.true37, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %12 = load i32, i32* %policy_alg.addr, align 4
  %and31 = and i32 %12, -256
  %cmp32 = icmp eq i32 %and31, 100665600
  br i1 %cmp32, label %land.lhs.true37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %13 = load i32, i32* %policy_alg.addr, align 4
  %and34 = and i32 %13, -256
  %and35 = and i32 %and34, -257
  %cmp36 = icmp eq i32 %and35, 100664320
  br i1 %cmp36, label %land.lhs.true37, label %cond.false

land.lhs.true37:                                  ; preds = %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false26, %lor.lhs.false23, %lor.lhs.false20, %land.lhs.true
  %14 = load i32, i32* %policy_alg.addr, align 4
  %and38 = and i32 %14, 255
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true37
  %15 = load i32, i32* %policy_alg.addr, align 4
  %and40 = and i32 %15, 255
  %or = or i32 %and40, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true37, %lor.lhs.false33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %cmp41 = icmp eq i32 %cond, 33554687
  br i1 %cmp41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %cond.end
  %16 = load i32, i32* %policy_alg.addr, align 4
  %and43 = and i32 %16, -256
  %17 = load i32, i32* %requested_alg.addr, align 4
  %and44 = and i32 %17, -256
  %cmp45 = icmp eq i32 %and43, %and44
  %conv = zext i1 %cmp45 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end46:                                         ; preds = %cond.end, %lor.lhs.false14
  %18 = load i32, i32* %policy_alg.addr, align 4
  %and47 = and i32 %18, 2130706432
  %cmp48 = icmp eq i32 %and47, 83886080
  br i1 %cmp48, label %land.lhs.true50, label %if.end71

land.lhs.true50:                                  ; preds = %if.end46
  %19 = load i32, i32* %requested_alg.addr, align 4
  %and51 = and i32 %19, 2130706432
  %cmp52 = icmp eq i32 %and51, 83886080
  br i1 %cmp52, label %land.lhs.true54, label %if.end71

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %20 = load i32, i32* %policy_alg.addr, align 4
  %and55 = and i32 %20, -4161537
  %or56 = or i32 %and55, 0
  %21 = load i32, i32* %requested_alg.addr, align 4
  %and57 = and i32 %21, -4161537
  %or58 = or i32 %and57, 0
  %cmp59 = icmp eq i32 %or56, %or58
  br i1 %cmp59, label %land.lhs.true61, label %if.end71

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %22 = load i32, i32* %policy_alg.addr, align 4
  %and62 = and i32 %22, 32768
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %if.then65, label %if.end71

if.then65:                                        ; preds = %land.lhs.true61
  %23 = load i32, i32* %policy_alg.addr, align 4
  %and66 = and i32 %23, 4128768
  %shr = lshr i32 %and66, 16
  %24 = load i32, i32* %requested_alg.addr, align 4
  %and67 = and i32 %24, 4128768
  %shr68 = lshr i32 %and67, 16
  %cmp69 = icmp ule i32 %shr, %shr68
  %conv70 = zext i1 %cmp69 to i32
  store i32 %conv70, i32* %retval, align 4
  br label %return

if.end71:                                         ; preds = %land.lhs.true61, %land.lhs.true54, %land.lhs.true50, %if.end46
  %25 = load i32, i32* %policy_alg.addr, align 4
  %and72 = and i32 %25, 2130706432
  %cmp73 = icmp eq i32 %and72, 50331648
  br i1 %cmp73, label %land.lhs.true75, label %if.end458

land.lhs.true75:                                  ; preds = %if.end71
  %26 = load i32, i32* %requested_alg.addr, align 4
  %and76 = and i32 %26, 2130706432
  %cmp77 = icmp eq i32 %and76, 50331648
  br i1 %cmp77, label %land.lhs.true79, label %if.end458

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %27 = load i32, i32* %policy_alg.addr, align 4
  %and80 = and i32 %27, -4161537
  %28 = load i32, i32* %requested_alg.addr, align 4
  %and81 = and i32 %28, -4161537
  %cmp82 = icmp eq i32 %and80, %and81
  br i1 %cmp82, label %if.then84, label %if.end458

if.then84:                                        ; preds = %land.lhs.true79
  %29 = load i32, i32* %policy_alg.addr, align 4
  %30 = load i16, i16* %key_type.addr, align 2
  %call = call i32 @psa_mac_key_can_do(i32 noundef %29, i16 noundef zeroext %30) #6
  %cmp85 = icmp ne i32 0, %call
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  store i32 0, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then84
  %31 = load i32, i32* %requested_alg.addr, align 4
  %and89 = and i32 %31, 4128768
  %tobool = icmp ne i32 %and89, 0
  br i1 %tobool, label %cond.true90, label %cond.false93

cond.true90:                                      ; preds = %if.end88
  %32 = load i32, i32* %requested_alg.addr, align 4
  %and91 = and i32 %32, 4128768
  %shr92 = lshr i32 %and91, 16
  br label %cond.end246

cond.false93:                                     ; preds = %if.end88
  %33 = load i32, i32* %requested_alg.addr, align 4
  %and94 = and i32 %33, 2143289344
  %cmp95 = icmp eq i32 %and94, 58720256
  br i1 %cmp95, label %cond.true97, label %cond.false225

cond.true97:                                      ; preds = %cond.false93
  %34 = load i32, i32* %requested_alg.addr, align 4
  %and98 = and i32 %34, 255
  %or99 = or i32 33554432, %and98
  %and100 = and i32 %or99, 255
  %or101 = or i32 33554432, %and100
  %cmp102 = icmp eq i32 %or101, 33554435
  br i1 %cmp102, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.true97
  br label %cond.end223

cond.false105:                                    ; preds = %cond.true97
  %35 = load i32, i32* %requested_alg.addr, align 4
  %and106 = and i32 %35, 255
  %or107 = or i32 33554432, %and106
  %and108 = and i32 %or107, 255
  %or109 = or i32 33554432, %and108
  %cmp110 = icmp eq i32 %or109, 33554436
  br i1 %cmp110, label %cond.true112, label %cond.false113

cond.true112:                                     ; preds = %cond.false105
  br label %cond.end221

cond.false113:                                    ; preds = %cond.false105
  %36 = load i32, i32* %requested_alg.addr, align 4
  %and114 = and i32 %36, 255
  %or115 = or i32 33554432, %and114
  %and116 = and i32 %or115, 255
  %or117 = or i32 33554432, %and116
  %cmp118 = icmp eq i32 %or117, 33554437
  br i1 %cmp118, label %cond.true120, label %cond.false121

cond.true120:                                     ; preds = %cond.false113
  br label %cond.end219

cond.false121:                                    ; preds = %cond.false113
  %37 = load i32, i32* %requested_alg.addr, align 4
  %and122 = and i32 %37, 255
  %or123 = or i32 33554432, %and122
  %and124 = and i32 %or123, 255
  %or125 = or i32 33554432, %and124
  %cmp126 = icmp eq i32 %or125, 33554440
  br i1 %cmp126, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %cond.false121
  br label %cond.end217

cond.false129:                                    ; preds = %cond.false121
  %38 = load i32, i32* %requested_alg.addr, align 4
  %and130 = and i32 %38, 255
  %or131 = or i32 33554432, %and130
  %and132 = and i32 %or131, 255
  %or133 = or i32 33554432, %and132
  %cmp134 = icmp eq i32 %or133, 33554441
  br i1 %cmp134, label %cond.true136, label %cond.false137

cond.true136:                                     ; preds = %cond.false129
  br label %cond.end215

cond.false137:                                    ; preds = %cond.false129
  %39 = load i32, i32* %requested_alg.addr, align 4
  %and138 = and i32 %39, 255
  %or139 = or i32 33554432, %and138
  %and140 = and i32 %or139, 255
  %or141 = or i32 33554432, %and140
  %cmp142 = icmp eq i32 %or141, 33554442
  br i1 %cmp142, label %cond.true144, label %cond.false145

cond.true144:                                     ; preds = %cond.false137
  br label %cond.end213

cond.false145:                                    ; preds = %cond.false137
  %40 = load i32, i32* %requested_alg.addr, align 4
  %and146 = and i32 %40, 255
  %or147 = or i32 33554432, %and146
  %and148 = and i32 %or147, 255
  %or149 = or i32 33554432, %and148
  %cmp150 = icmp eq i32 %or149, 33554443
  br i1 %cmp150, label %cond.true152, label %cond.false153

cond.true152:                                     ; preds = %cond.false145
  br label %cond.end211

cond.false153:                                    ; preds = %cond.false145
  %41 = load i32, i32* %requested_alg.addr, align 4
  %and154 = and i32 %41, 255
  %or155 = or i32 33554432, %and154
  %and156 = and i32 %or155, 255
  %or157 = or i32 33554432, %and156
  %cmp158 = icmp eq i32 %or157, 33554444
  br i1 %cmp158, label %cond.true160, label %cond.false161

cond.true160:                                     ; preds = %cond.false153
  br label %cond.end209

cond.false161:                                    ; preds = %cond.false153
  %42 = load i32, i32* %requested_alg.addr, align 4
  %and162 = and i32 %42, 255
  %or163 = or i32 33554432, %and162
  %and164 = and i32 %or163, 255
  %or165 = or i32 33554432, %and164
  %cmp166 = icmp eq i32 %or165, 33554445
  br i1 %cmp166, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %cond.false161
  br label %cond.end207

cond.false169:                                    ; preds = %cond.false161
  %43 = load i32, i32* %requested_alg.addr, align 4
  %and170 = and i32 %43, 255
  %or171 = or i32 33554432, %and170
  %and172 = and i32 %or171, 255
  %or173 = or i32 33554432, %and172
  %cmp174 = icmp eq i32 %or173, 33554448
  br i1 %cmp174, label %cond.true176, label %cond.false177

cond.true176:                                     ; preds = %cond.false169
  br label %cond.end205

cond.false177:                                    ; preds = %cond.false169
  %44 = load i32, i32* %requested_alg.addr, align 4
  %and178 = and i32 %44, 255
  %or179 = or i32 33554432, %and178
  %and180 = and i32 %or179, 255
  %or181 = or i32 33554432, %and180
  %cmp182 = icmp eq i32 %or181, 33554449
  br i1 %cmp182, label %cond.true184, label %cond.false185

cond.true184:                                     ; preds = %cond.false177
  br label %cond.end203

cond.false185:                                    ; preds = %cond.false177
  %45 = load i32, i32* %requested_alg.addr, align 4
  %and186 = and i32 %45, 255
  %or187 = or i32 33554432, %and186
  %and188 = and i32 %or187, 255
  %or189 = or i32 33554432, %and188
  %cmp190 = icmp eq i32 %or189, 33554450
  br i1 %cmp190, label %cond.true192, label %cond.false193

cond.true192:                                     ; preds = %cond.false185
  br label %cond.end201

cond.false193:                                    ; preds = %cond.false185
  %46 = load i32, i32* %requested_alg.addr, align 4
  %and194 = and i32 %46, 255
  %or195 = or i32 33554432, %and194
  %and196 = and i32 %or195, 255
  %or197 = or i32 33554432, %and196
  %cmp198 = icmp eq i32 %or197, 33554451
  %47 = zext i1 %cmp198 to i64
  %cond200 = select i1 %cmp198, i32 64, i32 0
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false193, %cond.true192
  %cond202 = phi i32 [ 48, %cond.true192 ], [ %cond200, %cond.false193 ]
  br label %cond.end203

cond.end203:                                      ; preds = %cond.end201, %cond.true184
  %cond204 = phi i32 [ 32, %cond.true184 ], [ %cond202, %cond.end201 ]
  br label %cond.end205

cond.end205:                                      ; preds = %cond.end203, %cond.true176
  %cond206 = phi i32 [ 28, %cond.true176 ], [ %cond204, %cond.end203 ]
  br label %cond.end207

cond.end207:                                      ; preds = %cond.end205, %cond.true168
  %cond208 = phi i32 [ 32, %cond.true168 ], [ %cond206, %cond.end205 ]
  br label %cond.end209

cond.end209:                                      ; preds = %cond.end207, %cond.true160
  %cond210 = phi i32 [ 28, %cond.true160 ], [ %cond208, %cond.end207 ]
  br label %cond.end211

cond.end211:                                      ; preds = %cond.end209, %cond.true152
  %cond212 = phi i32 [ 64, %cond.true152 ], [ %cond210, %cond.end209 ]
  br label %cond.end213

cond.end213:                                      ; preds = %cond.end211, %cond.true144
  %cond214 = phi i32 [ 48, %cond.true144 ], [ %cond212, %cond.end211 ]
  br label %cond.end215

cond.end215:                                      ; preds = %cond.end213, %cond.true136
  %cond216 = phi i32 [ 32, %cond.true136 ], [ %cond214, %cond.end213 ]
  br label %cond.end217

cond.end217:                                      ; preds = %cond.end215, %cond.true128
  %cond218 = phi i32 [ 28, %cond.true128 ], [ %cond216, %cond.end215 ]
  br label %cond.end219

cond.end219:                                      ; preds = %cond.end217, %cond.true120
  %cond220 = phi i32 [ 20, %cond.true120 ], [ %cond218, %cond.end217 ]
  br label %cond.end221

cond.end221:                                      ; preds = %cond.end219, %cond.true112
  %cond222 = phi i32 [ 20, %cond.true112 ], [ %cond220, %cond.end219 ]
  br label %cond.end223

cond.end223:                                      ; preds = %cond.end221, %cond.true104
  %cond224 = phi i32 [ 16, %cond.true104 ], [ %cond222, %cond.end221 ]
  br label %cond.end244

cond.false225:                                    ; preds = %cond.false93
  %48 = load i32, i32* %requested_alg.addr, align 4
  %and226 = and i32 %48, 2143289344
  %cmp227 = icmp eq i32 %and226, 62914560
  br i1 %cmp227, label %cond.true229, label %cond.false241

cond.true229:                                     ; preds = %cond.false225
  %49 = load i16, i16* %key_type.addr, align 2
  %conv230 = zext i16 %49 to i32
  %and231 = and i32 %conv230, 28672
  %cmp232 = icmp eq i32 %and231, 8192
  br i1 %cmp232, label %cond.true234, label %cond.false238

cond.true234:                                     ; preds = %cond.true229
  %50 = load i16, i16* %key_type.addr, align 2
  %conv235 = zext i16 %50 to i32
  %shr236 = ashr i32 %conv235, 8
  %and237 = and i32 %shr236, 7
  %shl = shl i32 1, %and237
  br label %cond.end239

cond.false238:                                    ; preds = %cond.true229
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false238, %cond.true234
  %cond240 = phi i32 [ %shl, %cond.true234 ], [ 0, %cond.false238 ]
  br label %cond.end242

cond.false241:                                    ; preds = %cond.false225
  %51 = load i16, i16* %key_type.addr, align 2
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false241, %cond.end239
  %cond243 = phi i32 [ %cond240, %cond.end239 ], [ 0, %cond.false241 ]
  br label %cond.end244

cond.end244:                                      ; preds = %cond.end242, %cond.end223
  %cond245 = phi i32 [ %cond224, %cond.end223 ], [ %cond243, %cond.end242 ]
  br label %cond.end246

cond.end246:                                      ; preds = %cond.end244, %cond.true90
  %cond247 = phi i32 [ %shr92, %cond.true90 ], [ %cond245, %cond.end244 ]
  %conv248 = zext i32 %cond247 to i64
  store i64 %conv248, i64* %requested_output_length, align 8
  %52 = load i32, i32* %requested_alg.addr, align 4
  %and249 = and i32 %52, -4161537
  %and250 = and i32 %and249, 4128768
  %tobool251 = icmp ne i32 %and250, 0
  br i1 %tobool251, label %cond.true252, label %cond.false256

cond.true252:                                     ; preds = %cond.end246
  %53 = load i32, i32* %requested_alg.addr, align 4
  %and253 = and i32 %53, -4161537
  %and254 = and i32 %and253, 4128768
  %shr255 = lshr i32 %and254, 16
  br label %cond.end425

cond.false256:                                    ; preds = %cond.end246
  %54 = load i32, i32* %requested_alg.addr, align 4
  %and257 = and i32 %54, -4161537
  %and258 = and i32 %and257, 2143289344
  %cmp259 = icmp eq i32 %and258, 58720256
  br i1 %cmp259, label %cond.true261, label %cond.false402

cond.true261:                                     ; preds = %cond.false256
  %55 = load i32, i32* %requested_alg.addr, align 4
  %and262 = and i32 %55, -4161537
  %and263 = and i32 %and262, 255
  %or264 = or i32 33554432, %and263
  %and265 = and i32 %or264, 255
  %or266 = or i32 33554432, %and265
  %cmp267 = icmp eq i32 %or266, 33554435
  br i1 %cmp267, label %cond.true269, label %cond.false270

cond.true269:                                     ; preds = %cond.true261
  br label %cond.end400

cond.false270:                                    ; preds = %cond.true261
  %56 = load i32, i32* %requested_alg.addr, align 4
  %and271 = and i32 %56, -4161537
  %and272 = and i32 %and271, 255
  %or273 = or i32 33554432, %and272
  %and274 = and i32 %or273, 255
  %or275 = or i32 33554432, %and274
  %cmp276 = icmp eq i32 %or275, 33554436
  br i1 %cmp276, label %cond.true278, label %cond.false279

cond.true278:                                     ; preds = %cond.false270
  br label %cond.end398

cond.false279:                                    ; preds = %cond.false270
  %57 = load i32, i32* %requested_alg.addr, align 4
  %and280 = and i32 %57, -4161537
  %and281 = and i32 %and280, 255
  %or282 = or i32 33554432, %and281
  %and283 = and i32 %or282, 255
  %or284 = or i32 33554432, %and283
  %cmp285 = icmp eq i32 %or284, 33554437
  br i1 %cmp285, label %cond.true287, label %cond.false288

cond.true287:                                     ; preds = %cond.false279
  br label %cond.end396

cond.false288:                                    ; preds = %cond.false279
  %58 = load i32, i32* %requested_alg.addr, align 4
  %and289 = and i32 %58, -4161537
  %and290 = and i32 %and289, 255
  %or291 = or i32 33554432, %and290
  %and292 = and i32 %or291, 255
  %or293 = or i32 33554432, %and292
  %cmp294 = icmp eq i32 %or293, 33554440
  br i1 %cmp294, label %cond.true296, label %cond.false297

cond.true296:                                     ; preds = %cond.false288
  br label %cond.end394

cond.false297:                                    ; preds = %cond.false288
  %59 = load i32, i32* %requested_alg.addr, align 4
  %and298 = and i32 %59, -4161537
  %and299 = and i32 %and298, 255
  %or300 = or i32 33554432, %and299
  %and301 = and i32 %or300, 255
  %or302 = or i32 33554432, %and301
  %cmp303 = icmp eq i32 %or302, 33554441
  br i1 %cmp303, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %cond.false297
  br label %cond.end392

cond.false306:                                    ; preds = %cond.false297
  %60 = load i32, i32* %requested_alg.addr, align 4
  %and307 = and i32 %60, -4161537
  %and308 = and i32 %and307, 255
  %or309 = or i32 33554432, %and308
  %and310 = and i32 %or309, 255
  %or311 = or i32 33554432, %and310
  %cmp312 = icmp eq i32 %or311, 33554442
  br i1 %cmp312, label %cond.true314, label %cond.false315

cond.true314:                                     ; preds = %cond.false306
  br label %cond.end390

cond.false315:                                    ; preds = %cond.false306
  %61 = load i32, i32* %requested_alg.addr, align 4
  %and316 = and i32 %61, -4161537
  %and317 = and i32 %and316, 255
  %or318 = or i32 33554432, %and317
  %and319 = and i32 %or318, 255
  %or320 = or i32 33554432, %and319
  %cmp321 = icmp eq i32 %or320, 33554443
  br i1 %cmp321, label %cond.true323, label %cond.false324

cond.true323:                                     ; preds = %cond.false315
  br label %cond.end388

cond.false324:                                    ; preds = %cond.false315
  %62 = load i32, i32* %requested_alg.addr, align 4
  %and325 = and i32 %62, -4161537
  %and326 = and i32 %and325, 255
  %or327 = or i32 33554432, %and326
  %and328 = and i32 %or327, 255
  %or329 = or i32 33554432, %and328
  %cmp330 = icmp eq i32 %or329, 33554444
  br i1 %cmp330, label %cond.true332, label %cond.false333

cond.true332:                                     ; preds = %cond.false324
  br label %cond.end386

cond.false333:                                    ; preds = %cond.false324
  %63 = load i32, i32* %requested_alg.addr, align 4
  %and334 = and i32 %63, -4161537
  %and335 = and i32 %and334, 255
  %or336 = or i32 33554432, %and335
  %and337 = and i32 %or336, 255
  %or338 = or i32 33554432, %and337
  %cmp339 = icmp eq i32 %or338, 33554445
  br i1 %cmp339, label %cond.true341, label %cond.false342

cond.true341:                                     ; preds = %cond.false333
  br label %cond.end384

cond.false342:                                    ; preds = %cond.false333
  %64 = load i32, i32* %requested_alg.addr, align 4
  %and343 = and i32 %64, -4161537
  %and344 = and i32 %and343, 255
  %or345 = or i32 33554432, %and344
  %and346 = and i32 %or345, 255
  %or347 = or i32 33554432, %and346
  %cmp348 = icmp eq i32 %or347, 33554448
  br i1 %cmp348, label %cond.true350, label %cond.false351

cond.true350:                                     ; preds = %cond.false342
  br label %cond.end382

cond.false351:                                    ; preds = %cond.false342
  %65 = load i32, i32* %requested_alg.addr, align 4
  %and352 = and i32 %65, -4161537
  %and353 = and i32 %and352, 255
  %or354 = or i32 33554432, %and353
  %and355 = and i32 %or354, 255
  %or356 = or i32 33554432, %and355
  %cmp357 = icmp eq i32 %or356, 33554449
  br i1 %cmp357, label %cond.true359, label %cond.false360

cond.true359:                                     ; preds = %cond.false351
  br label %cond.end380

cond.false360:                                    ; preds = %cond.false351
  %66 = load i32, i32* %requested_alg.addr, align 4
  %and361 = and i32 %66, -4161537
  %and362 = and i32 %and361, 255
  %or363 = or i32 33554432, %and362
  %and364 = and i32 %or363, 255
  %or365 = or i32 33554432, %and364
  %cmp366 = icmp eq i32 %or365, 33554450
  br i1 %cmp366, label %cond.true368, label %cond.false369

cond.true368:                                     ; preds = %cond.false360
  br label %cond.end378

cond.false369:                                    ; preds = %cond.false360
  %67 = load i32, i32* %requested_alg.addr, align 4
  %and370 = and i32 %67, -4161537
  %and371 = and i32 %and370, 255
  %or372 = or i32 33554432, %and371
  %and373 = and i32 %or372, 255
  %or374 = or i32 33554432, %and373
  %cmp375 = icmp eq i32 %or374, 33554451
  %68 = zext i1 %cmp375 to i64
  %cond377 = select i1 %cmp375, i32 64, i32 0
  br label %cond.end378

cond.end378:                                      ; preds = %cond.false369, %cond.true368
  %cond379 = phi i32 [ 48, %cond.true368 ], [ %cond377, %cond.false369 ]
  br label %cond.end380

cond.end380:                                      ; preds = %cond.end378, %cond.true359
  %cond381 = phi i32 [ 32, %cond.true359 ], [ %cond379, %cond.end378 ]
  br label %cond.end382

cond.end382:                                      ; preds = %cond.end380, %cond.true350
  %cond383 = phi i32 [ 28, %cond.true350 ], [ %cond381, %cond.end380 ]
  br label %cond.end384

cond.end384:                                      ; preds = %cond.end382, %cond.true341
  %cond385 = phi i32 [ 32, %cond.true341 ], [ %cond383, %cond.end382 ]
  br label %cond.end386

cond.end386:                                      ; preds = %cond.end384, %cond.true332
  %cond387 = phi i32 [ 28, %cond.true332 ], [ %cond385, %cond.end384 ]
  br label %cond.end388

cond.end388:                                      ; preds = %cond.end386, %cond.true323
  %cond389 = phi i32 [ 64, %cond.true323 ], [ %cond387, %cond.end386 ]
  br label %cond.end390

cond.end390:                                      ; preds = %cond.end388, %cond.true314
  %cond391 = phi i32 [ 48, %cond.true314 ], [ %cond389, %cond.end388 ]
  br label %cond.end392

cond.end392:                                      ; preds = %cond.end390, %cond.true305
  %cond393 = phi i32 [ 32, %cond.true305 ], [ %cond391, %cond.end390 ]
  br label %cond.end394

cond.end394:                                      ; preds = %cond.end392, %cond.true296
  %cond395 = phi i32 [ 28, %cond.true296 ], [ %cond393, %cond.end392 ]
  br label %cond.end396

cond.end396:                                      ; preds = %cond.end394, %cond.true287
  %cond397 = phi i32 [ 20, %cond.true287 ], [ %cond395, %cond.end394 ]
  br label %cond.end398

cond.end398:                                      ; preds = %cond.end396, %cond.true278
  %cond399 = phi i32 [ 20, %cond.true278 ], [ %cond397, %cond.end396 ]
  br label %cond.end400

cond.end400:                                      ; preds = %cond.end398, %cond.true269
  %cond401 = phi i32 [ 16, %cond.true269 ], [ %cond399, %cond.end398 ]
  br label %cond.end423

cond.false402:                                    ; preds = %cond.false256
  %69 = load i32, i32* %requested_alg.addr, align 4
  %and403 = and i32 %69, -4161537
  %and404 = and i32 %and403, 2143289344
  %cmp405 = icmp eq i32 %and404, 62914560
  br i1 %cmp405, label %cond.true407, label %cond.false420

cond.true407:                                     ; preds = %cond.false402
  %70 = load i16, i16* %key_type.addr, align 2
  %conv408 = zext i16 %70 to i32
  %and409 = and i32 %conv408, 28672
  %cmp410 = icmp eq i32 %and409, 8192
  br i1 %cmp410, label %cond.true412, label %cond.false417

cond.true412:                                     ; preds = %cond.true407
  %71 = load i16, i16* %key_type.addr, align 2
  %conv413 = zext i16 %71 to i32
  %shr414 = ashr i32 %conv413, 8
  %and415 = and i32 %shr414, 7
  %shl416 = shl i32 1, %and415
  br label %cond.end418

cond.false417:                                    ; preds = %cond.true407
  br label %cond.end418

cond.end418:                                      ; preds = %cond.false417, %cond.true412
  %cond419 = phi i32 [ %shl416, %cond.true412 ], [ 0, %cond.false417 ]
  br label %cond.end421

cond.false420:                                    ; preds = %cond.false402
  %72 = load i16, i16* %key_type.addr, align 2
  br label %cond.end421

cond.end421:                                      ; preds = %cond.false420, %cond.end418
  %cond422 = phi i32 [ %cond419, %cond.end418 ], [ 0, %cond.false420 ]
  br label %cond.end423

cond.end423:                                      ; preds = %cond.end421, %cond.end400
  %cond424 = phi i32 [ %cond401, %cond.end400 ], [ %cond422, %cond.end421 ]
  br label %cond.end425

cond.end425:                                      ; preds = %cond.end423, %cond.true252
  %cond426 = phi i32 [ %shr255, %cond.true252 ], [ %cond424, %cond.end423 ]
  %conv427 = zext i32 %cond426 to i64
  store i64 %conv427, i64* %default_output_length, align 8
  %73 = load i32, i32* %policy_alg.addr, align 4
  %and428 = and i32 %73, 4128768
  %shr429 = lshr i32 %and428, 16
  %cmp430 = icmp eq i32 %shr429, 0
  br i1 %cmp430, label %if.then432, label %if.end435

if.then432:                                       ; preds = %cond.end425
  %74 = load i64, i64* %requested_output_length, align 8
  %75 = load i64, i64* %default_output_length, align 8
  %cmp433 = icmp eq i64 %74, %75
  %conv434 = zext i1 %cmp433 to i32
  store i32 %conv434, i32* %retval, align 4
  br label %return

if.end435:                                        ; preds = %cond.end425
  %76 = load i32, i32* %requested_alg.addr, align 4
  %and436 = and i32 %76, 4128768
  %shr437 = lshr i32 %and436, 16
  %cmp438 = icmp eq i32 %shr437, 0
  br i1 %cmp438, label %land.lhs.true440, label %if.end447

land.lhs.true440:                                 ; preds = %if.end435
  %77 = load i32, i32* %policy_alg.addr, align 4
  %and441 = and i32 %77, 4128768
  %shr442 = lshr i32 %and441, 16
  %conv443 = zext i32 %shr442 to i64
  %78 = load i64, i64* %default_output_length, align 8
  %cmp444 = icmp eq i64 %conv443, %78
  br i1 %cmp444, label %if.then446, label %if.end447

if.then446:                                       ; preds = %land.lhs.true440
  store i32 1, i32* %retval, align 4
  br label %return

if.end447:                                        ; preds = %land.lhs.true440, %if.end435
  %79 = load i32, i32* %policy_alg.addr, align 4
  %and448 = and i32 %79, 32768
  %cmp449 = icmp ne i32 %and448, 0
  br i1 %cmp449, label %if.then451, label %if.end457

if.then451:                                       ; preds = %if.end447
  %80 = load i32, i32* %policy_alg.addr, align 4
  %and452 = and i32 %80, 4128768
  %shr453 = lshr i32 %and452, 16
  %conv454 = zext i32 %shr453 to i64
  %81 = load i64, i64* %requested_output_length, align 8
  %cmp455 = icmp ule i64 %conv454, %81
  %conv456 = zext i1 %cmp455 to i32
  store i32 %conv456, i32* %retval, align 4
  br label %return

if.end457:                                        ; preds = %if.end447
  br label %if.end458

if.end458:                                        ; preds = %if.end457, %land.lhs.true79, %land.lhs.true75, %if.end71
  %82 = load i32, i32* %policy_alg.addr, align 4
  %and459 = and i32 %82, 2130706432
  %cmp460 = icmp eq i32 %and459, 150994944
  br i1 %cmp460, label %land.lhs.true462, label %if.end476

land.lhs.true462:                                 ; preds = %if.end458
  %83 = load i32, i32* %policy_alg.addr, align 4
  %and463 = and i32 %83, -33488897
  %or464 = or i32 %and463, 134217728
  %cmp465 = icmp eq i32 %or464, 134217728
  br i1 %cmp465, label %land.lhs.true467, label %if.end476

land.lhs.true467:                                 ; preds = %land.lhs.true462
  %84 = load i32, i32* %requested_alg.addr, align 4
  %and468 = and i32 %84, 2130706432
  %cmp469 = icmp eq i32 %and468, 150994944
  br i1 %cmp469, label %if.then471, label %if.end476

if.then471:                                       ; preds = %land.lhs.true467
  %85 = load i32, i32* %requested_alg.addr, align 4
  %and472 = and i32 %85, -65536
  %or473 = or i32 %and472, 150994944
  %86 = load i32, i32* %policy_alg.addr, align 4
  %cmp474 = icmp eq i32 %or473, %86
  %conv475 = zext i1 %cmp474 to i32
  store i32 %conv475, i32* %retval, align 4
  br label %return

if.end476:                                        ; preds = %land.lhs.true467, %land.lhs.true462, %if.end458
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end476, %if.then471, %if.then451, %if.then446, %if.then432, %if.then87, %if.then65, %if.then42, %if.then
  %87 = load i32, i32* %retval, align 4
  ret i32 %87
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_key_can_do(i32 noundef %algorithm, i16 noundef zeroext %key_type) #0 {
entry:
  %retval = alloca i32, align 4
  %algorithm.addr = alloca i32, align 4
  %key_type.addr = alloca i16, align 2
  store i32 %algorithm, i32* %algorithm.addr, align 4
  store i16 %key_type, i16* %key_type.addr, align 2
  %0 = load i32, i32* %algorithm.addr, align 4
  %and = and i32 %0, 2143289344
  %cmp = icmp eq i32 %and, 58720256
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %key_type.addr, align 2
  %conv = zext i16 %1 to i32
  %cmp1 = icmp eq i32 %conv, 4352
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %2 = load i32, i32* %algorithm.addr, align 4
  %and5 = and i32 %2, 2143289344
  %cmp6 = icmp eq i32 %and5, 62914560
  br i1 %cmp6, label %if.then8, label %if.end25

if.then8:                                         ; preds = %if.end4
  %3 = load i16, i16* %key_type.addr, align 2
  %conv9 = zext i16 %3 to i32
  %and10 = and i32 %conv9, 28672
  %cmp11 = icmp eq i32 %and10, 8192
  br i1 %cmp11, label %if.then13, label %if.end24

if.then13:                                        ; preds = %if.then8
  %4 = load i16, i16* %key_type.addr, align 2
  %conv14 = zext i16 %4 to i32
  %and15 = and i32 %conv14, 28672
  %cmp16 = icmp eq i32 %and15, 8192
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  %5 = load i16, i16* %key_type.addr, align 2
  %conv18 = zext i16 %5 to i32
  %shr = ashr i32 %conv18, 8
  %and19 = and i32 %shr, 7
  %shl = shl i32 1, %and19
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %cmp20 = icmp ugt i32 %cond, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %cond.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %cond.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then8
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end4
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then22, %if.then3
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_rsa_export(%struct.mbedtls_rsa_context* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_cmp_int(%struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i64 @mbedtls_mpi_size(%struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_validate_key_attributes(%struct.psa_key_attributes_s* noundef %attributes, %struct.psa_se_drv_table_entry_s** noundef %p_drv) #0 {
entry:
  %retval = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %p_drv.addr = alloca %struct.psa_se_drv_table_entry_s**, align 8
  %status = alloca i32, align 4
  %lifetime = alloca i32, align 4
  %key = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store %struct.psa_se_drv_table_entry_s** %p_drv, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  store i32 -135, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %0) #6
  store i32 %call, i32* %lifetime, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call1 = call i32 @psa_get_key_id(%struct.psa_key_attributes_s* noundef %1) #6
  store i32 %call1, i32* %key, align 4
  %2 = load i32, i32* %lifetime, align 4
  %3 = load %struct.psa_se_drv_table_entry_s**, %struct.psa_se_drv_table_entry_s*** %p_drv.addr, align 8
  %call2 = call i32 @psa_validate_key_location(i32 noundef %2, %struct.psa_se_drv_table_entry_s** noundef %3) #6
  store i32 %call2, i32* %status, align 4
  %4 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %status, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %lifetime, align 4
  %call3 = call i32 @psa_validate_key_persistence(i32 noundef %6) #6
  store i32 %call3, i32* %status, align 4
  %7 = load i32, i32* %status, align 4
  %cmp4 = icmp ne i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %status, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %lifetime, align 4
  %and = and i32 %9, 255
  %conv = trunc i32 %and to i8
  %conv7 = zext i8 %conv to i32
  %cmp8 = icmp eq i32 %conv7, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %10 = load i32, i32* %key, align 4
  %cmp11 = icmp ne i32 %10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 -135, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  br label %if.end19

if.else:                                          ; preds = %if.end6
  %11 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call15 = call i32 @psa_get_key_id(%struct.psa_key_attributes_s* noundef %11) #6
  %call16 = call i32 @psa_is_valid_key_id(i32 noundef %call15, i32 noundef 0) #6
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else
  store i32 -135, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end14
  %12 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %12, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 4
  %call20 = call i32 @psa_validate_key_policy(%struct.psa_key_policy_s* noundef %policy) #6
  store i32 %call20, i32* %status, align 4
  %13 = load i32, i32* %status, align 4
  %cmp21 = icmp ne i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %14 = load i32, i32* %status, align 4
  store i32 %14, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %15 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call25 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %15) #6
  %cmp26 = icmp ugt i64 %call25, 65528
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i32 -134, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  %16 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core30 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %16, i32 0, i32 0
  %flags = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core30, i32 0, i32 5
  %17 = load i16, i16* %flags, align 8
  %conv31 = zext i16 %17 to i32
  %and32 = and i32 %conv31, -2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  store i32 -135, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end29
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then28, %if.then23, %if.then17, %if.then13, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

declare dso_local i32 @psa_get_empty_key_slot(i32* noundef, %struct.psa_key_slot_t** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_key_lifetime(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %lifetime = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 2
  %1 = load i32, i32* %lifetime, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_get_key_id(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %id = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 3
  %1 = load i32, i32* %id, align 8
  ret i32 %1
}

declare dso_local i32 @psa_validate_key_location(i32 noundef, %struct.psa_se_drv_table_entry_s** noundef) #2

declare dso_local i32 @psa_validate_key_persistence(i32 noundef) #2

declare dso_local i32 @psa_is_valid_key_id(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_validate_key_policy(%struct.psa_key_policy_s* noundef %policy) #0 {
entry:
  %retval = alloca i32, align 4
  %policy.addr = alloca %struct.psa_key_policy_s*, align 8
  store %struct.psa_key_policy_s* %policy, %struct.psa_key_policy_s** %policy.addr, align 8
  %0 = load %struct.psa_key_policy_s*, %struct.psa_key_policy_s** %policy.addr, align 8
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %0, i32 0, i32 0
  %1 = load i32, i32* %usage, align 4
  %and = and i32 %1, -65284
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare dso_local i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_cmp_mpi(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef) #2

declare dso_local i32 @psa_save_persistent_key(%struct.psa_core_key_attributes_t* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_policy_algorithm_intersection(i16 noundef zeroext %key_type, i32 noundef %alg1, i32 noundef %alg2) #0 {
entry:
  %retval = alloca i32, align 4
  %key_type.addr = alloca i16, align 2
  %alg1.addr = alloca i32, align 4
  %alg2.addr = alloca i32, align 4
  %alg1_len = alloca i64, align 8
  %alg2_len = alloca i64, align 8
  %restricted_len = alloca i64, align 8
  %alg1_len171 = alloca i64, align 8
  %alg2_len333 = alloca i64, align 8
  %restricted_len496 = alloca i64, align 8
  store i16 %key_type, i16* %key_type.addr, align 2
  store i32 %alg1, i32* %alg1.addr, align 4
  store i32 %alg2, i32* %alg2.addr, align 4
  %0 = load i32, i32* %alg1.addr, align 4
  %1 = load i32, i32* %alg2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %alg1.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %alg1.addr, align 4
  %and = and i32 %3, -256
  %cmp1 = icmp eq i32 %and, 100664064
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %alg1.addr, align 4
  %and2 = and i32 %4, -256
  %cmp3 = icmp eq i32 %and2, 100668160
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load i32, i32* %alg1.addr, align 4
  %and5 = and i32 %5, -256
  %cmp6 = icmp eq i32 %and5, 100663808
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %6 = load i32, i32* %alg1.addr, align 4
  %and8 = and i32 %6, -256
  %and9 = and i32 %and8, -257
  %cmp10 = icmp eq i32 %and9, 100664832
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %7 = load i32, i32* %alg1.addr, align 4
  %and12 = and i32 %7, -256
  %cmp13 = icmp eq i32 %and12, 100665600
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %8 = load i32, i32* %alg1.addr, align 4
  %and15 = and i32 %8, -256
  %and16 = and i32 %and15, -257
  %cmp17 = icmp eq i32 %and16, 100664320
  br i1 %cmp17, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %lor.lhs.false14, %lor.lhs.false11, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %if.end
  %9 = load i32, i32* %alg2.addr, align 4
  %and18 = and i32 %9, -256
  %cmp19 = icmp eq i32 %and18, 100664064
  br i1 %cmp19, label %land.lhs.true37, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %alg2.addr, align 4
  %and21 = and i32 %10, -256
  %cmp22 = icmp eq i32 %and21, 100668160
  br i1 %cmp22, label %land.lhs.true37, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %11 = load i32, i32* %alg2.addr, align 4
  %and24 = and i32 %11, -256
  %cmp25 = icmp eq i32 %and24, 100663808
  br i1 %cmp25, label %land.lhs.true37, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %12 = load i32, i32* %alg2.addr, align 4
  %and27 = and i32 %12, -256
  %and28 = and i32 %and27, -257
  %cmp29 = icmp eq i32 %and28, 100664832
  br i1 %cmp29, label %land.lhs.true37, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %13 = load i32, i32* %alg2.addr, align 4
  %and31 = and i32 %13, -256
  %cmp32 = icmp eq i32 %and31, 100665600
  br i1 %cmp32, label %land.lhs.true37, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false30
  %14 = load i32, i32* %alg2.addr, align 4
  %and34 = and i32 %14, -256
  %and35 = and i32 %and34, -257
  %cmp36 = icmp eq i32 %and35, 100664320
  br i1 %cmp36, label %land.lhs.true37, label %if.end99

land.lhs.true37:                                  ; preds = %lor.lhs.false33, %lor.lhs.false30, %lor.lhs.false26, %lor.lhs.false23, %lor.lhs.false20, %land.lhs.true
  %15 = load i32, i32* %alg1.addr, align 4
  %and38 = and i32 %15, -256
  %16 = load i32, i32* %alg2.addr, align 4
  %and39 = and i32 %16, -256
  %cmp40 = icmp eq i32 %and38, %and39
  br i1 %cmp40, label %if.then41, label %if.end99

if.then41:                                        ; preds = %land.lhs.true37
  %17 = load i32, i32* %alg1.addr, align 4
  %and42 = and i32 %17, -256
  %cmp43 = icmp eq i32 %and42, 100664064
  br i1 %cmp43, label %land.lhs.true61, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.then41
  %18 = load i32, i32* %alg1.addr, align 4
  %and45 = and i32 %18, -256
  %cmp46 = icmp eq i32 %and45, 100668160
  br i1 %cmp46, label %land.lhs.true61, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %19 = load i32, i32* %alg1.addr, align 4
  %and48 = and i32 %19, -256
  %cmp49 = icmp eq i32 %and48, 100663808
  br i1 %cmp49, label %land.lhs.true61, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false47
  %20 = load i32, i32* %alg1.addr, align 4
  %and51 = and i32 %20, -256
  %and52 = and i32 %and51, -257
  %cmp53 = icmp eq i32 %and52, 100664832
  br i1 %cmp53, label %land.lhs.true61, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %21 = load i32, i32* %alg1.addr, align 4
  %and55 = and i32 %21, -256
  %cmp56 = icmp eq i32 %and55, 100665600
  br i1 %cmp56, label %land.lhs.true61, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %22 = load i32, i32* %alg1.addr, align 4
  %and58 = and i32 %22, -256
  %and59 = and i32 %and58, -257
  %cmp60 = icmp eq i32 %and59, 100664320
  br i1 %cmp60, label %land.lhs.true61, label %cond.false

land.lhs.true61:                                  ; preds = %lor.lhs.false57, %lor.lhs.false54, %lor.lhs.false50, %lor.lhs.false47, %lor.lhs.false44, %if.then41
  %23 = load i32, i32* %alg1.addr, align 4
  %and62 = and i32 %23, 255
  %cmp63 = icmp ne i32 %and62, 0
  br i1 %cmp63, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true61
  %24 = load i32, i32* %alg1.addr, align 4
  %and64 = and i32 %24, 255
  %or = or i32 %and64, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true61, %lor.lhs.false57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %cmp65 = icmp eq i32 %cond, 33554687
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %cond.end
  %25 = load i32, i32* %alg2.addr, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.end67:                                         ; preds = %cond.end
  %26 = load i32, i32* %alg2.addr, align 4
  %and68 = and i32 %26, -256
  %cmp69 = icmp eq i32 %and68, 100664064
  br i1 %cmp69, label %land.lhs.true87, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.end67
  %27 = load i32, i32* %alg2.addr, align 4
  %and71 = and i32 %27, -256
  %cmp72 = icmp eq i32 %and71, 100668160
  br i1 %cmp72, label %land.lhs.true87, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %28 = load i32, i32* %alg2.addr, align 4
  %and74 = and i32 %28, -256
  %cmp75 = icmp eq i32 %and74, 100663808
  br i1 %cmp75, label %land.lhs.true87, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %29 = load i32, i32* %alg2.addr, align 4
  %and77 = and i32 %29, -256
  %and78 = and i32 %and77, -257
  %cmp79 = icmp eq i32 %and78, 100664832
  br i1 %cmp79, label %land.lhs.true87, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %30 = load i32, i32* %alg2.addr, align 4
  %and81 = and i32 %30, -256
  %cmp82 = icmp eq i32 %and81, 100665600
  br i1 %cmp82, label %land.lhs.true87, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %lor.lhs.false80
  %31 = load i32, i32* %alg2.addr, align 4
  %and84 = and i32 %31, -256
  %and85 = and i32 %and84, -257
  %cmp86 = icmp eq i32 %and85, 100664320
  br i1 %cmp86, label %land.lhs.true87, label %cond.false93

land.lhs.true87:                                  ; preds = %lor.lhs.false83, %lor.lhs.false80, %lor.lhs.false76, %lor.lhs.false73, %lor.lhs.false70, %if.end67
  %32 = load i32, i32* %alg2.addr, align 4
  %and88 = and i32 %32, 255
  %cmp89 = icmp ne i32 %and88, 0
  br i1 %cmp89, label %cond.true90, label %cond.false93

cond.true90:                                      ; preds = %land.lhs.true87
  %33 = load i32, i32* %alg2.addr, align 4
  %and91 = and i32 %33, 255
  %or92 = or i32 %and91, 33554432
  br label %cond.end94

cond.false93:                                     ; preds = %land.lhs.true87, %lor.lhs.false83
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.true90
  %cond95 = phi i32 [ %or92, %cond.true90 ], [ 0, %cond.false93 ]
  %cmp96 = icmp eq i32 %cond95, 33554687
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %cond.end94
  %34 = load i32, i32* %alg1.addr, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end98:                                         ; preds = %cond.end94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %land.lhs.true37, %lor.lhs.false33, %lor.lhs.false14
  %35 = load i32, i32* %alg1.addr, align 4
  %and100 = and i32 %35, 2130706432
  %cmp101 = icmp eq i32 %and100, 83886080
  br i1 %cmp101, label %land.lhs.true102, label %if.end153

land.lhs.true102:                                 ; preds = %if.end99
  %36 = load i32, i32* %alg2.addr, align 4
  %and103 = and i32 %36, 2130706432
  %cmp104 = icmp eq i32 %and103, 83886080
  br i1 %cmp104, label %land.lhs.true105, label %if.end153

land.lhs.true105:                                 ; preds = %land.lhs.true102
  %37 = load i32, i32* %alg1.addr, align 4
  %and106 = and i32 %37, -4161537
  %or107 = or i32 %and106, 0
  %38 = load i32, i32* %alg2.addr, align 4
  %and108 = and i32 %38, -4161537
  %or109 = or i32 %and108, 0
  %cmp110 = icmp eq i32 %or107, %or109
  br i1 %cmp110, label %if.then111, label %if.end153

if.then111:                                       ; preds = %land.lhs.true105
  %39 = load i32, i32* %alg1.addr, align 4
  %and112 = and i32 %39, 4128768
  %shr = lshr i32 %and112, 16
  %conv = zext i32 %shr to i64
  store i64 %conv, i64* %alg1_len, align 8
  %40 = load i32, i32* %alg2.addr, align 4
  %and113 = and i32 %40, 4128768
  %shr114 = lshr i32 %and113, 16
  %conv115 = zext i32 %shr114 to i64
  store i64 %conv115, i64* %alg2_len, align 8
  %41 = load i64, i64* %alg1_len, align 8
  %42 = load i64, i64* %alg2_len, align 8
  %cmp116 = icmp ugt i64 %41, %42
  br i1 %cmp116, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %if.then111
  %43 = load i64, i64* %alg1_len, align 8
  br label %cond.end120

cond.false119:                                    ; preds = %if.then111
  %44 = load i64, i64* %alg2_len, align 8
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %cond.true118
  %cond121 = phi i64 [ %43, %cond.true118 ], [ %44, %cond.false119 ]
  store i64 %cond121, i64* %restricted_len, align 8
  %45 = load i32, i32* %alg1.addr, align 4
  %and122 = and i32 %45, 32768
  %cmp123 = icmp ne i32 %and122, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.end136

land.lhs.true125:                                 ; preds = %cond.end120
  %46 = load i32, i32* %alg2.addr, align 4
  %and126 = and i32 %46, 32768
  %cmp127 = icmp ne i32 %and126, 0
  br i1 %cmp127, label %if.then129, label %if.end136

if.then129:                                       ; preds = %land.lhs.true125
  %47 = load i32, i32* %alg1.addr, align 4
  %and130 = and i32 %47, -4161537
  %conv131 = zext i32 %and130 to i64
  %48 = load i64, i64* %restricted_len, align 8
  %shl = shl i64 %48, 16
  %and132 = and i64 %shl, 4128768
  %or133 = or i64 %conv131, %and132
  %or134 = or i64 %or133, 32768
  %conv135 = trunc i64 %or134 to i32
  store i32 %conv135, i32* %retval, align 4
  br label %return

if.end136:                                        ; preds = %land.lhs.true125, %cond.end120
  %49 = load i32, i32* %alg1.addr, align 4
  %and137 = and i32 %49, 32768
  %cmp138 = icmp ne i32 %and137, 0
  br i1 %cmp138, label %land.lhs.true140, label %if.end144

land.lhs.true140:                                 ; preds = %if.end136
  %50 = load i64, i64* %alg1_len, align 8
  %51 = load i64, i64* %alg2_len, align 8
  %cmp141 = icmp ule i64 %50, %51
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %land.lhs.true140
  %52 = load i32, i32* %alg2.addr, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

if.end144:                                        ; preds = %land.lhs.true140, %if.end136
  %53 = load i32, i32* %alg2.addr, align 4
  %and145 = and i32 %53, 32768
  %cmp146 = icmp ne i32 %and145, 0
  br i1 %cmp146, label %land.lhs.true148, label %if.end152

land.lhs.true148:                                 ; preds = %if.end144
  %54 = load i64, i64* %alg2_len, align 8
  %55 = load i64, i64* %alg1_len, align 8
  %cmp149 = icmp ule i64 %54, %55
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %land.lhs.true148
  %56 = load i32, i32* %alg1.addr, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

if.end152:                                        ; preds = %land.lhs.true148, %if.end144
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %land.lhs.true105, %land.lhs.true102, %if.end99
  %57 = load i32, i32* %alg1.addr, align 4
  %and154 = and i32 %57, 2130706432
  %cmp155 = icmp eq i32 %and154, 50331648
  br i1 %cmp155, label %land.lhs.true157, label %if.end551

land.lhs.true157:                                 ; preds = %if.end153
  %58 = load i32, i32* %alg2.addr, align 4
  %and158 = and i32 %58, 2130706432
  %cmp159 = icmp eq i32 %and158, 50331648
  br i1 %cmp159, label %land.lhs.true161, label %if.end551

land.lhs.true161:                                 ; preds = %land.lhs.true157
  %59 = load i32, i32* %alg1.addr, align 4
  %and162 = and i32 %59, -4161537
  %60 = load i32, i32* %alg2.addr, align 4
  %and163 = and i32 %60, -4161537
  %cmp164 = icmp eq i32 %and162, %and163
  br i1 %cmp164, label %if.then166, label %if.end551

if.then166:                                       ; preds = %land.lhs.true161
  %61 = load i32, i32* %alg1.addr, align 4
  %62 = load i16, i16* %key_type.addr, align 2
  %call = call i32 @psa_mac_key_can_do(i32 noundef %61, i16 noundef zeroext %62) #6
  %cmp167 = icmp ne i32 0, %call
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then166
  store i32 0, i32* %retval, align 4
  br label %return

if.end170:                                        ; preds = %if.then166
  %63 = load i32, i32* %alg1.addr, align 4
  %and172 = and i32 %63, 4128768
  %tobool = icmp ne i32 %and172, 0
  br i1 %tobool, label %cond.true173, label %cond.false176

cond.true173:                                     ; preds = %if.end170
  %64 = load i32, i32* %alg1.addr, align 4
  %and174 = and i32 %64, 4128768
  %shr175 = lshr i32 %and174, 16
  br label %cond.end330

cond.false176:                                    ; preds = %if.end170
  %65 = load i32, i32* %alg1.addr, align 4
  %and177 = and i32 %65, 2143289344
  %cmp178 = icmp eq i32 %and177, 58720256
  br i1 %cmp178, label %cond.true180, label %cond.false308

cond.true180:                                     ; preds = %cond.false176
  %66 = load i32, i32* %alg1.addr, align 4
  %and181 = and i32 %66, 255
  %or182 = or i32 33554432, %and181
  %and183 = and i32 %or182, 255
  %or184 = or i32 33554432, %and183
  %cmp185 = icmp eq i32 %or184, 33554435
  br i1 %cmp185, label %cond.true187, label %cond.false188

cond.true187:                                     ; preds = %cond.true180
  br label %cond.end306

cond.false188:                                    ; preds = %cond.true180
  %67 = load i32, i32* %alg1.addr, align 4
  %and189 = and i32 %67, 255
  %or190 = or i32 33554432, %and189
  %and191 = and i32 %or190, 255
  %or192 = or i32 33554432, %and191
  %cmp193 = icmp eq i32 %or192, 33554436
  br i1 %cmp193, label %cond.true195, label %cond.false196

cond.true195:                                     ; preds = %cond.false188
  br label %cond.end304

cond.false196:                                    ; preds = %cond.false188
  %68 = load i32, i32* %alg1.addr, align 4
  %and197 = and i32 %68, 255
  %or198 = or i32 33554432, %and197
  %and199 = and i32 %or198, 255
  %or200 = or i32 33554432, %and199
  %cmp201 = icmp eq i32 %or200, 33554437
  br i1 %cmp201, label %cond.true203, label %cond.false204

cond.true203:                                     ; preds = %cond.false196
  br label %cond.end302

cond.false204:                                    ; preds = %cond.false196
  %69 = load i32, i32* %alg1.addr, align 4
  %and205 = and i32 %69, 255
  %or206 = or i32 33554432, %and205
  %and207 = and i32 %or206, 255
  %or208 = or i32 33554432, %and207
  %cmp209 = icmp eq i32 %or208, 33554440
  br i1 %cmp209, label %cond.true211, label %cond.false212

cond.true211:                                     ; preds = %cond.false204
  br label %cond.end300

cond.false212:                                    ; preds = %cond.false204
  %70 = load i32, i32* %alg1.addr, align 4
  %and213 = and i32 %70, 255
  %or214 = or i32 33554432, %and213
  %and215 = and i32 %or214, 255
  %or216 = or i32 33554432, %and215
  %cmp217 = icmp eq i32 %or216, 33554441
  br i1 %cmp217, label %cond.true219, label %cond.false220

cond.true219:                                     ; preds = %cond.false212
  br label %cond.end298

cond.false220:                                    ; preds = %cond.false212
  %71 = load i32, i32* %alg1.addr, align 4
  %and221 = and i32 %71, 255
  %or222 = or i32 33554432, %and221
  %and223 = and i32 %or222, 255
  %or224 = or i32 33554432, %and223
  %cmp225 = icmp eq i32 %or224, 33554442
  br i1 %cmp225, label %cond.true227, label %cond.false228

cond.true227:                                     ; preds = %cond.false220
  br label %cond.end296

cond.false228:                                    ; preds = %cond.false220
  %72 = load i32, i32* %alg1.addr, align 4
  %and229 = and i32 %72, 255
  %or230 = or i32 33554432, %and229
  %and231 = and i32 %or230, 255
  %or232 = or i32 33554432, %and231
  %cmp233 = icmp eq i32 %or232, 33554443
  br i1 %cmp233, label %cond.true235, label %cond.false236

cond.true235:                                     ; preds = %cond.false228
  br label %cond.end294

cond.false236:                                    ; preds = %cond.false228
  %73 = load i32, i32* %alg1.addr, align 4
  %and237 = and i32 %73, 255
  %or238 = or i32 33554432, %and237
  %and239 = and i32 %or238, 255
  %or240 = or i32 33554432, %and239
  %cmp241 = icmp eq i32 %or240, 33554444
  br i1 %cmp241, label %cond.true243, label %cond.false244

cond.true243:                                     ; preds = %cond.false236
  br label %cond.end292

cond.false244:                                    ; preds = %cond.false236
  %74 = load i32, i32* %alg1.addr, align 4
  %and245 = and i32 %74, 255
  %or246 = or i32 33554432, %and245
  %and247 = and i32 %or246, 255
  %or248 = or i32 33554432, %and247
  %cmp249 = icmp eq i32 %or248, 33554445
  br i1 %cmp249, label %cond.true251, label %cond.false252

cond.true251:                                     ; preds = %cond.false244
  br label %cond.end290

cond.false252:                                    ; preds = %cond.false244
  %75 = load i32, i32* %alg1.addr, align 4
  %and253 = and i32 %75, 255
  %or254 = or i32 33554432, %and253
  %and255 = and i32 %or254, 255
  %or256 = or i32 33554432, %and255
  %cmp257 = icmp eq i32 %or256, 33554448
  br i1 %cmp257, label %cond.true259, label %cond.false260

cond.true259:                                     ; preds = %cond.false252
  br label %cond.end288

cond.false260:                                    ; preds = %cond.false252
  %76 = load i32, i32* %alg1.addr, align 4
  %and261 = and i32 %76, 255
  %or262 = or i32 33554432, %and261
  %and263 = and i32 %or262, 255
  %or264 = or i32 33554432, %and263
  %cmp265 = icmp eq i32 %or264, 33554449
  br i1 %cmp265, label %cond.true267, label %cond.false268

cond.true267:                                     ; preds = %cond.false260
  br label %cond.end286

cond.false268:                                    ; preds = %cond.false260
  %77 = load i32, i32* %alg1.addr, align 4
  %and269 = and i32 %77, 255
  %or270 = or i32 33554432, %and269
  %and271 = and i32 %or270, 255
  %or272 = or i32 33554432, %and271
  %cmp273 = icmp eq i32 %or272, 33554450
  br i1 %cmp273, label %cond.true275, label %cond.false276

cond.true275:                                     ; preds = %cond.false268
  br label %cond.end284

cond.false276:                                    ; preds = %cond.false268
  %78 = load i32, i32* %alg1.addr, align 4
  %and277 = and i32 %78, 255
  %or278 = or i32 33554432, %and277
  %and279 = and i32 %or278, 255
  %or280 = or i32 33554432, %and279
  %cmp281 = icmp eq i32 %or280, 33554451
  %79 = zext i1 %cmp281 to i64
  %cond283 = select i1 %cmp281, i32 64, i32 0
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false276, %cond.true275
  %cond285 = phi i32 [ 48, %cond.true275 ], [ %cond283, %cond.false276 ]
  br label %cond.end286

cond.end286:                                      ; preds = %cond.end284, %cond.true267
  %cond287 = phi i32 [ 32, %cond.true267 ], [ %cond285, %cond.end284 ]
  br label %cond.end288

cond.end288:                                      ; preds = %cond.end286, %cond.true259
  %cond289 = phi i32 [ 28, %cond.true259 ], [ %cond287, %cond.end286 ]
  br label %cond.end290

cond.end290:                                      ; preds = %cond.end288, %cond.true251
  %cond291 = phi i32 [ 32, %cond.true251 ], [ %cond289, %cond.end288 ]
  br label %cond.end292

cond.end292:                                      ; preds = %cond.end290, %cond.true243
  %cond293 = phi i32 [ 28, %cond.true243 ], [ %cond291, %cond.end290 ]
  br label %cond.end294

cond.end294:                                      ; preds = %cond.end292, %cond.true235
  %cond295 = phi i32 [ 64, %cond.true235 ], [ %cond293, %cond.end292 ]
  br label %cond.end296

cond.end296:                                      ; preds = %cond.end294, %cond.true227
  %cond297 = phi i32 [ 48, %cond.true227 ], [ %cond295, %cond.end294 ]
  br label %cond.end298

cond.end298:                                      ; preds = %cond.end296, %cond.true219
  %cond299 = phi i32 [ 32, %cond.true219 ], [ %cond297, %cond.end296 ]
  br label %cond.end300

cond.end300:                                      ; preds = %cond.end298, %cond.true211
  %cond301 = phi i32 [ 28, %cond.true211 ], [ %cond299, %cond.end298 ]
  br label %cond.end302

cond.end302:                                      ; preds = %cond.end300, %cond.true203
  %cond303 = phi i32 [ 20, %cond.true203 ], [ %cond301, %cond.end300 ]
  br label %cond.end304

cond.end304:                                      ; preds = %cond.end302, %cond.true195
  %cond305 = phi i32 [ 20, %cond.true195 ], [ %cond303, %cond.end302 ]
  br label %cond.end306

cond.end306:                                      ; preds = %cond.end304, %cond.true187
  %cond307 = phi i32 [ 16, %cond.true187 ], [ %cond305, %cond.end304 ]
  br label %cond.end328

cond.false308:                                    ; preds = %cond.false176
  %80 = load i32, i32* %alg1.addr, align 4
  %and309 = and i32 %80, 2143289344
  %cmp310 = icmp eq i32 %and309, 62914560
  br i1 %cmp310, label %cond.true312, label %cond.false325

cond.true312:                                     ; preds = %cond.false308
  %81 = load i16, i16* %key_type.addr, align 2
  %conv313 = zext i16 %81 to i32
  %and314 = and i32 %conv313, 28672
  %cmp315 = icmp eq i32 %and314, 8192
  br i1 %cmp315, label %cond.true317, label %cond.false322

cond.true317:                                     ; preds = %cond.true312
  %82 = load i16, i16* %key_type.addr, align 2
  %conv318 = zext i16 %82 to i32
  %shr319 = ashr i32 %conv318, 8
  %and320 = and i32 %shr319, 7
  %shl321 = shl i32 1, %and320
  br label %cond.end323

cond.false322:                                    ; preds = %cond.true312
  br label %cond.end323

cond.end323:                                      ; preds = %cond.false322, %cond.true317
  %cond324 = phi i32 [ %shl321, %cond.true317 ], [ 0, %cond.false322 ]
  br label %cond.end326

cond.false325:                                    ; preds = %cond.false308
  %83 = load i16, i16* %key_type.addr, align 2
  br label %cond.end326

cond.end326:                                      ; preds = %cond.false325, %cond.end323
  %cond327 = phi i32 [ %cond324, %cond.end323 ], [ 0, %cond.false325 ]
  br label %cond.end328

cond.end328:                                      ; preds = %cond.end326, %cond.end306
  %cond329 = phi i32 [ %cond307, %cond.end306 ], [ %cond327, %cond.end326 ]
  br label %cond.end330

cond.end330:                                      ; preds = %cond.end328, %cond.true173
  %cond331 = phi i32 [ %shr175, %cond.true173 ], [ %cond329, %cond.end328 ]
  %conv332 = zext i32 %cond331 to i64
  store i64 %conv332, i64* %alg1_len171, align 8
  %84 = load i32, i32* %alg2.addr, align 4
  %and334 = and i32 %84, 4128768
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %cond.true336, label %cond.false339

cond.true336:                                     ; preds = %cond.end330
  %85 = load i32, i32* %alg2.addr, align 4
  %and337 = and i32 %85, 4128768
  %shr338 = lshr i32 %and337, 16
  br label %cond.end493

cond.false339:                                    ; preds = %cond.end330
  %86 = load i32, i32* %alg2.addr, align 4
  %and340 = and i32 %86, 2143289344
  %cmp341 = icmp eq i32 %and340, 58720256
  br i1 %cmp341, label %cond.true343, label %cond.false471

cond.true343:                                     ; preds = %cond.false339
  %87 = load i32, i32* %alg2.addr, align 4
  %and344 = and i32 %87, 255
  %or345 = or i32 33554432, %and344
  %and346 = and i32 %or345, 255
  %or347 = or i32 33554432, %and346
  %cmp348 = icmp eq i32 %or347, 33554435
  br i1 %cmp348, label %cond.true350, label %cond.false351

cond.true350:                                     ; preds = %cond.true343
  br label %cond.end469

cond.false351:                                    ; preds = %cond.true343
  %88 = load i32, i32* %alg2.addr, align 4
  %and352 = and i32 %88, 255
  %or353 = or i32 33554432, %and352
  %and354 = and i32 %or353, 255
  %or355 = or i32 33554432, %and354
  %cmp356 = icmp eq i32 %or355, 33554436
  br i1 %cmp356, label %cond.true358, label %cond.false359

cond.true358:                                     ; preds = %cond.false351
  br label %cond.end467

cond.false359:                                    ; preds = %cond.false351
  %89 = load i32, i32* %alg2.addr, align 4
  %and360 = and i32 %89, 255
  %or361 = or i32 33554432, %and360
  %and362 = and i32 %or361, 255
  %or363 = or i32 33554432, %and362
  %cmp364 = icmp eq i32 %or363, 33554437
  br i1 %cmp364, label %cond.true366, label %cond.false367

cond.true366:                                     ; preds = %cond.false359
  br label %cond.end465

cond.false367:                                    ; preds = %cond.false359
  %90 = load i32, i32* %alg2.addr, align 4
  %and368 = and i32 %90, 255
  %or369 = or i32 33554432, %and368
  %and370 = and i32 %or369, 255
  %or371 = or i32 33554432, %and370
  %cmp372 = icmp eq i32 %or371, 33554440
  br i1 %cmp372, label %cond.true374, label %cond.false375

cond.true374:                                     ; preds = %cond.false367
  br label %cond.end463

cond.false375:                                    ; preds = %cond.false367
  %91 = load i32, i32* %alg2.addr, align 4
  %and376 = and i32 %91, 255
  %or377 = or i32 33554432, %and376
  %and378 = and i32 %or377, 255
  %or379 = or i32 33554432, %and378
  %cmp380 = icmp eq i32 %or379, 33554441
  br i1 %cmp380, label %cond.true382, label %cond.false383

cond.true382:                                     ; preds = %cond.false375
  br label %cond.end461

cond.false383:                                    ; preds = %cond.false375
  %92 = load i32, i32* %alg2.addr, align 4
  %and384 = and i32 %92, 255
  %or385 = or i32 33554432, %and384
  %and386 = and i32 %or385, 255
  %or387 = or i32 33554432, %and386
  %cmp388 = icmp eq i32 %or387, 33554442
  br i1 %cmp388, label %cond.true390, label %cond.false391

cond.true390:                                     ; preds = %cond.false383
  br label %cond.end459

cond.false391:                                    ; preds = %cond.false383
  %93 = load i32, i32* %alg2.addr, align 4
  %and392 = and i32 %93, 255
  %or393 = or i32 33554432, %and392
  %and394 = and i32 %or393, 255
  %or395 = or i32 33554432, %and394
  %cmp396 = icmp eq i32 %or395, 33554443
  br i1 %cmp396, label %cond.true398, label %cond.false399

cond.true398:                                     ; preds = %cond.false391
  br label %cond.end457

cond.false399:                                    ; preds = %cond.false391
  %94 = load i32, i32* %alg2.addr, align 4
  %and400 = and i32 %94, 255
  %or401 = or i32 33554432, %and400
  %and402 = and i32 %or401, 255
  %or403 = or i32 33554432, %and402
  %cmp404 = icmp eq i32 %or403, 33554444
  br i1 %cmp404, label %cond.true406, label %cond.false407

cond.true406:                                     ; preds = %cond.false399
  br label %cond.end455

cond.false407:                                    ; preds = %cond.false399
  %95 = load i32, i32* %alg2.addr, align 4
  %and408 = and i32 %95, 255
  %or409 = or i32 33554432, %and408
  %and410 = and i32 %or409, 255
  %or411 = or i32 33554432, %and410
  %cmp412 = icmp eq i32 %or411, 33554445
  br i1 %cmp412, label %cond.true414, label %cond.false415

cond.true414:                                     ; preds = %cond.false407
  br label %cond.end453

cond.false415:                                    ; preds = %cond.false407
  %96 = load i32, i32* %alg2.addr, align 4
  %and416 = and i32 %96, 255
  %or417 = or i32 33554432, %and416
  %and418 = and i32 %or417, 255
  %or419 = or i32 33554432, %and418
  %cmp420 = icmp eq i32 %or419, 33554448
  br i1 %cmp420, label %cond.true422, label %cond.false423

cond.true422:                                     ; preds = %cond.false415
  br label %cond.end451

cond.false423:                                    ; preds = %cond.false415
  %97 = load i32, i32* %alg2.addr, align 4
  %and424 = and i32 %97, 255
  %or425 = or i32 33554432, %and424
  %and426 = and i32 %or425, 255
  %or427 = or i32 33554432, %and426
  %cmp428 = icmp eq i32 %or427, 33554449
  br i1 %cmp428, label %cond.true430, label %cond.false431

cond.true430:                                     ; preds = %cond.false423
  br label %cond.end449

cond.false431:                                    ; preds = %cond.false423
  %98 = load i32, i32* %alg2.addr, align 4
  %and432 = and i32 %98, 255
  %or433 = or i32 33554432, %and432
  %and434 = and i32 %or433, 255
  %or435 = or i32 33554432, %and434
  %cmp436 = icmp eq i32 %or435, 33554450
  br i1 %cmp436, label %cond.true438, label %cond.false439

cond.true438:                                     ; preds = %cond.false431
  br label %cond.end447

cond.false439:                                    ; preds = %cond.false431
  %99 = load i32, i32* %alg2.addr, align 4
  %and440 = and i32 %99, 255
  %or441 = or i32 33554432, %and440
  %and442 = and i32 %or441, 255
  %or443 = or i32 33554432, %and442
  %cmp444 = icmp eq i32 %or443, 33554451
  %100 = zext i1 %cmp444 to i64
  %cond446 = select i1 %cmp444, i32 64, i32 0
  br label %cond.end447

cond.end447:                                      ; preds = %cond.false439, %cond.true438
  %cond448 = phi i32 [ 48, %cond.true438 ], [ %cond446, %cond.false439 ]
  br label %cond.end449

cond.end449:                                      ; preds = %cond.end447, %cond.true430
  %cond450 = phi i32 [ 32, %cond.true430 ], [ %cond448, %cond.end447 ]
  br label %cond.end451

cond.end451:                                      ; preds = %cond.end449, %cond.true422
  %cond452 = phi i32 [ 28, %cond.true422 ], [ %cond450, %cond.end449 ]
  br label %cond.end453

cond.end453:                                      ; preds = %cond.end451, %cond.true414
  %cond454 = phi i32 [ 32, %cond.true414 ], [ %cond452, %cond.end451 ]
  br label %cond.end455

cond.end455:                                      ; preds = %cond.end453, %cond.true406
  %cond456 = phi i32 [ 28, %cond.true406 ], [ %cond454, %cond.end453 ]
  br label %cond.end457

cond.end457:                                      ; preds = %cond.end455, %cond.true398
  %cond458 = phi i32 [ 64, %cond.true398 ], [ %cond456, %cond.end455 ]
  br label %cond.end459

cond.end459:                                      ; preds = %cond.end457, %cond.true390
  %cond460 = phi i32 [ 48, %cond.true390 ], [ %cond458, %cond.end457 ]
  br label %cond.end461

cond.end461:                                      ; preds = %cond.end459, %cond.true382
  %cond462 = phi i32 [ 32, %cond.true382 ], [ %cond460, %cond.end459 ]
  br label %cond.end463

cond.end463:                                      ; preds = %cond.end461, %cond.true374
  %cond464 = phi i32 [ 28, %cond.true374 ], [ %cond462, %cond.end461 ]
  br label %cond.end465

cond.end465:                                      ; preds = %cond.end463, %cond.true366
  %cond466 = phi i32 [ 20, %cond.true366 ], [ %cond464, %cond.end463 ]
  br label %cond.end467

cond.end467:                                      ; preds = %cond.end465, %cond.true358
  %cond468 = phi i32 [ 20, %cond.true358 ], [ %cond466, %cond.end465 ]
  br label %cond.end469

cond.end469:                                      ; preds = %cond.end467, %cond.true350
  %cond470 = phi i32 [ 16, %cond.true350 ], [ %cond468, %cond.end467 ]
  br label %cond.end491

cond.false471:                                    ; preds = %cond.false339
  %101 = load i32, i32* %alg2.addr, align 4
  %and472 = and i32 %101, 2143289344
  %cmp473 = icmp eq i32 %and472, 62914560
  br i1 %cmp473, label %cond.true475, label %cond.false488

cond.true475:                                     ; preds = %cond.false471
  %102 = load i16, i16* %key_type.addr, align 2
  %conv476 = zext i16 %102 to i32
  %and477 = and i32 %conv476, 28672
  %cmp478 = icmp eq i32 %and477, 8192
  br i1 %cmp478, label %cond.true480, label %cond.false485

cond.true480:                                     ; preds = %cond.true475
  %103 = load i16, i16* %key_type.addr, align 2
  %conv481 = zext i16 %103 to i32
  %shr482 = ashr i32 %conv481, 8
  %and483 = and i32 %shr482, 7
  %shl484 = shl i32 1, %and483
  br label %cond.end486

cond.false485:                                    ; preds = %cond.true475
  br label %cond.end486

cond.end486:                                      ; preds = %cond.false485, %cond.true480
  %cond487 = phi i32 [ %shl484, %cond.true480 ], [ 0, %cond.false485 ]
  br label %cond.end489

cond.false488:                                    ; preds = %cond.false471
  %104 = load i16, i16* %key_type.addr, align 2
  br label %cond.end489

cond.end489:                                      ; preds = %cond.false488, %cond.end486
  %cond490 = phi i32 [ %cond487, %cond.end486 ], [ 0, %cond.false488 ]
  br label %cond.end491

cond.end491:                                      ; preds = %cond.end489, %cond.end469
  %cond492 = phi i32 [ %cond470, %cond.end469 ], [ %cond490, %cond.end489 ]
  br label %cond.end493

cond.end493:                                      ; preds = %cond.end491, %cond.true336
  %cond494 = phi i32 [ %shr338, %cond.true336 ], [ %cond492, %cond.end491 ]
  %conv495 = zext i32 %cond494 to i64
  store i64 %conv495, i64* %alg2_len333, align 8
  %105 = load i64, i64* %alg1_len171, align 8
  %106 = load i64, i64* %alg2_len333, align 8
  %cmp497 = icmp ugt i64 %105, %106
  br i1 %cmp497, label %cond.true499, label %cond.false500

cond.true499:                                     ; preds = %cond.end493
  %107 = load i64, i64* %alg1_len171, align 8
  br label %cond.end501

cond.false500:                                    ; preds = %cond.end493
  %108 = load i64, i64* %alg2_len333, align 8
  br label %cond.end501

cond.end501:                                      ; preds = %cond.false500, %cond.true499
  %cond502 = phi i64 [ %107, %cond.true499 ], [ %108, %cond.false500 ]
  store i64 %cond502, i64* %restricted_len496, align 8
  %109 = load i32, i32* %alg1.addr, align 4
  %and503 = and i32 %109, 32768
  %cmp504 = icmp ne i32 %and503, 0
  br i1 %cmp504, label %land.lhs.true506, label %if.end518

land.lhs.true506:                                 ; preds = %cond.end501
  %110 = load i32, i32* %alg2.addr, align 4
  %and507 = and i32 %110, 32768
  %cmp508 = icmp ne i32 %and507, 0
  br i1 %cmp508, label %if.then510, label %if.end518

if.then510:                                       ; preds = %land.lhs.true506
  %111 = load i32, i32* %alg1.addr, align 4
  %and511 = and i32 %111, -4161537
  %conv512 = zext i32 %and511 to i64
  %112 = load i64, i64* %restricted_len496, align 8
  %shl513 = shl i64 %112, 16
  %and514 = and i64 %shl513, 4128768
  %or515 = or i64 %conv512, %and514
  %or516 = or i64 %or515, 32768
  %conv517 = trunc i64 %or516 to i32
  store i32 %conv517, i32* %retval, align 4
  br label %return

if.end518:                                        ; preds = %land.lhs.true506, %cond.end501
  %113 = load i32, i32* %alg1.addr, align 4
  %and519 = and i32 %113, 32768
  %cmp520 = icmp ne i32 %and519, 0
  br i1 %cmp520, label %if.then522, label %if.end529

if.then522:                                       ; preds = %if.end518
  %114 = load i64, i64* %alg1_len171, align 8
  %115 = load i64, i64* %alg2_len333, align 8
  %cmp523 = icmp ule i64 %114, %115
  br i1 %cmp523, label %cond.true525, label %cond.false526

cond.true525:                                     ; preds = %if.then522
  %116 = load i32, i32* %alg2.addr, align 4
  br label %cond.end527

cond.false526:                                    ; preds = %if.then522
  br label %cond.end527

cond.end527:                                      ; preds = %cond.false526, %cond.true525
  %cond528 = phi i32 [ %116, %cond.true525 ], [ 0, %cond.false526 ]
  store i32 %cond528, i32* %retval, align 4
  br label %return

if.end529:                                        ; preds = %if.end518
  %117 = load i32, i32* %alg2.addr, align 4
  %and530 = and i32 %117, 32768
  %cmp531 = icmp ne i32 %and530, 0
  br i1 %cmp531, label %if.then533, label %if.end540

if.then533:                                       ; preds = %if.end529
  %118 = load i64, i64* %alg2_len333, align 8
  %119 = load i64, i64* %alg1_len171, align 8
  %cmp534 = icmp ule i64 %118, %119
  br i1 %cmp534, label %cond.true536, label %cond.false537

cond.true536:                                     ; preds = %if.then533
  %120 = load i32, i32* %alg1.addr, align 4
  br label %cond.end538

cond.false537:                                    ; preds = %if.then533
  br label %cond.end538

cond.end538:                                      ; preds = %cond.false537, %cond.true536
  %cond539 = phi i32 [ %120, %cond.true536 ], [ 0, %cond.false537 ]
  store i32 %cond539, i32* %retval, align 4
  br label %return

if.end540:                                        ; preds = %if.end529
  %121 = load i64, i64* %alg1_len171, align 8
  %122 = load i64, i64* %alg2_len333, align 8
  %cmp541 = icmp eq i64 %121, %122
  br i1 %cmp541, label %if.then543, label %if.end550

if.then543:                                       ; preds = %if.end540
  %123 = load i32, i32* %alg1.addr, align 4
  %and544 = and i32 %123, -4161537
  %conv545 = zext i32 %and544 to i64
  %124 = load i64, i64* %alg1_len171, align 8
  %shl546 = shl i64 %124, 16
  %and547 = and i64 %shl546, 4128768
  %or548 = or i64 %conv545, %and547
  %conv549 = trunc i64 %or548 to i32
  store i32 %conv549, i32* %retval, align 4
  br label %return

if.end550:                                        ; preds = %if.end540
  br label %if.end551

if.end551:                                        ; preds = %if.end550, %land.lhs.true161, %land.lhs.true157, %if.end153
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end551, %if.then543, %cond.end538, %cond.end527, %if.then510, %if.then169, %if.then151, %if.then143, %if.then129, %if.then97, %if.then66, %if.then
  %125 = load i32, i32* %retval, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_mac_finalize_alg_and_key_validation(i32 noundef %alg, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %mac_size) #0 {
entry:
  %retval = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %mac_size.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %key_type = alloca i16, align 2
  %key_bits = alloca i64, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i8* %mac_size, i8** %mac_size.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call = call zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %0) #6
  store i16 %call, i16* %key_type, align 2
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %call1 = call i64 @psa_get_key_bits(%struct.psa_key_attributes_s* noundef %1) #6
  store i64 %call1, i64* %key_bits, align 8
  %2 = load i32, i32* %alg.addr, align 4
  %and = and i32 %2, 2130706432
  %cmp = icmp eq i32 %and, 50331648
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %alg.addr, align 4
  %4 = load i16, i16* %key_type, align 2
  %call2 = call i32 @psa_mac_key_can_do(i32 noundef %3, i16 noundef zeroext %4) #6
  store i32 %call2, i32* %status, align 4
  %5 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %status, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load i32, i32* %alg.addr, align 4
  %and6 = and i32 %7, 4128768
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %8 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %8, 4128768
  %shr = lshr i32 %and7, 16
  br label %cond.end141

cond.false:                                       ; preds = %if.end5
  %9 = load i32, i32* %alg.addr, align 4
  %and8 = and i32 %9, 2143289344
  %cmp9 = icmp eq i32 %and8, 58720256
  br i1 %cmp9, label %cond.true10, label %cond.false122

cond.true10:                                      ; preds = %cond.false
  %10 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %10, 255
  %or = or i32 33554432, %and11
  %and12 = and i32 %or, 255
  %or13 = or i32 33554432, %and12
  %cmp14 = icmp eq i32 %or13, 33554435
  br i1 %cmp14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.true10
  br label %cond.end120

cond.false16:                                     ; preds = %cond.true10
  %11 = load i32, i32* %alg.addr, align 4
  %and17 = and i32 %11, 255
  %or18 = or i32 33554432, %and17
  %and19 = and i32 %or18, 255
  %or20 = or i32 33554432, %and19
  %cmp21 = icmp eq i32 %or20, 33554436
  br i1 %cmp21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.false16
  br label %cond.end118

cond.false23:                                     ; preds = %cond.false16
  %12 = load i32, i32* %alg.addr, align 4
  %and24 = and i32 %12, 255
  %or25 = or i32 33554432, %and24
  %and26 = and i32 %or25, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554437
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false23
  br label %cond.end116

cond.false30:                                     ; preds = %cond.false23
  %13 = load i32, i32* %alg.addr, align 4
  %and31 = and i32 %13, 255
  %or32 = or i32 33554432, %and31
  %and33 = and i32 %or32, 255
  %or34 = or i32 33554432, %and33
  %cmp35 = icmp eq i32 %or34, 33554440
  br i1 %cmp35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.false30
  br label %cond.end114

cond.false37:                                     ; preds = %cond.false30
  %14 = load i32, i32* %alg.addr, align 4
  %and38 = and i32 %14, 255
  %or39 = or i32 33554432, %and38
  %and40 = and i32 %or39, 255
  %or41 = or i32 33554432, %and40
  %cmp42 = icmp eq i32 %or41, 33554441
  br i1 %cmp42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.false37
  br label %cond.end112

cond.false44:                                     ; preds = %cond.false37
  %15 = load i32, i32* %alg.addr, align 4
  %and45 = and i32 %15, 255
  %or46 = or i32 33554432, %and45
  %and47 = and i32 %or46, 255
  %or48 = or i32 33554432, %and47
  %cmp49 = icmp eq i32 %or48, 33554442
  br i1 %cmp49, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %cond.false44
  br label %cond.end110

cond.false51:                                     ; preds = %cond.false44
  %16 = load i32, i32* %alg.addr, align 4
  %and52 = and i32 %16, 255
  %or53 = or i32 33554432, %and52
  %and54 = and i32 %or53, 255
  %or55 = or i32 33554432, %and54
  %cmp56 = icmp eq i32 %or55, 33554443
  br i1 %cmp56, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %cond.false51
  br label %cond.end108

cond.false58:                                     ; preds = %cond.false51
  %17 = load i32, i32* %alg.addr, align 4
  %and59 = and i32 %17, 255
  %or60 = or i32 33554432, %and59
  %and61 = and i32 %or60, 255
  %or62 = or i32 33554432, %and61
  %cmp63 = icmp eq i32 %or62, 33554444
  br i1 %cmp63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.false58
  br label %cond.end106

cond.false65:                                     ; preds = %cond.false58
  %18 = load i32, i32* %alg.addr, align 4
  %and66 = and i32 %18, 255
  %or67 = or i32 33554432, %and66
  %and68 = and i32 %or67, 255
  %or69 = or i32 33554432, %and68
  %cmp70 = icmp eq i32 %or69, 33554445
  br i1 %cmp70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %cond.false65
  br label %cond.end104

cond.false72:                                     ; preds = %cond.false65
  %19 = load i32, i32* %alg.addr, align 4
  %and73 = and i32 %19, 255
  %or74 = or i32 33554432, %and73
  %and75 = and i32 %or74, 255
  %or76 = or i32 33554432, %and75
  %cmp77 = icmp eq i32 %or76, 33554448
  br i1 %cmp77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.false72
  br label %cond.end102

cond.false79:                                     ; preds = %cond.false72
  %20 = load i32, i32* %alg.addr, align 4
  %and80 = and i32 %20, 255
  %or81 = or i32 33554432, %and80
  %and82 = and i32 %or81, 255
  %or83 = or i32 33554432, %and82
  %cmp84 = icmp eq i32 %or83, 33554449
  br i1 %cmp84, label %cond.true85, label %cond.false86

cond.true85:                                      ; preds = %cond.false79
  br label %cond.end100

cond.false86:                                     ; preds = %cond.false79
  %21 = load i32, i32* %alg.addr, align 4
  %and87 = and i32 %21, 255
  %or88 = or i32 33554432, %and87
  %and89 = and i32 %or88, 255
  %or90 = or i32 33554432, %and89
  %cmp91 = icmp eq i32 %or90, 33554450
  br i1 %cmp91, label %cond.true92, label %cond.false93

cond.true92:                                      ; preds = %cond.false86
  br label %cond.end

cond.false93:                                     ; preds = %cond.false86
  %22 = load i32, i32* %alg.addr, align 4
  %and94 = and i32 %22, 255
  %or95 = or i32 33554432, %and94
  %and96 = and i32 %or95, 255
  %or97 = or i32 33554432, %and96
  %cmp98 = icmp eq i32 %or97, 33554451
  %23 = zext i1 %cmp98 to i64
  %cond = select i1 %cmp98, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false93, %cond.true92
  %cond99 = phi i32 [ 48, %cond.true92 ], [ %cond, %cond.false93 ]
  br label %cond.end100

cond.end100:                                      ; preds = %cond.end, %cond.true85
  %cond101 = phi i32 [ 32, %cond.true85 ], [ %cond99, %cond.end ]
  br label %cond.end102

cond.end102:                                      ; preds = %cond.end100, %cond.true78
  %cond103 = phi i32 [ 28, %cond.true78 ], [ %cond101, %cond.end100 ]
  br label %cond.end104

cond.end104:                                      ; preds = %cond.end102, %cond.true71
  %cond105 = phi i32 [ 32, %cond.true71 ], [ %cond103, %cond.end102 ]
  br label %cond.end106

cond.end106:                                      ; preds = %cond.end104, %cond.true64
  %cond107 = phi i32 [ 28, %cond.true64 ], [ %cond105, %cond.end104 ]
  br label %cond.end108

cond.end108:                                      ; preds = %cond.end106, %cond.true57
  %cond109 = phi i32 [ 64, %cond.true57 ], [ %cond107, %cond.end106 ]
  br label %cond.end110

cond.end110:                                      ; preds = %cond.end108, %cond.true50
  %cond111 = phi i32 [ 48, %cond.true50 ], [ %cond109, %cond.end108 ]
  br label %cond.end112

cond.end112:                                      ; preds = %cond.end110, %cond.true43
  %cond113 = phi i32 [ 32, %cond.true43 ], [ %cond111, %cond.end110 ]
  br label %cond.end114

cond.end114:                                      ; preds = %cond.end112, %cond.true36
  %cond115 = phi i32 [ 28, %cond.true36 ], [ %cond113, %cond.end112 ]
  br label %cond.end116

cond.end116:                                      ; preds = %cond.end114, %cond.true29
  %cond117 = phi i32 [ 20, %cond.true29 ], [ %cond115, %cond.end114 ]
  br label %cond.end118

cond.end118:                                      ; preds = %cond.end116, %cond.true22
  %cond119 = phi i32 [ 20, %cond.true22 ], [ %cond117, %cond.end116 ]
  br label %cond.end120

cond.end120:                                      ; preds = %cond.end118, %cond.true15
  %cond121 = phi i32 [ 16, %cond.true15 ], [ %cond119, %cond.end118 ]
  br label %cond.end139

cond.false122:                                    ; preds = %cond.false
  %24 = load i32, i32* %alg.addr, align 4
  %and123 = and i32 %24, 2143289344
  %cmp124 = icmp eq i32 %and123, 62914560
  br i1 %cmp124, label %cond.true125, label %cond.false136

cond.true125:                                     ; preds = %cond.false122
  %25 = load i16, i16* %key_type, align 2
  %conv = zext i16 %25 to i32
  %and126 = and i32 %conv, 28672
  %cmp127 = icmp eq i32 %and126, 8192
  br i1 %cmp127, label %cond.true129, label %cond.false133

cond.true129:                                     ; preds = %cond.true125
  %26 = load i16, i16* %key_type, align 2
  %conv130 = zext i16 %26 to i32
  %shr131 = ashr i32 %conv130, 8
  %and132 = and i32 %shr131, 7
  %shl = shl i32 1, %and132
  br label %cond.end134

cond.false133:                                    ; preds = %cond.true125
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false133, %cond.true129
  %cond135 = phi i32 [ %shl, %cond.true129 ], [ 0, %cond.false133 ]
  br label %cond.end137

cond.false136:                                    ; preds = %cond.false122
  %27 = load i16, i16* %key_type, align 2
  %28 = load i64, i64* %key_bits, align 8
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %cond.end134
  %cond138 = phi i32 [ %cond135, %cond.end134 ], [ 0, %cond.false136 ]
  br label %cond.end139

cond.end139:                                      ; preds = %cond.end137, %cond.end120
  %cond140 = phi i32 [ %cond121, %cond.end120 ], [ %cond138, %cond.end137 ]
  br label %cond.end141

cond.end141:                                      ; preds = %cond.end139, %cond.true
  %cond142 = phi i32 [ %shr, %cond.true ], [ %cond140, %cond.end139 ]
  %conv143 = trunc i32 %cond142 to i8
  %29 = load i8*, i8** %mac_size.addr, align 8
  store i8 %conv143, i8* %29, align 1
  %30 = load i8*, i8** %mac_size.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv144 = zext i8 %31 to i32
  %cmp145 = icmp slt i32 %conv144, 4
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %cond.end141
  store i32 -134, i32* %retval, align 4
  br label %return

if.end148:                                        ; preds = %cond.end141
  %32 = load i8*, i8** %mac_size.addr, align 8
  %33 = load i8, i8* %32, align 1
  %conv149 = zext i8 %33 to i32
  %34 = load i32, i32* %alg.addr, align 4
  %and150 = and i32 %34, -4161537
  %and151 = and i32 %and150, 4128768
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %cond.true153, label %cond.false157

cond.true153:                                     ; preds = %if.end148
  %35 = load i32, i32* %alg.addr, align 4
  %and154 = and i32 %35, -4161537
  %and155 = and i32 %and154, 4128768
  %shr156 = lshr i32 %and155, 16
  br label %cond.end326

cond.false157:                                    ; preds = %if.end148
  %36 = load i32, i32* %alg.addr, align 4
  %and158 = and i32 %36, -4161537
  %and159 = and i32 %and158, 2143289344
  %cmp160 = icmp eq i32 %and159, 58720256
  br i1 %cmp160, label %cond.true162, label %cond.false303

cond.true162:                                     ; preds = %cond.false157
  %37 = load i32, i32* %alg.addr, align 4
  %and163 = and i32 %37, -4161537
  %and164 = and i32 %and163, 255
  %or165 = or i32 33554432, %and164
  %and166 = and i32 %or165, 255
  %or167 = or i32 33554432, %and166
  %cmp168 = icmp eq i32 %or167, 33554435
  br i1 %cmp168, label %cond.true170, label %cond.false171

cond.true170:                                     ; preds = %cond.true162
  br label %cond.end301

cond.false171:                                    ; preds = %cond.true162
  %38 = load i32, i32* %alg.addr, align 4
  %and172 = and i32 %38, -4161537
  %and173 = and i32 %and172, 255
  %or174 = or i32 33554432, %and173
  %and175 = and i32 %or174, 255
  %or176 = or i32 33554432, %and175
  %cmp177 = icmp eq i32 %or176, 33554436
  br i1 %cmp177, label %cond.true179, label %cond.false180

cond.true179:                                     ; preds = %cond.false171
  br label %cond.end299

cond.false180:                                    ; preds = %cond.false171
  %39 = load i32, i32* %alg.addr, align 4
  %and181 = and i32 %39, -4161537
  %and182 = and i32 %and181, 255
  %or183 = or i32 33554432, %and182
  %and184 = and i32 %or183, 255
  %or185 = or i32 33554432, %and184
  %cmp186 = icmp eq i32 %or185, 33554437
  br i1 %cmp186, label %cond.true188, label %cond.false189

cond.true188:                                     ; preds = %cond.false180
  br label %cond.end297

cond.false189:                                    ; preds = %cond.false180
  %40 = load i32, i32* %alg.addr, align 4
  %and190 = and i32 %40, -4161537
  %and191 = and i32 %and190, 255
  %or192 = or i32 33554432, %and191
  %and193 = and i32 %or192, 255
  %or194 = or i32 33554432, %and193
  %cmp195 = icmp eq i32 %or194, 33554440
  br i1 %cmp195, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %cond.false189
  br label %cond.end295

cond.false198:                                    ; preds = %cond.false189
  %41 = load i32, i32* %alg.addr, align 4
  %and199 = and i32 %41, -4161537
  %and200 = and i32 %and199, 255
  %or201 = or i32 33554432, %and200
  %and202 = and i32 %or201, 255
  %or203 = or i32 33554432, %and202
  %cmp204 = icmp eq i32 %or203, 33554441
  br i1 %cmp204, label %cond.true206, label %cond.false207

cond.true206:                                     ; preds = %cond.false198
  br label %cond.end293

cond.false207:                                    ; preds = %cond.false198
  %42 = load i32, i32* %alg.addr, align 4
  %and208 = and i32 %42, -4161537
  %and209 = and i32 %and208, 255
  %or210 = or i32 33554432, %and209
  %and211 = and i32 %or210, 255
  %or212 = or i32 33554432, %and211
  %cmp213 = icmp eq i32 %or212, 33554442
  br i1 %cmp213, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %cond.false207
  br label %cond.end291

cond.false216:                                    ; preds = %cond.false207
  %43 = load i32, i32* %alg.addr, align 4
  %and217 = and i32 %43, -4161537
  %and218 = and i32 %and217, 255
  %or219 = or i32 33554432, %and218
  %and220 = and i32 %or219, 255
  %or221 = or i32 33554432, %and220
  %cmp222 = icmp eq i32 %or221, 33554443
  br i1 %cmp222, label %cond.true224, label %cond.false225

cond.true224:                                     ; preds = %cond.false216
  br label %cond.end289

cond.false225:                                    ; preds = %cond.false216
  %44 = load i32, i32* %alg.addr, align 4
  %and226 = and i32 %44, -4161537
  %and227 = and i32 %and226, 255
  %or228 = or i32 33554432, %and227
  %and229 = and i32 %or228, 255
  %or230 = or i32 33554432, %and229
  %cmp231 = icmp eq i32 %or230, 33554444
  br i1 %cmp231, label %cond.true233, label %cond.false234

cond.true233:                                     ; preds = %cond.false225
  br label %cond.end287

cond.false234:                                    ; preds = %cond.false225
  %45 = load i32, i32* %alg.addr, align 4
  %and235 = and i32 %45, -4161537
  %and236 = and i32 %and235, 255
  %or237 = or i32 33554432, %and236
  %and238 = and i32 %or237, 255
  %or239 = or i32 33554432, %and238
  %cmp240 = icmp eq i32 %or239, 33554445
  br i1 %cmp240, label %cond.true242, label %cond.false243

cond.true242:                                     ; preds = %cond.false234
  br label %cond.end285

cond.false243:                                    ; preds = %cond.false234
  %46 = load i32, i32* %alg.addr, align 4
  %and244 = and i32 %46, -4161537
  %and245 = and i32 %and244, 255
  %or246 = or i32 33554432, %and245
  %and247 = and i32 %or246, 255
  %or248 = or i32 33554432, %and247
  %cmp249 = icmp eq i32 %or248, 33554448
  br i1 %cmp249, label %cond.true251, label %cond.false252

cond.true251:                                     ; preds = %cond.false243
  br label %cond.end283

cond.false252:                                    ; preds = %cond.false243
  %47 = load i32, i32* %alg.addr, align 4
  %and253 = and i32 %47, -4161537
  %and254 = and i32 %and253, 255
  %or255 = or i32 33554432, %and254
  %and256 = and i32 %or255, 255
  %or257 = or i32 33554432, %and256
  %cmp258 = icmp eq i32 %or257, 33554449
  br i1 %cmp258, label %cond.true260, label %cond.false261

cond.true260:                                     ; preds = %cond.false252
  br label %cond.end281

cond.false261:                                    ; preds = %cond.false252
  %48 = load i32, i32* %alg.addr, align 4
  %and262 = and i32 %48, -4161537
  %and263 = and i32 %and262, 255
  %or264 = or i32 33554432, %and263
  %and265 = and i32 %or264, 255
  %or266 = or i32 33554432, %and265
  %cmp267 = icmp eq i32 %or266, 33554450
  br i1 %cmp267, label %cond.true269, label %cond.false270

cond.true269:                                     ; preds = %cond.false261
  br label %cond.end279

cond.false270:                                    ; preds = %cond.false261
  %49 = load i32, i32* %alg.addr, align 4
  %and271 = and i32 %49, -4161537
  %and272 = and i32 %and271, 255
  %or273 = or i32 33554432, %and272
  %and274 = and i32 %or273, 255
  %or275 = or i32 33554432, %and274
  %cmp276 = icmp eq i32 %or275, 33554451
  %50 = zext i1 %cmp276 to i64
  %cond278 = select i1 %cmp276, i32 64, i32 0
  br label %cond.end279

cond.end279:                                      ; preds = %cond.false270, %cond.true269
  %cond280 = phi i32 [ 48, %cond.true269 ], [ %cond278, %cond.false270 ]
  br label %cond.end281

cond.end281:                                      ; preds = %cond.end279, %cond.true260
  %cond282 = phi i32 [ 32, %cond.true260 ], [ %cond280, %cond.end279 ]
  br label %cond.end283

cond.end283:                                      ; preds = %cond.end281, %cond.true251
  %cond284 = phi i32 [ 28, %cond.true251 ], [ %cond282, %cond.end281 ]
  br label %cond.end285

cond.end285:                                      ; preds = %cond.end283, %cond.true242
  %cond286 = phi i32 [ 32, %cond.true242 ], [ %cond284, %cond.end283 ]
  br label %cond.end287

cond.end287:                                      ; preds = %cond.end285, %cond.true233
  %cond288 = phi i32 [ 28, %cond.true233 ], [ %cond286, %cond.end285 ]
  br label %cond.end289

cond.end289:                                      ; preds = %cond.end287, %cond.true224
  %cond290 = phi i32 [ 64, %cond.true224 ], [ %cond288, %cond.end287 ]
  br label %cond.end291

cond.end291:                                      ; preds = %cond.end289, %cond.true215
  %cond292 = phi i32 [ 48, %cond.true215 ], [ %cond290, %cond.end289 ]
  br label %cond.end293

cond.end293:                                      ; preds = %cond.end291, %cond.true206
  %cond294 = phi i32 [ 32, %cond.true206 ], [ %cond292, %cond.end291 ]
  br label %cond.end295

cond.end295:                                      ; preds = %cond.end293, %cond.true197
  %cond296 = phi i32 [ 28, %cond.true197 ], [ %cond294, %cond.end293 ]
  br label %cond.end297

cond.end297:                                      ; preds = %cond.end295, %cond.true188
  %cond298 = phi i32 [ 20, %cond.true188 ], [ %cond296, %cond.end295 ]
  br label %cond.end299

cond.end299:                                      ; preds = %cond.end297, %cond.true179
  %cond300 = phi i32 [ 20, %cond.true179 ], [ %cond298, %cond.end297 ]
  br label %cond.end301

cond.end301:                                      ; preds = %cond.end299, %cond.true170
  %cond302 = phi i32 [ 16, %cond.true170 ], [ %cond300, %cond.end299 ]
  br label %cond.end324

cond.false303:                                    ; preds = %cond.false157
  %51 = load i32, i32* %alg.addr, align 4
  %and304 = and i32 %51, -4161537
  %and305 = and i32 %and304, 2143289344
  %cmp306 = icmp eq i32 %and305, 62914560
  br i1 %cmp306, label %cond.true308, label %cond.false321

cond.true308:                                     ; preds = %cond.false303
  %52 = load i16, i16* %key_type, align 2
  %conv309 = zext i16 %52 to i32
  %and310 = and i32 %conv309, 28672
  %cmp311 = icmp eq i32 %and310, 8192
  br i1 %cmp311, label %cond.true313, label %cond.false318

cond.true313:                                     ; preds = %cond.true308
  %53 = load i16, i16* %key_type, align 2
  %conv314 = zext i16 %53 to i32
  %shr315 = ashr i32 %conv314, 8
  %and316 = and i32 %shr315, 7
  %shl317 = shl i32 1, %and316
  br label %cond.end319

cond.false318:                                    ; preds = %cond.true308
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false318, %cond.true313
  %cond320 = phi i32 [ %shl317, %cond.true313 ], [ 0, %cond.false318 ]
  br label %cond.end322

cond.false321:                                    ; preds = %cond.false303
  %54 = load i16, i16* %key_type, align 2
  %55 = load i64, i64* %key_bits, align 8
  br label %cond.end322

cond.end322:                                      ; preds = %cond.false321, %cond.end319
  %cond323 = phi i32 [ %cond320, %cond.end319 ], [ 0, %cond.false321 ]
  br label %cond.end324

cond.end324:                                      ; preds = %cond.end322, %cond.end301
  %cond325 = phi i32 [ %cond302, %cond.end301 ], [ %cond323, %cond.end322 ]
  br label %cond.end326

cond.end326:                                      ; preds = %cond.end324, %cond.true153
  %cond327 = phi i32 [ %shr156, %cond.true153 ], [ %cond325, %cond.end324 ]
  %cmp328 = icmp ugt i32 %conv149, %cond327
  br i1 %cmp328, label %if.then330, label %if.end331

if.then330:                                       ; preds = %cond.end326
  store i32 -135, i32* %retval, align 4
  br label %return

if.end331:                                        ; preds = %cond.end326
  %56 = load i8*, i8** %mac_size.addr, align 8
  %57 = load i8, i8* %56, align 1
  %conv332 = zext i8 %57 to i32
  %cmp333 = icmp sgt i32 %conv332, 64
  br i1 %cmp333, label %if.then335, label %if.end336

if.then335:                                       ; preds = %if.end331
  store i32 -134, i32* %retval, align 4
  br label %return

if.end336:                                        ; preds = %if.end331
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end336, %if.then335, %if.then330, %if.then147, %if.then4, %if.then
  %58 = load i32, i32* %retval, align 4
  ret i32 %58
}

declare dso_local i32 @psa_driver_wrapper_mac_sign_setup(%struct.psa_mac_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @psa_driver_wrapper_mac_verify_setup(%struct.psa_mac_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @psa_get_key_type(%struct.psa_key_attributes_s* noundef %attributes) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  ret i16 %1
}

declare dso_local i32 @psa_driver_wrapper_mac_compute(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_sign_verify_check_alg(i32 noundef %input_is_message, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %input_is_message.addr = alloca i32, align 4
  %alg.addr = alloca i32, align 4
  store i32 %input_is_message, i32* %input_is_message.addr, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %input_is_message.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and = and i32 %1, -256
  %cmp = icmp eq i32 %and, 100664064
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %2, -256
  %cmp2 = icmp eq i32 %and1, 100668160
  br i1 %cmp2, label %if.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %alg.addr, align 4
  %and4 = and i32 %3, -256
  %cmp5 = icmp eq i32 %and4, 100663808
  br i1 %cmp5, label %if.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %4 = load i32, i32* %alg.addr, align 4
  %and7 = and i32 %4, -256
  %and8 = and i32 %and7, -257
  %cmp9 = icmp eq i32 %and8, 100664832
  br i1 %cmp9, label %if.end, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %5 = load i32, i32* %alg.addr, align 4
  %and11 = and i32 %5, -256
  %cmp12 = icmp eq i32 %and11, 100665600
  br i1 %cmp12, label %if.end, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %6 = load i32, i32* %alg.addr, align 4
  %and14 = and i32 %6, -256
  %and15 = and i32 %and14, -257
  %cmp16 = icmp eq i32 %and15, 100664320
  br i1 %cmp16, label %if.end, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %7 = load i32, i32* %alg.addr, align 4
  %cmp18 = icmp eq i32 %7, 100665344
  br i1 %cmp18, label %if.end, label %if.then19

if.then19:                                        ; preds = %lor.lhs.false17
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false17, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %if.then
  %8 = load i32, i32* %alg.addr, align 4
  %and20 = and i32 %8, -256
  %cmp21 = icmp eq i32 %and20, 100664064
  br i1 %cmp21, label %if.then39, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end
  %9 = load i32, i32* %alg.addr, align 4
  %and23 = and i32 %9, -256
  %cmp24 = icmp eq i32 %and23, 100668160
  br i1 %cmp24, label %if.then39, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %10 = load i32, i32* %alg.addr, align 4
  %and26 = and i32 %10, -256
  %cmp27 = icmp eq i32 %and26, 100663808
  br i1 %cmp27, label %if.then39, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %11 = load i32, i32* %alg.addr, align 4
  %and29 = and i32 %11, -256
  %and30 = and i32 %and29, -257
  %cmp31 = icmp eq i32 %and30, 100664832
  br i1 %cmp31, label %if.then39, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %12 = load i32, i32* %alg.addr, align 4
  %and33 = and i32 %12, -256
  %cmp34 = icmp eq i32 %and33, 100665600
  br i1 %cmp34, label %if.then39, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %13 = load i32, i32* %alg.addr, align 4
  %and36 = and i32 %13, -256
  %and37 = and i32 %and36, -257
  %cmp38 = icmp eq i32 %and37, 100664320
  br i1 %cmp38, label %if.then39, label %if.end66

if.then39:                                        ; preds = %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false28, %lor.lhs.false25, %lor.lhs.false22, %if.end
  %14 = load i32, i32* %alg.addr, align 4
  %and40 = and i32 %14, -256
  %cmp41 = icmp eq i32 %and40, 100664064
  br i1 %cmp41, label %land.lhs.true, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.then39
  %15 = load i32, i32* %alg.addr, align 4
  %and43 = and i32 %15, -256
  %cmp44 = icmp eq i32 %and43, 100668160
  br i1 %cmp44, label %land.lhs.true, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %lor.lhs.false42
  %16 = load i32, i32* %alg.addr, align 4
  %and46 = and i32 %16, -256
  %cmp47 = icmp eq i32 %and46, 100663808
  br i1 %cmp47, label %land.lhs.true, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %lor.lhs.false45
  %17 = load i32, i32* %alg.addr, align 4
  %and49 = and i32 %17, -256
  %and50 = and i32 %and49, -257
  %cmp51 = icmp eq i32 %and50, 100664832
  br i1 %cmp51, label %land.lhs.true, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %18 = load i32, i32* %alg.addr, align 4
  %and53 = and i32 %18, -256
  %cmp54 = icmp eq i32 %and53, 100665600
  br i1 %cmp54, label %land.lhs.true, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %19 = load i32, i32* %alg.addr, align 4
  %and56 = and i32 %19, -256
  %and57 = and i32 %and56, -257
  %cmp58 = icmp eq i32 %and57, 100664320
  br i1 %cmp58, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false55, %lor.lhs.false52, %lor.lhs.false48, %lor.lhs.false45, %lor.lhs.false42, %if.then39
  %20 = load i32, i32* %alg.addr, align 4
  %and59 = and i32 %20, 255
  %cmp60 = icmp ne i32 %and59, 0
  br i1 %cmp60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %21 = load i32, i32* %alg.addr, align 4
  %and61 = and i32 %21, 255
  %or = or i32 %and61, 33554432
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ 0, %cond.false ]
  %and62 = and i32 %cond, 2130706432
  %cmp63 = icmp eq i32 %and62, 33554432
  br i1 %cmp63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end65:                                         ; preds = %cond.end
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %lor.lhs.false35
  br label %if.end88

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %alg.addr, align 4
  %and67 = and i32 %22, -256
  %cmp68 = icmp eq i32 %and67, 100664064
  br i1 %cmp68, label %if.end87, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.else
  %23 = load i32, i32* %alg.addr, align 4
  %and70 = and i32 %23, -256
  %cmp71 = icmp eq i32 %and70, 100668160
  br i1 %cmp71, label %if.end87, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %24 = load i32, i32* %alg.addr, align 4
  %and73 = and i32 %24, -256
  %cmp74 = icmp eq i32 %and73, 100663808
  br i1 %cmp74, label %if.end87, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false72
  %25 = load i32, i32* %alg.addr, align 4
  %and76 = and i32 %25, -256
  %and77 = and i32 %and76, -257
  %cmp78 = icmp eq i32 %and77, 100664832
  br i1 %cmp78, label %if.end87, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %lor.lhs.false75
  %26 = load i32, i32* %alg.addr, align 4
  %and80 = and i32 %26, -256
  %cmp81 = icmp eq i32 %and80, 100665600
  br i1 %cmp81, label %if.end87, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false79
  %27 = load i32, i32* %alg.addr, align 4
  %and83 = and i32 %27, -256
  %and84 = and i32 %and83, -257
  %cmp85 = icmp eq i32 %and84, 100664320
  br i1 %cmp85, label %if.end87, label %if.then86

if.then86:                                        ; preds = %lor.lhs.false82
  store i32 -135, i32* %retval, align 4
  br label %return

if.end87:                                         ; preds = %lor.lhs.false82, %lor.lhs.false79, %lor.lhs.false75, %lor.lhs.false72, %lor.lhs.false69, %if.else
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end66
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end88, %if.then86, %if.then64, %if.then19
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local i32 @psa_driver_wrapper_sign_message(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef, i64* noundef) #2

declare dso_local i32 @psa_driver_wrapper_verify_message(%struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @psa_driver_wrapper_cipher_encrypt_setup(%struct.psa_cipher_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @psa_driver_wrapper_cipher_decrypt_setup(%struct.psa_cipher_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_aead_get_base_algorithm(i32 noundef %alg) #0 {
entry:
  %alg.addr = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, -4161537
  %or = or i32 %and, 0
  %cmp = icmp eq i32 %or, 88080640
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end10

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and1 = and i32 %1, -4161537
  %or2 = or i32 %and1, 0
  %cmp3 = icmp eq i32 %or2, 88080896
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  br label %cond.end

cond.false5:                                      ; preds = %cond.false
  %2 = load i32, i32* %alg.addr, align 4
  %and6 = and i32 %2, -4161537
  %or7 = or i32 %and6, 0
  %cmp8 = icmp eq i32 %or7, 83887360
  %3 = zext i1 %cmp8 to i64
  %cond = select i1 %cmp8, i32 84935936, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false5, %cond.true4
  %cond9 = phi i32 [ 89129472, %cond.true4 ], [ %cond, %cond.false5 ]
  br label %cond.end10

cond.end10:                                       ; preds = %cond.end, %cond.true
  %cond11 = phi i32 [ 89129216, %cond.true ], [ %cond9, %cond.end ]
  ret i32 %cond11
}

declare dso_local i32 @psa_driver_wrapper_aead_encrypt_setup(%struct.psa_aead_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @psa_driver_wrapper_aead_decrypt_setup(%struct.psa_aead_operation_s* noundef, %struct.psa_key_attributes_s* noundef, i8* noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_validate_tag_length(%struct.psa_aead_operation_s* noundef %operation, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %operation.addr = alloca %struct.psa_aead_operation_s*, align 8
  %alg.addr = alloca i32, align 4
  %tag_len = alloca i8, align 1
  store %struct.psa_aead_operation_s* %operation, %struct.psa_aead_operation_s** %operation.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  store i8 0, i8* %tag_len, align 1
  %0 = load %struct.psa_aead_operation_s*, %struct.psa_aead_operation_s** %operation.addr, align 8
  %call = call i32 @psa_driver_get_tag_len(%struct.psa_aead_operation_s* noundef %0, i8* noundef %tag_len) #6
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %alg.addr, align 4
  %and = and i32 %1, -4161537
  %or = or i32 %and, 0
  switch i32 %or, label %sw.default [
    i32 88080640, label %sw.bb
    i32 88080896, label %sw.bb10
    i32 83887360, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end
  %2 = load i8, i8* %tag_len, align 1
  %conv = zext i8 %2 to i32
  %cmp1 = icmp slt i32 %conv, 4
  br i1 %cmp1, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = load i8, i8* %tag_len, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp sgt i32 %conv3, 16
  br i1 %cmp4, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %4 = load i8, i8* %tag_len, align 1
  %conv7 = zext i8 %4 to i32
  %rem = srem i32 %conv7, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %sw.bb
  store i32 -135, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  %5 = load i8, i8* %tag_len, align 1
  %conv11 = zext i8 %5 to i32
  %cmp12 = icmp ne i32 %conv11, 4
  br i1 %cmp12, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %sw.bb10
  %6 = load i8, i8* %tag_len, align 1
  %conv14 = zext i8 %6 to i32
  %cmp15 = icmp ne i32 %conv14, 8
  br i1 %cmp15, label %land.lhs.true17, label %if.end26

land.lhs.true17:                                  ; preds = %land.lhs.true
  %7 = load i8, i8* %tag_len, align 1
  %conv18 = zext i8 %7 to i32
  %cmp19 = icmp slt i32 %conv18, 12
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %land.lhs.true17
  %8 = load i8, i8* %tag_len, align 1
  %conv22 = zext i8 %8 to i32
  %cmp23 = icmp sgt i32 %conv22, 16
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false21, %land.lhs.true17
  store i32 -135, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false21, %land.lhs.true, %sw.bb10
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end
  %9 = load i8, i8* %tag_len, align 1
  %conv28 = zext i8 %9 to i32
  %cmp29 = icmp ne i32 %conv28, 16
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %sw.bb27
  store i32 -135, i32* %retval, align 4
  br label %return

if.end32:                                         ; preds = %sw.bb27
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %10 = load i8, i8* %tag_len, align 1
  store i32 -134, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end32, %if.end26, %if.end9
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then31, %if.then25, %if.then8, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @psa_driver_get_tag_len(%struct.psa_aead_operation_s* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %operation, i32 noundef %hash_alg, i8* noundef %hmac_key, i64 noundef %hmac_key_length) #0 {
entry:
  %operation.addr = alloca %struct.psa_mac_operation_s*, align 8
  %hash_alg.addr = alloca i32, align 4
  %hmac_key.addr = alloca i8*, align 8
  %hmac_key_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %attributes = alloca %struct.psa_key_attributes_s, align 8
  store %struct.psa_mac_operation_s* %operation, %struct.psa_mac_operation_s** %operation.addr, align 8
  store i32 %hash_alg, i32* %hash_alg.addr, align 4
  store i8* %hmac_key, i8** %hmac_key.addr, align 8
  store i64 %hmac_key_length, i64* %hmac_key_length.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = bitcast %struct.psa_key_attributes_s* %attributes to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 48, i1 false)
  call void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext 4352) #6
  %1 = load i64, i64* %hmac_key_length.addr, align 8
  %mul = mul i64 %1, 8
  call void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %mul) #6
  call void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef 4096) #6
  %2 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %is_sign = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %2, i32 0, i32 2
  %bf.load = load i8, i8* %is_sign, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %is_sign, align 1
  %3 = load i32, i32* %hash_alg.addr, align 4
  %and = and i32 %3, 255
  %or = or i32 33554432, %and
  %cmp = icmp eq i32 %or, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end80

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %hash_alg.addr, align 4
  %and1 = and i32 %4, 255
  %or2 = or i32 33554432, %and1
  %cmp3 = icmp eq i32 %or2, 33554436
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.false
  br label %cond.end78

cond.false5:                                      ; preds = %cond.false
  %5 = load i32, i32* %hash_alg.addr, align 4
  %and6 = and i32 %5, 255
  %or7 = or i32 33554432, %and6
  %cmp8 = icmp eq i32 %or7, 33554437
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false5
  br label %cond.end76

cond.false10:                                     ; preds = %cond.false5
  %6 = load i32, i32* %hash_alg.addr, align 4
  %and11 = and i32 %6, 255
  %or12 = or i32 33554432, %and11
  %cmp13 = icmp eq i32 %or12, 33554440
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.false10
  br label %cond.end74

cond.false15:                                     ; preds = %cond.false10
  %7 = load i32, i32* %hash_alg.addr, align 4
  %and16 = and i32 %7, 255
  %or17 = or i32 33554432, %and16
  %cmp18 = icmp eq i32 %or17, 33554441
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %cond.false15
  br label %cond.end72

cond.false20:                                     ; preds = %cond.false15
  %8 = load i32, i32* %hash_alg.addr, align 4
  %and21 = and i32 %8, 255
  %or22 = or i32 33554432, %and21
  %cmp23 = icmp eq i32 %or22, 33554442
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.false20
  br label %cond.end70

cond.false25:                                     ; preds = %cond.false20
  %9 = load i32, i32* %hash_alg.addr, align 4
  %and26 = and i32 %9, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554443
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.false25
  br label %cond.end68

cond.false30:                                     ; preds = %cond.false25
  %10 = load i32, i32* %hash_alg.addr, align 4
  %and31 = and i32 %10, 255
  %or32 = or i32 33554432, %and31
  %cmp33 = icmp eq i32 %or32, 33554444
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false30
  br label %cond.end66

cond.false35:                                     ; preds = %cond.false30
  %11 = load i32, i32* %hash_alg.addr, align 4
  %and36 = and i32 %11, 255
  %or37 = or i32 33554432, %and36
  %cmp38 = icmp eq i32 %or37, 33554445
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %cond.false35
  br label %cond.end64

cond.false40:                                     ; preds = %cond.false35
  %12 = load i32, i32* %hash_alg.addr, align 4
  %and41 = and i32 %12, 255
  %or42 = or i32 33554432, %and41
  %cmp43 = icmp eq i32 %or42, 33554448
  br i1 %cmp43, label %cond.true44, label %cond.false45

cond.true44:                                      ; preds = %cond.false40
  br label %cond.end62

cond.false45:                                     ; preds = %cond.false40
  %13 = load i32, i32* %hash_alg.addr, align 4
  %and46 = and i32 %13, 255
  %or47 = or i32 33554432, %and46
  %cmp48 = icmp eq i32 %or47, 33554449
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %cond.false45
  br label %cond.end60

cond.false50:                                     ; preds = %cond.false45
  %14 = load i32, i32* %hash_alg.addr, align 4
  %and51 = and i32 %14, 255
  %or52 = or i32 33554432, %and51
  %cmp53 = icmp eq i32 %or52, 33554450
  br i1 %cmp53, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false50
  br label %cond.end

cond.false55:                                     ; preds = %cond.false50
  %15 = load i32, i32* %hash_alg.addr, align 4
  %and56 = and i32 %15, 255
  %or57 = or i32 33554432, %and56
  %cmp58 = icmp eq i32 %or57, 33554451
  %16 = zext i1 %cmp58 to i64
  %cond = select i1 %cmp58, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false55, %cond.true54
  %cond59 = phi i32 [ 48, %cond.true54 ], [ %cond, %cond.false55 ]
  br label %cond.end60

cond.end60:                                       ; preds = %cond.end, %cond.true49
  %cond61 = phi i32 [ 32, %cond.true49 ], [ %cond59, %cond.end ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end60, %cond.true44
  %cond63 = phi i32 [ 28, %cond.true44 ], [ %cond61, %cond.end60 ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true39
  %cond65 = phi i32 [ 32, %cond.true39 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true34
  %cond67 = phi i32 [ 28, %cond.true34 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true29
  %cond69 = phi i32 [ 64, %cond.true29 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true24
  %cond71 = phi i32 [ 48, %cond.true24 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true19
  %cond73 = phi i32 [ 32, %cond.true19 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true14
  %cond75 = phi i32 [ 28, %cond.true14 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true9
  %cond77 = phi i32 [ 20, %cond.true9 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true4
  %cond79 = phi i32 [ 20, %cond.true4 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true
  %cond81 = phi i32 [ 16, %cond.true ], [ %cond79, %cond.end78 ]
  %conv = trunc i32 %cond81 to i8
  %17 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %mac_size = getelementptr inbounds %struct.psa_mac_operation_s, %struct.psa_mac_operation_s* %17, i32 0, i32 1
  store i8 %conv, i8* %mac_size, align 4
  %18 = load %struct.psa_mac_operation_s*, %struct.psa_mac_operation_s** %operation.addr, align 8
  %19 = load i8*, i8** %hmac_key.addr, align 8
  %20 = load i64, i64* %hmac_key_length.addr, align 8
  %21 = load i32, i32* %hash_alg.addr, align 4
  %and82 = and i32 %21, 255
  %or83 = or i32 58720256, %and82
  %call = call i32 @psa_driver_wrapper_mac_sign_setup(%struct.psa_mac_operation_s* noundef %18, %struct.psa_key_attributes_s* noundef %attributes, i8* noundef %19, i64 noundef %20, i32 noundef %or83) #6
  store i32 %call, i32* %status, align 4
  call void @psa_reset_key_attributes(%struct.psa_key_attributes_s* noundef %attributes) #6
  %22 = load i32, i32* %status, align 4
  ret i32 %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_type(%struct.psa_key_attributes_s* noundef %attributes, i16 noundef zeroext %type) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %type.addr = alloca i16, align 2
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  %0 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %domain_parameters = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %0, i32 0, i32 1
  %1 = load i8*, i8** %domain_parameters, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %type.addr, align 2
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %type1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 0
  store i16 %2, i16* %type1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %5 = load i16, i16* %type.addr, align 2
  %call = call i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef %4, i16 noundef zeroext %5, i8* noundef null, i64 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_bits(%struct.psa_key_attributes_s* noundef %attributes, i64 noundef %bits) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %bits.addr = alloca i64, align 8
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  %0 = load i64, i64* %bits.addr, align 8
  %cmp = icmp ugt i64 %0, 65528
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %bits1 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 1
  store i16 -1, i16* %bits1, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %bits.addr, align 8
  %conv = trunc i64 %2 to i16
  %3 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core2 = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %3, i32 0, i32 0
  %bits3 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core2, i32 0, i32 1
  store i16 %conv, i16* %bits3, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_set_key_usage_flags(%struct.psa_key_attributes_s* noundef %attributes, i32 noundef %usage_flags) #0 {
entry:
  %attributes.addr = alloca %struct.psa_key_attributes_s*, align 8
  %usage_flags.addr = alloca i32, align 4
  store %struct.psa_key_attributes_s* %attributes, %struct.psa_key_attributes_s** %attributes.addr, align 8
  store i32 %usage_flags, i32* %usage_flags.addr, align 4
  call void @psa_extend_key_usage_flags(i32* noundef %usage_flags.addr) #6
  %0 = load i32, i32* %usage_flags.addr, align 4
  %1 = load %struct.psa_key_attributes_s*, %struct.psa_key_attributes_s** %attributes.addr, align 8
  %core = getelementptr inbounds %struct.psa_key_attributes_s, %struct.psa_key_attributes_s* %1, i32 0, i32 0
  %policy = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %core, i32 0, i32 4
  %usage = getelementptr inbounds %struct.psa_key_policy_s, %struct.psa_key_policy_s* %policy, i32 0, i32 0
  store i32 %0, i32* %usage, align 4
  ret void
}

declare dso_local i32 @psa_set_key_domain_parameters(%struct.psa_key_attributes_s* noundef, i16 noundef zeroext, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psa_extend_key_usage_flags(i32* noundef %usage_flags) #0 {
entry:
  %usage_flags.addr = alloca i32*, align 8
  store i32* %usage_flags, i32** %usage_flags.addr, align 8
  %0 = load i32*, i32** %usage_flags.addr, align 8
  %1 = load i32, i32* %0, align 4
  %and = and i32 %1, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %usage_flags.addr, align 8
  %3 = load i32, i32* %2, align 4
  %or = or i32 %3, 1024
  store i32 %or, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32*, i32** %usage_flags.addr, align 8
  %5 = load i32, i32* %4, align 4
  %and1 = and i32 %5, 8192
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %6 = load i32*, i32** %usage_flags.addr, align 8
  %7 = load i32, i32* %6, align 4
  %or4 = or i32 %7, 2048
  store i32 %or4, i32* %6, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_tls12_prf_generate_next_block(%struct.psa_tls12_prf_key_derivation_s* noundef %tls12_prf, i32 noundef %alg) #0 {
entry:
  %retval = alloca i32, align 4
  %tls12_prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %alg.addr = alloca i32, align 4
  %hash_alg = alloca i32, align 4
  %hash_length = alloca i8, align 1
  %hmac = alloca %struct.psa_mac_operation_s, align 8
  %hmac_output_length = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup_status = alloca i32, align 4
  store %struct.psa_tls12_prf_key_derivation_s* %tls12_prf, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  store i32 %alg, i32* %alg.addr, align 4
  %0 = load i32, i32* %alg.addr, align 4
  %and = and i32 %0, 255
  %or = or i32 33554432, %and
  store i32 %or, i32* %hash_alg, align 4
  %1 = load i32, i32* %hash_alg, align 4
  %and1 = and i32 %1, 255
  %or2 = or i32 33554432, %and1
  %cmp = icmp eq i32 %or2, 33554435
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end82

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %hash_alg, align 4
  %and3 = and i32 %2, 255
  %or4 = or i32 33554432, %and3
  %cmp5 = icmp eq i32 %or4, 33554436
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.false
  br label %cond.end80

cond.false7:                                      ; preds = %cond.false
  %3 = load i32, i32* %hash_alg, align 4
  %and8 = and i32 %3, 255
  %or9 = or i32 33554432, %and8
  %cmp10 = icmp eq i32 %or9, 33554437
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.false7
  br label %cond.end78

cond.false12:                                     ; preds = %cond.false7
  %4 = load i32, i32* %hash_alg, align 4
  %and13 = and i32 %4, 255
  %or14 = or i32 33554432, %and13
  %cmp15 = icmp eq i32 %or14, 33554440
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end76

cond.false17:                                     ; preds = %cond.false12
  %5 = load i32, i32* %hash_alg, align 4
  %and18 = and i32 %5, 255
  %or19 = or i32 33554432, %and18
  %cmp20 = icmp eq i32 %or19, 33554441
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end74

cond.false22:                                     ; preds = %cond.false17
  %6 = load i32, i32* %hash_alg, align 4
  %and23 = and i32 %6, 255
  %or24 = or i32 33554432, %and23
  %cmp25 = icmp eq i32 %or24, 33554442
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end72

cond.false27:                                     ; preds = %cond.false22
  %7 = load i32, i32* %hash_alg, align 4
  %and28 = and i32 %7, 255
  %or29 = or i32 33554432, %and28
  %cmp30 = icmp eq i32 %or29, 33554443
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end70

cond.false32:                                     ; preds = %cond.false27
  %8 = load i32, i32* %hash_alg, align 4
  %and33 = and i32 %8, 255
  %or34 = or i32 33554432, %and33
  %cmp35 = icmp eq i32 %or34, 33554444
  br i1 %cmp35, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end68

cond.false37:                                     ; preds = %cond.false32
  %9 = load i32, i32* %hash_alg, align 4
  %and38 = and i32 %9, 255
  %or39 = or i32 33554432, %and38
  %cmp40 = icmp eq i32 %or39, 33554445
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end66

cond.false42:                                     ; preds = %cond.false37
  %10 = load i32, i32* %hash_alg, align 4
  %and43 = and i32 %10, 255
  %or44 = or i32 33554432, %and43
  %cmp45 = icmp eq i32 %or44, 33554448
  br i1 %cmp45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end64

cond.false47:                                     ; preds = %cond.false42
  %11 = load i32, i32* %hash_alg, align 4
  %and48 = and i32 %11, 255
  %or49 = or i32 33554432, %and48
  %cmp50 = icmp eq i32 %or49, 33554449
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end62

cond.false52:                                     ; preds = %cond.false47
  %12 = load i32, i32* %hash_alg, align 4
  %and53 = and i32 %12, 255
  %or54 = or i32 33554432, %and53
  %cmp55 = icmp eq i32 %or54, 33554450
  br i1 %cmp55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end

cond.false57:                                     ; preds = %cond.false52
  %13 = load i32, i32* %hash_alg, align 4
  %and58 = and i32 %13, 255
  %or59 = or i32 33554432, %and58
  %cmp60 = icmp eq i32 %or59, 33554451
  %14 = zext i1 %cmp60 to i64
  %cond = select i1 %cmp60, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false57, %cond.true56
  %cond61 = phi i32 [ 48, %cond.true56 ], [ %cond, %cond.false57 ]
  br label %cond.end62

cond.end62:                                       ; preds = %cond.end, %cond.true51
  %cond63 = phi i32 [ 32, %cond.true51 ], [ %cond61, %cond.end ]
  br label %cond.end64

cond.end64:                                       ; preds = %cond.end62, %cond.true46
  %cond65 = phi i32 [ 28, %cond.true46 ], [ %cond63, %cond.end62 ]
  br label %cond.end66

cond.end66:                                       ; preds = %cond.end64, %cond.true41
  %cond67 = phi i32 [ 32, %cond.true41 ], [ %cond65, %cond.end64 ]
  br label %cond.end68

cond.end68:                                       ; preds = %cond.end66, %cond.true36
  %cond69 = phi i32 [ 28, %cond.true36 ], [ %cond67, %cond.end66 ]
  br label %cond.end70

cond.end70:                                       ; preds = %cond.end68, %cond.true31
  %cond71 = phi i32 [ 64, %cond.true31 ], [ %cond69, %cond.end68 ]
  br label %cond.end72

cond.end72:                                       ; preds = %cond.end70, %cond.true26
  %cond73 = phi i32 [ 48, %cond.true26 ], [ %cond71, %cond.end70 ]
  br label %cond.end74

cond.end74:                                       ; preds = %cond.end72, %cond.true21
  %cond75 = phi i32 [ 32, %cond.true21 ], [ %cond73, %cond.end72 ]
  br label %cond.end76

cond.end76:                                       ; preds = %cond.end74, %cond.true16
  %cond77 = phi i32 [ 28, %cond.true16 ], [ %cond75, %cond.end74 ]
  br label %cond.end78

cond.end78:                                       ; preds = %cond.end76, %cond.true11
  %cond79 = phi i32 [ 20, %cond.true11 ], [ %cond77, %cond.end76 ]
  br label %cond.end80

cond.end80:                                       ; preds = %cond.end78, %cond.true6
  %cond81 = phi i32 [ 20, %cond.true6 ], [ %cond79, %cond.end78 ]
  br label %cond.end82

cond.end82:                                       ; preds = %cond.end80, %cond.true
  %cond83 = phi i32 [ 16, %cond.true ], [ %cond81, %cond.end80 ]
  %conv = trunc i32 %cond83 to i8
  store i8 %conv, i8* %hash_length, align 1
  %15 = bitcast %struct.psa_mac_operation_s* %hmac to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 384, i1 false)
  %16 = bitcast i8* %15 to { i32, i8, i8, { i32, [372 x i8] } }*
  %17 = getelementptr inbounds { i32, i8, i8, { i32, [372 x i8] } }, { i32, i8, i8, { i32, [372 x i8] } }* %16, i32 0, i32 3
  %18 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %block_number = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %18, i32 0, i32 1
  %19 = load i8, i8* %block_number, align 1
  %conv84 = zext i8 %19 to i32
  %cmp85 = icmp eq i32 %conv84, 255
  br i1 %cmp85, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end82
  store i32 -151, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end82
  %20 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %block_number87 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %20, i32 0, i32 1
  %21 = load i8, i8* %block_number87, align 1
  %inc = add i8 %21, 1
  store i8 %inc, i8* %block_number87, align 1
  %22 = load i8, i8* %hash_length, align 1
  %23 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %left_in_block = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %23, i32 0, i32 0
  store i8 %22, i8* %left_in_block, align 8
  %24 = load i32, i32* %hash_alg, align 4
  %25 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %25, i32 0, i32 3
  %26 = load i8*, i8** %secret, align 8
  %27 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %27, i32 0, i32 4
  %28 = load i64, i64* %secret_length, align 8
  %call = call i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %hmac, i32 noundef %24, i8* noundef %26, i64 noundef %28) #6
  store i32 %call, i32* %status, align 4
  %29 = load i32, i32* %status, align 4
  %cmp88 = icmp ne i32 %29, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end
  br label %cleanup

if.end91:                                         ; preds = %if.end
  %30 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %block_number92 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %30, i32 0, i32 1
  %31 = load i8, i8* %block_number92, align 1
  %conv93 = zext i8 %31 to i32
  %cmp94 = icmp eq i32 %conv93, 1
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end91
  %32 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %label = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %32, i32 0, i32 7
  %33 = load i8*, i8** %label, align 8
  %34 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %label_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %34, i32 0, i32 8
  %35 = load i64, i64* %label_length, align 8
  %call97 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %33, i64 noundef %35) #6
  store i32 %call97, i32* %status, align 4
  %36 = load i32, i32* %status, align 4
  %cmp98 = icmp ne i32 %36, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then96
  br label %cleanup

if.end101:                                        ; preds = %if.then96
  %37 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %seed = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %37, i32 0, i32 5
  %38 = load i8*, i8** %seed, align 8
  %39 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %seed_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %39, i32 0, i32 6
  %40 = load i64, i64* %seed_length, align 8
  %call102 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %38, i64 noundef %40) #6
  store i32 %call102, i32* %status, align 4
  %41 = load i32, i32* %status, align 4
  %cmp103 = icmp ne i32 %41, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end101
  br label %cleanup

if.end106:                                        ; preds = %if.end101
  br label %if.end113

if.else:                                          ; preds = %if.end91
  %42 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %Ai = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %42, i32 0, i32 11
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %Ai, i64 0, i64 0
  %43 = load i8, i8* %hash_length, align 1
  %conv107 = zext i8 %43 to i64
  %call108 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %arraydecay, i64 noundef %conv107) #6
  store i32 %call108, i32* %status, align 4
  %44 = load i32, i32* %status, align 4
  %cmp109 = icmp ne i32 %44, 0
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.else
  br label %cleanup

if.end112:                                        ; preds = %if.else
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end106
  %45 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %Ai114 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %45, i32 0, i32 11
  %arraydecay115 = getelementptr inbounds [64 x i8], [64 x i8]* %Ai114, i64 0, i64 0
  %46 = load i8, i8* %hash_length, align 1
  %conv116 = zext i8 %46 to i64
  %call117 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %arraydecay115, i64 noundef %conv116, i64* noundef %hmac_output_length) #6
  store i32 %call117, i32* %status, align 4
  %47 = load i64, i64* %hmac_output_length, align 8
  %48 = load i8, i8* %hash_length, align 1
  %conv118 = zext i8 %48 to i64
  %cmp119 = icmp ne i64 %47, %conv118
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end113
  store i32 -151, i32* %status, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end113
  %49 = load i32, i32* %status, align 4
  %cmp123 = icmp ne i32 %49, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end122
  br label %cleanup

if.end126:                                        ; preds = %if.end122
  %50 = load i32, i32* %hash_alg, align 4
  %51 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %secret127 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %51, i32 0, i32 3
  %52 = load i8*, i8** %secret127, align 8
  %53 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %secret_length128 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %53, i32 0, i32 4
  %54 = load i64, i64* %secret_length128, align 8
  %call129 = call i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %hmac, i32 noundef %50, i8* noundef %52, i64 noundef %54) #6
  store i32 %call129, i32* %status, align 4
  %55 = load i32, i32* %status, align 4
  %cmp130 = icmp ne i32 %55, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end126
  br label %cleanup

if.end133:                                        ; preds = %if.end126
  %56 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %Ai134 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %56, i32 0, i32 11
  %arraydecay135 = getelementptr inbounds [64 x i8], [64 x i8]* %Ai134, i64 0, i64 0
  %57 = load i8, i8* %hash_length, align 1
  %conv136 = zext i8 %57 to i64
  %call137 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %arraydecay135, i64 noundef %conv136) #6
  store i32 %call137, i32* %status, align 4
  %58 = load i32, i32* %status, align 4
  %cmp138 = icmp ne i32 %58, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end133
  br label %cleanup

if.end141:                                        ; preds = %if.end133
  %59 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %label142 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %59, i32 0, i32 7
  %60 = load i8*, i8** %label142, align 8
  %61 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %label_length143 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %61, i32 0, i32 8
  %62 = load i64, i64* %label_length143, align 8
  %call144 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %60, i64 noundef %62) #6
  store i32 %call144, i32* %status, align 4
  %63 = load i32, i32* %status, align 4
  %cmp145 = icmp ne i32 %63, 0
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end141
  br label %cleanup

if.end148:                                        ; preds = %if.end141
  %64 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %seed149 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %64, i32 0, i32 5
  %65 = load i8*, i8** %seed149, align 8
  %66 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %seed_length150 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %66, i32 0, i32 6
  %67 = load i64, i64* %seed_length150, align 8
  %call151 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %65, i64 noundef %67) #6
  store i32 %call151, i32* %status, align 4
  %68 = load i32, i32* %status, align 4
  %cmp152 = icmp ne i32 %68, 0
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end148
  br label %cleanup

if.end155:                                        ; preds = %if.end148
  %69 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %tls12_prf.addr, align 8
  %output_block = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %69, i32 0, i32 12
  %arraydecay156 = getelementptr inbounds [64 x i8], [64 x i8]* %output_block, i64 0, i64 0
  %70 = load i8, i8* %hash_length, align 1
  %conv157 = zext i8 %70 to i64
  %call158 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %hmac, i8* noundef %arraydecay156, i64 noundef %conv157, i64* noundef %hmac_output_length) #6
  store i32 %call158, i32* %status, align 4
  %71 = load i32, i32* %status, align 4
  %cmp159 = icmp ne i32 %71, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.end155
  br label %cleanup

if.end162:                                        ; preds = %if.end155
  br label %cleanup

cleanup:                                          ; preds = %if.end162, %if.then161, %if.then154, %if.then147, %if.then140, %if.then132, %if.then125, %if.then111, %if.then105, %if.then100, %if.then90
  %call163 = call i32 @psa_mac_abort(%struct.psa_mac_operation_s* noundef %hmac) #6
  store i32 %call163, i32* %cleanup_status, align 4
  %72 = load i32, i32* %status, align 4
  %cmp164 = icmp eq i32 %72, 0
  br i1 %cmp164, label %land.lhs.true, label %if.end169

land.lhs.true:                                    ; preds = %cleanup
  %73 = load i32, i32* %cleanup_status, align 4
  %cmp166 = icmp ne i32 %73, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %land.lhs.true
  %74 = load i32, i32* %cleanup_status, align 4
  store i32 %74, i32* %status, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %land.lhs.true, %cleanup
  %75 = load i32, i32* %status, align 4
  store i32 %75, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end169, %if.then
  %76 = load i32, i32* %retval, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_generate_derived_ecc_key_weierstrass_helper(%struct.psa_key_slot_t* noundef %slot, i64 noundef %bits, %struct.psa_key_derivation_s* noundef %operation, i8** noundef %data) #0 {
entry:
  %slot.addr = alloca %struct.psa_key_slot_t*, align 8
  %bits.addr = alloca i64, align 8
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %data.addr = alloca i8**, align 8
  %key_out_of_range = alloca i32, align 4
  %k = alloca %struct.mbedtls_mpi, align 8
  %diff_N_2 = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  %status = alloca i32, align 4
  %curve = alloca i8, align 1
  %grp_id = alloca i32, align 4
  %ecp_group = alloca %struct.mbedtls_ecp_group, align 8
  %m = alloca i64, align 8
  %m_bytes = alloca i64, align 8
  %clear_bit_mask = alloca i8, align 1
  store %struct.psa_key_slot_t* %slot, %struct.psa_key_slot_t** %slot.addr, align 8
  store i64 %bits, i64* %bits.addr, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 1, i32* %key_out_of_range, align 4
  store i32 -110, i32* %ret, align 4
  store i32 -151, i32* %status, align 4
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %k) #6
  call void @mbedtls_mpi_init(%struct.mbedtls_mpi* noundef %diff_N_2) #6
  %0 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %0, i32 0, i32 0
  %type = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr, i32 0, i32 0
  %1 = load i16, i16* %type, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, -12289
  %and1 = and i32 %and, -256
  %cmp = icmp eq i32 %and1, 16640
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.psa_key_slot_t*, %struct.psa_key_slot_t** %slot.addr, align 8
  %attr3 = getelementptr inbounds %struct.psa_key_slot_t, %struct.psa_key_slot_t* %2, i32 0, i32 0
  %type4 = getelementptr inbounds %struct.psa_core_key_attributes_t, %struct.psa_core_key_attributes_t* %attr3, i32 0, i32 0
  %3 = load i16, i16* %type4, align 8
  %conv5 = zext i16 %3 to i32
  %and6 = and i32 %conv5, 255
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and6, %cond.true ], [ 0, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  store i8 %conv7, i8* %curve, align 1
  %4 = load i8, i8* %curve, align 1
  %5 = load i64, i64* %bits.addr, align 8
  %call = call i32 @mbedtls_ecc_group_of_psa(i8 noundef zeroext %4, i64 noundef %5, i32 noundef 0) #6
  store i32 %call, i32* %grp_id, align 4
  %6 = load i32, i32* %grp_id, align 4
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -104, i32* %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef %ecp_group) #6
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load i32, i32* %grp_id, align 4
  %call10 = call i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef %ecp_group, i32 noundef %7) #6
  store i32 %call10, i32* %ret, align 4
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  br label %cleanup

if.end14:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end14
  %nbits = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ecp_group, i32 0, i32 7
  %8 = load i64, i64* %nbits, align 8
  store i64 %8, i64* %m, align 8
  %9 = load i64, i64* %m, align 8
  %add = add i64 %9, 7
  %div = udiv i64 %add, 8
  store i64 %div, i64* %m_bytes, align 8
  br label %do.body15

do.body15:                                        ; preds = %do.end
  %N = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %ecp_group, i32 0, i32 5
  %call16 = call i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef %diff_N_2, %struct.mbedtls_mpi* noundef %N, i64 noundef 2) #6
  store i32 %call16, i32* %ret, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %do.body15
  br label %cleanup

if.end20:                                         ; preds = %do.body15
  br label %do.end21

do.end21:                                         ; preds = %if.end20
  %10 = load i64, i64* %m_bytes, align 8
  %call22 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %10) #5
  %11 = load i8**, i8*** %data.addr, align 8
  store i8* %call22, i8** %11, align 8
  %12 = load i8**, i8*** %data.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %cmp23 = icmp eq i8* %13, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.end21
  store i32 -106, i32* %ret, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.end21
  br label %while.cond

while.cond:                                       ; preds = %do.end55, %if.end26
  %14 = load i32, i32* %key_out_of_range, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %16 = load i8**, i8*** %data.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %m_bytes, align 8
  %call27 = call i32 @psa_key_derivation_output_bytes(%struct.psa_key_derivation_s* noundef %15, i8* noundef %17, i64 noundef %18) #6
  store i32 %call27, i32* %status, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %while.body
  br label %cleanup

if.end31:                                         ; preds = %while.body
  %19 = load i64, i64* %m, align 8
  %rem = urem i64 %19, 8
  %cmp32 = icmp ne i64 %rem, 0
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end31
  %20 = load i64, i64* %m, align 8
  %rem35 = urem i64 %20, 8
  %sh_prom = trunc i64 %rem35 to i32
  %shl = shl i32 1, %sh_prom
  %sub = sub nsw i32 %shl, 1
  %conv36 = trunc i32 %sub to i8
  store i8 %conv36, i8* %clear_bit_mask, align 1
  %21 = load i8, i8* %clear_bit_mask, align 1
  %conv37 = zext i8 %21 to i32
  %22 = load i8**, i8*** %data.addr, align 8
  %23 = load i8*, i8** %22, align 8
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx, align 1
  %conv38 = zext i8 %24 to i32
  %and39 = and i32 %conv38, %conv37
  %conv40 = trunc i32 %and39 to i8
  store i8 %conv40, i8* %arrayidx, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.end31
  br label %do.body42

do.body42:                                        ; preds = %if.end41
  %25 = load i8**, i8*** %data.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %m_bytes, align 8
  %call43 = call i32 @mbedtls_mpi_read_binary(%struct.mbedtls_mpi* noundef %k, i8* noundef %26, i64 noundef %27) #6
  store i32 %call43, i32* %ret, align 4
  %cmp44 = icmp ne i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body42
  br label %cleanup

if.end47:                                         ; preds = %do.body42
  br label %do.end48

do.end48:                                         ; preds = %if.end47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  %call50 = call i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef %diff_N_2, %struct.mbedtls_mpi* noundef %k, i32* noundef %key_out_of_range) #6
  store i32 %call50, i32* %ret, align 4
  %cmp51 = icmp ne i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %do.body49
  br label %cleanup

if.end54:                                         ; preds = %do.body49
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %do.body56

do.body56:                                        ; preds = %while.end
  %call57 = call i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef %k, %struct.mbedtls_mpi* noundef %k, i64 noundef 1) #6
  store i32 %call57, i32* %ret, align 4
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body56
  br label %cleanup

if.end61:                                         ; preds = %do.body56
  br label %do.end62

do.end62:                                         ; preds = %if.end61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %28 = load i8**, i8*** %data.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %m_bytes, align 8
  %call64 = call i32 @mbedtls_mpi_write_binary(%struct.mbedtls_mpi* noundef %k, i8* noundef %29, i64 noundef %30) #6
  store i32 %call64, i32* %ret, align 4
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %do.body63
  br label %cleanup

if.end68:                                         ; preds = %do.body63
  br label %do.end69

do.end69:                                         ; preds = %if.end68
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then67, %if.then60, %if.then53, %if.then46, %if.then30, %if.then25, %if.then19, %if.then13, %if.then
  %31 = load i32, i32* %ret, align 4
  %cmp70 = icmp ne i32 %31, 0
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %cleanup
  %32 = load i32, i32* %ret, align 4
  %call73 = call i32 @mbedtls_to_psa_error(i32 noundef %32) #6
  store i32 %call73, i32* %status, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %cleanup
  %33 = load i32, i32* %status, align 4
  %cmp75 = icmp ne i32 %33, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  %34 = load i8**, i8*** %data.addr, align 8
  %35 = load i8*, i8** %34, align 8
  call void @free(i8* noundef %35) #5
  %36 = load i8**, i8*** %data.addr, align 8
  store i8* null, i8** %36, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %k) #6
  call void @mbedtls_mpi_free(%struct.mbedtls_mpi* noundef %diff_N_2) #6
  %37 = load i32, i32* %status, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_generate_derived_ecc_key_montgomery_helper(i64 noundef %bits, %struct.psa_key_derivation_s* noundef %operation, i8** noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %bits.addr = alloca i64, align 8
  %operation.addr = alloca %struct.psa_key_derivation_s*, align 8
  %data.addr = alloca i8**, align 8
  %output_length = alloca i64, align 8
  %status = alloca i32, align 4
  store i64 %bits, i64* %bits.addr, align 8
  store %struct.psa_key_derivation_s* %operation, %struct.psa_key_derivation_s** %operation.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32 -151, i32* %status, align 4
  %0 = load i64, i64* %bits.addr, align 8
  switch i64 %0, label %sw.default [
    i64 255, label %sw.bb
    i64 448, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i64 32, i64* %output_length, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i64 56, i64* %output_length, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %1 = load i64, i64* %output_length, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %1) #5
  %2 = load i8**, i8*** %data.addr, align 8
  store i8* %call, i8** %2, align 8
  %3 = load i8**, i8*** %data.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 -141, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.epilog
  %5 = load %struct.psa_key_derivation_s*, %struct.psa_key_derivation_s** %operation.addr, align 8
  %6 = load i8**, i8*** %data.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* %output_length, align 8
  %call2 = call i32 @psa_key_derivation_output_bytes(%struct.psa_key_derivation_s* noundef %5, i8* noundef %7, i64 noundef %8) #6
  store i32 %call2, i32* %status, align 4
  %9 = load i32, i32* %status, align 4
  %cmp3 = icmp ne i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %10 = load i32, i32* %status, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %bits.addr, align 8
  switch i64 %11, label %sw.default24 [
    i64 255, label %sw.bb6
    i64 448, label %sw.bb15
  ]

sw.bb6:                                           ; preds = %if.end5
  %12 = load i8**, i8*** %data.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 248
  %conv7 = trunc i32 %and to i8
  store i8 %conv7, i8* %arrayidx, align 1
  %15 = load i8**, i8*** %data.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %16, i64 31
  %17 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %17 to i32
  %and10 = and i32 %conv9, 127
  %conv11 = trunc i32 %and10 to i8
  store i8 %conv11, i8* %arrayidx8, align 1
  %18 = load i8**, i8*** %data.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %19, i64 31
  %20 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %20 to i32
  %or = or i32 %conv13, 64
  %conv14 = trunc i32 %or to i8
  store i8 %conv14, i8* %arrayidx12, align 1
  br label %sw.epilog25

sw.bb15:                                          ; preds = %if.end5
  %21 = load i8**, i8*** %data.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %23 to i32
  %and18 = and i32 %conv17, 252
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, i8* %arrayidx16, align 1
  %24 = load i8**, i8*** %data.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %25, i64 55
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %26 to i32
  %or22 = or i32 %conv21, 128
  %conv23 = trunc i32 %or22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  br label %sw.epilog25

sw.default24:                                     ; preds = %if.end5
  store i32 -151, i32* %retval, align 4
  br label %return

sw.epilog25:                                      ; preds = %sw.bb15, %sw.bb6
  %27 = load i32, i32* %status, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog25, %sw.default24, %if.then4, %if.then, %sw.default
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

declare dso_local void @mbedtls_ecp_group_init(%struct.mbedtls_ecp_group* noundef) #2

declare dso_local i32 @mbedtls_ecp_group_load(%struct.mbedtls_ecp_group* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_mpi_sub_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_mpi_lt_mpi_ct(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i32* noundef) #2

declare dso_local i32 @mbedtls_mpi_add_int(%struct.mbedtls_mpi* noundef, %struct.mbedtls_mpi* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_kdf_alg_supported(i32 noundef %kdf_alg) #0 {
entry:
  %retval = alloca i32, align 4
  %kdf_alg.addr = alloca i32, align 4
  store i32 %kdf_alg, i32* %kdf_alg.addr, align 4
  %0 = load i32, i32* %kdf_alg.addr, align 4
  %and = and i32 %0, -256
  %cmp = icmp eq i32 %and, 134217984
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %kdf_alg.addr, align 4
  %and1 = and i32 %1, -256
  %cmp2 = icmp eq i32 %and1, 134218752
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %kdf_alg.addr, align 4
  %and5 = and i32 %2, -256
  %cmp6 = icmp eq i32 %and5, 134219008
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %3 = load i32, i32* %kdf_alg.addr, align 4
  %and9 = and i32 %3, -256
  %cmp10 = icmp eq i32 %and9, 134218240
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  store i32 1, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %4 = load i32, i32* %kdf_alg.addr, align 4
  %and13 = and i32 %4, -256
  %cmp14 = icmp eq i32 %and13, 134218496
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hash_try_support(i32 noundef %alg) #0 {
entry:
  %alg.addr = alloca i32, align 4
  %operation = alloca %struct.psa_hash_operation_s, align 8
  %status = alloca i32, align 4
  store i32 %alg, i32* %alg.addr, align 4
  %0 = bitcast %struct.psa_hash_operation_s* %operation to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 232, i1 false)
  %1 = bitcast i8* %0 to { i32, [4 x i8], { i32, [220 x i8] } }*
  %2 = getelementptr inbounds { i32, [4 x i8], { i32, [220 x i8] } }, { i32, [4 x i8], { i32, [220 x i8] } }* %1, i32 0, i32 2
  %3 = load i32, i32* %alg.addr, align 4
  %call = call i32 @psa_hash_setup(%struct.psa_hash_operation_s* noundef %operation, i32 noundef %3) #6
  store i32 %call, i32* %status, align 4
  %call1 = call i32 @psa_hash_abort(%struct.psa_hash_operation_s* noundef %operation) #6
  %4 = load i32, i32* %status, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_derivation_check_input_type(i16 noundef zeroext %step, i16 noundef zeroext %key_type) #0 {
entry:
  %retval = alloca i32, align 4
  %step.addr = alloca i16, align 2
  %key_type.addr = alloca i16, align 2
  store i16 %step, i16* %step.addr, align 2
  store i16 %key_type, i16* %key_type.addr, align 2
  %0 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.epilog [
    i32 257, label %sw.bb
    i32 259, label %sw.bb8
    i32 513, label %sw.bb19
    i32 514, label %sw.bb19
    i32 515, label %sw.bb19
    i32 516, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i16, i16* %key_type.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv1, 4608
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %2 = load i16, i16* %key_type.addr, align 2
  %conv3 = zext i16 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %3 = load i16, i16* %key_type.addr, align 2
  %conv9 = zext i16 %3 to i32
  %cmp10 = icmp eq i32 %conv9, 4608
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb8
  store i32 0, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb8
  %4 = load i16, i16* %key_type.addr, align 2
  %conv14 = zext i16 %4 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  store i32 0, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry, %entry, %entry, %entry
  %5 = load i16, i16* %key_type.addr, align 2
  %conv20 = zext i16 %5 to i32
  %cmp21 = icmp eq i32 %conv20, 4097
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.bb19
  store i32 0, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %sw.bb19
  %6 = load i16, i16* %key_type.addr, align 2
  %conv25 = zext i16 %6 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store i32 0, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end24
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end29, %if.end18, %if.end7
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then28, %if.then23, %if.then17, %if.then12, %if.then6, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_hkdf_input(%struct.psa_hkdf_key_derivation_t* noundef %hkdf, i32 noundef %kdf_alg, i16 noundef zeroext %step, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %hkdf.addr = alloca %struct.psa_hkdf_key_derivation_t*, align 8
  %kdf_alg.addr = alloca i32, align 4
  %step.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %hash_alg = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.psa_hkdf_key_derivation_t* %hkdf, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  store i32 %kdf_alg, i32* %kdf_alg.addr, align 4
  store i16 %step, i16* %step.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load i32, i32* %kdf_alg.addr, align 4
  %and = and i32 %0, 255
  %or = or i32 33554432, %and
  store i32 %or, i32* %hash_alg, align 4
  %1 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 514, label %sw.bb
    i32 257, label %sw.bb13
    i32 515, label %sw.bb395
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %kdf_alg.addr, align 4
  %and1 = and i32 %2, -256
  %cmp = icmp eq i32 %and1, 134219008
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %3, i32 0, i32 4
  %bf.load = load i8, i8* %state, align 2
  %bf.clear = and i8 %bf.load, 3
  %bf.cast = zext i8 %bf.clear to i32
  %cmp3 = icmp ne i32 %bf.cast, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 -137, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %4, i32 0, i32 7
  %5 = load i32, i32* %hash_alg, align 4
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %hmac, i32 noundef %5, i8* noundef %6, i64 noundef %7) #6
  store i32 %call, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  %9 = load i32, i32* %status, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.else
  %10 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state10 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %10, i32 0, i32 4
  %bf.load11 = load i8, i8* %state10, align 2
  %bf.clear12 = and i8 %bf.load11, -4
  %bf.set = or i8 %bf.clear12, 1
  store i8 %bf.set, i8* %state10, align 2
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %entry
  %11 = load i32, i32* %kdf_alg.addr, align 4
  %and14 = and i32 %11, -256
  %cmp15 = icmp eq i32 %and14, 134219008
  br i1 %cmp15, label %if.then17, label %if.else129

if.then17:                                        ; preds = %sw.bb13
  %12 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state18 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %12, i32 0, i32 4
  %bf.load19 = load i8, i8* %state18, align 2
  %bf.clear20 = and i8 %bf.load19, 3
  %bf.cast21 = zext i8 %bf.clear20 to i32
  %cmp22 = icmp ne i32 %bf.cast21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then17
  store i32 -137, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then17
  %13 = load i64, i64* %data_length.addr, align 8
  %14 = load i32, i32* %hash_alg, align 4
  %and26 = and i32 %14, 255
  %or27 = or i32 33554432, %and26
  %cmp28 = icmp eq i32 %or27, 33554435
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end25
  br label %cond.end121

cond.false:                                       ; preds = %if.end25
  %15 = load i32, i32* %hash_alg, align 4
  %and30 = and i32 %15, 255
  %or31 = or i32 33554432, %and30
  %cmp32 = icmp eq i32 %or31, 33554436
  br i1 %cmp32, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.false
  br label %cond.end119

cond.false35:                                     ; preds = %cond.false
  %16 = load i32, i32* %hash_alg, align 4
  %and36 = and i32 %16, 255
  %or37 = or i32 33554432, %and36
  %cmp38 = icmp eq i32 %or37, 33554437
  br i1 %cmp38, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.false35
  br label %cond.end117

cond.false41:                                     ; preds = %cond.false35
  %17 = load i32, i32* %hash_alg, align 4
  %and42 = and i32 %17, 255
  %or43 = or i32 33554432, %and42
  %cmp44 = icmp eq i32 %or43, 33554440
  br i1 %cmp44, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.false41
  br label %cond.end115

cond.false47:                                     ; preds = %cond.false41
  %18 = load i32, i32* %hash_alg, align 4
  %and48 = and i32 %18, 255
  %or49 = or i32 33554432, %and48
  %cmp50 = icmp eq i32 %or49, 33554441
  br i1 %cmp50, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %cond.false47
  br label %cond.end113

cond.false53:                                     ; preds = %cond.false47
  %19 = load i32, i32* %hash_alg, align 4
  %and54 = and i32 %19, 255
  %or55 = or i32 33554432, %and54
  %cmp56 = icmp eq i32 %or55, 33554442
  br i1 %cmp56, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.false53
  br label %cond.end111

cond.false59:                                     ; preds = %cond.false53
  %20 = load i32, i32* %hash_alg, align 4
  %and60 = and i32 %20, 255
  %or61 = or i32 33554432, %and60
  %cmp62 = icmp eq i32 %or61, 33554443
  br i1 %cmp62, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.false59
  br label %cond.end109

cond.false65:                                     ; preds = %cond.false59
  %21 = load i32, i32* %hash_alg, align 4
  %and66 = and i32 %21, 255
  %or67 = or i32 33554432, %and66
  %cmp68 = icmp eq i32 %or67, 33554444
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %cond.false65
  br label %cond.end107

cond.false71:                                     ; preds = %cond.false65
  %22 = load i32, i32* %hash_alg, align 4
  %and72 = and i32 %22, 255
  %or73 = or i32 33554432, %and72
  %cmp74 = icmp eq i32 %or73, 33554445
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %cond.false71
  br label %cond.end105

cond.false77:                                     ; preds = %cond.false71
  %23 = load i32, i32* %hash_alg, align 4
  %and78 = and i32 %23, 255
  %or79 = or i32 33554432, %and78
  %cmp80 = icmp eq i32 %or79, 33554448
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.false77
  br label %cond.end103

cond.false83:                                     ; preds = %cond.false77
  %24 = load i32, i32* %hash_alg, align 4
  %and84 = and i32 %24, 255
  %or85 = or i32 33554432, %and84
  %cmp86 = icmp eq i32 %or85, 33554449
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.false83
  br label %cond.end101

cond.false89:                                     ; preds = %cond.false83
  %25 = load i32, i32* %hash_alg, align 4
  %and90 = and i32 %25, 255
  %or91 = or i32 33554432, %and90
  %cmp92 = icmp eq i32 %or91, 33554450
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.false89
  br label %cond.end

cond.false95:                                     ; preds = %cond.false89
  %26 = load i32, i32* %hash_alg, align 4
  %and96 = and i32 %26, 255
  %or97 = or i32 33554432, %and96
  %cmp98 = icmp eq i32 %or97, 33554451
  %27 = zext i1 %cmp98 to i64
  %cond = select i1 %cmp98, i32 64, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false95, %cond.true94
  %cond100 = phi i32 [ 48, %cond.true94 ], [ %cond, %cond.false95 ]
  br label %cond.end101

cond.end101:                                      ; preds = %cond.end, %cond.true88
  %cond102 = phi i32 [ 32, %cond.true88 ], [ %cond100, %cond.end ]
  br label %cond.end103

cond.end103:                                      ; preds = %cond.end101, %cond.true82
  %cond104 = phi i32 [ 28, %cond.true82 ], [ %cond102, %cond.end101 ]
  br label %cond.end105

cond.end105:                                      ; preds = %cond.end103, %cond.true76
  %cond106 = phi i32 [ 32, %cond.true76 ], [ %cond104, %cond.end103 ]
  br label %cond.end107

cond.end107:                                      ; preds = %cond.end105, %cond.true70
  %cond108 = phi i32 [ 28, %cond.true70 ], [ %cond106, %cond.end105 ]
  br label %cond.end109

cond.end109:                                      ; preds = %cond.end107, %cond.true64
  %cond110 = phi i32 [ 64, %cond.true64 ], [ %cond108, %cond.end107 ]
  br label %cond.end111

cond.end111:                                      ; preds = %cond.end109, %cond.true58
  %cond112 = phi i32 [ 48, %cond.true58 ], [ %cond110, %cond.end109 ]
  br label %cond.end113

cond.end113:                                      ; preds = %cond.end111, %cond.true52
  %cond114 = phi i32 [ 32, %cond.true52 ], [ %cond112, %cond.end111 ]
  br label %cond.end115

cond.end115:                                      ; preds = %cond.end113, %cond.true46
  %cond116 = phi i32 [ 28, %cond.true46 ], [ %cond114, %cond.end113 ]
  br label %cond.end117

cond.end117:                                      ; preds = %cond.end115, %cond.true40
  %cond118 = phi i32 [ 20, %cond.true40 ], [ %cond116, %cond.end115 ]
  br label %cond.end119

cond.end119:                                      ; preds = %cond.end117, %cond.true34
  %cond120 = phi i32 [ 20, %cond.true34 ], [ %cond118, %cond.end117 ]
  br label %cond.end121

cond.end121:                                      ; preds = %cond.end119, %cond.true
  %cond122 = phi i32 [ 16, %cond.true ], [ %cond120, %cond.end119 ]
  %conv123 = sext i32 %cond122 to i64
  %cmp124 = icmp ne i64 %13, %conv123
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %cond.end121
  store i32 -135, i32* %retval, align 4
  br label %return

if.end127:                                        ; preds = %cond.end121
  %28 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %prk = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %28, i32 0, i32 6
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %prk, i64 0, i64 0
  %29 = load i8*, i8** %data.addr, align 8
  %30 = load i64, i64* %data_length.addr, align 8
  %call128 = call i8* @memcpy(i8* noundef %arraydecay, i8* noundef %29, i64 noundef %30) #5
  br label %if.end175

if.else129:                                       ; preds = %sw.bb13
  %31 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state130 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %31, i32 0, i32 4
  %bf.load131 = load i8, i8* %state130, align 2
  %bf.clear132 = and i8 %bf.load131, 3
  %bf.cast133 = zext i8 %bf.clear132 to i32
  %cmp134 = icmp eq i32 %bf.cast133, 0
  br i1 %cmp134, label %if.then136, label %if.end152

if.then136:                                       ; preds = %if.else129
  %32 = load i32, i32* %kdf_alg.addr, align 4
  %and137 = and i32 %32, -256
  %cmp138 = icmp eq i32 %and137, 134218752
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.then136
  store i32 -137, i32* %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.then136
  %33 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac142 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %33, i32 0, i32 7
  %34 = load i32, i32* %hash_alg, align 4
  %call143 = call i32 @psa_key_derivation_start_hmac(%struct.psa_mac_operation_s* noundef %hmac142, i32 noundef %34, i8* noundef null, i64 noundef 0) #6
  store i32 %call143, i32* %status, align 4
  %35 = load i32, i32* %status, align 4
  %cmp144 = icmp ne i32 %35, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end141
  %36 = load i32, i32* %status, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

if.end147:                                        ; preds = %if.end141
  %37 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state148 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %37, i32 0, i32 4
  %bf.load149 = load i8, i8* %state148, align 2
  %bf.clear150 = and i8 %bf.load149, -4
  %bf.set151 = or i8 %bf.clear150, 1
  store i8 %bf.set151, i8* %state148, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.end147, %if.else129
  %38 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state153 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %38, i32 0, i32 4
  %bf.load154 = load i8, i8* %state153, align 2
  %bf.clear155 = and i8 %bf.load154, 3
  %bf.cast156 = zext i8 %bf.clear155 to i32
  %cmp157 = icmp ne i32 %bf.cast156, 1
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.end152
  store i32 -137, i32* %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.end152
  %39 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac161 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %39, i32 0, i32 7
  %40 = load i8*, i8** %data.addr, align 8
  %41 = load i64, i64* %data_length.addr, align 8
  %call162 = call i32 @psa_mac_update(%struct.psa_mac_operation_s* noundef %hmac161, i8* noundef %40, i64 noundef %41) #6
  store i32 %call162, i32* %status, align 4
  %42 = load i32, i32* %status, align 4
  %cmp163 = icmp ne i32 %42, 0
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end160
  %43 = load i32, i32* %status, align 4
  store i32 %43, i32* %retval, align 4
  br label %return

if.end166:                                        ; preds = %if.end160
  %44 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %hmac167 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %44, i32 0, i32 7
  %45 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %prk168 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %45, i32 0, i32 6
  %arraydecay169 = getelementptr inbounds [64 x i8], [64 x i8]* %prk168, i64 0, i64 0
  %call170 = call i32 @psa_mac_sign_finish(%struct.psa_mac_operation_s* noundef %hmac167, i8* noundef %arraydecay169, i64 noundef 64, i64* noundef %data_length.addr) #6
  store i32 %call170, i32* %status, align 4
  %46 = load i32, i32* %status, align 4
  %cmp171 = icmp ne i32 %46, 0
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end166
  %47 = load i32, i32* %status, align 4
  store i32 %47, i32* %retval, align 4
  br label %return

if.end174:                                        ; preds = %if.end166
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end127
  %48 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state176 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %48, i32 0, i32 4
  %bf.load177 = load i8, i8* %state176, align 2
  %bf.clear178 = and i8 %bf.load177, -4
  %bf.set179 = or i8 %bf.clear178, 2
  store i8 %bf.set179, i8* %state176, align 2
  %49 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %block_number = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %49, i32 0, i32 3
  store i8 0, i8* %block_number, align 1
  %50 = load i32, i32* %kdf_alg.addr, align 4
  %and180 = and i32 %50, -256
  %cmp181 = icmp eq i32 %and180, 134218752
  br i1 %cmp181, label %if.then183, label %if.else290

if.then183:                                       ; preds = %if.end175
  %51 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %output_block = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %51, i32 0, i32 5
  %arraydecay184 = getelementptr inbounds [64 x i8], [64 x i8]* %output_block, i64 0, i64 0
  %52 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %prk185 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %52, i32 0, i32 6
  %arraydecay186 = getelementptr inbounds [64 x i8], [64 x i8]* %prk185, i64 0, i64 0
  %53 = load i32, i32* %hash_alg, align 4
  %and187 = and i32 %53, 255
  %or188 = or i32 33554432, %and187
  %cmp189 = icmp eq i32 %or188, 33554435
  br i1 %cmp189, label %cond.true191, label %cond.false192

cond.true191:                                     ; preds = %if.then183
  br label %cond.end286

cond.false192:                                    ; preds = %if.then183
  %54 = load i32, i32* %hash_alg, align 4
  %and193 = and i32 %54, 255
  %or194 = or i32 33554432, %and193
  %cmp195 = icmp eq i32 %or194, 33554436
  br i1 %cmp195, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %cond.false192
  br label %cond.end284

cond.false198:                                    ; preds = %cond.false192
  %55 = load i32, i32* %hash_alg, align 4
  %and199 = and i32 %55, 255
  %or200 = or i32 33554432, %and199
  %cmp201 = icmp eq i32 %or200, 33554437
  br i1 %cmp201, label %cond.true203, label %cond.false204

cond.true203:                                     ; preds = %cond.false198
  br label %cond.end282

cond.false204:                                    ; preds = %cond.false198
  %56 = load i32, i32* %hash_alg, align 4
  %and205 = and i32 %56, 255
  %or206 = or i32 33554432, %and205
  %cmp207 = icmp eq i32 %or206, 33554440
  br i1 %cmp207, label %cond.true209, label %cond.false210

cond.true209:                                     ; preds = %cond.false204
  br label %cond.end280

cond.false210:                                    ; preds = %cond.false204
  %57 = load i32, i32* %hash_alg, align 4
  %and211 = and i32 %57, 255
  %or212 = or i32 33554432, %and211
  %cmp213 = icmp eq i32 %or212, 33554441
  br i1 %cmp213, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %cond.false210
  br label %cond.end278

cond.false216:                                    ; preds = %cond.false210
  %58 = load i32, i32* %hash_alg, align 4
  %and217 = and i32 %58, 255
  %or218 = or i32 33554432, %and217
  %cmp219 = icmp eq i32 %or218, 33554442
  br i1 %cmp219, label %cond.true221, label %cond.false222

cond.true221:                                     ; preds = %cond.false216
  br label %cond.end276

cond.false222:                                    ; preds = %cond.false216
  %59 = load i32, i32* %hash_alg, align 4
  %and223 = and i32 %59, 255
  %or224 = or i32 33554432, %and223
  %cmp225 = icmp eq i32 %or224, 33554443
  br i1 %cmp225, label %cond.true227, label %cond.false228

cond.true227:                                     ; preds = %cond.false222
  br label %cond.end274

cond.false228:                                    ; preds = %cond.false222
  %60 = load i32, i32* %hash_alg, align 4
  %and229 = and i32 %60, 255
  %or230 = or i32 33554432, %and229
  %cmp231 = icmp eq i32 %or230, 33554444
  br i1 %cmp231, label %cond.true233, label %cond.false234

cond.true233:                                     ; preds = %cond.false228
  br label %cond.end272

cond.false234:                                    ; preds = %cond.false228
  %61 = load i32, i32* %hash_alg, align 4
  %and235 = and i32 %61, 255
  %or236 = or i32 33554432, %and235
  %cmp237 = icmp eq i32 %or236, 33554445
  br i1 %cmp237, label %cond.true239, label %cond.false240

cond.true239:                                     ; preds = %cond.false234
  br label %cond.end270

cond.false240:                                    ; preds = %cond.false234
  %62 = load i32, i32* %hash_alg, align 4
  %and241 = and i32 %62, 255
  %or242 = or i32 33554432, %and241
  %cmp243 = icmp eq i32 %or242, 33554448
  br i1 %cmp243, label %cond.true245, label %cond.false246

cond.true245:                                     ; preds = %cond.false240
  br label %cond.end268

cond.false246:                                    ; preds = %cond.false240
  %63 = load i32, i32* %hash_alg, align 4
  %and247 = and i32 %63, 255
  %or248 = or i32 33554432, %and247
  %cmp249 = icmp eq i32 %or248, 33554449
  br i1 %cmp249, label %cond.true251, label %cond.false252

cond.true251:                                     ; preds = %cond.false246
  br label %cond.end266

cond.false252:                                    ; preds = %cond.false246
  %64 = load i32, i32* %hash_alg, align 4
  %and253 = and i32 %64, 255
  %or254 = or i32 33554432, %and253
  %cmp255 = icmp eq i32 %or254, 33554450
  br i1 %cmp255, label %cond.true257, label %cond.false258

cond.true257:                                     ; preds = %cond.false252
  br label %cond.end264

cond.false258:                                    ; preds = %cond.false252
  %65 = load i32, i32* %hash_alg, align 4
  %and259 = and i32 %65, 255
  %or260 = or i32 33554432, %and259
  %cmp261 = icmp eq i32 %or260, 33554451
  %66 = zext i1 %cmp261 to i64
  %cond263 = select i1 %cmp261, i32 64, i32 0
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false258, %cond.true257
  %cond265 = phi i32 [ 48, %cond.true257 ], [ %cond263, %cond.false258 ]
  br label %cond.end266

cond.end266:                                      ; preds = %cond.end264, %cond.true251
  %cond267 = phi i32 [ 32, %cond.true251 ], [ %cond265, %cond.end264 ]
  br label %cond.end268

cond.end268:                                      ; preds = %cond.end266, %cond.true245
  %cond269 = phi i32 [ 28, %cond.true245 ], [ %cond267, %cond.end266 ]
  br label %cond.end270

cond.end270:                                      ; preds = %cond.end268, %cond.true239
  %cond271 = phi i32 [ 32, %cond.true239 ], [ %cond269, %cond.end268 ]
  br label %cond.end272

cond.end272:                                      ; preds = %cond.end270, %cond.true233
  %cond273 = phi i32 [ 28, %cond.true233 ], [ %cond271, %cond.end270 ]
  br label %cond.end274

cond.end274:                                      ; preds = %cond.end272, %cond.true227
  %cond275 = phi i32 [ 64, %cond.true227 ], [ %cond273, %cond.end272 ]
  br label %cond.end276

cond.end276:                                      ; preds = %cond.end274, %cond.true221
  %cond277 = phi i32 [ 48, %cond.true221 ], [ %cond275, %cond.end274 ]
  br label %cond.end278

cond.end278:                                      ; preds = %cond.end276, %cond.true215
  %cond279 = phi i32 [ 32, %cond.true215 ], [ %cond277, %cond.end276 ]
  br label %cond.end280

cond.end280:                                      ; preds = %cond.end278, %cond.true209
  %cond281 = phi i32 [ 28, %cond.true209 ], [ %cond279, %cond.end278 ]
  br label %cond.end282

cond.end282:                                      ; preds = %cond.end280, %cond.true203
  %cond283 = phi i32 [ 20, %cond.true203 ], [ %cond281, %cond.end280 ]
  br label %cond.end284

cond.end284:                                      ; preds = %cond.end282, %cond.true197
  %cond285 = phi i32 [ 20, %cond.true197 ], [ %cond283, %cond.end282 ]
  br label %cond.end286

cond.end286:                                      ; preds = %cond.end284, %cond.true191
  %cond287 = phi i32 [ 16, %cond.true191 ], [ %cond285, %cond.end284 ]
  %conv288 = sext i32 %cond287 to i64
  %call289 = call i8* @memcpy(i8* noundef %arraydecay184, i8* noundef %arraydecay186, i64 noundef %conv288) #5
  %67 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %67, i32 0, i32 2
  store i8 0, i8* %offset_in_block, align 8
  br label %if.end394

if.else290:                                       ; preds = %if.end175
  %68 = load i32, i32* %hash_alg, align 4
  %and291 = and i32 %68, 255
  %or292 = or i32 33554432, %and291
  %cmp293 = icmp eq i32 %or292, 33554435
  br i1 %cmp293, label %cond.true295, label %cond.false296

cond.true295:                                     ; preds = %if.else290
  br label %cond.end390

cond.false296:                                    ; preds = %if.else290
  %69 = load i32, i32* %hash_alg, align 4
  %and297 = and i32 %69, 255
  %or298 = or i32 33554432, %and297
  %cmp299 = icmp eq i32 %or298, 33554436
  br i1 %cmp299, label %cond.true301, label %cond.false302

cond.true301:                                     ; preds = %cond.false296
  br label %cond.end388

cond.false302:                                    ; preds = %cond.false296
  %70 = load i32, i32* %hash_alg, align 4
  %and303 = and i32 %70, 255
  %or304 = or i32 33554432, %and303
  %cmp305 = icmp eq i32 %or304, 33554437
  br i1 %cmp305, label %cond.true307, label %cond.false308

cond.true307:                                     ; preds = %cond.false302
  br label %cond.end386

cond.false308:                                    ; preds = %cond.false302
  %71 = load i32, i32* %hash_alg, align 4
  %and309 = and i32 %71, 255
  %or310 = or i32 33554432, %and309
  %cmp311 = icmp eq i32 %or310, 33554440
  br i1 %cmp311, label %cond.true313, label %cond.false314

cond.true313:                                     ; preds = %cond.false308
  br label %cond.end384

cond.false314:                                    ; preds = %cond.false308
  %72 = load i32, i32* %hash_alg, align 4
  %and315 = and i32 %72, 255
  %or316 = or i32 33554432, %and315
  %cmp317 = icmp eq i32 %or316, 33554441
  br i1 %cmp317, label %cond.true319, label %cond.false320

cond.true319:                                     ; preds = %cond.false314
  br label %cond.end382

cond.false320:                                    ; preds = %cond.false314
  %73 = load i32, i32* %hash_alg, align 4
  %and321 = and i32 %73, 255
  %or322 = or i32 33554432, %and321
  %cmp323 = icmp eq i32 %or322, 33554442
  br i1 %cmp323, label %cond.true325, label %cond.false326

cond.true325:                                     ; preds = %cond.false320
  br label %cond.end380

cond.false326:                                    ; preds = %cond.false320
  %74 = load i32, i32* %hash_alg, align 4
  %and327 = and i32 %74, 255
  %or328 = or i32 33554432, %and327
  %cmp329 = icmp eq i32 %or328, 33554443
  br i1 %cmp329, label %cond.true331, label %cond.false332

cond.true331:                                     ; preds = %cond.false326
  br label %cond.end378

cond.false332:                                    ; preds = %cond.false326
  %75 = load i32, i32* %hash_alg, align 4
  %and333 = and i32 %75, 255
  %or334 = or i32 33554432, %and333
  %cmp335 = icmp eq i32 %or334, 33554444
  br i1 %cmp335, label %cond.true337, label %cond.false338

cond.true337:                                     ; preds = %cond.false332
  br label %cond.end376

cond.false338:                                    ; preds = %cond.false332
  %76 = load i32, i32* %hash_alg, align 4
  %and339 = and i32 %76, 255
  %or340 = or i32 33554432, %and339
  %cmp341 = icmp eq i32 %or340, 33554445
  br i1 %cmp341, label %cond.true343, label %cond.false344

cond.true343:                                     ; preds = %cond.false338
  br label %cond.end374

cond.false344:                                    ; preds = %cond.false338
  %77 = load i32, i32* %hash_alg, align 4
  %and345 = and i32 %77, 255
  %or346 = or i32 33554432, %and345
  %cmp347 = icmp eq i32 %or346, 33554448
  br i1 %cmp347, label %cond.true349, label %cond.false350

cond.true349:                                     ; preds = %cond.false344
  br label %cond.end372

cond.false350:                                    ; preds = %cond.false344
  %78 = load i32, i32* %hash_alg, align 4
  %and351 = and i32 %78, 255
  %or352 = or i32 33554432, %and351
  %cmp353 = icmp eq i32 %or352, 33554449
  br i1 %cmp353, label %cond.true355, label %cond.false356

cond.true355:                                     ; preds = %cond.false350
  br label %cond.end370

cond.false356:                                    ; preds = %cond.false350
  %79 = load i32, i32* %hash_alg, align 4
  %and357 = and i32 %79, 255
  %or358 = or i32 33554432, %and357
  %cmp359 = icmp eq i32 %or358, 33554450
  br i1 %cmp359, label %cond.true361, label %cond.false362

cond.true361:                                     ; preds = %cond.false356
  br label %cond.end368

cond.false362:                                    ; preds = %cond.false356
  %80 = load i32, i32* %hash_alg, align 4
  %and363 = and i32 %80, 255
  %or364 = or i32 33554432, %and363
  %cmp365 = icmp eq i32 %or364, 33554451
  %81 = zext i1 %cmp365 to i64
  %cond367 = select i1 %cmp365, i32 64, i32 0
  br label %cond.end368

cond.end368:                                      ; preds = %cond.false362, %cond.true361
  %cond369 = phi i32 [ 48, %cond.true361 ], [ %cond367, %cond.false362 ]
  br label %cond.end370

cond.end370:                                      ; preds = %cond.end368, %cond.true355
  %cond371 = phi i32 [ 32, %cond.true355 ], [ %cond369, %cond.end368 ]
  br label %cond.end372

cond.end372:                                      ; preds = %cond.end370, %cond.true349
  %cond373 = phi i32 [ 28, %cond.true349 ], [ %cond371, %cond.end370 ]
  br label %cond.end374

cond.end374:                                      ; preds = %cond.end372, %cond.true343
  %cond375 = phi i32 [ 32, %cond.true343 ], [ %cond373, %cond.end372 ]
  br label %cond.end376

cond.end376:                                      ; preds = %cond.end374, %cond.true337
  %cond377 = phi i32 [ 28, %cond.true337 ], [ %cond375, %cond.end374 ]
  br label %cond.end378

cond.end378:                                      ; preds = %cond.end376, %cond.true331
  %cond379 = phi i32 [ 64, %cond.true331 ], [ %cond377, %cond.end376 ]
  br label %cond.end380

cond.end380:                                      ; preds = %cond.end378, %cond.true325
  %cond381 = phi i32 [ 48, %cond.true325 ], [ %cond379, %cond.end378 ]
  br label %cond.end382

cond.end382:                                      ; preds = %cond.end380, %cond.true319
  %cond383 = phi i32 [ 32, %cond.true319 ], [ %cond381, %cond.end380 ]
  br label %cond.end384

cond.end384:                                      ; preds = %cond.end382, %cond.true313
  %cond385 = phi i32 [ 28, %cond.true313 ], [ %cond383, %cond.end382 ]
  br label %cond.end386

cond.end386:                                      ; preds = %cond.end384, %cond.true307
  %cond387 = phi i32 [ 20, %cond.true307 ], [ %cond385, %cond.end384 ]
  br label %cond.end388

cond.end388:                                      ; preds = %cond.end386, %cond.true301
  %cond389 = phi i32 [ 20, %cond.true301 ], [ %cond387, %cond.end386 ]
  br label %cond.end390

cond.end390:                                      ; preds = %cond.end388, %cond.true295
  %cond391 = phi i32 [ 16, %cond.true295 ], [ %cond389, %cond.end388 ]
  %conv392 = trunc i32 %cond391 to i8
  %82 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %offset_in_block393 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %82, i32 0, i32 2
  store i8 %conv392, i8* %offset_in_block393, align 8
  br label %if.end394

if.end394:                                        ; preds = %cond.end390, %cond.end286
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb395:                                         ; preds = %entry
  %83 = load i32, i32* %kdf_alg.addr, align 4
  %and396 = and i32 %83, -256
  %cmp397 = icmp eq i32 %and396, 134218752
  br i1 %cmp397, label %if.then399, label %if.end400

if.then399:                                       ; preds = %sw.bb395
  store i32 -135, i32* %retval, align 4
  br label %return

if.end400:                                        ; preds = %sw.bb395
  %84 = load i32, i32* %kdf_alg.addr, align 4
  %and401 = and i32 %84, -256
  %cmp402 = icmp eq i32 %and401, 134219008
  br i1 %cmp402, label %land.lhs.true, label %if.end411

land.lhs.true:                                    ; preds = %if.end400
  %85 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state404 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %85, i32 0, i32 4
  %bf.load405 = load i8, i8* %state404, align 2
  %bf.clear406 = and i8 %bf.load405, 3
  %bf.cast407 = zext i8 %bf.clear406 to i32
  %cmp408 = icmp eq i32 %bf.cast407, 0
  br i1 %cmp408, label %if.then410, label %if.end411

if.then410:                                       ; preds = %land.lhs.true
  store i32 -137, i32* %retval, align 4
  br label %return

if.end411:                                        ; preds = %land.lhs.true, %if.end400
  %86 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %state412 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %86, i32 0, i32 4
  %bf.load413 = load i8, i8* %state412, align 2
  %bf.clear414 = and i8 %bf.load413, 3
  %bf.cast415 = zext i8 %bf.clear414 to i32
  %cmp416 = icmp eq i32 %bf.cast415, 3
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %if.end411
  store i32 -137, i32* %retval, align 4
  br label %return

if.end419:                                        ; preds = %if.end411
  %87 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info_set = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %87, i32 0, i32 4
  %bf.load420 = load i8, i8* %info_set, align 2
  %bf.lshr = lshr i8 %bf.load420, 2
  %bf.clear421 = and i8 %bf.lshr, 1
  %bf.cast422 = zext i8 %bf.clear421 to i32
  %tobool = icmp ne i32 %bf.cast422, 0
  br i1 %tobool, label %if.then423, label %if.end424

if.then423:                                       ; preds = %if.end419
  store i32 -137, i32* %retval, align 4
  br label %return

if.end424:                                        ; preds = %if.end419
  %88 = load i64, i64* %data_length.addr, align 8
  %89 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info_length = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %89, i32 0, i32 1
  store i64 %88, i64* %info_length, align 8
  %90 = load i64, i64* %data_length.addr, align 8
  %cmp425 = icmp ne i64 %90, 0
  br i1 %cmp425, label %if.then427, label %if.end436

if.then427:                                       ; preds = %if.end424
  %91 = load i64, i64* %data_length.addr, align 8
  %call428 = call noalias i8* @calloc(i64 noundef 1, i64 noundef %91) #5
  %92 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %92, i32 0, i32 0
  store i8* %call428, i8** %info, align 8
  %93 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info429 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %93, i32 0, i32 0
  %94 = load i8*, i8** %info429, align 8
  %cmp430 = icmp eq i8* %94, null
  br i1 %cmp430, label %if.then432, label %if.end433

if.then432:                                       ; preds = %if.then427
  store i32 -141, i32* %retval, align 4
  br label %return

if.end433:                                        ; preds = %if.then427
  %95 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info434 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %95, i32 0, i32 0
  %96 = load i8*, i8** %info434, align 8
  %97 = load i8*, i8** %data.addr, align 8
  %98 = load i64, i64* %data_length.addr, align 8
  %call435 = call i8* @memcpy(i8* noundef %96, i8* noundef %97, i64 noundef %98) #5
  br label %if.end436

if.end436:                                        ; preds = %if.end433, %if.end424
  %99 = load %struct.psa_hkdf_key_derivation_t*, %struct.psa_hkdf_key_derivation_t** %hkdf.addr, align 8
  %info_set437 = getelementptr inbounds %struct.psa_hkdf_key_derivation_t, %struct.psa_hkdf_key_derivation_t* %99, i32 0, i32 4
  %bf.load438 = load i8, i8* %info_set437, align 2
  %bf.clear439 = and i8 %bf.load438, -5
  %bf.set440 = or i8 %bf.clear439, 4
  store i8 %bf.set440, i8* %info_set437, align 2
  store i32 0, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.end436, %if.then432, %if.then423, %if.then418, %if.then410, %if.then399, %if.end394, %if.then173, %if.then165, %if.then159, %if.then146, %if.then140, %if.then126, %if.then24, %if.end9, %if.then8, %if.then5, %if.then
  %100 = load i32, i32* %retval, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_input(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i16 noundef zeroext %step, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 516, label %sw.bb
    i32 257, label %sw.bb1
    i32 513, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_tls12_prf_set_seed(%struct.psa_tls12_prf_key_derivation_s* noundef %1, i8* noundef %2, i64 noundef %3) #6
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_length.addr, align 8
  %call2 = call i32 @psa_tls12_prf_set_key(%struct.psa_tls12_prf_key_derivation_s* noundef %4, i8* noundef %5, i64 noundef %6) #6
  store i32 %call2, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i64, i64* %data_length.addr, align 8
  %call4 = call i32 @psa_tls12_prf_set_label(%struct.psa_tls12_prf_key_derivation_s* noundef %7, i8* noundef %8, i64 noundef %9) #6
  store i32 %call4, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -135, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_psk_to_ms_input(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i16 noundef zeroext %step, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %step.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i16 %step, i16* %step.addr, align 2
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load i16, i16* %step.addr, align 2
  %conv = zext i16 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 257, label %sw.bb
    i32 259, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call i32 @psa_tls12_prf_psk_to_ms_set_key(%struct.psa_tls12_prf_key_derivation_s* noundef %1, i8* noundef %2, i64 noundef %3) #6
  store i32 %call, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_length.addr, align 8
  %call2 = call i32 @psa_tls12_prf_psk_to_ms_set_other_key(%struct.psa_tls12_prf_key_derivation_s* noundef %4, i8* noundef %5, i64 noundef %6) #6
  store i32 %call2, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %8 = load i16, i16* %step.addr, align 2
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %data_length.addr, align 8
  %call3 = call i32 @psa_tls12_prf_input(%struct.psa_tls12_prf_key_derivation_s* noundef %7, i16 noundef zeroext %8, i8* noundef %9, i64 noundef %10) #6
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_set_seed(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %3) #5
  %4 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %seed = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %4, i32 0, i32 5
  store i8* %call, i8** %seed, align 8
  %5 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %seed3 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %5, i32 0, i32 5
  %6 = load i8*, i8** %seed3, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i32 -141, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %seed7 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %7, i32 0, i32 5
  %8 = load i8*, i8** %seed7, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %data_length.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10) #5
  %11 = load i64, i64* %data_length.addr, align 8
  %12 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %seed_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %12, i32 0, i32 6
  store i64 %11, i64* %seed_length, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %if.end
  %13 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state10 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %13, i32 0, i32 2
  store i32 1, i32* %state10, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_set_key(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state1 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %2, i32 0, i32 2
  %3 = load i32, i32* %state1, align 4
  %cmp2 = icmp ne i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %data_length.addr, align 8
  %cmp3 = icmp ne i64 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %5 = load i64, i64* %data_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %5) #5
  %6 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %6, i32 0, i32 3
  store i8* %call, i8** %secret, align 8
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %secret5 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %7, i32 0, i32 3
  %8 = load i8*, i8** %secret5, align 8
  %cmp6 = icmp eq i8* %8, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store i32 -141, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then4
  %9 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %secret9 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %9, i32 0, i32 3
  %10 = load i8*, i8** %secret9, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %12 = load i64, i64* %data_length.addr, align 8
  %call10 = call i8* @memcpy(i8* noundef %10, i8* noundef %11, i64 noundef %12) #5
  %13 = load i64, i64* %data_length.addr, align 8
  %14 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %14, i32 0, i32 4
  store i64 %13, i64* %secret_length, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end
  %15 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state12 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %15, i32 0, i32 2
  store i32 3, i32* %state12, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then7, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_set_label(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %3) #5
  %4 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %label = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %4, i32 0, i32 7
  store i8* %call, i8** %label, align 8
  %5 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %label3 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %5, i32 0, i32 7
  %6 = load i8*, i8** %label3, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i32 -141, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %label7 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %7, i32 0, i32 7
  %8 = load i8*, i8** %label7, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %data_length.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10) #5
  %11 = load i64, i64* %data_length.addr, align 8
  %12 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %label_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %12, i32 0, i32 8
  store i64 %11, i64* %label_length, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %if.end
  %13 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state10 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %13, i32 0, i32 2
  store i32 4, i32* %state10, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_psk_to_ms_set_key(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %pms_len = alloca i64, align 8
  %pms = alloca i8*, align 8
  %cur = alloca i8*, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %data_length.addr, align 8
  %add = add i64 4, %2
  %3 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %3, i32 0, i32 10
  %4 = load i64, i64* %other_secret_length, align 8
  %add1 = add i64 %add, %4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %data_length.addr, align 8
  %mul = mul i64 2, %5
  %add2 = add i64 4, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add1, %cond.true ], [ %add2, %cond.false ]
  store i64 %cond, i64* %pms_len, align 8
  %6 = load i64, i64* %data_length.addr, align 8
  %cmp3 = icmp ugt i64 %6, 128
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -135, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load i64, i64* %pms_len, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %7) #5
  store i8* %call, i8** %pms, align 8
  %8 = load i8*, i8** %pms, align 8
  %cmp4 = icmp eq i8* %8, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -141, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = load i8*, i8** %pms, align 8
  store i8* %9, i8** %cur, align 8
  %10 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state7 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %10, i32 0, i32 2
  %11 = load i32, i32* %state7, align 4
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  %12 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length10 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %12, i32 0, i32 10
  %13 = load i64, i64* %other_secret_length10, align 8
  %shr = lshr i64 %13, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %14 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %cur, align 8
  store i8 %conv, i8* %14, align 1
  %15 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length11 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %15, i32 0, i32 10
  %16 = load i64, i64* %other_secret_length11, align 8
  %and12 = and i64 %16, 255
  %conv13 = trunc i64 %and12 to i8
  %17 = load i8*, i8** %cur, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr14, i8** %cur, align 8
  store i8 %conv13, i8* %17, align 1
  %18 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length15 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %18, i32 0, i32 10
  %19 = load i64, i64* %other_secret_length15, align 8
  %cmp16 = icmp ne i64 %19, 0
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.then9
  %20 = load i8*, i8** %cur, align 8
  %21 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %21, i32 0, i32 9
  %22 = load i8*, i8** %other_secret, align 8
  %23 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length19 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %23, i32 0, i32 10
  %24 = load i64, i64* %other_secret_length19, align 8
  %call20 = call i8* @memcpy(i8* noundef %20, i8* noundef %22, i64 noundef %24) #5
  %25 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret21 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %25, i32 0, i32 9
  %26 = load i8*, i8** %other_secret21, align 8
  %27 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length22 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %27, i32 0, i32 10
  %28 = load i64, i64* %other_secret_length22, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %26, i64 noundef %28) #6
  %29 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length23 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %29, i32 0, i32 10
  %30 = load i64, i64* %other_secret_length23, align 8
  %31 = load i8*, i8** %cur, align 8
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %add.ptr, i8** %cur, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.then9
  br label %if.end34

if.else:                                          ; preds = %if.end6
  %32 = load i64, i64* %data_length.addr, align 8
  %shr25 = lshr i64 %32, 8
  %and26 = and i64 %shr25, 255
  %conv27 = trunc i64 %and26 to i8
  %33 = load i8*, i8** %cur, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr28, i8** %cur, align 8
  store i8 %conv27, i8* %33, align 1
  %34 = load i64, i64* %data_length.addr, align 8
  %and29 = and i64 %34, 255
  %conv30 = trunc i64 %and29 to i8
  %35 = load i8*, i8** %cur, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr31, i8** %cur, align 8
  store i8 %conv30, i8* %35, align 1
  %36 = load i8*, i8** %cur, align 8
  %37 = load i64, i64* %data_length.addr, align 8
  %call32 = call i8* @memset(i8* noundef %36, i32 noundef 0, i64 noundef %37) #5
  %38 = load i64, i64* %data_length.addr, align 8
  %39 = load i8*, i8** %cur, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %add.ptr33, i8** %cur, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end24
  %40 = load i64, i64* %data_length.addr, align 8
  %shr35 = lshr i64 %40, 8
  %and36 = and i64 %shr35, 255
  %conv37 = trunc i64 %and36 to i8
  %41 = load i8*, i8** %cur, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr38, i8** %cur, align 8
  store i8 %conv37, i8* %41, align 1
  %42 = load i64, i64* %data_length.addr, align 8
  %and39 = and i64 %42, 255
  %conv40 = trunc i64 %and39 to i8
  %43 = load i8*, i8** %cur, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr41, i8** %cur, align 8
  store i8 %conv40, i8* %43, align 1
  %44 = load i8*, i8** %cur, align 8
  %45 = load i8*, i8** %data.addr, align 8
  %46 = load i64, i64* %data_length.addr, align 8
  %call42 = call i8* @memcpy(i8* noundef %44, i8* noundef %45, i64 noundef %46) #5
  %47 = load i64, i64* %data_length.addr, align 8
  %48 = load i8*, i8** %cur, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %add.ptr43, i8** %cur, align 8
  %49 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %50 = load i8*, i8** %pms, align 8
  %51 = load i8*, i8** %cur, align 8
  %52 = load i8*, i8** %pms, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %52 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call44 = call i32 @psa_tls12_prf_set_key(%struct.psa_tls12_prf_key_derivation_s* noundef %49, i8* noundef %50, i64 noundef %sub.ptr.sub) #6
  store i32 %call44, i32* %status, align 4
  %53 = load i8*, i8** %pms, align 8
  %54 = load i64, i64* %pms_len, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %53, i64 noundef %54) #6
  %55 = load i8*, i8** %pms, align 8
  call void @free(i8* noundef %55) #5
  %56 = load i32, i32* %status, align 4
  store i32 %56, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then5, %if.then
  %57 = load i32, i32* %retval, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_tls12_prf_psk_to_ms_set_other_key(%struct.psa_tls12_prf_key_derivation_s* noundef %prf, i8* noundef %data, i64 noundef %data_length) #0 {
entry:
  %retval = alloca i32, align 4
  %prf.addr = alloca %struct.psa_tls12_prf_key_derivation_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_length.addr = alloca i64, align 8
  store %struct.psa_tls12_prf_key_derivation_s* %prf, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_length, i64* %data_length.addr, align 8
  %0 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %0, i32 0, i32 2
  %1 = load i32, i32* %state, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -137, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %data_length.addr, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %data_length.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef 1, i64 noundef %3) #5
  %4 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %4, i32 0, i32 9
  store i8* %call, i8** %other_secret, align 8
  %5 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret3 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %5, i32 0, i32 9
  %6 = load i8*, i8** %other_secret3, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i32 -141, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %7 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret7 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %7, i32 0, i32 9
  %8 = load i8*, i8** %other_secret7, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %data_length.addr, align 8
  %call8 = call i8* @memcpy(i8* noundef %8, i8* noundef %9, i64 noundef %10) #5
  %11 = load i64, i64* %data_length.addr, align 8
  %12 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %12, i32 0, i32 10
  store i64 %11, i64* %other_secret_length, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %13 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %other_secret_length9 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %13, i32 0, i32 10
  store i64 0, i64* %other_secret_length9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end6
  %14 = load %struct.psa_tls12_prf_key_derivation_s*, %struct.psa_tls12_prf_key_derivation_s** %prf.addr, align 8
  %state11 = getelementptr inbounds %struct.psa_tls12_prf_key_derivation_s, %struct.psa_tls12_prf_key_derivation_s* %14, i32 0, i32 2
  store i32 2, i32* %state11, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then5, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext, i64 noundef, i8* noundef, i64 noundef, %struct.mbedtls_ecp_keypair** noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psa_key_agreement_ecdh(i8* noundef %peer_key, i64 noundef %peer_key_length, %struct.mbedtls_ecp_keypair* noundef %our_key, i8* noundef %shared_secret, i64 noundef %shared_secret_size, i64* noundef %shared_secret_length) #0 {
entry:
  %peer_key.addr = alloca i8*, align 8
  %peer_key_length.addr = alloca i64, align 8
  %our_key.addr = alloca %struct.mbedtls_ecp_keypair*, align 8
  %shared_secret.addr = alloca i8*, align 8
  %shared_secret_size.addr = alloca i64, align 8
  %shared_secret_length.addr = alloca i64*, align 8
  %their_key = alloca %struct.mbedtls_ecp_keypair*, align 8
  %ecdh = alloca %struct.mbedtls_ecdh_context, align 8
  %status = alloca i32, align 4
  %bits = alloca i64, align 8
  %curve = alloca i8, align 1
  store i8* %peer_key, i8** %peer_key.addr, align 8
  store i64 %peer_key_length, i64* %peer_key_length.addr, align 8
  store %struct.mbedtls_ecp_keypair* %our_key, %struct.mbedtls_ecp_keypair** %our_key.addr, align 8
  store i8* %shared_secret, i8** %shared_secret.addr, align 8
  store i64 %shared_secret_size, i64* %shared_secret_size.addr, align 8
  store i64* %shared_secret_length, i64** %shared_secret_length.addr, align 8
  store %struct.mbedtls_ecp_keypair* null, %struct.mbedtls_ecp_keypair** %their_key, align 8
  store i64 0, i64* %bits, align 8
  %0 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %our_key.addr, align 8
  %grp = getelementptr inbounds %struct.mbedtls_ecp_keypair, %struct.mbedtls_ecp_keypair* %0, i32 0, i32 0
  %id = getelementptr inbounds %struct.mbedtls_ecp_group, %struct.mbedtls_ecp_group* %grp, i32 0, i32 0
  %1 = load i32, i32* %id, align 8
  %call = call zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef %1, i64* noundef %bits) #6
  store i8 %call, i8* %curve, align 1
  call void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef %ecdh) #6
  %2 = load i8, i8* %curve, align 1
  %conv = zext i8 %2 to i32
  %or = or i32 16640, %conv
  %conv1 = trunc i32 %or to i16
  %3 = load i64, i64* %bits, align 8
  %4 = load i8*, i8** %peer_key.addr, align 8
  %5 = load i64, i64* %peer_key_length.addr, align 8
  %call2 = call i32 @mbedtls_psa_ecp_load_representation(i16 noundef zeroext %conv1, i64 noundef %3, i8* noundef %4, i64 noundef %5, %struct.mbedtls_ecp_keypair** noundef %their_key) #6
  store i32 %call2, i32* %status, align 4
  %6 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %7 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %their_key, align 8
  %call4 = call i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef %ecdh, %struct.mbedtls_ecp_keypair* noundef %7, i32 noundef 1) #6
  %call5 = call i32 @mbedtls_to_psa_error(i32 noundef %call4) #6
  store i32 %call5, i32* %status, align 4
  %8 = load i32, i32* %status, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %exit

if.end9:                                          ; preds = %if.end
  %9 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %our_key.addr, align 8
  %call10 = call i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef %ecdh, %struct.mbedtls_ecp_keypair* noundef %9, i32 noundef 0) #6
  %call11 = call i32 @mbedtls_to_psa_error(i32 noundef %call10) #6
  store i32 %call11, i32* %status, align 4
  %10 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %10, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %exit

if.end15:                                         ; preds = %if.end9
  %11 = load i64*, i64** %shared_secret_length.addr, align 8
  %12 = load i8*, i8** %shared_secret.addr, align 8
  %13 = load i64, i64* %shared_secret_size.addr, align 8
  %call16 = call i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef %ecdh, i64* noundef %11, i8* noundef %12, i64 noundef %13, i32 (i8*, i8*, i64)* noundef @mbedtls_ctr_drbg_random, i8* noundef getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056)) #6
  %call17 = call i32 @mbedtls_to_psa_error(i32 noundef %call16) #6
  store i32 %call17, i32* %status, align 4
  %14 = load i32, i32* %status, align 4
  %cmp18 = icmp ne i32 %14, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  br label %exit

if.end21:                                         ; preds = %if.end15
  %15 = load i64, i64* %bits, align 8
  %add = add i64 %15, 7
  %div = udiv i64 %add, 8
  %16 = load i64*, i64** %shared_secret_length.addr, align 8
  %17 = load i64, i64* %16, align 8
  %cmp22 = icmp ne i64 %div, %17
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 -151, i32* %status, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %exit

exit:                                             ; preds = %if.end25, %if.then20, %if.then14, %if.then8, %if.then
  %18 = load i32, i32* %status, align 4
  %cmp26 = icmp ne i32 %18, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %exit
  %19 = load i8*, i8** %shared_secret.addr, align 8
  %20 = load i64, i64* %shared_secret_size.addr, align 8
  call void @mbedtls_platform_zeroize(i8* noundef %19, i64 noundef %20) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %exit
  call void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef %ecdh) #6
  %21 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %their_key, align 8
  call void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef %21) #6
  %22 = load %struct.mbedtls_ecp_keypair*, %struct.mbedtls_ecp_keypair** %their_key, align 8
  %23 = bitcast %struct.mbedtls_ecp_keypair* %22 to i8*
  call void @free(i8* noundef %23) #5
  %24 = load i32, i32* %status, align 4
  ret i32 %24
}

declare dso_local void @mbedtls_ecp_keypair_free(%struct.mbedtls_ecp_keypair* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mbedtls_ecc_group_to_psa(i32 noundef %grpid, i64* noundef %bits) #0 {
entry:
  %retval = alloca i8, align 1
  %grpid.addr = alloca i32, align 4
  %bits.addr = alloca i64*, align 8
  store i32 %grpid, i32* %grpid.addr, align 4
  store i64* %bits, i64** %bits.addr, align 8
  %0 = load i32, i32* %grpid.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb8
    i32 10, label %sw.bb9
    i32 11, label %sw.bb10
    i32 12, label %sw.bb11
    i32 13, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i64*, i64** %bits.addr, align 8
  store i64 192, i64* %1, align 8
  store i8 18, i8* %retval, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i64*, i64** %bits.addr, align 8
  store i64 224, i64* %2, align 8
  store i8 18, i8* %retval, align 1
  br label %return

sw.bb2:                                           ; preds = %entry
  %3 = load i64*, i64** %bits.addr, align 8
  store i64 256, i64* %3, align 8
  store i8 18, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %4 = load i64*, i64** %bits.addr, align 8
  store i64 384, i64* %4, align 8
  store i8 18, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %entry
  %5 = load i64*, i64** %bits.addr, align 8
  store i64 521, i64* %5, align 8
  store i8 18, i8* %retval, align 1
  br label %return

sw.bb5:                                           ; preds = %entry
  %6 = load i64*, i64** %bits.addr, align 8
  store i64 256, i64* %6, align 8
  store i8 48, i8* %retval, align 1
  br label %return

sw.bb6:                                           ; preds = %entry
  %7 = load i64*, i64** %bits.addr, align 8
  store i64 384, i64* %7, align 8
  store i8 48, i8* %retval, align 1
  br label %return

sw.bb7:                                           ; preds = %entry
  %8 = load i64*, i64** %bits.addr, align 8
  store i64 512, i64* %8, align 8
  store i8 48, i8* %retval, align 1
  br label %return

sw.bb8:                                           ; preds = %entry
  %9 = load i64*, i64** %bits.addr, align 8
  store i64 255, i64* %9, align 8
  store i8 65, i8* %retval, align 1
  br label %return

sw.bb9:                                           ; preds = %entry
  %10 = load i64*, i64** %bits.addr, align 8
  store i64 192, i64* %10, align 8
  store i8 23, i8* %retval, align 1
  br label %return

sw.bb10:                                          ; preds = %entry
  %11 = load i64*, i64** %bits.addr, align 8
  store i64 224, i64* %11, align 8
  store i8 23, i8* %retval, align 1
  br label %return

sw.bb11:                                          ; preds = %entry
  %12 = load i64*, i64** %bits.addr, align 8
  store i64 256, i64* %12, align 8
  store i8 23, i8* %retval, align 1
  br label %return

sw.bb12:                                          ; preds = %entry
  %13 = load i64*, i64** %bits.addr, align 8
  store i64 448, i64* %13, align 8
  store i8 65, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  %14 = load i64*, i64** %bits.addr, align 8
  store i64 0, i64* %14, align 8
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %15 = load i8, i8* %retval, align 1
  ret i8 %15
}

declare dso_local void @mbedtls_ecdh_init(%struct.mbedtls_ecdh_context* noundef) #2

declare dso_local i32 @mbedtls_ecdh_get_params(%struct.mbedtls_ecdh_context* noundef, %struct.mbedtls_ecp_keypair* noundef, i32 noundef) #2

declare dso_local i32 @mbedtls_ecdh_calc_secret(%struct.mbedtls_ecdh_context* noundef, i64* noundef, i8* noundef, i64 noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef) #2

declare dso_local void @mbedtls_ecdh_free(%struct.mbedtls_ecdh_context* noundef) #2

declare dso_local void @mbedtls_des_key_set_parity(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_psa_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %p_rng) #0 {
entry:
  %p_rng.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  store %struct.mbedtls_ctr_drbg_context* %p_rng, %struct.mbedtls_ctr_drbg_context** %p_rng.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %p_rng.addr, align 8
  call void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef %0) #6
  ret void
}

declare dso_local void @mbedtls_ctr_drbg_free(%struct.mbedtls_ctr_drbg_context* noundef) #2

declare dso_local void @mbedtls_entropy_init(%struct.mbedtls_entropy_context* noundef) #2

declare dso_local void @mbedtls_entropy_free(%struct.mbedtls_entropy_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbedtls_psa_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %p_rng) #0 {
entry:
  %p_rng.addr = alloca %struct.mbedtls_ctr_drbg_context*, align 8
  store %struct.mbedtls_ctr_drbg_context* %p_rng, %struct.mbedtls_ctr_drbg_context** %p_rng.addr, align 8
  %0 = load %struct.mbedtls_ctr_drbg_context*, %struct.mbedtls_ctr_drbg_context** %p_rng.addr, align 8
  call void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef %0) #6
  ret void
}

declare dso_local void @mbedtls_ctr_drbg_init(%struct.mbedtls_ctr_drbg_context* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbedtls_psa_drbg_seed(%struct.mbedtls_entropy_context* noundef %entropy, i8* noundef %custom, i64 noundef %len) #0 {
entry:
  %entropy.addr = alloca %struct.mbedtls_entropy_context*, align 8
  %custom.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.mbedtls_entropy_context* %entropy, %struct.mbedtls_entropy_context** %entropy.addr, align 8
  store i8* %custom, i8** %custom.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.mbedtls_entropy_context*, %struct.mbedtls_entropy_context** %entropy.addr, align 8
  %1 = bitcast %struct.mbedtls_entropy_context* %0 to i8*
  %2 = load i8*, i8** %custom.addr, align 8
  %3 = load i64, i64* %len.addr, align 8
  %call = call i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef bitcast (i8* getelementptr (i8, i8* getelementptr inbounds (%struct.psa_global_data_t, %struct.psa_global_data_t* @global_data, i32 0, i32 0), i64 1056) to %struct.mbedtls_ctr_drbg_context*), i32 (i8*, i8*, i64)* noundef @mbedtls_entropy_func, i8* noundef %1, i8* noundef %2, i64 noundef %3) #6
  ret i32 %call
}

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.mbedtls_ctr_drbg_context* noundef, i32 (i8*, i8*, i64)* noundef, i8* noundef, i8* noundef, i64 noundef) #2

declare dso_local i32 @mbedtls_entropy_func(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
