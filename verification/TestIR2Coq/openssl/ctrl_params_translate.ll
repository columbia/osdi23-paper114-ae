; ModuleID = 'crypto/evp/ctrl_params_translate.c'
source_filename = "crypto/evp/ctrl_params_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.translation_st = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* }
%struct.translation_ctx_st = type { %struct.evp_pkey_ctx_st*, i32, i32, i8*, i32, i32, i8*, i64, %struct.ossl_param_st*, i8*, [50 x i8], i8*, i8*, i64 }
%struct.evp_pkey_ctx_st = type { i32, %struct.ossl_lib_ctx_st*, i8*, i8*, %struct.evp_keymgmt_st*, %union.anon, %struct.anon.4, i8*, i32 (%struct.evp_pkey_ctx_st*)*, i32*, i32, i32, %struct.evp_pkey_method_st*, %struct.engine_st*, %struct.evp_pkey_st*, %struct.evp_pkey_st*, i8*, i8, %struct.bignum_st* }
%struct.ossl_lib_ctx_st = type opaque
%struct.evp_keymgmt_st = type opaque
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.evp_keyexch_st*, i8* }
%struct.evp_keyexch_st = type opaque
%struct.anon.4 = type { i8*, i8*, i64, i8 }
%struct.evp_pkey_method_st = type { i32, i32, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st*)*, void (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i32, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_pkey_ctx_st*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i64*)*, i32 (%struct.evp_pkey_ctx_st*, i32, i32, i8*)*, i32 (%struct.evp_pkey_ctx_st*, i8*, i8*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*, i64, i8*, i64)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_st*)*, i32 (%struct.evp_pkey_ctx_st*, %struct.evp_md_ctx_st*)* }
%struct.evp_md_ctx_st = type opaque
%struct.engine_st = type opaque
%struct.evp_pkey_st = type { i32, i32, %struct.evp_pkey_asn1_method_st*, %struct.engine_st*, %struct.engine_st*, %union.legacy_pkey_st, %union.legacy_pkey_st, i32, i8*, %struct.stack_st_X509_ATTRIBUTE*, i32, i8, %struct.crypto_ex_data_st, %struct.evp_keymgmt_st*, i8*, i64, %struct.stack_st_OP_CACHE_ELEM*, i64, %struct.anon.5 }
%struct.evp_pkey_asn1_method_st = type opaque
%union.legacy_pkey_st = type { i8* }
%struct.stack_st_X509_ATTRIBUTE = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.stack_st_OP_CACHE_ELEM = type opaque
%struct.anon.5 = type { i32, i32, i32 }
%struct.bignum_st = type opaque
%struct.ossl_param_st = type { i8*, i32, i8*, i64, i64 }
%struct.kdf_type_map_st = type { i32, i8* }
%struct.ossl_item_st = type { i32, i8* }
%struct.asn1_object_st = type opaque
%struct.dh_named_group_st = type opaque
%struct.evp_md_st = type { i32, i32, i32, i64, i32, i32 (%struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*, i8*, i64)*, i32 (%struct.evp_md_ctx_st*, i8*)*, i32 (%struct.evp_md_ctx_st*, %struct.evp_md_ctx_st*)*, i32 (%struct.evp_md_ctx_st*)*, i32, i32, i32 (%struct.evp_md_ctx_st*, i32, i32, i8*)*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64, i8*, i64*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.ossl_provider_st = type opaque
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8*, i32, i8*, i8*, %struct.ossl_provider_st*, i32, i8*, i8* (i8*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64, i8*, i64, %struct.ossl_param_st*)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, i32 (i8*, i8*, i64*, i64)*, i32 (i8*, i8*, i64*, i64, i8*, i64)*, void (i8*)*, i8* (i8*)*, i32 (%struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, i32 (i8*, %struct.ossl_param_st*)*, %struct.ossl_param_st* (i8*)*, %struct.ossl_param_st* (i8*, i8*)*, %struct.ossl_param_st* (i8*, i8*)* }
%struct.evp_cipher_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.dh_st = type opaque
%struct.ec_key_st = type opaque
%struct.ec_group_st = type opaque
%struct.dsa_st = type opaque
%struct.bignum_ctx = type opaque
%struct.ec_point_st = type opaque
%struct.rsa_st = type opaque

@.str = private unnamed_addr constant [35 x i8] c"crypto/evp/ctrl_params_translate.c\00", align 1
@__func__.evp_pkey_ctx_ctrl_to_param = private unnamed_addr constant [27 x i8] c"evp_pkey_ctx_ctrl_to_param\00", align 1
@__func__.default_fixup_args = private unnamed_addr constant [19 x i8] c"default_fixup_args\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[action:%d, state:%d]\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"[action:%d, state:%d] trying to get a BIGNUM via ctrl call\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[action:%d, state:%d] only setting allowed\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[action:%d, state:%d] name=%s, value=%s\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"[action:%d, state:%d] unknown OSSL_PARAM data type %d\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"[action:%d, state:%d] unsupported OSSL_PARAM data type %d\00", align 1
@__func__.default_check = private unnamed_addr constant [14 x i8] c"default_check\00", align 1
@evp_pkey_ctx_translations = internal constant [71 x %struct.translation_st] [%struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 7, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 17, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 7, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_distid_len }, %struct.translation_st { i32 0, i32 920, i32 0, i32 2048, i32 4102, i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_kdf_type }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4103, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4104, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4105, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4106, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4107, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4108, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 7, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2048, i32 4109, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_oid }, %struct.translation_st { i32 1, i32 920, i32 0, i32 2048, i32 4110, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_oid }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_paramgen_type }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4097, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 6, i32 4111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 6, i32 4099, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_nid5114 }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_paramgen_type }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4097, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 28, i32 0, i32 6, i32 4111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_nid }, %struct.translation_st { i32 2, i32 28, i32 0, i32 6, i32 4099, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_dh_nid5114 }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2, i32 4098, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 1, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 920, i32 0, i32 2, i32 4100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 28, i32 0, i32 2048, i32 4112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4097, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4098, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 116, i32 0, i32 2, i32 4099, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 408, i32 0, i32 6, i32 4098, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_ec_param_enc }, %struct.translation_st { i32 2, i32 408, i32 0, i32 6, i32 4097, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_ec_paramgen_curve_nid }, %struct.translation_st { i32 0, i32 408, i32 0, i32 2048, i32 4099, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_ecdh_cofactor }, %struct.translation_st { i32 0, i32 408, i32 0, i32 2048, i32 4100, i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_ec_kdf_type }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4102, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4103, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4104, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 408, i32 0, i32 2048, i32 4105, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 408, i32 0, i32 2048, i32 4106, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 7, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 2032, i32 4097, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_rsa_padding_mode }, %struct.translation_st { i32 1, i32 6, i32 912, i32 2032, i32 4102, i8* null, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_rsa_padding_mode }, %struct.translation_st { i32 2, i32 6, i32 912, i32 2032, i32 4101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 1, i32 6, i32 912, i32 2032, i32 4104, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 6, i32 912, i32 496, i32 4098, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_rsa_pss_saltlen }, %struct.translation_st { i32 1, i32 6, i32 912, i32 496, i32 4103, i8* null, i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_rsa_pss_saltlen }, %struct.translation_st { i32 2, i32 6, i32 0, i32 1536, i32 4105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 1, i32 6, i32 0, i32 1536, i32 4107, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 6, i32 0, i32 1536, i32 4106, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 1, i32 6, i32 0, i32 1536, i32 4108, i8* null, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 4101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 912, i32 0, i32 6, i32 4098, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 1, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 6, i32 912, i32 4, i32 4099, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 6, i32 0, i32 4, i32 4100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 6, i32 0, i32 4, i32 4109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4096, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4097, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4098, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4099, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 1, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_hkdf_mode }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 2048, i32 4109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 1540, i32 12, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_cipher }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 4, i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 5, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* null }, %struct.translation_st { i32 2, i32 -1, i32 -1, i32 496, i32 1, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 496, i32 13, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @fix_md }], align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"distid\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hexdistid\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"kdf-type\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"kdf-digest\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"kdf-outlen\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"kdf-ukm\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"cekalg\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"dh_paramgen_type\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"dh_paramgen_prime_len\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pbits\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"dh_param\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"dh_rfc5114\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"dh_paramgen_generator\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"safeprime-generator\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"dh_paramgen_subprime_len\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"qbits\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"dh_pad\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"dsa_paramgen_bits\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"dsa_paramgen_q_bits\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"dsa_paramgen_md\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"ec_paramgen_curve\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"ecdh_cofactor_mode\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"ecdh-cofactor-mode\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"ecdh_kdf_md\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"rsa_padding_mode\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pad-mode\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"rsa_mgf1_md\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"mgf1-digest\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"rsa_pss_saltlen\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"saltlen\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"rsa_oaep_md\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"rsa_oaep_label\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"oaep-label\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"rsa_pss_keygen_md\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_mgf1_md\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"rsa_pss_keygen_saltlen\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"rsa_keygen_bits\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"rsa_keygen_pubexp\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"rsa_keygen_primes\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"digestsize\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"hexsecret\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"hexseed\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"hexsalt\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"hexkey\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"hexinfo\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"hexpass\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"maxmem_bytes\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@fix_dh_kdf_type.kdf_type_map = internal constant [3 x %struct.kdf_type_map_st] [%struct.kdf_type_map_st { i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0) }, %struct.kdf_type_map_st { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0) }, %struct.kdf_type_map_st zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"X942KDF-ASN1\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@__func__.fix_ec_param_enc = private unnamed_addr constant [17 x i8] c"fix_ec_param_enc\00", align 1
@fix_ec_kdf_type.kdf_type_map = internal constant [3 x %struct.kdf_type_map_st] [%struct.kdf_type_map_st { i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i32 0, i32 0) }, %struct.kdf_type_map_st { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0) }, %struct.kdf_type_map_st zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [8 x i8] c"X963KDF\00", align 1
@fix_rsa_padding_mode.str_value_map = internal unnamed_addr constant [7 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0) }, %struct.ossl_item_st { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0) }, %struct.ossl_item_st { i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0) }, %struct.ossl_item_st { i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0) }, %struct.ossl_item_st { i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0) }, %struct.ossl_item_st { i32 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0) }, %struct.ossl_item_st { i32 7, i8* null }], align 16
@.str.84 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"oaep\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"oeap\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"x931\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"pss\00", align 1
@__func__.fix_rsa_padding_mode = private unnamed_addr constant [21 x i8] c"fix_rsa_padding_mode\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"[action:%d, state:%d] padding number %d\00", align 1
@.str.91 = private unnamed_addr constant [38 x i8] c"[action:%d, state:%d] padding name %s\00", align 1
@fix_rsa_pss_saltlen.str_value_map = internal unnamed_addr constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0) }, %struct.ossl_item_st { i32 -3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0) }, %struct.ossl_item_st { i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0) }], align 16
@.str.92 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@fix_hkdf_mode.str_value_map = internal unnamed_addr constant [3 x %struct.ossl_item_st] [%struct.ossl_item_st { i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0) }, %struct.ossl_item_st { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i32 0, i32 0) }, %struct.ossl_item_st { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }], align 16
@.str.95 = private unnamed_addr constant [19 x i8] c"EXTRACT_AND_EXPAND\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"EXTRACT_ONLY\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"EXPAND_ONLY\00", align 1
@evp_pkey_translations = internal constant [39 x %struct.translation_st] [%struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 4, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_payload_group_name }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_payload_private_key }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.98, i32 0, i32 0), i32 0, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_payload_public_key }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.75, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_dh_dsa_payload_p }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_dh_dsa_payload_g }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_dh_dsa_payload_q }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_n }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.101, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_d }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.111, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_f10 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.116, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.119, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.121, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_e10 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c1 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.123, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c2 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.124, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c3 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.125, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c4 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.126, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c5 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c6 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.128, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c7 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.129, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c8 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.130, i32 0, i32 0), i32 2, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_rsa_payload_c9 }, %struct.translation_st { i32 1, i32 -1, i32 -1, i32 -1, i32 0, i8* null, i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.131, i32 0, i32 0), i32 1, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @get_ec_decoded_from_explicit_params }], align 16
@.str.98 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"rsa-factor1\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"rsa-factor2\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"rsa-factor3\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"rsa-factor4\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"rsa-factor5\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"rsa-factor6\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"rsa-factor7\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"rsa-factor8\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"rsa-factor9\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"rsa-factor10\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"rsa-exponent1\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"rsa-exponent2\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"rsa-exponent3\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"rsa-exponent4\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"rsa-exponent5\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"rsa-exponent6\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"rsa-exponent7\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"rsa-exponent8\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"rsa-exponent9\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"rsa-exponent10\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"rsa-coefficient1\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"rsa-coefficient2\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"rsa-coefficient3\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"rsa-coefficient4\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"rsa-coefficient5\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"rsa-coefficient6\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"rsa-coefficient7\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"rsa-coefficient8\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"rsa-coefficient9\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"decoded-from-explicit\00", align 1
@__func__.get_payload_group_name = private unnamed_addr constant [23 x i8] c"get_payload_group_name\00", align 1
@__func__.get_payload_private_key = private unnamed_addr constant [24 x i8] c"get_payload_private_key\00", align 1
@__func__.get_payload_public_key = private unnamed_addr constant [23 x i8] c"get_payload_public_key\00", align 1
@__func__.get_dh_dsa_payload_p = private unnamed_addr constant [21 x i8] c"get_dh_dsa_payload_p\00", align 1
@__func__.get_ec_decoded_from_explicit_params = private unnamed_addr constant [36 x i8] c"get_ec_decoded_from_explicit_params\00", align 1
@switch.table.fix_rsa_pss_saltlen = private unnamed_addr constant [3 x i64] [i64 1, i64 2, i64 0], align 8

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_ctrl_to_param(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %keytype, i32 noundef %optype, i32 noundef %cmd, i32 noundef %p1, i8* noundef %p2) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.translation_ctx_st* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 3
  %2 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 128, i1 false)
  %3 = bitcast %struct.translation_st* %tmpl to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %4) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  %cmp = icmp eq i32 %keytype, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 11
  %5 = load i32, i32* %legacy_keytype, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %keytype.addr.0 = phi i32 [ %5, %if.then ], [ %keytype, %entry ]
  %ctrl_num = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 4
  store i32 %cmd, i32* %ctrl_num, align 8, !tbaa !12
  %keytype2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 2
  store i32 %keytype.addr.0, i32* %keytype2, align 8, !tbaa !14
  %keytype1 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 1
  store i32 %keytype.addr.0, i32* %keytype1, align 4, !tbaa !15
  %optype1 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 3
  store i32 %optype, i32* %optype1, align 4, !tbaa !16
  %call = call fastcc %struct.translation_st* @lookup_evp_pkey_ctx_translation(%struct.translation_st* noundef nonnull %tmpl) #10
  %cmp2 = icmp eq %struct.translation_st* %call, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 2520, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.evp_pkey_ctx_ctrl_to_param, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pmeth = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 12
  %6 = load %struct.evp_pkey_method_st*, %struct.evp_pkey_method_st** %pmeth, align 8, !tbaa !17
  %cmp5.not = icmp eq %struct.evp_pkey_method_st* %6, null
  br i1 %cmp5.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end4
  %pkey_id = getelementptr inbounds %struct.evp_pkey_method_st, %struct.evp_pkey_method_st* %6, i64 0, i32 0
  %7 = load i32, i32* %pkey_id, align 8, !tbaa !18
  %keytype17 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 1
  %8 = load i32, i32* %keytype17, align 4, !tbaa !15
  %cmp8.not = icmp eq i32 %7, %8
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %keytype212 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 2
  %9 = load i32, i32* %keytype212, align 8, !tbaa !14
  %cmp13.not = icmp eq i32 %7, %9
  br i1 %cmp13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %land.lhs.true9, %land.lhs.true, %if.end4
  %fixup_args = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 9
  %10 = load i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)*, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)** %fixup_args, align 8, !tbaa !20
  %cmp16.not = icmp eq i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %10, null
  %spec.select = select i1 %cmp16.not, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @default_fixup_args, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %10
  %action_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 0
  %11 = load i32, i32* %action_type, align 8, !tbaa !21
  %action_type20 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  store i32 %11, i32* %action_type20, align 8, !tbaa !22
  %ctrl_cmd = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 2
  store i32 %cmd, i32* %ctrl_cmd, align 4, !tbaa !24
  %p121 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %p1, i32* %p121, align 4, !tbaa !25
  %p222 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %p2, i8** %p222, align 8, !tbaa !26
  %pctx23 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_pkey_ctx_st* %pctx, %struct.evp_pkey_ctx_st** %pctx23, align 8, !tbaa !27
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params24 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  store %struct.ossl_param_st* %arraydecay, %struct.ossl_param_st** %params24, align 8, !tbaa !28
  %call25 = call i32 %spec.select(i32 noundef 1, %struct.translation_st* noundef nonnull %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.end15
  %12 = load i32, i32* %action_type20, align 8, !tbaa !22
  switch i32 %12, label %if.then36 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.then27
  %13 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params24, align 8, !tbaa !28
  %call30 = call i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, %struct.ossl_param_st* noundef %13) #11
  br label %if.end34

sw.bb31:                                          ; preds = %if.then27
  %14 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params24, align 8, !tbaa !28
  %call33 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, %struct.ossl_param_st* noundef %14) #11
  br label %if.end34

if.end34:                                         ; preds = %sw.bb, %sw.bb31
  %ret.0 = phi i32 [ %call33, %sw.bb31 ], [ %call30, %sw.bb ]
  %cmp35 = icmp sgt i32 %ret.0, 0
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.then27, %if.end34
  %ret.074 = phi i32 [ %ret.0, %if.end34 ], [ %call25, %if.then27 ]
  store i32 %ret.074, i32* %p121, align 4, !tbaa !25
  %call38 = call i32 %spec.select(i32 noundef 2, %struct.translation_st* noundef nonnull %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  %15 = load i32, i32* %p121, align 4, !tbaa !25
  br label %if.end40

if.end40:                                         ; preds = %if.end15, %if.then36, %if.end34
  %ret.1 = phi i32 [ %15, %if.then36 ], [ %ret.0, %if.end34 ], [ %call25, %if.end15 ]
  call fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true9, %if.end40, %if.then3
  %retval.0 = phi i32 [ -2, %if.then3 ], [ %ret.1, %if.end40 ], [ -1, %land.lhs.true9 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %4) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) unnamed_addr #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %tmp111 = alloca %struct.ossl_param_st, align 8
  %tmp119 = alloca %struct.ossl_param_st, align 8
  %tmp125 = alloca %struct.ossl_param_st, align 8
  %tmp132 = alloca %struct.ossl_param_st, align 8
  %tmp139 = alloca %struct.ossl_param_st, align 8
  %tmp146 = alloca %struct.ossl_param_st, align 8
  %exists = alloca i32, align 4
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup332, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %state, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb151
    i32 4, label %sw.bb163
    i32 5, label %cleanup332
    i32 0, label %sw.bb215
    i32 8, label %sw.bb215
    i32 7, label %land.lhs.true218
  ]

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786689, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %0, i32 noundef %state) #11
  br label %cleanup332

sw.bb:                                            ; preds = %if.end
  %action_type1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %1 = load i32, i32* %action_type1, align 8, !tbaa !22
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %sw.bb
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %2 = load i32, i32* %action_type1, align 8, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %2, i32 noundef 1) #11
  br label %cleanup332

if.end5:                                          ; preds = %sw.bb
  %optype = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 3
  %3 = load i32, i32* %optype, align 4, !tbaa !16
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.end85, label %if.then7

if.then7:                                         ; preds = %if.end5
  %pctx = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  %4 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !27
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 0
  %5 = load i32, i32* %operation, align 8, !tbaa !29
  switch i32 %5, label %if.end85 [
    i32 16, label %land.lhs.true
    i32 128, label %land.lhs.true
    i32 32, label %land.lhs.true
    i32 256, label %land.lhs.true
    i32 64, label %land.lhs.true
    i32 2048, label %land.lhs.true30
    i32 512, label %land.lhs.true43
    i32 1024, label %land.lhs.true43
    i32 4096, label %land.lhs.true56
    i32 8192, label %land.lhs.true56
    i32 2, label %land.lhs.true69
    i32 4, label %land.lhs.true69
    i32 8, label %land.lhs.true77
  ]

land.lhs.true:                                    ; preds = %if.then7, %if.then7, %if.then7, %if.then7, %if.then7
  %6 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !30
  %cmp25 = icmp eq i8* %7, null
  br i1 %cmp25, label %if.then83, label %if.end85

land.lhs.true30:                                  ; preds = %if.then7
  %algctx33 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5, i32 0, i32 1
  %8 = load i8*, i8** %algctx33, align 8, !tbaa !30
  %cmp34 = icmp eq i8* %8, null
  br i1 %cmp34, label %if.then83, label %if.end85

land.lhs.true43:                                  ; preds = %if.then7, %if.then7
  %9 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8, !tbaa !30
  %cmp47 = icmp eq i8* %10, null
  br i1 %cmp47, label %if.then83, label %if.end85

land.lhs.true56:                                  ; preds = %if.then7, %if.then7
  %11 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8, !tbaa !30
  %cmp60 = icmp eq i8* %12, null
  br i1 %cmp60, label %if.then83, label %if.end85

land.lhs.true69:                                  ; preds = %if.then7, %if.then7
  %op71 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5
  %genctx = bitcast %union.anon* %op71 to i8**
  %13 = load i8*, i8** %genctx, align 8, !tbaa !30
  %cmp72 = icmp eq i8* %13, null
  br i1 %cmp72, label %if.then83, label %if.end85

land.lhs.true77:                                  ; preds = %if.then7
  %op79 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %4, i64 0, i32 5
  %genctx81 = bitcast %union.anon* %op79 to i8**
  %14 = load i8*, i8** %genctx81, align 8, !tbaa !30
  %cmp82 = icmp eq i8* %14, null
  br i1 %cmp82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %land.lhs.true77, %land.lhs.true69, %land.lhs.true56, %land.lhs.true43, %land.lhs.true30, %land.lhs.true
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #11
  br label %cleanup332

if.end85:                                         ; preds = %land.lhs.true56, %land.lhs.true43, %land.lhs.true, %if.then7, %land.lhs.true30, %land.lhs.true69, %land.lhs.true77, %if.end5
  %param_data_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %15 = load i32, i32* %param_data_type, align 8, !tbaa !31
  switch i32 %15, label %cleanup332 [
    i32 1, label %sw.bb86
    i32 2, label %sw.bb87
    i32 4, label %sw.bb123
    i32 6, label %sw.bb130
    i32 5, label %sw.bb137
    i32 7, label %sw.bb144
  ]

sw.bb86:                                          ; preds = %if.end85
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %16 = bitcast %struct.ossl_param_st** %params to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !28
  %18 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %18) #9
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %19 = load i8*, i8** %param_key, align 8, !tbaa !32
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef %19, i32* noundef nonnull %p1) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %17, i8* noundef nonnull align 8 dereferenceable(40) %18, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %18) #9
  br label %cleanup332

sw.bb87:                                          ; preds = %if.end85
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %20 = load i8*, i8** %p2, align 8, !tbaa !26
  %cmp88.not = icmp eq i8* %20, null
  br i1 %cmp88.not, label %if.else117, label %if.then89

if.then89:                                        ; preds = %sw.bb87
  %cmp91 = icmp eq i32 %1, 2
  br i1 %cmp91, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then89
  %21 = bitcast i8* %20 to %struct.bignum_st*
  %call94 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %21) #11
  %add = add nsw i32 %call94, 7
  %div = sdiv i32 %add, 8
  %conv = sext i32 %div to i64
  %buflen = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 13
  store i64 %conv, i64* %buflen, align 8, !tbaa !37
  %call96 = tail call i8* @CRYPTO_malloc(i64 noundef %conv, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 464) #11
  %allocated_buf = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 11
  store i8* %call96, i8** %allocated_buf, align 8, !tbaa !38
  %cmp97 = icmp eq i8* %call96, null
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.then92
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 465, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786688, i8* noundef null) #11
  br label %cleanup332

if.end100:                                        ; preds = %if.then92
  %22 = bitcast i8** %p2 to %struct.bignum_st**
  %23 = load %struct.bignum_st*, %struct.bignum_st** %22, align 8, !tbaa !26
  %24 = load i64, i64* %buflen, align 8, !tbaa !37
  %conv104 = trunc i64 %24 to i32
  %call105 = tail call i32 @BN_bn2nativepad(%struct.bignum_st* noundef %23, i8* noundef nonnull %call96, i32 noundef %conv104) #11
  %tobool.not = icmp eq i32 %call105, 0
  br i1 %tobool.not, label %if.then106, label %if.end109

if.then106:                                       ; preds = %if.end100
  %25 = load i8*, i8** %allocated_buf, align 8, !tbaa !38
  tail call void @CRYPTO_free(i8* noundef %25, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 470) #11
  store i8* null, i8** %allocated_buf, align 8, !tbaa !38
  br label %cleanup332

if.end109:                                        ; preds = %if.end100
  %params110 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %26 = bitcast %struct.ossl_param_st** %params110 to i8**
  %27 = load i8*, i8** %26, align 8, !tbaa !28
  %28 = bitcast %struct.ossl_param_st* %tmp111 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %28) #9
  %param_key112 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %29 = load i8*, i8** %param_key112, align 8, !tbaa !32
  %30 = load i8*, i8** %allocated_buf, align 8, !tbaa !38
  %31 = load i64, i64* %buflen, align 8, !tbaa !37
  call void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp111, i8* noundef %29, i8* noundef %30, i64 noundef %31) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %27, i8* noundef nonnull align 8 dereferenceable(40) %28, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %28) #9
  br label %cleanup332

if.else:                                          ; preds = %if.then89
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %32 = load i32, i32* %action_type1, align 8, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 noundef %32, i32 noundef 1) #11
  br label %cleanup332

if.else117:                                       ; preds = %sw.bb87
  %params118 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %33 = bitcast %struct.ossl_param_st** %params118 to i8**
  %34 = load i8*, i8** %33, align 8, !tbaa !28
  %35 = bitcast %struct.ossl_param_st* %tmp119 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %35) #9
  %param_key120 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %36 = load i8*, i8** %param_key120, align 8, !tbaa !32
  %p1121 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  call void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp119, i8* noundef %36, i32* noundef nonnull %p1121) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %34, i8* noundef nonnull align 8 dereferenceable(40) %35, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %35) #9
  br label %cleanup332

sw.bb123:                                         ; preds = %if.end85
  %params124 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %37 = bitcast %struct.ossl_param_st** %params124 to i8**
  %38 = load i8*, i8** %37, align 8, !tbaa !28
  %39 = bitcast %struct.ossl_param_st* %tmp125 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %39) #9
  %param_key126 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %40 = load i8*, i8** %param_key126, align 8, !tbaa !32
  %p2127 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %41 = load i8*, i8** %p2127, align 8, !tbaa !26
  %p1128 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %42 = load i32, i32* %p1128, align 4, !tbaa !25
  %conv129 = sext i32 %42 to i64
  call void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp125, i8* noundef %40, i8* noundef %41, i64 noundef %conv129) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %38, i8* noundef nonnull align 8 dereferenceable(40) %39, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %39) #9
  br label %cleanup332

sw.bb130:                                         ; preds = %if.end85
  %params131 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %43 = bitcast %struct.ossl_param_st** %params131 to i8**
  %44 = load i8*, i8** %43, align 8, !tbaa !28
  %45 = bitcast %struct.ossl_param_st* %tmp132 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %45) #9
  %param_key133 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %46 = load i8*, i8** %param_key133, align 8, !tbaa !32
  %p2134 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %47 = bitcast i8** %p2134 to i8***
  %48 = load i8**, i8*** %47, align 8, !tbaa !26
  %p1135 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %49 = load i32, i32* %p1135, align 4, !tbaa !25
  %conv136 = sext i32 %49 to i64
  call void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp132, i8* noundef %46, i8** noundef %48, i64 noundef %conv136) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %44, i8* noundef nonnull align 8 dereferenceable(40) %45, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %45) #9
  br label %cleanup332

sw.bb137:                                         ; preds = %if.end85
  %params138 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %50 = bitcast %struct.ossl_param_st** %params138 to i8**
  %51 = load i8*, i8** %50, align 8, !tbaa !28
  %52 = bitcast %struct.ossl_param_st* %tmp139 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %52) #9
  %param_key140 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %53 = load i8*, i8** %param_key140, align 8, !tbaa !32
  %p2141 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %54 = load i8*, i8** %p2141, align 8, !tbaa !26
  %p1142 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %55 = load i32, i32* %p1142, align 4, !tbaa !25
  %conv143 = sext i32 %55 to i64
  call void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp139, i8* noundef %53, i8* noundef %54, i64 noundef %conv143) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %51, i8* noundef nonnull align 8 dereferenceable(40) %52, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %52) #9
  br label %cleanup332

sw.bb144:                                         ; preds = %if.end85
  %params145 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %56 = bitcast %struct.ossl_param_st** %params145 to i8**
  %57 = load i8*, i8** %56, align 8, !tbaa !28
  %58 = bitcast %struct.ossl_param_st* %tmp146 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %58) #9
  %param_key147 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %59 = load i8*, i8** %param_key147, align 8, !tbaa !32
  %p2148 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %60 = bitcast i8** %p2148 to i8***
  %61 = load i8**, i8*** %60, align 8, !tbaa !26
  %p1149 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %62 = load i32, i32* %p1149, align 4, !tbaa !25
  %conv150 = sext i32 %62 to i64
  call void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp146, i8* noundef %59, i8** noundef %61, i64 noundef %conv150) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %57, i8* noundef nonnull align 8 dereferenceable(40) %58, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %58) #9
  br label %cleanup332

sw.bb151:                                         ; preds = %if.end
  %action_type152 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %63 = load i32, i32* %action_type152, align 8, !tbaa !22
  %cmp153 = icmp eq i32 %63, 1
  br i1 %cmp153, label %if.then155, label %cleanup332

if.then155:                                       ; preds = %sw.bb151
  %param_data_type156 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %64 = load i32, i32* %param_data_type156, align 8, !tbaa !31
  %65 = and i32 %64, -4
  %switch = icmp eq i32 %65, 4
  br i1 %switch, label %sw.bb157, label %cleanup332

sw.bb157:                                         ; preds = %if.then155
  %params158 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %66 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params158, align 8, !tbaa !28
  %return_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %66, i64 0, i32 4
  %67 = load i64, i64* %return_size, align 8, !tbaa !39
  %conv159 = trunc i64 %67 to i32
  %p1160 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %conv159, i32* %p1160, align 4, !tbaa !25
  br label %cleanup332

sw.bb163:                                         ; preds = %if.end
  %ctrl_str = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 3
  %68 = load i8*, i8** %ctrl_str, align 8, !tbaa !41
  %p2165 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %69 = load i8*, i8** %p2165, align 8, !tbaa !26
  %70 = bitcast i32* %exists to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70) #9
  store i32 0, i32* %exists, align 4, !tbaa !35
  %action_type166 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %71 = load i32, i32* %action_type166, align 8, !tbaa !22
  %cmp167.not = icmp eq i32 %71, 2
  br i1 %cmp167.not, label %if.end171, label %if.then169

if.then169:                                       ; preds = %sw.bb163
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 552, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %72 = load i32, i32* %action_type166, align 8, !tbaa !22
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 noundef %72, i32 noundef 4) #11
  br label %cleanup.thread

if.end171:                                        ; preds = %sw.bb163
  %cmp172.not = icmp eq %struct.translation_st* %translation, null
  br i1 %cmp172.not, label %if.end190, label %if.then174

if.then174:                                       ; preds = %if.end171
  %param_key175 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %73 = load i8*, i8** %param_key175, align 8, !tbaa !32
  store i8* %73, i8** %ctrl_str, align 8, !tbaa !41
  %ishex = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 4
  %74 = load i32, i32* %ishex, align 8, !tbaa !42
  %tobool177.not = icmp eq i32 %74, 0
  br i1 %tobool177.not, label %if.end190, label %if.then178

if.then178:                                       ; preds = %if.then174
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %call179 = tail call i8* @strcpy(i8* noundef nonnull %arraydecay, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #11
  %call182 = tail call i64 @OPENSSL_strlcat(i8* noundef nonnull %arraydecay, i8* noundef %73, i64 noundef 50) #11
  %cmp183 = icmp ult i64 %call182, 4
  br i1 %cmp183, label %if.then185, label %if.end190

if.then185:                                       ; preds = %if.then178
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 569, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup.thread

if.end190:                                        ; preds = %if.then178, %if.then174, %if.end171
  %tmp_ctrl_str.0 = phi i8* [ %73, %if.then174 ], [ %68, %if.end171 ], [ %arraydecay, %if.then178 ]
  %pctx191 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  %75 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx191, align 8, !tbaa !27
  %call192 = tail call %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef %75) #11
  %params193 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %76 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params193, align 8, !tbaa !28
  %77 = load i8*, i8** %p2165, align 8, !tbaa !26
  %call196 = tail call i64 @strlen(i8* noundef %77) #12
  %call197 = call i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef %76, %struct.ossl_param_st* noundef %call192, i8* noundef %tmp_ctrl_str.0, i8* noundef %77, i64 noundef %call196, i32* noundef nonnull %exists) #11
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.then199, label %cleanup

if.then199:                                       ; preds = %if.end190
  %78 = load i32, i32* %exists, align 4, !tbaa !35
  %tobool200.not = icmp eq i32 %78, 0
  br i1 %tobool200.not, label %if.then201, label %cleanup.thread

if.then201:                                       ; preds = %if.then199
  call void @ERR_new() #11
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 582, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %79 = load i32, i32* %action_type166, align 8, !tbaa !22
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 noundef %79, i32 noundef 4, i8* noundef %68, i8* noundef %69) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then201, %if.then185, %if.then169, %if.then199
  %retval.0.ph = phi i32 [ 0, %if.then199 ], [ 0, %if.then169 ], [ -1, %if.then185 ], [ -2, %if.then201 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #9
  br label %cleanup332

cleanup:                                          ; preds = %if.end190
  %80 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params193, align 8, !tbaa !28
  %data = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %80, i64 0, i32 2
  %81 = load i8*, i8** %data, align 8, !tbaa !43
  %allocated_buf206 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 11
  store i8* %81, i8** %allocated_buf206, align 8, !tbaa !38
  %data_size = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %80, i64 0, i32 3
  %82 = load i64, i64* %data_size, align 8, !tbaa !44
  %buflen208 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 13
  store i64 %82, i64* %buflen208, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #9
  br label %cleanup332

sw.bb215:                                         ; preds = %if.end, %if.end
  %p1214 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %83 = load i32, i32* %p1214, align 4, !tbaa !25
  %cmp216 = icmp eq i32 %state, 7
  br i1 %cmp216, label %land.lhs.true218, label %if.else265

land.lhs.true218:                                 ; preds = %if.end, %sw.bb215
  %ret.0500 = phi i32 [ %83, %sw.bb215 ], [ %call, %if.end ]
  %action_type219 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %84 = load i32, i32* %action_type219, align 8, !tbaa !22
  %cmp220 = icmp eq i32 %84, 2
  br i1 %cmp220, label %if.then222, label %cleanup332

if.then222:                                       ; preds = %land.lhs.true218
  %param_data_type223 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %85 = load i32, i32* %param_data_type223, align 8, !tbaa !31
  switch i32 %85, label %sw.default262 [
    i32 1, label %sw.bb224
    i32 2, label %sw.bb228
    i32 4, label %sw.bb247
    i32 5, label %sw.bb251
    i32 7, label %sw.bb257
  ]

sw.bb224:                                         ; preds = %if.then222
  %params225 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %86 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params225, align 8, !tbaa !28
  %p1226 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %call227 = tail call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef %86, i32* noundef nonnull %p1226) #11
  br label %cleanup332

sw.bb228:                                         ; preds = %if.then222
  %p2229 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %87 = load i8*, i8** %p2229, align 8, !tbaa !26
  %cmp230.not = icmp eq i8* %87, null
  %params240 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %88 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params240, align 8, !tbaa !28
  br i1 %cmp230.not, label %if.else239, label %if.then232

if.then232:                                       ; preds = %sw.bb228
  %89 = bitcast i8* %87 to %struct.bignum_st**
  %call235 = tail call i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef %88, %struct.bignum_st** noundef nonnull %89) #11
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %cleanup332, label %if.end246

if.else239:                                       ; preds = %sw.bb228
  %p1241 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %call242 = tail call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef %88, i32* noundef nonnull %p1241) #11
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %cleanup332, label %if.end246

if.end246:                                        ; preds = %if.else239, %if.then232
  br label %cleanup332

sw.bb247:                                         ; preds = %if.then222
  %params248 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %90 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params248, align 8, !tbaa !28
  %p2249 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %91 = bitcast i8** %p2249 to i8***
  %92 = load i8**, i8*** %91, align 8, !tbaa !26
  %sz = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  %93 = load i64, i64* %sz, align 8, !tbaa !45
  %call250 = tail call i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef %90, i8** noundef %92, i64 noundef %93) #11
  br label %cleanup332

sw.bb251:                                         ; preds = %if.then222
  %params252 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %94 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params252, align 8, !tbaa !28
  %p2253 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %95 = bitcast i8** %p2253 to i8***
  %96 = load i8**, i8*** %95, align 8, !tbaa !26
  %sz254 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  %97 = load i64, i64* %sz254, align 8, !tbaa !45
  %call256 = tail call i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef %94, i8** noundef %96, i64 noundef %97, i64* noundef nonnull %sz254) #11
  br label %cleanup332

sw.bb257:                                         ; preds = %if.then222
  %params258 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %98 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params258, align 8, !tbaa !28
  %p2259 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %99 = bitcast i8** %p2259 to i8***
  %100 = load i8**, i8*** %99, align 8, !tbaa !26
  %sz260 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  %call261 = tail call i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef %98, i8** noundef %100, i64* noundef nonnull %sz260) #11
  br label %cleanup332

sw.default262:                                    ; preds = %if.then222
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 647, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %101 = load i32, i32* %action_type219, align 8, !tbaa !22
  %102 = load i32, i32* %param_data_type223, align 8, !tbaa !31
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 noundef %101, i32 noundef 7, i32 noundef %102) #11
  br label %cleanup332

if.else265:                                       ; preds = %sw.bb215
  %cmp269 = icmp eq i32 %state, 0
  %103 = and i32 %state, -9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %land.lhs.true271, label %cleanup332

land.lhs.true271:                                 ; preds = %if.else265
  %action_type272 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %105 = load i32, i32* %action_type272, align 8, !tbaa !22
  %cmp273 = icmp eq i32 %105, 1
  br i1 %cmp273, label %if.then275, label %cleanup332

if.then275:                                       ; preds = %land.lhs.true271
  %param_data_type277 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %106 = load i32, i32* %param_data_type277, align 8, !tbaa !31
  %conv279 = sext i32 %83 to i64
  br i1 %cmp269, label %if.then282, label %if.end284

if.then282:                                       ; preds = %if.then275
  %sz283 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  %107 = load i64, i64* %sz283, align 8, !tbaa !45
  br label %if.end284

if.end284:                                        ; preds = %if.then282, %if.then275
  %size.0 = phi i64 [ %107, %if.then282 ], [ %conv279, %if.then275 ]
  %cmp285 = icmp eq i32 %106, 0
  br i1 %cmp285, label %if.then287, label %if.end295

if.then287:                                       ; preds = %if.end284
  %fixup_args = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 9
  %108 = load i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)*, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)** %fixup_args, align 8, !tbaa !20
  %cmp288.not = icmp eq i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %108, null
  br i1 %cmp288.not, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.then287
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 665, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786691, i8* noundef null) #11
  br label %cleanup332

if.end293:                                        ; preds = %if.then287
  %params294 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %109 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params294, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %109, i64 0, i32 1
  %110 = load i32, i32* %data_type, align 8, !tbaa !46
  br label %if.end295

if.end295:                                        ; preds = %if.end293, %if.end284
  %param_data_type276.0 = phi i32 [ %110, %if.end293 ], [ %106, %if.end284 ]
  switch i32 %param_data_type276.0, label %sw.default324 [
    i32 1, label %sw.bb296
    i32 2, label %sw.bb300
    i32 4, label %sw.bb312
    i32 5, label %sw.bb316
    i32 7, label %sw.bb320
  ]

sw.bb296:                                         ; preds = %if.end295
  %params297 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %111 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params297, align 8, !tbaa !28
  %call299 = tail call i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef %111, i32 noundef %83) #11
  br label %cleanup332

sw.bb300:                                         ; preds = %if.end295
  %p2301 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %112 = load i8*, i8** %p2301, align 8, !tbaa !26
  %cmp302.not = icmp eq i8* %112, null
  %params309 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %113 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params309, align 8, !tbaa !28
  br i1 %cmp302.not, label %if.else308, label %if.then304

if.then304:                                       ; preds = %sw.bb300
  %114 = bitcast i8* %112 to %struct.bignum_st*
  %call307 = tail call i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef %113, %struct.bignum_st* noundef nonnull %114) #11
  br label %cleanup332

if.else308:                                       ; preds = %sw.bb300
  %call311 = tail call i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef %113, i32 noundef %83) #11
  br label %cleanup332

sw.bb312:                                         ; preds = %if.end295
  %params313 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %115 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params313, align 8, !tbaa !28
  %p2314 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %116 = load i8*, i8** %p2314, align 8, !tbaa !26
  %call315 = tail call i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef %115, i8* noundef %116) #11
  br label %cleanup332

sw.bb316:                                         ; preds = %if.end295
  %params317 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %117 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params317, align 8, !tbaa !28
  %p2318 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %118 = load i8*, i8** %p2318, align 8, !tbaa !26
  %call319 = tail call i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef %117, i8* noundef %118, i64 noundef %size.0) #11
  br label %cleanup332

sw.bb320:                                         ; preds = %if.end295
  %params321 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %119 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params321, align 8, !tbaa !28
  %p2322 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %120 = load i8*, i8** %p2322, align 8, !tbaa !26
  %call323 = tail call i32 @OSSL_PARAM_set_octet_ptr(%struct.ossl_param_st* noundef %119, i8* noundef %120, i64 noundef %size.0) #11
  br label %cleanup332

sw.default324:                                    ; preds = %if.end295
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 693, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.default_fixup_args, i64 0, i64 0)) #11
  %121 = load i32, i32* %action_type272, align 8, !tbaa !22
  %122 = load i32, i32* %param_data_type277, align 8, !tbaa !31
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524556, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 noundef %121, i32 noundef %state, i32 noundef %122) #11
  br label %cleanup332

cleanup332:                                       ; preds = %land.lhs.true218, %if.end, %if.end109, %if.else117, %if.end85, %sw.bb144, %sw.bb137, %sw.bb130, %sw.bb123, %sw.bb86, %sw.bb157, %sw.bb151, %land.lhs.true271, %if.else265, %if.then155, %cleanup, %cleanup.thread, %if.then292, %sw.bb296, %if.then304, %if.else308, %sw.bb312, %sw.bb316, %sw.bb320, %sw.default324, %if.else239, %if.then232, %entry, %sw.default262, %sw.bb257, %sw.bb251, %sw.bb247, %if.end246, %sw.bb224, %if.else, %if.then106, %if.then99, %if.then83, %if.then3, %sw.default
  %retval.2 = phi i32 [ 0, %sw.default ], [ 0, %sw.default262 ], [ %call261, %sw.bb257 ], [ %call256, %sw.bb251 ], [ %call250, %sw.bb247 ], [ 1, %if.end246 ], [ %call227, %sw.bb224 ], [ 0, %if.then3 ], [ -2, %if.then83 ], [ 0, %if.then99 ], [ 0, %if.then106 ], [ 0, %if.else ], [ %call, %entry ], [ 0, %if.then232 ], [ 0, %if.else239 ], [ 0, %sw.default324 ], [ %call323, %sw.bb320 ], [ %call319, %sw.bb316 ], [ %call315, %sw.bb312 ], [ %call307, %if.then304 ], [ %call311, %if.else308 ], [ %call299, %sw.bb296 ], [ 0, %if.then292 ], [ %retval.0.ph, %cleanup.thread ], [ %83, %land.lhs.true271 ], [ %83, %if.else265 ], [ %call, %if.end ], [ %call, %cleanup ], [ %call, %if.then155 ], [ %call, %sw.bb157 ], [ %call, %sw.bb151 ], [ %call, %if.end85 ], [ %call, %sw.bb144 ], [ %call, %sw.bb137 ], [ %call, %sw.bb130 ], [ %call, %sw.bb123 ], [ %call, %if.end109 ], [ %call, %if.else117 ], [ %call, %sw.bb86 ], [ %ret.0500, %land.lhs.true218 ]
  ret i32 %retval.2
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc %struct.translation_st* @lookup_evp_pkey_ctx_translation(%struct.translation_st* nocapture noundef %tmpl) unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.translation_st* @lookup_translation(%struct.translation_st* noundef %tmpl, %struct.translation_st* noundef getelementptr inbounds ([71 x %struct.translation_st], [71 x %struct.translation_st]* @evp_pkey_ctx_translations, i64 0, i64 0), i64 noundef 71) #10
  ret %struct.translation_st* %call
}

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #4

declare i32 @evp_pkey_ctx_get_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #4

declare i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef, %struct.ossl_param_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* nocapture noundef %ctx) unnamed_addr #0 {
entry:
  %allocated_buf = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 11
  %0 = load i8*, i8** %allocated_buf, align 8, !tbaa !38
  %cmp.not = icmp eq i8* %0, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @CRYPTO_free(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 714) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8* null, i8** %allocated_buf, align 8, !tbaa !38
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_ctrl_str_to_param(%struct.evp_pkey_ctx_st* noundef %pctx, i8* noundef %name, i8* noundef %value) local_unnamed_addr #0 {
entry:
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %params = alloca [2 x %struct.ossl_param_st], align 16
  %0 = bitcast %struct.translation_ctx_st* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #9
  %1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %2 = bitcast i32* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 136, i1 false)
  %3 = bitcast %struct.translation_st* %tmpl to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #9
  %4 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 48, i1 false)
  %6 = bitcast [2 x %struct.ossl_param_st]* %params to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(80) %6, i8 0, i64 80, i1 false)
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 11
  %7 = load i32, i32* %legacy_keytype, align 4, !tbaa !4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 0
  %8 = load i32, i32* %operation, align 8, !tbaa !29
  %cmp = icmp eq i32 %8, 0
  %spec.select = select i1 %cmp, i32 -1, i32 %8
  %action_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 0
  store i32 2, i32* %action_type, align 8, !tbaa !21
  %keytype2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 2
  store i32 %7, i32* %keytype2, align 8, !tbaa !14
  %keytype1 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 1
  store i32 %7, i32* %keytype1, align 4, !tbaa !15
  %optype2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 3
  store i32 %spec.select, i32* %optype2, align 4, !tbaa !16
  %ctrl_str = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 5
  store i8* %name, i8** %ctrl_str, align 8, !tbaa !47
  %ctrl_hexstr = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 6
  store i8* %name, i8** %ctrl_hexstr, align 8, !tbaa !48
  %call = call fastcc %struct.translation_st* @lookup_evp_pkey_ctx_translation(%struct.translation_st* noundef nonnull %tmpl) #10
  %cmp3.not = icmp eq %struct.translation_st* %call, null
  br i1 %cmp3.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %fixup_args = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 9
  %9 = load i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)*, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)** %fixup_args, align 8, !tbaa !20
  %cmp4.not = icmp eq i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %9, null
  %spec.select55 = select i1 %cmp4.not, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @default_fixup_args, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %9
  %action_type7 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 0
  %10 = load i32, i32* %action_type7, align 8, !tbaa !21
  %11 = load i8*, i8** %ctrl_hexstr, align 8, !tbaa !48
  %cmp10 = icmp ne i8* %11, null
  %conv = zext i1 %cmp10 to i32
  %ishex = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 4
  store i32 %conv, i32* %ishex, align 8, !tbaa !42
  br label %if.end12

if.end12:                                         ; preds = %entry, %if.then
  %.sink = phi i32 [ %10, %if.then ], [ 2, %entry ]
  %fixup.1 = phi i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* [ %spec.select55, %if.then ], [ @default_fixup_args, %entry ]
  %12 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  store i32 %.sink, i32* %12, align 8
  %ctrl_str13 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 3
  store i8* %name, i8** %ctrl_str13, align 8, !tbaa !41
  %call14 = tail call i64 @strlen(i8* noundef %value) #12
  %conv15 = trunc i64 %call14 to i32
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %conv15, i32* %p1, align 4, !tbaa !25
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %value, i8** %p2, align 8, !tbaa !26
  %pctx16 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  store %struct.evp_pkey_ctx_st* %pctx, %struct.evp_pkey_ctx_st** %pctx16, align 8, !tbaa !27
  %arraydecay = getelementptr inbounds [2 x %struct.ossl_param_st], [2 x %struct.ossl_param_st]* %params, i64 0, i64 0
  %params17 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  store %struct.ossl_param_st* %arraydecay, %struct.ossl_param_st** %params17, align 8, !tbaa !28
  %call18 = call i32 %fixup.1(i32 noundef 4, %struct.translation_st* noundef %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  %cmp19 = icmp sgt i32 %call18, 0
  %13 = load i32, i32* %12, align 8
  %cond32 = icmp eq i32 %13, 2
  %or.cond = select i1 %cmp19, i1 %cond32, i1 false
  br i1 %or.cond, label %sw.bb, label %if.end25

sw.bb:                                            ; preds = %if.end12
  %14 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params17, align 8, !tbaa !28
  %call24 = call i32 @evp_pkey_ctx_set_params_strict(%struct.evp_pkey_ctx_st* noundef nonnull %pctx, %struct.ossl_param_st* noundef %14) #11
  br label %if.end25

if.end25:                                         ; preds = %sw.bb, %if.end12
  %ret.0 = phi i32 [ %call24, %sw.bb ], [ %call18, %if.end12 ]
  %cmp26 = icmp sgt i32 %ret.0, 0
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %call29 = call i32 %fixup.1(i32 noundef 5, %struct.translation_st* noundef %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25
  %ret.1 = phi i32 [ %call29, %if.then28 ], [ %ret.0, %if.end25 ]
  call fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* noundef nonnull %ctx) #10
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #9
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_set_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_setget_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 2, %struct.ossl_param_st* noundef %params) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_ctx_setget_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %action_type, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %legacy_keytype = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 11
  %0 = load i32, i32* %legacy_keytype, align 4, !tbaa !4
  %operation = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %pctx, i64 0, i32 0
  %1 = load i32, i32* %operation, align 8, !tbaa !29
  %cmp = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp, i32 -1, i32 %1
  %cmp2.not72 = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp2.not72, label %cleanup36, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %2 = bitcast %struct.translation_ctx_st* %ctx to i8*
  %3 = bitcast %struct.translation_st* %tmpl to i8*
  %action_type4 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 0
  %keytype2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 2
  %keytype1 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 1
  %optype5 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 3
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 7
  %action_type12 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %pctx14 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  %params15 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %ctrl_cmd = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 2
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %4 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 4
  %5 = bitcast i32* %4 to i8*
  %key76 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %6 = load i8*, i8** %key76, align 8, !tbaa !49
  %cmp3.not77 = icmp eq i8* %6, null
  br i1 %cmp3.not77, label %cleanup36, label %for.body

land.rhs:                                         ; preds = %if.end27
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %7 = load i8*, i8** %key, align 8, !tbaa !49
  %cmp3.not = icmp eq i8* %7, null
  br i1 %cmp3.not, label %cleanup36, label %for.body, !llvm.loop !50

for.body:                                         ; preds = %land.rhs.lr.ph, %land.rhs
  %8 = phi i8* [ %7, %land.rhs ], [ %6, %land.rhs.lr.ph ]
  %params.addr.07378 = phi %struct.ossl_param_st* [ %incdec.ptr, %land.rhs ], [ %params, %land.rhs.lr.ph ]
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 48, i1 false)
  store i32 %action_type, i32* %action_type4, align 8, !tbaa !21
  store i32 %0, i32* %keytype2, align 8, !tbaa !14
  store i32 %0, i32* %keytype1, align 4, !tbaa !15
  store i32 %spec.select, i32* %optype5, align 4, !tbaa !16
  store i8* %8, i8** %param_key, align 8, !tbaa !32
  %call = call fastcc %struct.translation_st* @lookup_evp_pkey_ctx_translation(%struct.translation_st* noundef nonnull %tmpl) #10
  %cmp7.not = icmp eq %struct.translation_st* %call, null
  br i1 %cmp7.not, label %if.end13, label %if.then

if.then:                                          ; preds = %for.body
  %fixup_args = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 9
  %9 = load i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)*, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)** %fixup_args, align 8, !tbaa !20
  %cmp8.not = icmp eq i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %9, null
  %spec.select66 = select i1 %cmp8.not, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* @default_fixup_args, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %9
  %action_type11 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 0
  %10 = load i32, i32* %action_type11, align 8, !tbaa !21
  store i32 %10, i32* %action_type12, align 8, !tbaa !22
  br label %if.end13

if.end13:                                         ; preds = %if.then, %for.body
  %fixup.1 = phi i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* [ %spec.select66, %if.then ], [ @default_fixup_args, %for.body ]
  store %struct.evp_pkey_ctx_st* %pctx, %struct.evp_pkey_ctx_st** %pctx14, align 8, !tbaa !27
  store %struct.ossl_param_st* %params.addr.07378, %struct.ossl_param_st** %params15, align 8, !tbaa !28
  %call16 = call i32 %fixup.1(i32 noundef 7, %struct.translation_st* noundef %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  %cmp17 = icmp sgt i32 %call16, 0
  br i1 %cmp17, label %if.end21, label %if.end27.thread

if.end21:                                         ; preds = %if.end13
  %11 = load i32, i32* %ctrl_cmd, align 4, !tbaa !24
  %12 = load i32, i32* %p1, align 4, !tbaa !25
  %13 = load i8*, i8** %p2, align 8, !tbaa !26
  %call20 = call i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef %pctx, i32 noundef %0, i32 noundef %spec.select, i32 noundef %11, i32 noundef %12, i8* noundef %13) #11
  %cmp22 = icmp sgt i32 %call20, 0
  br i1 %cmp22, label %if.end27, label %if.end27.thread

if.end27.thread:                                  ; preds = %if.end21, %if.end13
  call fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* noundef nonnull %ctx) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #9
  br label %cleanup36

if.end27:                                         ; preds = %if.end21
  store i32 %call20, i32* %p1, align 4, !tbaa !25
  %call25 = call i32 %fixup.1(i32 noundef 8, %struct.translation_st* noundef %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  %14 = load i32, i32* %p1, align 4, !tbaa !25
  call fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* noundef nonnull %ctx) #10
  %cmp29 = icmp slt i32 %14, 1
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #9
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.07378, i64 1
  br i1 %cmp29, label %cleanup36, label %land.rhs

cleanup36:                                        ; preds = %land.rhs, %if.end27, %land.rhs.lr.ph, %entry, %if.end27.thread
  %retval.2 = phi i32 [ 0, %if.end27.thread ], [ 1, %entry ], [ 1, %land.rhs.lr.ph ], [ 0, %if.end27 ], [ 1, %land.rhs ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_ctx_get_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_ctx_setget_params_to_ctrl(%struct.evp_pkey_ctx_st* noundef %ctx, i32 noundef 1, %struct.ossl_param_st* noundef %params) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define i32 @evp_pkey_get_params_to_ctrl(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) local_unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @evp_pkey_setget_params_to_ctrl(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @evp_pkey_setget_params_to_ctrl(%struct.evp_pkey_st* noundef %pkey, %struct.ossl_param_st* noundef %params) unnamed_addr #0 {
entry:
  %ctx = alloca %struct.translation_ctx_st, align 8
  %tmpl = alloca %struct.translation_st, align 8
  %cmp.not13 = icmp eq %struct.ossl_param_st* %params, null
  br i1 %cmp.not13, label %cleanup33, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %entry
  %0 = bitcast %struct.translation_ctx_st* %ctx to i8*
  %1 = bitcast %struct.translation_st* %tmpl to i8*
  %action_type2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 0
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 7
  %action_type9 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %params11 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %key22 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params, i64 0, i32 0
  %3 = load i8*, i8** %key22, align 8, !tbaa !49
  %cmp1.not23 = icmp eq i8* %3, null
  br i1 %cmp1.not23, label %cleanup33, label %for.body

for.body:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %4 = phi i8* [ %7, %for.inc ], [ %3, %land.rhs.lr.ph ]
  %params.addr.01424 = phi %struct.ossl_param_st* [ %incdec.ptr, %for.inc ], [ %params, %land.rhs.lr.ph ]
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %0, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #9
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false)
  store i32 1, i32* %action_type2, align 8, !tbaa !21
  store i8* %4, i8** %param_key, align 8, !tbaa !32
  %call = call fastcc %struct.translation_st* @lookup_evp_pkey_translation(%struct.translation_st* noundef nonnull %tmpl) #10
  %cmp4.not = icmp eq %struct.translation_st* %call, null
  br i1 %cmp4.not, label %cleanup.thread, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %fixup_args = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 9
  %5 = load i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)*, i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)** %fixup_args, align 8, !tbaa !20
  %cmp5.not = icmp eq i32 (i32, %struct.translation_st*, %struct.translation_ctx_st*)* %5, null
  %action_type8 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %call, i64 0, i32 0
  %6 = load i32, i32* %action_type8, align 8, !tbaa !21
  store i32 %6, i32* %action_type9, align 8, !tbaa !22
  store %struct.evp_pkey_st* %pkey, %struct.evp_pkey_st** %2, align 8, !tbaa !26
  store %struct.ossl_param_st* %params.addr.01424, %struct.ossl_param_st** %params11, align 8, !tbaa !28
  %cmp16 = icmp ne i32 %6, 1
  %brmerge = select i1 %cmp16, i1 true, i1 %cmp5.not
  br i1 %brmerge, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %lor.lhs.false, %for.body
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #9
  br label %cleanup33

for.inc:                                          ; preds = %lor.lhs.false
  %call28 = call i32 %5(i32 noundef 0, %struct.translation_st* noundef nonnull %call, %struct.translation_ctx_st* noundef nonnull %ctx) #11
  call fastcc void @cleanup_translation_ctx(%struct.translation_ctx_st* noundef nonnull %ctx) #10
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #9
  %incdec.ptr = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %params.addr.01424, i64 1
  %key = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %incdec.ptr, i64 0, i32 0
  %7 = load i8*, i8** %key, align 8, !tbaa !49
  %cmp1.not = icmp eq i8* %7, null
  br i1 %cmp1.not, label %cleanup33, label %for.body, !llvm.loop !52

cleanup33:                                        ; preds = %for.inc, %land.rhs.lr.ph, %entry, %cleanup.thread
  %retval.2 = phi i32 [ -2, %cleanup.thread ], [ 1, %entry ], [ 1, %land.rhs.lr.ph ], [ %call28, %for.inc ]
  ret i32 %retval.2
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef readonly %translation) unnamed_addr #0 {
entry:
  switch i32 %state, label %return [
    i32 1, label %sw.bb
    i32 4, label %sw.bb13
    i32 7, label %sw.bb37
    i32 8, label %sw.bb37
  ]

sw.bb:                                            ; preds = %entry
  %cmp.not = icmp eq %struct.translation_st* %translation, null
  br i1 %cmp.not, label %return.sink.split, label %if.end

if.end:                                           ; preds = %sw.bb
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %0 = load i8*, i8** %param_key, align 8, !tbaa !32
  %cmp3.not = icmp eq i8* %0, null
  br i1 %cmp3.not, label %return.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %param_data_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %1 = load i32, i32* %param_data_type, align 8, !tbaa !31
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %return.sink.split, label %return

sw.bb13:                                          ; preds = %entry
  %cmp14.not = icmp eq %struct.translation_st* %translation, null
  br i1 %cmp14.not, label %return, label %if.then16

if.then16:                                        ; preds = %sw.bb13
  %action_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 0
  %2 = load i32, i32* %action_type, align 8, !tbaa !21
  %cmp17.not = icmp eq i32 %2, 1
  br i1 %cmp17.not, label %return.sink.split, label %if.end22

if.end22:                                         ; preds = %if.then16
  %param_key23 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %3 = load i8*, i8** %param_key23, align 8, !tbaa !32
  %cmp24.not = icmp eq i8* %3, null
  br i1 %cmp24.not, label %return.sink.split, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end22
  %param_data_type29 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %4 = load i32, i32* %param_data_type29, align 8, !tbaa !31
  %cmp30.not = icmp eq i32 %4, 0
  br i1 %cmp30.not, label %return.sink.split, label %return

sw.bb37:                                          ; preds = %entry, %entry
  %cmp38.not = icmp eq %struct.translation_st* %translation, null
  br i1 %cmp38.not, label %return.sink.split, label %if.end43

if.end43:                                         ; preds = %sw.bb37
  %ctrl_num = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 4
  %5 = load i32, i32* %ctrl_num, align 8, !tbaa !12
  %cmp44.not = icmp eq i32 %5, 0
  br i1 %cmp44.not, label %return.sink.split, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end43
  %param_data_type49 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 8
  %6 = load i32, i32* %param_data_type49, align 8, !tbaa !31
  %cmp50.not = icmp eq i32 %6, 0
  br i1 %cmp50.not, label %return.sink.split, label %return

return.sink.split:                                ; preds = %if.end43, %lor.lhs.false48, %sw.bb37, %if.end22, %lor.lhs.false28, %if.then16, %if.end, %lor.lhs.false, %sw.bb
  %.sink1 = phi i32 [ 300, %sw.bb ], [ 305, %lor.lhs.false ], [ 305, %if.end ], [ 318, %if.then16 ], [ 323, %lor.lhs.false28 ], [ 323, %if.end22 ], [ 331, %sw.bb37 ], [ 336, %lor.lhs.false48 ], [ 336, %if.end43 ]
  %.sink = phi i32 [ 147, %sw.bb ], [ 786691, %lor.lhs.false ], [ 786691, %if.end ], [ 147, %if.then16 ], [ 786691, %lor.lhs.false28 ], [ 786691, %if.end22 ], [ 147, %sw.bb37 ], [ 786691, %lor.lhs.false48 ], [ 786691, %if.end43 ]
  %retval.0.ph = phi i32 [ -2, %sw.bb ], [ -1, %lor.lhs.false ], [ -1, %if.end ], [ -2, %if.then16 ], [ 0, %lor.lhs.false28 ], [ 0, %if.end22 ], [ -2, %sw.bb37 ], [ -1, %lor.lhs.false48 ], [ -1, %if.end43 ]
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef %.sink1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.default_check, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, i8* noundef null) #11
  br label %return

return:                                           ; preds = %return.sink.split, %entry, %lor.lhs.false, %lor.lhs.false28, %sw.bb13, %lor.lhs.false48
  %retval.0 = phi i32 [ 1, %lor.lhs.false48 ], [ 1, %sw.bb13 ], [ 1, %lor.lhs.false28 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

declare void @OSSL_PARAM_construct_int(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #4

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @BN_bn2nativepad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_BN(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_uint(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i32* noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_utf8_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_utf8_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_octet_string(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare void @OSSL_PARAM_construct_octet_ptr(%struct.ossl_param_st* sret(%struct.ossl_param_st) align 8, i8* noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) local_unnamed_addr #7

declare i64 @OPENSSL_strlcat(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.ossl_param_st* @EVP_PKEY_CTX_settable_params(%struct.evp_pkey_ctx_st* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_allocate_from_text(%struct.ossl_param_st* noundef, %struct.ossl_param_st* noundef, i8* noundef, i8* noundef, i64 noundef, i32* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_BN(%struct.ossl_param_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef, i32* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_utf8_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_octet_string(%struct.ossl_param_st* noundef, i8** noundef, i64 noundef, i64* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_get_octet_ptr(%struct.ossl_param_st* noundef, i8** noundef, i64* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_int(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_BN(%struct.ossl_param_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_uint(%struct.ossl_param_st* noundef, i32 noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_utf8_string(%struct.ossl_param_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_octet_string(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare i32 @OSSL_PARAM_set_octet_ptr(%struct.ossl_param_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc %struct.translation_st* @lookup_translation(%struct.translation_st* nocapture noundef %tmpl, %struct.translation_st* noundef readonly %translations, i64 noundef %translations_num) unnamed_addr #3 {
entry:
  %cmp163.not = icmp eq i64 %translations_num, 0
  br i1 %cmp163.not, label %cleanup109, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %optype10 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 3
  %keytype120 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 1
  %keytype225 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 2
  %ctrl_num = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 4
  %ctrl_str = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 5
  %ctrl_hexstr67 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 6
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 7
  %action_type88 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %tmpl, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0164 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %arrayidx = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164
  %keytype1 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 1
  %0 = load i32, i32* %keytype1, align 4, !tbaa !15
  %cmp1 = icmp ne i32 %0, -1
  %keytype2 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 2
  %1 = load i32, i32* %keytype2, align 8, !tbaa !14
  %cmp2 = icmp eq i32 %1, -1
  %cmp4 = xor i1 %cmp1, %cmp2
  br i1 %cmp4, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %optype = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 3
  %2 = load i32, i32* %optype, align 4, !tbaa !16
  %cmp8.not = icmp eq i32 %2, -1
  br i1 %cmp8.not, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %optype10, align 4, !tbaa !16
  %and = and i32 %3, %2
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %for.inc, label %if.end15

if.end15:                                         ; preds = %land.lhs.true, %if.end
  %cmp17.not = icmp eq i32 %0, -1
  br i1 %cmp17.not, label %if.end30, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end15
  %4 = load i32, i32* %keytype120, align 4, !tbaa !15
  %cmp22.not = icmp eq i32 %4, %0
  br i1 %cmp22.not, label %if.end30, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %5 = load i32, i32* %keytype225, align 8, !tbaa !14
  %cmp27.not = icmp eq i32 %5, %1
  br i1 %cmp27.not, label %if.end30, label %for.inc

if.end30:                                         ; preds = %land.lhs.true24, %land.lhs.true19, %if.end15
  %6 = load i32, i32* %ctrl_num, align 8, !tbaa !12
  %cmp31.not = icmp eq i32 %6, 0
  br i1 %cmp31.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end30
  %ctrl_num35 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 4
  %7 = load i32, i32* %ctrl_num35, align 8, !tbaa !12
  %cmp36.not = icmp eq i32 %6, %7
  br i1 %cmp36.not, label %cleanup109, label %for.inc

if.else:                                          ; preds = %if.end30
  %8 = load i8*, i8** %ctrl_str, align 8, !tbaa !47
  %cmp40.not = icmp eq i8* %8, null
  br i1 %cmp40.not, label %if.else80, label %if.then42

if.then42:                                        ; preds = %if.else
  %action_type = getelementptr inbounds %struct.translation_st, %struct.translation_st* %arrayidx, i64 0, i32 0
  %9 = load i32, i32* %action_type, align 8, !tbaa !21
  switch i32 %9, label %for.inc [
    i32 0, label %if.end51
    i32 2, label %if.end51
  ]

if.end51:                                         ; preds = %if.then42, %if.then42
  %ctrl_str52 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 5
  %10 = load i8*, i8** %ctrl_str52, align 8, !tbaa !47
  %cmp53.not = icmp eq i8* %10, null
  br i1 %cmp53.not, label %if.else62, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %if.end51
  %call = tail call i32 @strcasecmp(i8* noundef nonnull %8, i8* noundef nonnull %10) #12
  %cmp58 = icmp eq i32 %call, 0
  br i1 %cmp58, label %cleanup, label %if.else62

if.else62:                                        ; preds = %land.lhs.true55, %if.end51
  %ctrl_hexstr63 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 6
  %11 = load i8*, i8** %ctrl_hexstr63, align 8, !tbaa !48
  %cmp64.not = icmp eq i8* %11, null
  br i1 %cmp64.not, label %for.inc, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.else62
  %12 = load i8*, i8** %ctrl_hexstr67, align 8, !tbaa !48
  %call69 = tail call i32 @strcasecmp(i8* noundef %12, i8* noundef nonnull %11) #12
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %cleanup, label %for.inc

cleanup:                                          ; preds = %land.lhs.true55, %land.lhs.true66
  %ctrl_str43.0 = phi i8* [ %8, %land.lhs.true55 ], [ null, %land.lhs.true66 ]
  %ctrl_hexstr.0 = phi i8* [ null, %land.lhs.true55 ], [ %12, %land.lhs.true66 ]
  store i8* %ctrl_str43.0, i8** %ctrl_str, align 8, !tbaa !47
  store i8* %ctrl_hexstr.0, i8** %ctrl_hexstr67, align 8, !tbaa !48
  br label %cleanup109

if.else80:                                        ; preds = %if.else
  %13 = load i8*, i8** %param_key, align 8, !tbaa !32
  %cmp81.not = icmp eq i8* %13, null
  br i1 %cmp81.not, label %cleanup109, label %if.then83

if.then83:                                        ; preds = %if.else80
  %action_type84 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %arrayidx, i64 0, i32 0
  %14 = load i32, i32* %action_type84, align 8, !tbaa !21
  %cmp85.not = icmp eq i32 %14, 0
  br i1 %cmp85.not, label %lor.lhs.false, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %if.then83
  %15 = load i32, i32* %action_type88, align 8, !tbaa !21
  %cmp90.not = icmp eq i32 %15, %14
  br i1 %cmp90.not, label %lor.lhs.false, label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true87, %if.then83
  %param_key92 = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translations, i64 %i.0164, i32 7
  %16 = load i8*, i8** %param_key92, align 8, !tbaa !32
  %cmp93.not = icmp eq i8* %16, null
  br i1 %cmp93.not, label %cleanup109, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %lor.lhs.false
  %call98 = tail call i32 @strcasecmp(i8* noundef nonnull %13, i8* noundef nonnull %16) #12
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %cleanup109, label %for.inc

for.inc:                                          ; preds = %if.else62, %land.lhs.true66, %if.then42, %for.body, %land.lhs.true, %land.lhs.true24, %if.then33, %land.lhs.true95, %land.lhs.true87
  %inc = add nuw i64 %i.0164, 1
  %exitcond.not = icmp eq i64 %inc, %translations_num
  br i1 %exitcond.not, label %cleanup109, label %for.body, !llvm.loop !53

cleanup109:                                       ; preds = %for.inc, %if.else80, %lor.lhs.false, %land.lhs.true95, %if.then33, %entry, %cleanup
  %retval.2 = phi %struct.translation_st* [ %arrayidx, %cleanup ], [ null, %entry ], [ null, %for.inc ], [ null, %if.else80 ], [ %arrayidx, %lor.lhs.false ], [ %arrayidx, %land.lhs.true95 ], [ %arrayidx, %if.then33 ]
  ret %struct.translation_st* %retval.2
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_distid_len(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  switch i32 %state, label %if.end5 [
    i32 5, label %land.lhs.true
    i32 2, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %if.then, %if.then
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp3 = icmp eq i32 %0, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  %sz = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  %1 = load i64, i64* %sz, align 8, !tbaa !45
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = bitcast i8** %p2 to i64**
  %3 = load i64*, i64** %2, align 8, !tbaa !26
  store i64 %1, i64* %3, align 8, !tbaa !36
  br label %if.end5

if.end5:                                          ; preds = %if.then, %land.lhs.true, %if.then4, %entry
  %ret.0 = phi i32 [ 1, %if.then4 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ %call, %entry ]
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_dh_kdf_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @fix_kdf_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, %struct.kdf_type_map_st* noundef getelementptr inbounds ([3 x %struct.kdf_type_map_st], [3 x %struct.kdf_type_map_st]* @fix_dh_kdf_type.kdf_type_map, i64 0, i64 0)) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_md(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @fix_cipher_md(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i8* (i8*)* noundef nonnull @get_md_name, i8* (%struct.ossl_lib_ctx_st*, i8*)* noundef nonnull @get_md_by_name) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_oid(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %state, label %if.end12 [
    i32 1, label %land.lhs.true
    i32 8, label %land.lhs.true4
  ]

land.lhs.true:                                    ; preds = %if.end
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp2 = icmp eq i32 %0, 2
  br i1 %cmp2, label %if.then7, label %if.end12

land.lhs.true4:                                   ; preds = %if.end
  %action_type5 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %1 = load i32, i32* %action_type5, align 8, !tbaa !22
  %cmp6 = icmp eq i32 %1, 1
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true4, %land.lhs.true
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = bitcast i8** %p2 to %struct.asn1_object_st**
  %3 = load %struct.asn1_object_st*, %struct.asn1_object_st** %2, align 8, !tbaa !26
  %call8 = tail call i32 @OBJ_obj2txt(i8* noundef nonnull %arraydecay, i32 noundef 50, %struct.asn1_object_st* noundef %3, i32 noundef 0) #11
  store i8* %arraydecay, i8** %p2, align 8, !tbaa !26
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 0, i32* %p1, align 4, !tbaa !25
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end, %if.then7, %land.lhs.true4
  %call13 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp14 = icmp slt i32 %call13, 1
  br i1 %cmp14, label %cleanup, label %if.end16

if.end16:                                         ; preds = %if.end12
  switch i32 %state, label %cleanup [
    i32 7, label %land.lhs.true18
    i32 2, label %land.lhs.true23
  ]

land.lhs.true18:                                  ; preds = %if.end16
  %action_type19 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %4 = load i32, i32* %action_type19, align 8, !tbaa !22
  %cmp20 = icmp eq i32 %4, 2
  br i1 %cmp20, label %if.then26, label %cleanup

land.lhs.true23:                                  ; preds = %if.end16
  %action_type24 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %5 = load i32, i32* %action_type24, align 8, !tbaa !22
  %cmp25 = icmp eq i32 %5, 1
  br i1 %cmp25, label %if.then26, label %cleanup

if.then26:                                        ; preds = %land.lhs.true23, %land.lhs.true18
  %p227 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %6 = load i8*, i8** %p227, align 8, !tbaa !26
  %call28 = tail call %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef %6, i32 noundef 0) #11
  %7 = bitcast i8** %p227 to %struct.asn1_object_st**
  store %struct.asn1_object_st* %call28, %struct.asn1_object_st** %7, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true18, %land.lhs.true23, %if.then26, %if.end16, %if.end12, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call13, %if.end12 ], [ %call13, %if.end16 ], [ %call13, %if.then26 ], [ %call13, %land.lhs.true23 ], [ %call13, %land.lhs.true18 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_dh_paramgen_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %state, 4
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end3
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %p2, align 8, !tbaa !26
  %call6 = tail call i32 @atoi(i8* noundef %1) #12
  %call7 = tail call i8* @ossl_dh_gen_type_id2name(i32 noundef %call6) #11
  store i8* %call7, i8** %p2, align 8, !tbaa !26
  %call10 = tail call i64 @strlen(i8* noundef %call7) #12
  %conv = trunc i64 %call10 to i32
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %conv, i32* %p1, align 4, !tbaa !25
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end3
  %call12 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end11
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_dh_nid5114(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %state, 4
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %p2, align 8, !tbaa !26
  %call6 = tail call i32 @atoi(i8* noundef %1) #12
  %call7 = tail call %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %call6) #11
  %call8 = tail call i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef %call7) #11
  store i8* %call8, i8** %p2, align 8, !tbaa !26
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 0, i32* %p1, align 4, !tbaa !25
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3
  %call11 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_dh_nid(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %state, 1
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end3
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  %call6 = tail call %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %1) #11
  %call7 = tail call i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef %call6) #11
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %call7, i8** %p2, align 8, !tbaa !26
  store i32 0, i32* %p1, align 4, !tbaa !25
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3
  %call10 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry, %if.end9
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_ec_param_enc(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %state, 1
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end3
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  switch i32 %1, label %if.then33 [
    i32 0, label %if.end9.thread
    i32 1, label %sw.bb6
  ]

sw.bb6:                                           ; preds = %if.then5
  br label %if.end9.thread

if.end9:                                          ; preds = %if.end3
  %call10 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  %cmp11 = icmp sgt i32 %call10, 0
  %cmp14 = icmp eq i32 %state, 7
  %or.cond = and i1 %cmp14, %cmp11
  br i1 %or.cond, label %if.then15, label %cleanup

if.end9.thread:                                   ; preds = %if.then5, %sw.bb6
  %.sink = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), %sw.bb6 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0), %if.then5 ]
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %.sink, i8** %p2, align 8, !tbaa !26
  store i32 0, i32* %p1, align 4, !tbaa !25
  %call1055 = tail call i32 @default_fixup_args(i32 noundef 1, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  %p216 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = load i8*, i8** %p216, align 8, !tbaa !26
  %call17 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0)) #12
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  %p120 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 0, i32* %p120, align 4, !tbaa !25
  br label %end.thread67

if.else:                                          ; preds = %if.then15
  %call22 = tail call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0)) #12
  %cmp23 = icmp eq i32 %call22, 0
  %p125 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  br i1 %cmp23, label %if.then24, label %end

if.then24:                                        ; preds = %if.else
  store i32 1, i32* %p125, align 4, !tbaa !25
  br label %end.thread67

end.thread67:                                     ; preds = %if.then19, %if.then24
  store i8* null, i8** %p216, align 8, !tbaa !26
  br label %cleanup

end:                                              ; preds = %if.else
  store i32 -2, i32* %p125, align 4, !tbaa !25
  store i8* null, i8** %p216, align 8, !tbaa !26
  br label %if.then33

if.then33:                                        ; preds = %if.then5, %end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1104, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.fix_ec_param_enc, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9.thread, %end.thread67, %if.then33, %if.end9, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ %call10, %if.end9 ], [ -2, %if.then33 ], [ %call10, %end.thread67 ], [ %call1055, %if.end9.thread ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_ec_paramgen_curve_nid(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1.not = icmp eq i32 %0, 2
  br i1 %cmp1.not, label %if.end3, label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %state, 1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end3
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  %call6 = tail call i8* @OBJ_nid2sn(i32 noundef %1) #11
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %call6, i8** %p2, align 8, !tbaa !26
  store i32 0, i32* %p1, align 4, !tbaa !25
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3
  %call9 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  %cmp10 = icmp sgt i32 %call9, 0
  %cmp13 = icmp eq i32 %state, 7
  %or.cond = and i1 %cmp13, %cmp10
  br i1 %or.cond, label %if.then14, label %cleanup

if.then14:                                        ; preds = %if.end8
  %p215 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = load i8*, i8** %p215, align 8, !tbaa !26
  %call16 = tail call i32 @OBJ_sn2nid(i8* noundef %2) #11
  %p117 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %call16, i32* %p117, align 4, !tbaa !25
  store i8* null, i8** %p215, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.end ], [ %call9, %if.end8 ], [ %call9, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_ecdh_cofactor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %cmp = icmp eq i32 %state, 1
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1 = icmp eq i32 %0, 0
  br i1 %cmp1, label %if.end, label %cleanup

if.end:                                           ; preds = %if.then
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  %cmp5 = icmp eq i32 %1, -2
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  store i32 1, i32* %action_type, align 8, !tbaa !22
  br label %if.end29

if.else:                                          ; preds = %if.end
  store i32 2, i32* %action_type, align 8, !tbaa !22
  br label %if.end29

if.else11:                                        ; preds = %entry
  switch i32 %state, label %if.end29 [
    i32 4, label %if.then14
    i32 7, label %if.then19
  ]

if.then14:                                        ; preds = %if.else11
  %action_type15 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  store i32 2, i32* %action_type15, align 8, !tbaa !22
  br label %if.end29

if.then19:                                        ; preds = %if.else11
  %action_type20 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %2 = load i32, i32* %action_type20, align 8, !tbaa !22
  %cmp21.not = icmp eq i32 %2, 0
  br i1 %cmp21.not, label %cleanup, label %if.end29

if.end29:                                         ; preds = %if.else11, %if.then14, %if.then19, %if.then7, %if.else
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp30 = icmp slt i32 %call, 1
  br i1 %cmp30, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.end29
  br i1 %cmp, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end33
  %action_type36 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %3 = load i32, i32* %action_type36, align 8, !tbaa !22
  %cmp37 = icmp eq i32 %3, 2
  br i1 %cmp37, label %if.then39, label %if.end48

if.then39:                                        ; preds = %land.lhs.true
  %p140 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %4 = load i32, i32* %p140, align 4, !tbaa !25
  %5 = add i32 %4, -2
  %6 = icmp ult i32 %5, -3
  br i1 %6, label %cleanup, label %if.end48

if.end48:                                         ; preds = %if.then39, %land.lhs.true, %if.end33
  %call49 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.end48
  switch i32 %state, label %cleanup [
    i32 2, label %land.lhs.true56
    i32 7, label %land.lhs.true74
  ]

land.lhs.true56:                                  ; preds = %if.end53
  %action_type57 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %7 = load i32, i32* %action_type57, align 8, !tbaa !22
  %cmp58 = icmp eq i32 %7, 1
  br i1 %cmp58, label %if.then60, label %cleanup

if.then60:                                        ; preds = %land.lhs.true56
  %p161 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %8 = load i32, i32* %p161, align 4, !tbaa !25
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %if.then68, label %cleanup

if.then68:                                        ; preds = %if.then60
  store i32 -1, i32* %p161, align 4, !tbaa !25
  br label %cleanup

land.lhs.true74:                                  ; preds = %if.end53
  %action_type75 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %10 = load i32, i32* %action_type75, align 8, !tbaa !22
  %cmp76 = icmp eq i32 %10, 1
  br i1 %cmp76, label %if.then78, label %cleanup

if.then78:                                        ; preds = %land.lhs.true74
  %p179 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 -2, i32* %p179, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true56, %if.then68, %if.then78, %land.lhs.true74, %if.then60, %if.end53, %if.end48, %if.then39, %if.end29, %if.then19, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then19 ], [ %call, %if.end29 ], [ -2, %if.then39 ], [ %call49, %if.end48 ], [ -1, %if.then68 ], [ %call49, %if.then78 ], [ %call49, %land.lhs.true74 ], [ %call49, %if.then60 ], [ %call49, %if.end53 ], [ %call49, %land.lhs.true56 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_ec_kdf_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @fix_kdf_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, %struct.kdf_type_map_st* noundef getelementptr inbounds ([3 x %struct.kdf_type_map_st], [3 x %struct.kdf_type_map_st]* @fix_ec_kdf_type.kdf_type_map, i64 0, i64 0)) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_rsa_padding_mode(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %tmp = alloca %struct.ossl_param_st, align 8
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup104, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %state, label %if.end48 [
    i32 1, label %land.lhs.true
    i32 8, label %land.lhs.true13
  ]

land.lhs.true:                                    ; preds = %if.end
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  switch i32 %0, label %if.end48 [
    i32 1, label %if.then3
    i32 2, label %if.then9
  ]

if.then3:                                         ; preds = %land.lhs.true
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %p2, align 8, !tbaa !26
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  store i8* %1, i8** %orig_p2, align 8, !tbaa !54
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  store i8* %arraydecay, i8** %p2, align 8, !tbaa !26
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 50, i32* %p1, align 4, !tbaa !25
  br label %if.end48

if.then9:                                         ; preds = %land.lhs.true
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %2 = bitcast %struct.ossl_param_st** %params to i8**
  %3 = load i8*, i8** %2, align 8, !tbaa !28
  %4 = bitcast %struct.ossl_param_st* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #9
  %param_key = getelementptr inbounds %struct.translation_st, %struct.translation_st* %translation, i64 0, i32 7
  %5 = load i8*, i8** %param_key, align 8, !tbaa !32
  %p110 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  call void @OSSL_PARAM_construct_int(%struct.ossl_param_st* nonnull sret(%struct.ossl_param_st) align 8 %tmp, i8* noundef %5, i32* noundef nonnull %p110) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %3, i8* noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !33
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #9
  br label %cleanup104

land.lhs.true13:                                  ; preds = %if.end
  %action_type14 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %6 = load i32, i32* %action_type14, align 8, !tbaa !22
  %cmp15 = icmp eq i32 %6, 1
  br i1 %cmp15, label %if.then16, label %if.end48

if.then16:                                        ; preds = %land.lhs.true13
  %params17 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %7 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params17, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %7, i64 0, i32 1
  %8 = load i32, i32* %data_type, align 8, !tbaa !46
  switch i32 %8, label %for.cond.preheader [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
  ]

for.cond.preheader:                               ; preds = %if.then16
  %p126 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %9 = load i32, i32* %p126, align 4, !tbaa !25
  switch i32 %9, label %if.then32 [
    i32 1, label %cleanup
    i32 3, label %cleanup.fold.split
    i32 4, label %cleanup.fold.split181
    i32 5, label %cleanup.fold.split182
    i32 6, label %cleanup.fold.split183
    i32 7, label %if.then38
  ]

sw.bb:                                            ; preds = %if.then16
  %p119 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %call20 = tail call i32 @OSSL_PARAM_get_int(%struct.ossl_param_st* noundef nonnull %7, i32* noundef nonnull %p119) #11
  br label %cleanup104

sw.bb21:                                          ; preds = %if.then16
  %p123 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %call24 = tail call i32 @OSSL_PARAM_get_uint(%struct.ossl_param_st* noundef nonnull %7, i32* noundef nonnull %p123) #11
  br label %cleanup104

if.then32:                                        ; preds = %for.cond.preheader
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1280, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.fix_rsa_padding_mode, i64 0, i64 0)) #11
  %10 = load i32, i32* %action_type14, align 8, !tbaa !22
  %11 = load i32, i32* %p126, align 4, !tbaa !25
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.90, i64 0, i64 0), i32 noundef %10, i32 noundef 8, i32 noundef %11) #11
  br label %cleanup104

if.then38:                                        ; preds = %for.cond.preheader
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1290, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.fix_rsa_padding_mode, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, i8* noundef null) #11
  br label %cleanup104

cleanup.fold.split:                               ; preds = %for.cond.preheader
  br label %cleanup

cleanup.fold.split181:                            ; preds = %for.cond.preheader
  br label %cleanup

cleanup.fold.split182:                            ; preds = %for.cond.preheader
  br label %cleanup

cleanup.fold.split183:                            ; preds = %for.cond.preheader
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %cleanup.fold.split183, %cleanup.fold.split182, %cleanup.fold.split181, %cleanup.fold.split
  %i.0174.lcssa.ph = phi i64 [ 0, %for.cond.preheader ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split181 ], [ 4, %cleanup.fold.split182 ], [ 5, %cleanup.fold.split183 ]
  %.in = getelementptr inbounds [7 x %struct.ossl_item_st], [7 x %struct.ossl_item_st]* @fix_rsa_padding_mode.str_value_map, i64 0, i64 %i.0174.lcssa.ph, i32 1
  %12 = load i8*, i8** %.in, align 8, !tbaa !55
  %p242 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %12, i8** %p242, align 8, !tbaa !26
  %call44 = tail call i64 @strlen(i8* noundef %12) #12
  %conv = trunc i64 %call44 to i32
  store i32 %conv, i32* %p126, align 4, !tbaa !25
  br label %if.end48

if.end48:                                         ; preds = %if.end, %land.lhs.true, %cleanup, %land.lhs.true13, %if.then3
  %call49 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp50 = icmp slt i32 %call49, 1
  br i1 %cmp50, label %cleanup104, label %if.end53

if.end53:                                         ; preds = %if.end48
  %action_type54 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %13 = load i32, i32* %action_type54, align 8, !tbaa !22
  %cmp55 = icmp eq i32 %13, 2
  %cmp58 = icmp eq i32 %state, 7
  %or.cond = and i1 %cmp58, %cmp55
  br i1 %or.cond, label %if.then66, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53
  %cmp61 = icmp eq i32 %13, 1
  %cmp64 = icmp eq i32 %state, 2
  %or.cond105 = and i1 %cmp64, %cmp61
  br i1 %or.cond105, label %if.then66, label %cleanup104

if.then66:                                        ; preds = %lor.lhs.false, %if.end53
  %p272 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %14 = load i8*, i8** %p272, align 8, !tbaa !26
  %call75 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0)) #12
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.else89, label %for.inc80

for.inc80:                                        ; preds = %if.then66
  %call75.1 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0)) #12
  %cmp76.1 = icmp eq i32 %call75.1, 0
  br i1 %cmp76.1, label %if.else89, label %for.inc80.1

for.inc80.1:                                      ; preds = %for.inc80
  %call75.2 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0)) #12
  %cmp76.2 = icmp eq i32 %call75.2, 0
  br i1 %cmp76.2, label %if.else89, label %for.inc80.2

for.inc80.2:                                      ; preds = %for.inc80.1
  %call75.3 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0)) #12
  %cmp76.3 = icmp eq i32 %call75.3, 0
  br i1 %cmp76.3, label %if.else89, label %for.inc80.3

for.inc80.3:                                      ; preds = %for.inc80.2
  %call75.4 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0)) #12
  %cmp76.4 = icmp eq i32 %call75.4, 0
  br i1 %cmp76.4, label %if.else89, label %for.inc80.4

for.inc80.4:                                      ; preds = %for.inc80.3
  %call75.5 = tail call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0)) #12
  %cmp76.5 = icmp eq i32 %call75.5, 0
  br i1 %cmp76.5, label %if.else89, label %for.inc80.5

for.inc80.5:                                      ; preds = %for.inc80.4
  %call75.6 = tail call i32 @strcmp(i8* noundef %14, i8* noundef null) #12
  %cmp76.6 = icmp eq i32 %call75.6, 0
  br i1 %cmp76.6, label %if.else89, label %if.then85

if.then85:                                        ; preds = %for.inc80.5
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1310, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.fix_rsa_padding_mode, i64 0, i64 0)) #11
  %15 = load i32, i32* %action_type54, align 8, !tbaa !22
  %p187 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %16 = load i32, i32* %p187, align 4, !tbaa !25
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.91, i64 0, i64 0), i32 noundef %15, i32 noundef %state, i32 noundef %16) #11
  store i32 -2, i32* %p187, align 4, !tbaa !25
  br label %if.end101

if.else89:                                        ; preds = %if.then66, %for.inc80, %for.inc80.1, %for.inc80.2, %for.inc80.3, %for.inc80.4, %for.inc80.5
  %i67.0175.lcssa = phi i64 [ 0, %if.then66 ], [ 1, %for.inc80 ], [ 2, %for.inc80.1 ], [ 3, %for.inc80.2 ], [ 4, %for.inc80.3 ], [ 5, %for.inc80.4 ], [ 6, %for.inc80.5 ]
  %cmp90 = icmp eq i32 %state, 2
  %id94 = getelementptr inbounds [7 x %struct.ossl_item_st], [7 x %struct.ossl_item_st]* @fix_rsa_padding_mode.str_value_map, i64 0, i64 %i67.0175.lcssa, i32 0
  %17 = load i32, i32* %id94, align 16, !tbaa !57
  br i1 %cmp90, label %if.then92, label %if.else96

if.then92:                                        ; preds = %if.else89
  %orig_p295 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  %18 = bitcast i8** %orig_p295 to i32**
  %19 = load i32*, i32** %18, align 8, !tbaa !54
  store i32 %17, i32* %19, align 4, !tbaa !35
  br label %if.end101

if.else96:                                        ; preds = %if.else89
  %p199 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %17, i32* %p199, align 4, !tbaa !25
  br label %if.end101

if.end101:                                        ; preds = %if.then92, %if.else96, %if.then85
  %ret.0 = phi i32 [ -2, %if.then85 ], [ %call49, %if.then92 ], [ %call49, %if.else96 ]
  store i8* null, i8** %p272, align 8, !tbaa !26
  br label %cleanup104

cleanup104:                                       ; preds = %sw.bb, %sw.bb21, %if.then38, %if.then32, %lor.lhs.false, %if.end101, %if.end48, %entry, %if.then9
  %retval.1 = phi i32 [ 1, %if.then9 ], [ %call, %entry ], [ %call49, %if.end48 ], [ %ret.0, %if.end101 ], [ %call49, %lor.lhs.false ], [ %call20, %sw.bb ], [ %call24, %sw.bb21 ], [ -2, %if.then38 ], [ -2, %if.then32 ]
  ret i32 %retval.1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_rsa_pss_saltlen(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %state, 1
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp2 = icmp eq i32 %0, 1
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %land.lhs.true
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %p2, align 8, !tbaa !26
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  store i8* %1, i8** %orig_p2, align 8, !tbaa !54
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  store i8* %arraydecay, i8** %p2, align 8, !tbaa !26
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 50, i32* %p1, align 4, !tbaa !25
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true
  %cmp6 = icmp eq i32 %0, 2
  br i1 %cmp6, label %if.then13, label %if.end40

lor.lhs.false:                                    ; preds = %if.end
  %cmp12 = icmp eq i32 %state, 8
  %or.cond97 = and i1 %cmp12, %cmp2
  br i1 %or.cond97, label %if.then13, label %if.end40

if.then13:                                        ; preds = %lor.lhs.false, %if.else
  %p115 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %2 = load i32, i32* %p115, align 4, !tbaa !25
  %3 = icmp ugt i32 %2, -4
  br i1 %3, label %switch.lookup, label %if.then20

if.then20:                                        ; preds = %if.then13
  %arraydecay22 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %call24 = tail call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %arraydecay22, i64 noundef 50, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i64 0, i64 0), i32 noundef %2) #11
  br label %if.end32

switch.lookup:                                    ; preds = %if.then13
  %switch.tableidx = add i32 %2, 3
  %4 = sext i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds [3 x i64], [3 x i64]* @switch.table.fix_rsa_pss_saltlen, i64 0, i64 %4
  %switch.load = load i64, i64* %switch.gep, align 8
  %arraydecay27 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %ptr = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %switch.load, i32 1
  %5 = load i8*, i8** %ptr, align 8, !tbaa !55
  %call29 = tail call i8* @strncpy(i8* noundef nonnull %arraydecay27, i8* noundef %5, i64 noundef 49) #11
  %arrayidx31 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 49
  store i8 0, i8* %arrayidx31, align 1, !tbaa !30
  br label %if.end32

if.end32:                                         ; preds = %switch.lookup, %if.then20
  %arraydecay34 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %p235 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %arraydecay34, i8** %p235, align 8, !tbaa !26
  %call37 = tail call i64 @strlen(i8* noundef nonnull %arraydecay34) #12
  %conv = trunc i64 %call37 to i32
  store i32 %conv, i32* %p115, align 4, !tbaa !25
  br label %if.end40

if.end40:                                         ; preds = %if.else, %lor.lhs.false, %if.end32, %if.then3
  %call41 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  %cmp42 = icmp slt i32 %call41, 1
  br i1 %cmp42, label %cleanup, label %if.end45

if.end45:                                         ; preds = %if.end40
  %action_type46 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %6 = load i32, i32* %action_type46, align 8, !tbaa !22
  %cmp47 = icmp eq i32 %6, 2
  %cmp50 = icmp eq i32 %state, 7
  %or.cond98 = and i1 %cmp50, %cmp47
  br i1 %or.cond98, label %if.then59, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.end45
  %cmp54 = icmp eq i32 %6, 1
  %cmp57 = icmp eq i32 %state, 2
  %or.cond99 = and i1 %cmp57, %cmp54
  br i1 %or.cond99, label %if.then59, label %cleanup

if.then59:                                        ; preds = %lor.lhs.false52, %if.end45
  %p265 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %7 = load i8*, i8** %p265, align 8, !tbaa !26
  %call68 = tail call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0)) #12
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.else82, label %for.inc73

for.inc73:                                        ; preds = %if.then59
  %call68.1 = tail call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0)) #12
  %cmp69.1 = icmp eq i32 %call68.1, 0
  br i1 %cmp69.1, label %if.else82, label %for.inc73.1

for.inc73.1:                                      ; preds = %for.inc73
  %call68.2 = tail call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0)) #12
  %cmp69.2 = icmp eq i32 %call68.2, 0
  br i1 %cmp69.2, label %if.else82, label %if.then78

if.then78:                                        ; preds = %for.inc73.1
  %call80 = tail call i32 @atoi(i8* noundef %7) #12
  %p181 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %call80, i32* %p181, align 4, !tbaa !25
  br label %if.end94

if.else82:                                        ; preds = %if.then59, %for.inc73, %for.inc73.1
  %i60.0161.lcssa = phi i64 [ 0, %if.then59 ], [ 1, %for.inc73 ], [ 2, %for.inc73.1 ]
  %cmp83 = icmp eq i32 %state, 2
  %id87 = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @fix_rsa_pss_saltlen.str_value_map, i64 0, i64 %i60.0161.lcssa, i32 0
  %8 = load i32, i32* %id87, align 16, !tbaa !57
  br i1 %cmp83, label %if.then85, label %if.else89

if.then85:                                        ; preds = %if.else82
  %orig_p288 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  %9 = bitcast i8** %orig_p288 to i32**
  %10 = load i32*, i32** %9, align 8, !tbaa !54
  store i32 %8, i32* %10, align 4, !tbaa !35
  br label %if.end94

if.else89:                                        ; preds = %if.else82
  %p192 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %8, i32* %p192, align 4, !tbaa !25
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.else89, %if.then78
  store i8* null, i8** %p265, align 8, !tbaa !26
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false52, %if.end94, %if.end40, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call41, %if.end40 ], [ %call41, %if.end94 ], [ %call41, %lor.lhs.false52 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_hkdf_mode(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup73, label %if.end

if.end:                                           ; preds = %entry
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp1 = icmp eq i32 %0, 2
  %cmp2 = icmp eq i32 %state, 1
  %or.cond = and i1 %cmp2, %cmp1
  br i1 %or.cond, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp4 = icmp eq i32 %0, 1
  %cmp6 = icmp eq i32 %state, 8
  %or.cond75 = and i1 %cmp6, %cmp4
  br i1 %or.cond75, label %if.then7, label %if.end19

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %cleanup73

switch.lookup:                                    ; preds = %if.then7
  %switch.idx.cast = zext i32 %1 to i64
  %ptr = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @fix_hkdf_mode.str_value_map, i64 0, i64 %switch.idx.cast, i32 1
  %3 = load i8*, i8** %ptr, align 8, !tbaa !55
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %3, i8** %p2, align 8, !tbaa !26
  %call17 = tail call i64 @strlen(i8* noundef %3) #12
  %conv = trunc i64 %call17 to i32
  store i32 %conv, i32* %p1, align 4, !tbaa !25
  br label %if.end19

if.end19:                                         ; preds = %switch.lookup, %lor.lhs.false
  %call20 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  %cmp21 = icmp slt i32 %call20, 1
  br i1 %cmp21, label %cleanup73, label %if.end24

if.end24:                                         ; preds = %if.end19
  %4 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp26 = icmp eq i32 %4, 2
  %cmp29 = icmp eq i32 %state, 7
  %or.cond76 = and i1 %cmp29, %cmp26
  br i1 %or.cond76, label %if.then38, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.end24
  %cmp33 = icmp eq i32 %4, 1
  %cmp36 = icmp eq i32 %state, 2
  %or.cond77 = and i1 %cmp36, %cmp33
  br i1 %or.cond77, label %if.then38, label %cleanup73

if.then38:                                        ; preds = %lor.lhs.false31, %if.end24
  %p244 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %5 = load i8*, i8** %p244, align 8, !tbaa !26
  %call47 = tail call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i64 0, i64 0)) #12
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.end58, label %for.inc52

for.inc52:                                        ; preds = %if.then38
  %call47.1 = tail call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.96, i64 0, i64 0)) #12
  %cmp48.1 = icmp eq i32 %call47.1, 0
  br i1 %cmp48.1, label %if.end58, label %for.inc52.1

for.inc52.1:                                      ; preds = %for.inc52
  %call47.2 = tail call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i64 0, i64 0)) #12
  %cmp48.2 = icmp eq i32 %call47.2, 0
  br i1 %cmp48.2, label %if.end58, label %cleanup73

if.end58:                                         ; preds = %if.then38, %for.inc52, %for.inc52.1
  %i39.0119.lcssa = phi i64 [ 0, %if.then38 ], [ 1, %for.inc52 ], [ 2, %for.inc52.1 ]
  %cmp59 = icmp eq i32 %state, 2
  br i1 %cmp59, label %if.end67, label %if.else

if.else:                                          ; preds = %if.end58
  %id65 = getelementptr inbounds [3 x %struct.ossl_item_st], [3 x %struct.ossl_item_st]* @fix_hkdf_mode.str_value_map, i64 0, i64 %i39.0119.lcssa, i32 0
  %6 = load i32, i32* %id65, align 16, !tbaa !57
  %p166 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %6, i32* %p166, align 4, !tbaa !25
  br label %if.end67

if.end67:                                         ; preds = %if.end58, %if.else
  store i8* null, i8** %p244, align 8, !tbaa !26
  br label %cleanup73

cleanup73:                                        ; preds = %if.then7, %for.inc52.1, %lor.lhs.false31, %if.end67, %if.end19, %entry
  %retval.3 = phi i32 [ %call, %entry ], [ %call20, %if.end19 ], [ 1, %if.end67 ], [ 1, %lor.lhs.false31 ], [ 0, %for.inc52.1 ], [ 0, %if.then7 ]
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fix_cipher(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %call = tail call fastcc i32 @fix_cipher_md(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i8* (i8*)* noundef nonnull @get_cipher_name, i8* (%struct.ossl_lib_ctx_st*, i8*)* noundef nonnull @get_cipher_by_name) #10
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fix_kdf_type(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, %struct.kdf_type_map_st* nocapture noundef readonly %kdf_type_map) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %state, 1
  br i1 %cmp1, label %if.then2, label %if.end15.thread

if.then2:                                         ; preds = %if.end
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp3 = icmp eq i32 %0, 0
  br i1 %cmp3, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.then2
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %1 = load i32, i32* %p1, align 4, !tbaa !25
  %cmp8 = icmp eq i32 %1, -2
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %arraydecay, i8** %p2, align 8, !tbaa !26
  store i32 50, i32* %p1, align 4, !tbaa !25
  br label %if.end15

if.end15:                                         ; preds = %if.end7, %if.then10
  %storemerge = phi i32 [ 1, %if.then10 ], [ 2, %if.end7 ]
  store i32 %storemerge, i32* %action_type, align 8, !tbaa !22
  %call16 = tail call fastcc i32 @default_check(i32 noundef 1, %struct.translation_st* noundef %translation) #10
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %cleanup, label %land.lhs.true

if.end15.thread:                                  ; preds = %if.end
  %call16146 = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp17147 = icmp slt i32 %call16146, 1
  br i1 %cmp17147, label %cleanup, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end15
  %2 = load i32, i32* %action_type, align 8, !tbaa !22
  %cmp24 = icmp eq i32 %2, 2
  br i1 %cmp24, label %if.then32, label %if.end50

lor.lhs.false:                                    ; preds = %if.end15.thread
  %cmp26 = icmp eq i32 %state, 8
  br i1 %cmp26, label %land.lhs.true28, label %if.end50

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %action_type29 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %3 = load i32, i32* %action_type29, align 8, !tbaa !22
  %cmp30 = icmp eq i32 %3, 1
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %land.lhs.true28, %land.lhs.true
  %kdf_type_str154 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map, i64 0, i32 1
  %4 = load i8*, i8** %kdf_type_str154, align 8, !tbaa !58
  %cmp33.not155 = icmp eq i8* %4, null
  br i1 %cmp33.not155, label %cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then32
  %p135 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %5 = load i32, i32* %p135, align 4, !tbaa !25
  %kdf_type_num169 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map, i64 0, i32 0
  %6 = load i32, i32* %kdf_type_num169, align 8, !tbaa !60
  %cmp36170 = icmp eq i32 %5, %6
  br i1 %cmp36170, label %if.end45, label %for.inc

for.body:                                         ; preds = %for.inc
  %kdf_type_num = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %incdec.ptr, i64 0, i32 0
  %7 = load i32, i32* %kdf_type_num, align 8, !tbaa !60
  %cmp36 = icmp eq i32 %5, %7
  br i1 %cmp36, label %if.end45, label %for.inc, !llvm.loop !61

for.inc:                                          ; preds = %for.body.lr.ph, %for.body
  %kdf_type_map.addr.0156171 = phi %struct.kdf_type_map_st* [ %incdec.ptr, %for.body ], [ %kdf_type_map, %for.body.lr.ph ]
  %incdec.ptr = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.0156171, i64 1
  %kdf_type_str = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.0156171, i64 1, i32 1
  %8 = load i8*, i8** %kdf_type_str, align 8, !tbaa !58
  %cmp33.not = icmp eq i8* %8, null
  br i1 %cmp33.not, label %cleanup, label %for.body, !llvm.loop !61

if.end45:                                         ; preds = %for.body, %for.body.lr.ph
  %.lcssa = phi i8* [ %4, %for.body.lr.ph ], [ %8, %for.body ]
  %kdf_type_map.addr.0156.lcssa = phi %struct.kdf_type_map_st* [ %kdf_type_map, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %p240 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* %.lcssa, i8** %p240, align 8, !tbaa !26
  %call47 = tail call i64 @strlen(i8* noundef nonnull %.lcssa) #12
  %conv48 = trunc i64 %call47 to i32
  store i32 %conv48, i32* %p135, align 4, !tbaa !25
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %if.end45, %land.lhs.true28, %lor.lhs.false
  %kdf_type_map.addr.1 = phi %struct.kdf_type_map_st* [ %kdf_type_map.addr.0156.lcssa, %if.end45 ], [ %kdf_type_map, %land.lhs.true28 ], [ %kdf_type_map, %lor.lhs.false ], [ %kdf_type_map, %land.lhs.true ]
  %call51 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp52 = icmp slt i32 %call51, 1
  br i1 %cmp52, label %cleanup, label %if.end55

if.end55:                                         ; preds = %if.end50
  switch i32 %state, label %cleanup [
    i32 2, label %land.lhs.true58
    i32 7, label %land.lhs.true65
  ]

land.lhs.true58:                                  ; preds = %if.end55
  %action_type59 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %9 = load i32, i32* %action_type59, align 8, !tbaa !22
  %cmp60 = icmp eq i32 %9, 1
  br i1 %cmp60, label %if.then69, label %cleanup

land.lhs.true65:                                  ; preds = %if.end55
  %action_type66 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %10 = load i32, i32* %action_type66, align 8, !tbaa !22
  switch i32 %10, label %cleanup [
    i32 2, label %if.then69
    i32 1, label %if.then96
  ]

if.then69:                                        ; preds = %land.lhs.true65, %land.lhs.true58
  %p170 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 -1, i32* %p170, align 4, !tbaa !25
  %kdf_type_str72157 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.1, i64 0, i32 1
  %11 = load i8*, i8** %kdf_type_str72157, align 8, !tbaa !58
  %cmp73.not158 = icmp eq i8* %11, null
  br i1 %cmp73.not158, label %for.end87, label %for.body75.lr.ph

for.body75.lr.ph:                                 ; preds = %if.then69
  %p276 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %12 = load i8*, i8** %p276, align 8, !tbaa !26
  br label %for.body75

for.body75:                                       ; preds = %for.body75.lr.ph, %for.inc85
  %13 = phi i8* [ %11, %for.body75.lr.ph ], [ %15, %for.inc85 ]
  %kdf_type_map.addr.2159 = phi %struct.kdf_type_map_st* [ %kdf_type_map.addr.1, %for.body75.lr.ph ], [ %incdec.ptr86, %for.inc85 ]
  %call78 = tail call i32 @strcasecmp(i8* noundef %12, i8* noundef nonnull %13) #12
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %if.then81, label %for.inc85

if.then81:                                        ; preds = %for.body75
  %kdf_type_num82 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.2159, i64 0, i32 0
  %14 = load i32, i32* %kdf_type_num82, align 8, !tbaa !60
  store i32 %14, i32* %p170, align 4, !tbaa !25
  br label %for.end87

for.inc85:                                        ; preds = %for.body75
  %incdec.ptr86 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.2159, i64 1
  %kdf_type_str72 = getelementptr inbounds %struct.kdf_type_map_st, %struct.kdf_type_map_st* %kdf_type_map.addr.2159, i64 1, i32 1
  %15 = load i8*, i8** %kdf_type_str72, align 8, !tbaa !58
  %cmp73.not = icmp eq i8* %15, null
  br i1 %cmp73.not, label %for.end87, label %for.body75, !llvm.loop !62

for.end87:                                        ; preds = %for.inc85, %if.then69, %if.then81
  %ret.1 = phi i32 [ 1, %if.then81 ], [ -1, %if.then69 ], [ -1, %for.inc85 ]
  %p288 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* null, i8** %p288, align 8, !tbaa !26
  br label %cleanup

if.then96:                                        ; preds = %land.lhs.true65
  %p197 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 -2, i32* %p197, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %for.inc, %if.then32, %land.lhs.true65, %if.end55, %land.lhs.true58, %if.end15.thread, %if.then96, %for.end87, %if.end50, %if.end15, %if.then2, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ 0, %if.then2 ], [ %call16, %if.end15 ], [ %call51, %if.end50 ], [ %ret.1, %for.end87 ], [ %call51, %if.then96 ], [ %call16146, %if.end15.thread ], [ %call51, %land.lhs.true58 ], [ %call51, %if.end55 ], [ %call51, %land.lhs.true65 ], [ -2, %if.then32 ], [ -2, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @fix_cipher_md(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i8* (i8*)* nocapture noundef readonly %get_name, i8* (%struct.ossl_lib_ctx_st*, i8*)* nocapture noundef readonly %get_algo_by_name) unnamed_addr #0 {
entry:
  %call = tail call fastcc i32 @default_check(i32 noundef %state, %struct.translation_st* noundef %translation) #10
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  switch i32 %state, label %if.end44 [
    i32 1, label %land.lhs.true
    i32 8, label %land.lhs.true23
  ]

land.lhs.true:                                    ; preds = %if.end
  %action_type = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %0 = load i32, i32* %action_type, align 8, !tbaa !22
  switch i32 %0, label %if.end44 [
    i32 1, label %if.then3
    i32 2, label %if.then9
  ]

if.then3:                                         ; preds = %land.lhs.true
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %1 = load i8*, i8** %p2, align 8, !tbaa !26
  %orig_p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  store i8* %1, i8** %orig_p2, align 8, !tbaa !54
  %arraydecay = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 10, i64 0
  store i8* %arraydecay, i8** %p2, align 8, !tbaa !26
  br label %if.end44.sink.split

if.then9:                                         ; preds = %land.lhs.true
  %p210 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = load i8*, i8** %p210, align 8, !tbaa !26
  %cmp11 = icmp eq i8* %2, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then9
  %p112 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  %3 = load i32, i32* %p112, align 4, !tbaa !25
  %call13 = tail call i8* @OBJ_nid2sn(i32 noundef %3) #11
  br label %cond.end

cond.false:                                       ; preds = %if.then9
  %call15 = tail call i8* %get_name(i8* noundef nonnull %2) #11, !callees !63
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call13, %cond.true ], [ %call15, %cond.false ]
  store i8* %cond, i8** %p210, align 8, !tbaa !26
  %call18 = tail call i64 @strlen(i8* noundef %cond) #12
  %conv = trunc i64 %call18 to i32
  br label %if.end44.sink.split

land.lhs.true23:                                  ; preds = %if.end
  %action_type24 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %4 = load i32, i32* %action_type24, align 8, !tbaa !22
  %cmp25 = icmp eq i32 %4, 1
  br i1 %cmp25, label %if.then27, label %if.end44

if.then27:                                        ; preds = %land.lhs.true23
  %p228 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %5 = load i8*, i8** %p228, align 8, !tbaa !26
  %cmp29 = icmp eq i8* %5, null
  br i1 %cmp29, label %cond.end35, label %cond.false32

cond.false32:                                     ; preds = %if.then27
  %call34 = tail call i8* %get_name(i8* noundef nonnull %5) #11, !callees !63
  br label %cond.end35

cond.end35:                                       ; preds = %if.then27, %cond.false32
  %cond36 = phi i8* [ %call34, %cond.false32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.79, i64 0, i64 0), %if.then27 ]
  store i8* %cond36, i8** %p228, align 8, !tbaa !26
  %call39 = tail call i64 @strlen(i8* noundef %cond36) #12
  %conv40 = trunc i64 %call39 to i32
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then3, %cond.end35, %cond.end
  %conv.sink = phi i32 [ %conv, %cond.end ], [ %conv40, %cond.end35 ], [ 50, %if.then3 ]
  %p119 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %conv.sink, i32* %p119, align 4, !tbaa !25
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.end, %land.lhs.true, %land.lhs.true23
  %call45 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #10
  %cmp46 = icmp slt i32 %call45, 1
  br i1 %cmp46, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.end44
  switch i32 %state, label %cleanup [
    i32 2, label %land.lhs.true52
    i32 7, label %land.lhs.true64
  ]

land.lhs.true52:                                  ; preds = %if.end49
  %action_type53 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %6 = load i32, i32* %action_type53, align 8, !tbaa !22
  %cmp54 = icmp eq i32 %6, 1
  br i1 %cmp54, label %if.then56, label %cleanup

if.then56:                                        ; preds = %land.lhs.true52
  %pctx = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  %7 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx, align 8, !tbaa !27
  %libctx = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %7, i64 0, i32 1
  %8 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx, align 8, !tbaa !64
  %p257 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %9 = load i8*, i8** %p257, align 8, !tbaa !26
  %call58 = tail call i8* %get_algo_by_name(%struct.ossl_lib_ctx_st* noundef %8, i8* noundef %9) #11, !callees !65
  %orig_p259 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 9
  %10 = bitcast i8** %orig_p259 to i8***
  %11 = load i8**, i8*** %10, align 8, !tbaa !54
  store i8* %call58, i8** %11, align 8, !tbaa !34
  br label %cleanup.sink.split

land.lhs.true64:                                  ; preds = %if.end49
  %action_type65 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 1
  %12 = load i32, i32* %action_type65, align 8, !tbaa !22
  %cmp66 = icmp eq i32 %12, 2
  br i1 %cmp66, label %if.then68, label %cleanup

if.then68:                                        ; preds = %land.lhs.true64
  %pctx69 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 0
  %13 = load %struct.evp_pkey_ctx_st*, %struct.evp_pkey_ctx_st** %pctx69, align 8, !tbaa !27
  %libctx70 = getelementptr inbounds %struct.evp_pkey_ctx_st, %struct.evp_pkey_ctx_st* %13, i64 0, i32 1
  %14 = load %struct.ossl_lib_ctx_st*, %struct.ossl_lib_ctx_st** %libctx70, align 8, !tbaa !64
  %p271 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %15 = load i8*, i8** %p271, align 8, !tbaa !26
  %call72 = tail call i8* %get_algo_by_name(%struct.ossl_lib_ctx_st* noundef %14, i8* noundef %15) #11, !callees !65
  store i8* %call72, i8** %p271, align 8, !tbaa !26
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then68, %if.then56
  %.sink = phi i32 [ 1, %if.then56 ], [ 0, %if.then68 ]
  %p160 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %.sink, i32* %p160, align 4, !tbaa !25
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true52, %land.lhs.true64, %if.end49, %if.end44, %entry
  %retval.0 = phi i32 [ %call, %entry ], [ %call45, %if.end44 ], [ %call45, %if.end49 ], [ %call45, %land.lhs.true64 ], [ %call45, %land.lhs.true52 ], [ %call45, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_md_name(i8* noundef %md) #0 {
entry:
  %0 = bitcast i8* %md to %struct.evp_md_st*
  %call = tail call i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef %0) #11
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_md_by_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) #0 {
entry:
  %call = tail call %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) #11
  %0 = bitcast %struct.evp_md_st* %call to i8*
  ret i8* %0
}

declare i8* @OBJ_nid2sn(i32 noundef) local_unnamed_addr #4

declare i8* @EVP_MD_get0_name(%struct.evp_md_st* noundef) local_unnamed_addr #4

declare %struct.evp_md_st* @evp_get_digestbyname_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @OBJ_obj2txt(i8* noundef, i32 noundef, %struct.asn1_object_st* noundef, i32 noundef) local_unnamed_addr #4

declare %struct.asn1_object_st* @OBJ_txt2obj(i8* noundef, i32 noundef) local_unnamed_addr #4

declare i8* @ossl_dh_gen_type_id2name(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
declare i32 @atoi(i8* noundef nonnull) local_unnamed_addr #8

declare i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef) local_unnamed_addr #4

declare %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) local_unnamed_addr #5

declare i32 @OBJ_sn2nid(i8* noundef) local_unnamed_addr #4

declare i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_cipher_name(i8* noundef %cipher) #0 {
entry:
  %0 = bitcast i8* %cipher to %struct.evp_cipher_st*
  %call = tail call i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef %0) #11
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_cipher_by_name(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) #0 {
entry:
  %call = tail call %struct.evp_cipher_st* @evp_get_cipherbyname_ex(%struct.ossl_lib_ctx_st* noundef %libctx, i8* noundef %name) #11
  %0 = bitcast %struct.evp_cipher_st* %call to i8*
  ret i8* %0
}

declare i8* @EVP_CIPHER_get0_name(%struct.evp_cipher_st* noundef) local_unnamed_addr #4

declare %struct.evp_cipher_st* @evp_get_cipherbyname_ex(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #4

declare i32 @EVP_PKEY_CTX_ctrl(%struct.evp_pkey_ctx_st* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc %struct.translation_st* @lookup_evp_pkey_translation(%struct.translation_st* nocapture noundef %tmpl) unnamed_addr #3 {
entry:
  %call = tail call fastcc %struct.translation_st* @lookup_translation(%struct.translation_st* noundef %tmpl, %struct.translation_st* noundef getelementptr inbounds ([39 x %struct.translation_st], [39 x %struct.translation_st]* @evp_pkey_translations, i64 0, i64 0), i64 noundef 39) #10
  ret %struct.translation_st* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_payload_group_name(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  store i8* null, i8** %p2, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 408, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %call2 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %1) #11
  %call3 = tail call i32 @DH_get_nid(%struct.dh_st* noundef %call2) #11
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %sw.epilogthread-pre-split, label %if.then

if.then:                                          ; preds = %sw.bb
  %call4 = tail call %struct.dh_named_group_st* @ossl_ffc_uid_to_dh_named_group(i32 noundef %call3) #11
  %call5 = tail call i8* @ossl_ffc_named_group_get_name(%struct.dh_named_group_st* noundef %call4) #11
  store i8* %call5, i8** %p2, align 8, !tbaa !26
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %call8 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %1) #11
  %call9 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %call8) #11
  %cmp10.not = icmp eq %struct.ec_group_st* %call9, null
  br i1 %cmp10.not, label %sw.epilogthread-pre-split, label %if.end13

if.end13:                                         ; preds = %sw.bb7
  %call12 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef nonnull %call9) #11
  %cmp14.not = icmp eq i32 %call12, 0
  br i1 %cmp14.not, label %sw.epilogthread-pre-split, label %if.then15

if.then15:                                        ; preds = %if.end13
  %call16 = tail call i8* @OSSL_EC_curve_nid2name(i32 noundef %call12) #11
  store i8* %call16, i8** %p2, align 8, !tbaa !26
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1504, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_payload_group_name, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #11
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %sw.bb7, %sw.bb, %if.end13
  %.pr = load i8*, i8** %p2, align 8, !tbaa !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.then15, %if.then
  %2 = phi i8* [ %.pr, %sw.epilogthread-pre-split ], [ %call16, %if.then15 ], [ %call5, %if.then ]
  %cmp20 = icmp eq i8* %2, null
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %sw.epilog
  %call24 = tail call i64 @strlen(i8* noundef nonnull %2) #12
  %conv = trunc i64 %call24 to i32
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %conv, i32* %p1, align 4, !tbaa !25
  %call25 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end22, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call25, %if.end22 ], [ 1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_payload_private_key(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  store i8* null, i8** %p2, align 8, !tbaa !26
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %2 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %2, i64 0, i32 1
  %3 = load i32, i32* %data_type, align 8, !tbaa !46
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 408, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %1) #11
  %call3 = tail call %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef %call2) #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %1) #11
  %call7 = tail call %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef %call6) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1549, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.get_payload_private_key, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %call7.sink = phi %struct.bignum_st* [ %call7, %sw.bb5 ], [ %call3, %sw.bb ]
  %4 = bitcast i8** %p2 to %struct.bignum_st**
  store %struct.bignum_st* %call7.sink, %struct.bignum_st** %4, align 8, !tbaa !26
  %call9 = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %sw.epilog, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ %call9, %sw.epilog ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_payload_public_key(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %buf = alloca i8*, align 8
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %2 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #9
  store i8* null, i8** %buf, align 8, !tbaa !34
  store i8* null, i8** %p2, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.default30 [
    i32 920, label %sw.bb
    i32 28, label %sw.bb
    i32 116, label %sw.bb10
    i32 408, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry, %entry
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %3 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %3, i64 0, i32 1
  %4 = load i32, i32* %data_type, align 8, !tbaa !46
  switch i32 %4, label %cleanup [
    i32 5, label %sw.bb2
    i32 2, label %sw.bb6
  ]

sw.bb2:                                           ; preds = %sw.bb
  %call3 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %1) #11
  %call4 = call i64 @ossl_dh_key2buf(%struct.dh_st* noundef %call3, i8** noundef nonnull %buf, i64 noundef 0, i32 noundef 1) #11
  %sz = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  store i64 %call4, i64* %sz, align 8, !tbaa !45
  %5 = load i8*, i8** %buf, align 8, !tbaa !34
  store i8* %5, i8** %p2, align 8, !tbaa !26
  br label %sw.epilog31

sw.bb6:                                           ; preds = %sw.bb
  %call7 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %1) #11
  %call8 = tail call %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef %call7) #11
  %6 = bitcast i8** %p2 to %struct.bignum_st**
  store %struct.bignum_st* %call8, %struct.bignum_st** %6, align 8, !tbaa !26
  br label %sw.epilog31

sw.bb10:                                          ; preds = %entry
  %params11 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %7 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params11, align 8, !tbaa !28
  %data_type12 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %7, i64 0, i32 1
  %8 = load i32, i32* %data_type12, align 8, !tbaa !46
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %sw.bb10
  %call13 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %1) #11
  %call14 = tail call %struct.bignum_st* @DSA_get0_pub_key(%struct.dsa_st* noundef %call13) #11
  %9 = bitcast i8** %p2 to %struct.bignum_st**
  store %struct.bignum_st* %call14, %struct.bignum_st** %9, align 8, !tbaa !26
  br label %sw.epilog31

sw.bb16:                                          ; preds = %entry
  %params17 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %10 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params17, align 8, !tbaa !28
  %data_type18 = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %10, i64 0, i32 1
  %11 = load i32, i32* %data_type18, align 8, !tbaa !46
  %cmp19 = icmp eq i32 %11, 5
  br i1 %cmp19, label %if.then20, label %cleanup

if.then20:                                        ; preds = %sw.bb16
  %call21 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %1) #11
  %call22 = tail call %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef %call21) #11
  %call23 = tail call %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef %call22) #11
  %call24 = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef %call21) #11
  %call25 = tail call %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef %call21) #11
  %call26 = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %call24, %struct.ec_point_st* noundef %call25, i32 noundef 2, i8** noundef nonnull %buf, %struct.bignum_ctx* noundef %call23) #11
  %sz27 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 7
  store i64 %call26, i64* %sz27, align 8, !tbaa !45
  %12 = load i8*, i8** %buf, align 8, !tbaa !34
  store i8* %12, i8** %p2, align 8, !tbaa !26
  br label %sw.epilog31

sw.default30:                                     ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1607, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.get_payload_public_key, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #11
  br label %cleanup

sw.epilog31:                                      ; preds = %sw.bb2, %sw.bb6, %if.then20, %if.then
  %call32 = call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  %13 = load i8*, i8** %buf, align 8, !tbaa !34
  call void @CRYPTO_free(i8* noundef %13, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1612) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb10, %sw.bb, %sw.epilog31, %sw.default30
  %retval.0 = phi i32 [ 0, %sw.default30 ], [ %call32, %sw.epilog31 ], [ 0, %sw.bb ], [ 0, %sw.bb10 ], [ 0, %sw.bb16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #9
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dh_dsa_payload_p(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.default [
    i32 28, label %sw.bb
    i32 116, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %1) #11
  %call2 = tail call %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef %call1) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %1) #11
  %call5 = tail call %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef %call4) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1648, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.get_dh_dsa_payload_p, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %bn.0 = phi %struct.bignum_st* [ null, %sw.default ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  %call6 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.0) #10
  ret i32 %call6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dh_dsa_payload_g(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.epilog [
    i32 28, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call2 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %2) #11
  %call3 = tail call %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef %call2) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call6 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %3) #11
  %call7 = tail call %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef %call6) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb
  %bn.0 = phi %struct.bignum_st* [ null, %entry ], [ %call7, %sw.bb4 ], [ %call3, %sw.bb ]
  %call8 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.0) #10
  ret i32 %call8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_dh_dsa_payload_q(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  switch i32 %call, label %sw.epilog [
    i32 28, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call2 = tail call %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef %2) #11
  %call3 = tail call %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef %call2) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %3 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call6 = tail call %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef %3) #11
  %call7 = tail call %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef %call6) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb
  %bn.0 = phi %struct.bignum_st* [ null, %entry ], [ %call7, %sw.bb4 ], [ %call3, %sw.bb ]
  %call8 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.0) #10
  ret i32 %call8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_n(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call2 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #11
  %call3 = tail call %struct.bignum_st* @RSA_get0_n(%struct.rsa_st* noundef %call2) #11
  %call4 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call2 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #11
  %call3 = tail call %struct.bignum_st* @RSA_get0_e(%struct.rsa_st* noundef %call2) #11
  %call4 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_d(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call2 = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %2) #11
  %call3 = tail call %struct.bignum_st* @RSA_get0_d(%struct.rsa_st* noundef %call2) #11
  %call4 = tail call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f1(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 0) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f2(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 1) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f3(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f4(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 3) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f5(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 4) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f6(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 5) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f7(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 6) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f8(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 7) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f9(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 8) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_f10(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 9) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e1(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 0) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e2(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 1) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e3(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e4(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 3) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e5(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 4) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e6(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 5) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e7(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 6) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e8(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 7) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e9(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 8) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_e10(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 9) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c1(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 0) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c2(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 1) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c3(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 2) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c4(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 3) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c5(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 4) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c6(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 5) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c7(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 6) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c8(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 7) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_rsa_payload_c9(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i64 noundef 8) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_ec_decoded_from_explicit_params(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx) #0 {
entry:
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef %1) #11
  %cond = icmp eq i32 %call, 408
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef %1) #11
  %call2 = tail call i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef %call1) #11
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %sw.epilog

if.then:                                          ; preds = %sw.bb
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1723, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.get_ec_decoded_from_explicit_params, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 163, i8* noundef null) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 noundef 1729, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.get_ec_decoded_from_explicit_params, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 6, i32 noundef 224, i8* noundef null) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  %call3 = tail call fastcc i32 @get_payload_int(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call3, %sw.epilog ], [ 0, %sw.default ]
  ret i32 %retval.0
}

declare i32 @EVP_PKEY_get_base_id(%struct.evp_pkey_st* noundef) local_unnamed_addr #4

declare %struct.dh_st* @EVP_PKEY_get0_DH(%struct.evp_pkey_st* noundef) local_unnamed_addr #4

declare i32 @DH_get_nid(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #4

declare %struct.ec_key_st* @EVP_PKEY_get0_EC_KEY(%struct.evp_pkey_st* noundef) local_unnamed_addr #4

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #4

declare i8* @OSSL_EC_curve_nid2name(i32 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DH_get0_priv_key(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @EC_KEY_get0_private_key(%struct.ec_key_st* noundef) local_unnamed_addr #4

declare i64 @ossl_dh_key2buf(%struct.dh_st* noundef, i8** noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DH_get0_pub_key(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_pub_key(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.dsa_st* @EVP_PKEY_get0_DSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #4

declare %struct.bignum_ctx* @BN_CTX_new_ex(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #4

declare %struct.ossl_lib_ctx_st* @ossl_ec_key_get_libctx(%struct.ec_key_st* noundef) local_unnamed_addr #4

declare %struct.ec_point_st* @EC_KEY_get0_public_key(%struct.ec_key_st* noundef) local_unnamed_addr #4

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DH_get0_p(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_p(%struct.dsa_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, %struct.bignum_st* noundef %bn) unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %bn, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %0 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %0, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !46
  %cmp1.not = icmp eq i32 %1, 2
  br i1 %cmp1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %2 = bitcast i8** %p2 to %struct.bignum_st**
  store %struct.bignum_st* %bn, %struct.bignum_st** %2, align 8, !tbaa !26
  %call = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end3
  %retval.0 = phi i32 [ %call, %if.end3 ], [ 0, %entry ], [ 0, %if.end ]
  ret i32 %retval.0
}

declare %struct.bignum_st* @DH_get0_g(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_g(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DH_get0_q(%struct.dh_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @DSA_get0_q(%struct.dsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @RSA_get0_n(%struct.rsa_st* noundef) local_unnamed_addr #4

declare %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @RSA_get0_e(%struct.rsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @RSA_get0_d(%struct.rsa_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_rsa_payload_factor(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i64 noundef %factornum) unnamed_addr #0 {
entry:
  %factors = alloca [10 x %struct.bignum_st*], align 16
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %1) #11
  switch i64 %factornum, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.bignum_st* @RSA_get0_p(%struct.rsa_st* noundef %call) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = tail call %struct.bignum_st* @RSA_get0_q(%struct.rsa_st* noundef %call) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call4 = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef %call) #11
  %conv = sext i32 %call4 to i64
  %2 = bitcast [10 x %struct.bignum_st*]* %factors to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #9
  %sub = add i64 %factornum, -2
  %cmp = icmp ult i64 %sub, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %arraydecay = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %factors, i64 0, i64 0
  %call6 = call i32 @RSA_get0_multi_prime_factors(%struct.rsa_st* noundef %call, %struct.bignum_st** noundef nonnull %arraydecay) #11
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %factors, i64 0, i64 %sub
  %3 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  %bn.0 = phi %struct.bignum_st* [ %3, %if.then ], [ null, %land.lhs.true ], [ null, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %bn.1 = phi %struct.bignum_st* [ %bn.0, %if.end ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  %call8 = call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.1) #10
  ret i32 %call8
}

declare %struct.bignum_st* @RSA_get0_p(%struct.rsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @RSA_get0_q(%struct.rsa_st* noundef) local_unnamed_addr #4

declare i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef) local_unnamed_addr #4

declare i32 @RSA_get0_multi_prime_factors(%struct.rsa_st* noundef, %struct.bignum_st** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_rsa_payload_exponent(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i64 noundef %exponentnum) unnamed_addr #0 {
entry:
  %exps = alloca [10 x %struct.bignum_st*], align 16
  %coeffs = alloca [10 x %struct.bignum_st*], align 16
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %1) #11
  switch i64 %exponentnum, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.bignum_st* @RSA_get0_dmp1(%struct.rsa_st* noundef %call) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = tail call %struct.bignum_st* @RSA_get0_dmq1(%struct.rsa_st* noundef %call) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call4 = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef %call) #11
  %conv = sext i32 %call4 to i64
  %2 = bitcast [10 x %struct.bignum_st*]* %exps to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #9
  %3 = bitcast [10 x %struct.bignum_st*]* %coeffs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #9
  %sub = add i64 %exponentnum, -2
  %cmp = icmp ult i64 %sub, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %arraydecay = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %exps, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %coeffs, i64 0, i64 0
  %call7 = call i32 @RSA_get0_multi_prime_crt_params(%struct.rsa_st* noundef %call, %struct.bignum_st** noundef nonnull %arraydecay, %struct.bignum_st** noundef nonnull %arraydecay6) #11
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %exps, i64 0, i64 %sub
  %4 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  %bn.0 = phi %struct.bignum_st* [ %4, %if.then ], [ null, %land.lhs.true ], [ null, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  %bn.1 = phi %struct.bignum_st* [ %bn.0, %if.end ], [ %call3, %sw.bb2 ], [ %call1, %sw.bb ]
  %call9 = call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.1) #10
  ret i32 %call9
}

declare %struct.bignum_st* @RSA_get0_dmp1(%struct.rsa_st* noundef) local_unnamed_addr #4

declare %struct.bignum_st* @RSA_get0_dmq1(%struct.rsa_st* noundef) local_unnamed_addr #4

declare i32 @RSA_get0_multi_prime_crt_params(%struct.rsa_st* noundef, %struct.bignum_st** noundef, %struct.bignum_st** noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_rsa_payload_coefficient(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i64 noundef %coefficientnum) unnamed_addr #0 {
entry:
  %exps = alloca [10 x %struct.bignum_st*], align 16
  %coeffs = alloca [10 x %struct.bignum_st*], align 16
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  %0 = bitcast i8** %p2 to %struct.evp_pkey_st**
  %1 = load %struct.evp_pkey_st*, %struct.evp_pkey_st** %0, align 8, !tbaa !26
  %call = tail call %struct.rsa_st* @EVP_PKEY_get0_RSA(%struct.evp_pkey_st* noundef %1) #11
  %cond = icmp eq i64 %coefficientnum, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %call1 = tail call %struct.bignum_st* @RSA_get0_iqmp(%struct.rsa_st* noundef %call) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call2 = tail call i32 @RSA_get_multi_prime_extra_count(%struct.rsa_st* noundef %call) #11
  %conv = sext i32 %call2 to i64
  %2 = bitcast [10 x %struct.bignum_st*]* %exps to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %2) #9
  %3 = bitcast [10 x %struct.bignum_st*]* %coeffs to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %3) #9
  %sub = add i64 %coefficientnum, -1
  %cmp = icmp ult i64 %sub, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %arraydecay = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %exps, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %coeffs, i64 0, i64 0
  %call5 = call i32 @RSA_get0_multi_prime_crt_params(%struct.rsa_st* noundef %call, %struct.bignum_st** noundef nonnull %arraydecay, %struct.bignum_st** noundef nonnull %arraydecay4) #11
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr inbounds [10 x %struct.bignum_st*], [10 x %struct.bignum_st*]* %coeffs, i64 0, i64 %sub
  %4 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx, align 8, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.default
  %bn.0 = phi %struct.bignum_st* [ %4, %if.then ], [ null, %land.lhs.true ], [ null, %sw.default ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %3) #9
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %bn.1 = phi %struct.bignum_st* [ %call1, %sw.bb ], [ %bn.0, %if.end ]
  %call7 = call fastcc i32 @get_payload_bn(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx, %struct.bignum_st* noundef %bn.1) #10
  ret i32 %call7
}

declare %struct.bignum_st* @RSA_get0_iqmp(%struct.rsa_st* noundef) local_unnamed_addr #4

declare i32 @EC_KEY_decoded_from_explicit_params(%struct.ec_key_st* noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @get_payload_int(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef %ctx, i32 noundef %val) unnamed_addr #0 {
entry:
  %params = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 8
  %0 = load %struct.ossl_param_st*, %struct.ossl_param_st** %params, align 8, !tbaa !28
  %data_type = getelementptr inbounds %struct.ossl_param_st, %struct.ossl_param_st* %0, i64 0, i32 1
  %1 = load i32, i32* %data_type, align 8, !tbaa !46
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %p1 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 5
  store i32 %val, i32* %p1, align 4, !tbaa !25
  %p2 = getelementptr inbounds %struct.translation_ctx_st, %struct.translation_ctx_st* %ctx, i64 0, i32 6
  store i8* null, i8** %p2, align 8, !tbaa !26
  %call = tail call i32 @default_fixup_args(i32 noundef %state, %struct.translation_st* noundef %translation, %struct.translation_ctx_st* noundef nonnull %ctx) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nobuiltin "no-builtins" }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{!"clang version 14.0.0"}
!4 = !{!5, !6, i64 116}
!5 = !{!"evp_pkey_ctx_st", !6, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !7, i64 40, !10, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !6, i64 112, !6, i64 116, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !6, i64 160, !9, i64 168}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"", !9, i64 0, !9, i64 8, !11, i64 16, !6, i64 24}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !6, i64 16}
!13 = !{!"translation_st", !7, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !9, i64 56}
!14 = !{!13, !6, i64 8}
!15 = !{!13, !6, i64 4}
!16 = !{!13, !6, i64 12}
!17 = !{!5, !9, i64 120}
!18 = !{!19, !6, i64 0}
!19 = !{!"evp_pkey_method_st", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248}
!20 = !{!13, !9, i64 56}
!21 = !{!13, !7, i64 0}
!22 = !{!23, !7, i64 8}
!23 = !{!"translation_ctx_st", !9, i64 0, !7, i64 8, !6, i64 12, !9, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !11, i64 40, !9, i64 48, !9, i64 56, !7, i64 64, !9, i64 120, !9, i64 128, !11, i64 136}
!24 = !{!23, !6, i64 12}
!25 = !{!23, !6, i64 28}
!26 = !{!23, !9, i64 32}
!27 = !{!23, !9, i64 0}
!28 = !{!23, !9, i64 48}
!29 = !{!5, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!13, !6, i64 48}
!32 = !{!13, !9, i64 40}
!33 = !{i64 0, i64 8, !34, i64 8, i64 4, !35, i64 16, i64 8, !34, i64 24, i64 8, !36, i64 32, i64 8, !36}
!34 = !{!9, !9, i64 0}
!35 = !{!6, !6, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!23, !11, i64 136}
!38 = !{!23, !9, i64 120}
!39 = !{!40, !11, i64 32}
!40 = !{!"ossl_param_st", !9, i64 0, !6, i64 8, !9, i64 16, !11, i64 24, !11, i64 32}
!41 = !{!23, !9, i64 16}
!42 = !{!23, !6, i64 24}
!43 = !{!40, !9, i64 16}
!44 = !{!40, !11, i64 24}
!45 = !{!23, !11, i64 40}
!46 = !{!40, !6, i64 8}
!47 = !{!13, !9, i64 24}
!48 = !{!13, !9, i64 32}
!49 = !{!40, !9, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = !{!23, !9, i64 56}
!55 = !{!56, !9, i64 8}
!56 = !{!"ossl_item_st", !6, i64 0, !9, i64 8}
!57 = !{!56, !6, i64 0}
!58 = !{!59, !9, i64 8}
!59 = !{!"kdf_type_map_st", !6, i64 0, !9, i64 8}
!60 = !{!59, !6, i64 0}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = !{i8* (i8*)* @get_cipher_name, i8* (i8*)* @get_md_name}
!64 = !{!5, !9, i64 8}
!65 = !{i8* (%struct.ossl_lib_ctx_st*, i8*)* @get_cipher_by_name, i8* (%struct.ossl_lib_ctx_st*, i8*)* @get_md_by_name}
