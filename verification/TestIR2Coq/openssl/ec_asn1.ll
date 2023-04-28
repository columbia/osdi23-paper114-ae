; ModuleID = 'crypto/ec/ec_asn1.c'
source_filename = "crypto/ec/ec_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }
%struct.ASN1_ADB_st = type { i64, i64, i32 (i64*)*, %struct.ASN1_ADB_TABLE_st*, i64, %struct.ASN1_TEMPLATE_st*, %struct.ASN1_TEMPLATE_st* }
%struct.ASN1_ADB_TABLE_st = type { i64, %struct.ASN1_TEMPLATE_st }
%struct.x9_62_pentanomial_st = type { i32, i32, i32 }
%struct.ASN1_VALUE_st = type opaque
%struct.x9_62_characteristic_two_st = type { i32, %struct.asn1_object_st*, %union.anon }
%struct.asn1_object_st = type opaque
%union.anon = type { i8* }
%struct.ec_parameters_st = type { i32, %struct.x9_62_fieldid_st*, %struct.x9_62_curve_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.x9_62_fieldid_st = type { %struct.asn1_object_st*, %union.anon.1 }
%union.anon.1 = type { i8* }
%struct.x9_62_curve_st = type { %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.ecpk_parameters_st = type { i32, %union.anon.2 }
%union.anon.2 = type { %struct.asn1_object_st* }
%struct.ec_privatekey_st = type { i32, %struct.asn1_string_st*, %struct.ecpk_parameters_st*, %struct.asn1_string_st* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon.3, %struct.ossl_lib_ctx_st*, i8* }
%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.bignum_ctx = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8*, %struct.ossl_lib_ctx_st*, i8*, i64 }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon.3 = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.wpacket_st = type { %struct.buf_mem_st*, i8*, i64, i64, i64, %struct.wpacket_sub*, i8 }
%struct.buf_mem_st = type { i64, i8*, i64, i64 }
%struct.wpacket_sub = type { %struct.wpacket_sub*, i64, i64, i64, i32 }

@ECPARAMETERS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([6 x %struct.ASN1_TEMPLATE_st], [6 x %struct.ASN1_TEMPLATE_st]* @ECPARAMETERS_seq_tt, i32 0, i32 0), i64 6, i8* null, i64 48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0) }, align 8
@ECPARAMETERS_seq_tt = internal constant [6 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_FIELDID_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_CURVE_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it }], align 16
@.str = private unnamed_addr constant [13 x i8] c"ECPARAMETERS\00", align 1
@ECPKPARAMETERS_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 2, i64 0, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @ECPKPARAMETERS_ch_tt, i32 0, i32 0), i64 3, i8* null, i64 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0) }, align 8
@ECPKPARAMETERS_ch_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ECPARAMETERS_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it }], align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"ECPKPARAMETERS\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"crypto/ec/ec_asn1.c\00", align 1
@__func__.EC_GROUP_get_ecparameters = private unnamed_addr constant [26 x i8] c"EC_GROUP_get_ecparameters\00", align 1
@__func__.EC_GROUP_get_ecpkparameters = private unnamed_addr constant [28 x i8] c"EC_GROUP_get_ecpkparameters\00", align 1
@__func__.EC_GROUP_new_from_ecparameters = private unnamed_addr constant [31 x i8] c"EC_GROUP_new_from_ecparameters\00", align 1
@__func__.EC_GROUP_new_from_ecpkparameters = private unnamed_addr constant [33 x i8] c"EC_GROUP_new_from_ecpkparameters\00", align 1
@__func__.i2d_ECPKParameters = private unnamed_addr constant [19 x i8] c"i2d_ECPKParameters\00", align 1
@__func__.d2i_ECPrivateKey = private unnamed_addr constant [17 x i8] c"d2i_ECPrivateKey\00", align 1
@__func__.i2d_ECPrivateKey = private unnamed_addr constant [17 x i8] c"i2d_ECPrivateKey\00", align 1
@__func__.i2d_ECParameters = private unnamed_addr constant [17 x i8] c"i2d_ECParameters\00", align 1
@__func__.d2i_ECParameters = private unnamed_addr constant [17 x i8] c"d2i_ECParameters\00", align 1
@__func__.o2i_ECPublicKey = private unnamed_addr constant [16 x i8] c"o2i_ECPublicKey\00", align 1
@__func__.i2o_ECPublicKey = private unnamed_addr constant [16 x i8] c"i2o_ECPublicKey\00", align 1
@__func__.ECDSA_SIG_new = private unnamed_addr constant [14 x i8] c"ECDSA_SIG_new\00", align 1
@X9_62_PENTANOMIAL_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @X9_62_PENTANOMIAL_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0) }, align 8
@X9_62_PENTANOMIAL_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }], align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"X9_62_PENTANOMIAL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"k1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"k2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"k3\00", align 1
@X9_62_CHARACTERISTIC_TWO_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @X9_62_CHARACTERISTIC_TWO_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0) }, align 8
@X9_62_CHARACTERISTIC_TWO_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, %struct.ASN1_TEMPLATE_st { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_CHARACTERISTIC_TWO_adb }], align 16
@.str.7 = private unnamed_addr constant [25 x i8] c"X9_62_CHARACTERISTIC_TWO\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@X9_62_CHARACTERISTIC_TWO_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 8, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([3 x %struct.ASN1_ADB_TABLE_st], [3 x %struct.ASN1_ADB_TABLE_st]* @X9_62_CHARACTERISTIC_TWO_adbtbl, i32 0, i32 0), i64 3, %struct.ASN1_TEMPLATE_st* @char_two_def_tt, %struct.ASN1_TEMPLATE_st* null }, align 8
@X9_62_CHARACTERISTIC_TWO_adbtbl = internal constant [3 x %struct.ASN1_ADB_TABLE_st] [%struct.ASN1_ADB_TABLE_st { i64 681, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_NULL_it } }, %struct.ASN1_ADB_TABLE_st { i64 682, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it } }, %struct.ASN1_ADB_TABLE_st { i64 683, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_PENTANOMIAL_it } }], align 16
@char_two_def_tt = internal constant %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"p.onBasis\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"p.tpBasis\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"p.ppBasis\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"p.other\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"fieldID\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"cofactor\00", align 1
@X9_62_FIELDID_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([2 x %struct.ASN1_TEMPLATE_st], [2 x %struct.ASN1_TEMPLATE_st]* @X9_62_FIELDID_seq_tt, i32 0, i32 0), i64 2, i8* null, i64 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0) }, align 8
@X9_62_FIELDID_seq_tt = internal constant [2 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OBJECT_it }, %struct.ASN1_TEMPLATE_st { i64 256, i64 -1, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_FIELDID_adb }], align 16
@.str.20 = private unnamed_addr constant [14 x i8] c"X9_62_FIELDID\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"fieldType\00", align 1
@X9_62_FIELDID_adb.internal_adb = internal constant %struct.ASN1_ADB_st { i64 0, i64 0, i32 (i64*)* null, %struct.ASN1_ADB_TABLE_st* getelementptr inbounds ([2 x %struct.ASN1_ADB_TABLE_st], [2 x %struct.ASN1_ADB_TABLE_st]* @X9_62_FIELDID_adbtbl, i32 0, i32 0), i64 2, %struct.ASN1_TEMPLATE_st* @fieldID_def_tt, %struct.ASN1_TEMPLATE_st* null }, align 8
@X9_62_FIELDID_adbtbl = internal constant [2 x %struct.ASN1_ADB_TABLE_st] [%struct.ASN1_ADB_TABLE_st { i64 406, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_INTEGER_it } }, %struct.ASN1_ADB_TABLE_st { i64 407, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @X9_62_CHARACTERISTIC_TWO_it } }], align 16
@fieldID_def_tt = internal constant %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_ANY_it }, align 8
@.str.22 = private unnamed_addr constant [8 x i8] c"p.prime\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"p.char_two\00", align 1
@X9_62_CURVE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* @X9_62_CURVE_seq_tt, i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0) }, align 8
@X9_62_CURVE_seq_tt = internal constant [3 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 1, i64 0, i64 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.24 = private unnamed_addr constant [12 x i8] c"X9_62_CURVE\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"value.named_curve\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"value.parameters\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"value.implicitlyCA\00", align 1
@EC_PRIVATEKEY_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([4 x %struct.ASN1_TEMPLATE_st], [4 x %struct.ASN1_TEMPLATE_st]* @EC_PRIVATEKEY_seq_tt, i32 0, i32 0), i64 4, i8* null, i64 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0) }, align 8
@EC_PRIVATEKEY_seq_tt = internal constant [4 x %struct.ASN1_TEMPLATE_st] [%struct.ASN1_TEMPLATE_st { i64 4096, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, %struct.ASN1_TEMPLATE_st { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_OCTET_STRING_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ECPKPARAMETERS_it }, %struct.ASN1_TEMPLATE_st { i64 145, i64 1, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BIT_STRING_it }], align 16
@.str.31 = private unnamed_addr constant [14 x i8] c"EC_PRIVATEKEY\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"privateKey\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"publicKey\00", align 1
@__func__.ec_asn1_group2fieldid = private unnamed_addr constant [22 x i8] c"ec_asn1_group2fieldid\00", align 1
@__func__.ec_asn1_group2curve = private unnamed_addr constant [20 x i8] c"ec_asn1_group2curve\00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.x9_62_pentanomial_st* @X9_62_PENTANOMIAL_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X9_62_PENTANOMIAL_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x9_62_pentanomial_st*
  ret %struct.x9_62_pentanomial_st* %0
}

declare %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @X9_62_PENTANOMIAL_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @X9_62_PENTANOMIAL_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define void @X9_62_PENTANOMIAL_free(%struct.x9_62_pentanomial_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x9_62_pentanomial_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X9_62_PENTANOMIAL_it.local_it) #7
  ret void
}

declare void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.x9_62_characteristic_two_st* @X9_62_CHARACTERISTIC_TWO_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @X9_62_CHARACTERISTIC_TWO_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.x9_62_characteristic_two_st*
  ret %struct.x9_62_characteristic_two_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @X9_62_CHARACTERISTIC_TWO_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @X9_62_CHARACTERISTIC_TWO_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define void @X9_62_CHARACTERISTIC_TWO_free(%struct.x9_62_characteristic_two_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.x9_62_characteristic_two_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @X9_62_CHARACTERISTIC_TWO_it.local_it) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ECPARAMETERS_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ECPARAMETERS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_parameters_st* @ECPARAMETERS_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ECPARAMETERS_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ec_parameters_st*
  ret %struct.ec_parameters_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_parameters_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ECPARAMETERS_it.local_it) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define nonnull %struct.ASN1_ITEM_st* @ECPKPARAMETERS_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @ECPKPARAMETERS_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define %struct.ecpk_parameters_st* @d2i_ECPKPARAMETERS(%struct.ecpk_parameters_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ecpk_parameters_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ECPKPARAMETERS_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ecpk_parameters_st*
  ret %struct.ecpk_parameters_st* %1
}

declare %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECPKPARAMETERS(%struct.ecpk_parameters_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ecpk_parameters_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ECPKPARAMETERS_it.local_it) #7
  ret i32 %call1
}

declare i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ecpk_parameters_st* @ECPKPARAMETERS_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @ECPKPARAMETERS_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ecpk_parameters_st*
  ret %struct.ecpk_parameters_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ecpk_parameters_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ECPKPARAMETERS_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_privatekey_st* @d2i_EC_PRIVATEKEY(%struct.ec_privatekey_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_privatekey_st** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @EC_PRIVATEKEY_it.local_it) #7
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ec_privatekey_st*
  ret %struct.ec_privatekey_st* %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_EC_PRIVATEKEY(%struct.ec_privatekey_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_privatekey_st* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @EC_PRIVATEKEY_it.local_it) #7
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_privatekey_st* @EC_PRIVATEKEY_new() local_unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @EC_PRIVATEKEY_it.local_it) #7
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ec_privatekey_st*
  ret %struct.ec_privatekey_st* %0
}

; Function Attrs: noinline nounwind uwtable
define void @EC_PRIVATEKEY_free(%struct.ec_privatekey_st* noundef %a) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.ec_privatekey_st* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @EC_PRIVATEKEY_it.local_it) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %group, %struct.ec_parameters_st* noundef %params) local_unnamed_addr #0 {
entry:
  %buffer = alloca i8*, align 8
  %0 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %buffer, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_parameters_st* %params, null
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call %struct.ec_parameters_st* @ECPARAMETERS_new() #9
  %cmp1 = icmp eq %struct.ec_parameters_st* %call, null
  br i1 %cmp1, label %err.thread, label %if.end3

err.thread:                                       ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %if.then55

if.end3:                                          ; preds = %entry, %if.then
  %ret.0 = phi %struct.ec_parameters_st* [ %call, %if.then ], [ %params, %entry ]
  %version = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 0
  store i32 1, i32* %version, align 8, !tbaa !8
  %fieldID = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 1
  %1 = load %struct.x9_62_fieldid_st*, %struct.x9_62_fieldid_st** %fieldID, align 8, !tbaa !11
  %call4 = tail call fastcc i32 @ec_asn1_group2fieldid(%struct.ec_group_st* noundef %group, %struct.x9_62_fieldid_st* noundef %1) #9
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end6:                                          ; preds = %if.end3
  %curve = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 2
  %2 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %call7 = tail call fastcc i32 @ec_asn1_group2curve(%struct.ec_group_st* noundef %group, %struct.x9_62_curve_st* noundef %2) #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end10:                                         ; preds = %if.end6
  %call11 = tail call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef %group) #7
  %cmp12 = icmp eq %struct.ec_point_st* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 113, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef %group) #7
  %call16 = call i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef %group, %struct.ec_point_st* noundef nonnull %call11, i32 noundef %call15, i8** noundef nonnull %buffer, %struct.bignum_ctx* noundef null) #7
  %cmp17 = icmp eq i64 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end19:                                         ; preds = %if.end14
  %base = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 3
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base, align 8, !tbaa !13
  %cmp20 = icmp eq %struct.asn1_string_st* %3, null
  br i1 %cmp20, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %call21 = call %struct.asn1_string_st* @ASN1_OCTET_STRING_new() #7
  store %struct.asn1_string_st* %call21, %struct.asn1_string_st** %base, align 8, !tbaa !13
  %cmp23 = icmp eq %struct.asn1_string_st* %call21, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  %4 = load i8*, i8** %buffer, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 431) #7
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end25:                                         ; preds = %land.lhs.true, %if.end19
  %5 = phi %struct.asn1_string_st* [ %call21, %land.lhs.true ], [ %3, %if.end19 ]
  %6 = load i8*, i8** %buffer, align 8, !tbaa !4
  %conv = trunc i64 %call16 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef nonnull %5, i8* noundef %6, i32 noundef %conv) #7
  %call27 = call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef %group) #7
  %cmp28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end31:                                         ; preds = %if.end25
  %order = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 4
  %7 = load %struct.asn1_string_st*, %struct.asn1_string_st** %order, align 8, !tbaa !14
  %call32 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %call27, %struct.asn1_string_st* noundef %7) #7
  store %struct.asn1_string_st* %call32, %struct.asn1_string_st** %order, align 8, !tbaa !14
  %cmp35 = icmp eq %struct.asn1_string_st* %call32, null
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end31
  store %struct.asn1_string_st* %7, %struct.asn1_string_st** %order, align 8, !tbaa !14
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 446, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524301, i8* noundef null) #7
  br label %err

if.end39:                                         ; preds = %if.end31
  %call40 = call %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef %group) #7
  %cmp41.not = icmp eq %struct.bignum_st* %call40, null
  br i1 %cmp41.not, label %cleanup, label %if.then43

if.then43:                                        ; preds = %if.end39
  %cofactor = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %ret.0, i64 0, i32 5
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cofactor, align 8, !tbaa !15
  %call44 = call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %call40, %struct.asn1_string_st* noundef %8) #7
  store %struct.asn1_string_st* %call44, %struct.asn1_string_st** %cofactor, align 8, !tbaa !15
  %cmp47 = icmp eq %struct.asn1_string_st* %call44, null
  br i1 %cmp47, label %if.then49, label %cleanup

if.then49:                                        ; preds = %if.then43
  store %struct.asn1_string_st* %8, %struct.asn1_string_st** %cofactor, align 8, !tbaa !15
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.EC_GROUP_get_ecparameters, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524301, i8* noundef null) #7
  br label %err

err:                                              ; preds = %if.then49, %if.then37, %if.then30, %if.then24, %if.then18, %if.then13, %if.then9, %if.then5
  br i1 %cmp, label %if.then55, label %cleanup

if.then55:                                        ; preds = %err.thread, %err
  %ret.198 = phi %struct.ec_parameters_st* [ null, %err.thread ], [ %ret.0, %err ]
  call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef %ret.198) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then55, %if.end39, %if.then43
  %retval.0 = phi %struct.ec_parameters_st* [ %ret.0, %if.then43 ], [ %ret.0, %if.end39 ], [ null, %if.then55 ], [ null, %err ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.ec_parameters_st* %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_asn1_group2fieldid(%struct.ec_group_st* noundef %group, %struct.x9_62_fieldid_st* noundef %field) unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %cmp = icmp eq %struct.ec_group_st* %group, null
  %cmp1 = icmp eq %struct.x9_62_fieldid_st* %field, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %cleanup121, label %if.end

if.end:                                           ; preds = %entry
  %fieldType = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %field, i64 0, i32 0
  %0 = load %struct.asn1_object_st*, %struct.asn1_object_st** %fieldType, align 8, !tbaa !16
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %0) #7
  %p = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %field, i64 0, i32 1
  %other = bitcast %union.anon.1* %p to %struct.asn1_type_st**
  %1 = load %struct.asn1_type_st*, %struct.asn1_type_st** %other, align 8, !tbaa !18
  tail call void @ASN1_TYPE_free(%struct.asn1_type_st* noundef %1) #7
  %call = tail call i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef nonnull %group) #7
  %call2 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call) #7
  store %struct.asn1_object_st* %call2, %struct.asn1_object_st** %fieldType, align 8, !tbaa !16
  %cmp4 = icmp eq %struct.asn1_object_st* %call2, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524296, i8* noundef null) #7
  br label %err

if.end6:                                          ; preds = %if.end
  switch i32 %call, label %if.else118 [
    i32 406, label %if.then8
    i32 407, label %if.then24
  ]

if.then8:                                         ; preds = %if.end6
  %call9 = tail call %struct.bignum_st* @BN_new() #7
  %cmp10 = icmp eq %struct.bignum_st* %call9, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end12:                                         ; preds = %if.then8
  %call13 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef nonnull %call9, %struct.bignum_st* noundef null, %struct.bignum_st* noundef null, %struct.bignum_ctx* noundef null) #7
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end15:                                         ; preds = %if.end12
  %call16 = tail call %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef nonnull %call9, %struct.asn1_string_st* noundef null) #7
  %prime = bitcast %union.anon.1* %p to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call16, %struct.asn1_string_st** %prime, align 8, !tbaa !18
  %cmp20 = icmp eq %struct.asn1_string_st* %call16, null
  br i1 %cmp20, label %if.then21, label %err

if.then21:                                        ; preds = %if.end15
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 219, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524301, i8* noundef null) #7
  br label %err

if.then24:                                        ; preds = %if.end6
  %call25 = tail call %struct.x9_62_characteristic_two_st* @X9_62_CHARACTERISTIC_TWO_new() #9
  %char_two27 = bitcast %union.anon.1* %p to %struct.x9_62_characteristic_two_st**
  store %struct.x9_62_characteristic_two_st* %call25, %struct.x9_62_characteristic_two_st** %char_two27, align 8, !tbaa !18
  %cmp30 = icmp eq %struct.x9_62_characteristic_two_st* %call25, null
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then24
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end32:                                         ; preds = %if.then24
  %call33 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef nonnull %group) #7
  %m = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %call25, i64 0, i32 0
  store i32 %call33, i32* %m, align 8, !tbaa !19
  %call35 = tail call i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef nonnull %group) #7
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end39:                                         ; preds = %if.end32
  %call40 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call35) #7
  %type = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %call25, i64 0, i32 1
  store %struct.asn1_object_st* %call40, %struct.asn1_object_st** %type, align 8, !tbaa !21
  %cmp41 = icmp eq %struct.asn1_object_st* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 251, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524296, i8* noundef null) #7
  br label %err

if.end44:                                         ; preds = %if.end39
  switch i32 %call35, label %if.else103 [
    i32 682, label %if.then47
    i32 683, label %if.then70
  ]

if.then47:                                        ; preds = %if.end44
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8
  %call48 = call i32 @EC_GROUP_get_trinomial_basis(%struct.ec_group_st* noundef nonnull %group, i32* noundef nonnull %k) #7
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup.thread, label %if.end51

if.end51:                                         ; preds = %if.then47
  %call52 = call %struct.asn1_string_st* @ASN1_INTEGER_new() #7
  %p53 = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %call25, i64 0, i32 2
  %tpBasis = bitcast %union.anon* %p53 to %struct.asn1_string_st**
  store %struct.asn1_string_st* %call52, %struct.asn1_string_st** %tpBasis, align 8, !tbaa !18
  %cmp56 = icmp eq %struct.asn1_string_st* %call52, null
  br i1 %cmp56, label %cleanup.thread.sink.split, label %if.end59

if.end59:                                         ; preds = %if.end51
  %3 = load i32, i32* %k, align 4, !tbaa !22
  %conv62 = zext i32 %3 to i64
  %call63 = call i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef nonnull %call52, i64 noundef %conv62) #7
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %cleanup.thread.sink.split, label %cleanup

cleanup.thread.sink.split:                        ; preds = %if.end59, %if.end51
  %.sink169 = phi i32 [ 263, %if.end51 ], [ 267, %if.end59 ]
  %.sink = phi i32 [ 786688, %if.end51 ], [ 524301, %if.end59 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink169, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.then47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %err

cleanup:                                          ; preds = %if.end59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8
  br label %err

if.then70:                                        ; preds = %if.end44
  %4 = bitcast i32* %k1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8
  %5 = bitcast i32* %k2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8
  %6 = bitcast i32* %k3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #8
  %call71 = call i32 @EC_GROUP_get_pentanomial_basis(%struct.ec_group_st* noundef nonnull %group, i32* noundef nonnull %k1, i32* noundef nonnull %k2, i32* noundef nonnull %k3) #7
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup98.thread, label %if.end74

if.end74:                                         ; preds = %if.then70
  %call75 = call %struct.x9_62_pentanomial_st* @X9_62_PENTANOMIAL_new() #9
  %p76 = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %call25, i64 0, i32 2
  %ppBasis = bitcast %union.anon* %p76 to %struct.x9_62_pentanomial_st**
  store %struct.x9_62_pentanomial_st* %call75, %struct.x9_62_pentanomial_st** %ppBasis, align 8, !tbaa !18
  %cmp79 = icmp eq %struct.x9_62_pentanomial_st* %call75, null
  br i1 %cmp79, label %if.then81, label %cleanup98

if.then81:                                        ; preds = %if.end74
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup98.thread

cleanup98.thread:                                 ; preds = %if.then81, %if.then70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8
  br label %err

cleanup98:                                        ; preds = %if.end74
  %7 = load i32, i32* %k1, align 4, !tbaa !22
  %k187 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %call75, i64 0, i32 0
  store i32 %7, i32* %k187, align 4, !tbaa !23
  %8 = load i32, i32* %k2, align 4, !tbaa !22
  %9 = load %struct.x9_62_pentanomial_st*, %struct.x9_62_pentanomial_st** %ppBasis, align 8, !tbaa !18
  %k292 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %9, i64 0, i32 1
  store i32 %8, i32* %k292, align 4, !tbaa !25
  %10 = load i32, i32* %k3, align 4, !tbaa !22
  %11 = load %struct.x9_62_pentanomial_st*, %struct.x9_62_pentanomial_st** %ppBasis, align 8, !tbaa !18
  %k397 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %11, i64 0, i32 2
  store i32 %10, i32* %k397, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8
  br label %err

if.else103:                                       ; preds = %if.end44
  %call104 = tail call i32* @ASN1_NULL_new() #7
  %p105 = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %call25, i64 0, i32 2
  %onBasis = bitcast %union.anon* %p105 to i32**
  store i32* %call104, i32** %onBasis, align 8, !tbaa !18
  %cmp108 = icmp eq i32* %call104, null
  br i1 %cmp108, label %if.then110, label %err

if.then110:                                       ; preds = %if.else103
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.else118:                                       ; preds = %if.end6
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 298, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.ec_asn1_group2fieldid, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 131, i8* noundef null) #7
  br label %err

err:                                              ; preds = %cleanup98.thread, %cleanup.thread, %if.then110, %if.then43, %if.then38, %if.then31, %if.end15, %if.else103, %cleanup, %cleanup98, %if.else118, %if.then21, %if.then14, %if.then11, %if.then5
  %tmp.1 = phi %struct.bignum_st* [ null, %if.then5 ], [ null, %if.then11 ], [ %call9, %if.then21 ], [ %call9, %if.then14 ], [ null, %if.else118 ], [ %call9, %if.end15 ], [ null, %if.else103 ], [ null, %cleanup ], [ null, %cleanup98 ], [ null, %if.then31 ], [ null, %if.then38 ], [ null, %if.then43 ], [ null, %if.then110 ], [ null, %cleanup.thread ], [ null, %cleanup98.thread ]
  %ok.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then11 ], [ 0, %if.then21 ], [ 0, %if.then14 ], [ 0, %if.else118 ], [ 1, %if.end15 ], [ 1, %if.else103 ], [ 1, %cleanup ], [ 1, %cleanup98 ], [ 0, %if.then31 ], [ 0, %if.then38 ], [ 0, %if.then43 ], [ 0, %if.then110 ], [ 0, %cleanup.thread ], [ 0, %cleanup98.thread ]
  call void @BN_free(%struct.bignum_st* noundef %tmp.1) #7
  br label %cleanup121

cleanup121:                                       ; preds = %entry, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @ec_asn1_group2curve(%struct.ec_group_st* noundef %group, %struct.x9_62_curve_st* noundef %curve) unnamed_addr #0 {
entry:
  %tobool = icmp ne %struct.ec_group_st* %group, null
  %tobool1 = icmp ne %struct.x9_62_curve_st* %curve, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %lor.lhs.false2, label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %a = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %curve, i64 0, i32 0
  %0 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !27
  %tobool3.not = icmp eq %struct.asn1_string_st* %0, null
  br i1 %tobool3.not, label %cleanup, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %b = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %curve, i64 0, i32 1
  %1 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b, align 8, !tbaa !29
  %tobool5.not = icmp eq %struct.asn1_string_st* %1, null
  br i1 %tobool5.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call %struct.bignum_st* @BN_new() #7
  %cmp = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp, label %if.then9, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %call7 = tail call %struct.bignum_st* @BN_new() #7
  %cmp8 = icmp eq %struct.bignum_st* %call7, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end10:                                         ; preds = %lor.lhs.false6
  %call11 = tail call i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef nonnull %group, %struct.bignum_st* noundef null, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call7, %struct.bignum_ctx* noundef null) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef nonnull %group) #7
  %conv = sext i32 %call15 to i64
  %add = add nsw i64 %conv, 7
  %div = lshr i64 %add, 3
  %call16 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 336) #7
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then23, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end14
  %call20 = tail call i8* @CRYPTO_malloc(i64 noundef %div, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 337) #7
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false19, %if.end14
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end24:                                         ; preds = %lor.lhs.false19
  %conv25 = trunc i64 %div to i32
  %call26 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call, i8* noundef nonnull %call16, i32 noundef %conv25) #7
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then34, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end24
  %call31 = tail call i32 @BN_bn2binpad(%struct.bignum_st* noundef nonnull %call7, i8* noundef nonnull %call20, i32 noundef %conv25) #7
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false29, %if.end24
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524291, i8* noundef null) #7
  br label %err

if.end35:                                         ; preds = %lor.lhs.false29
  %2 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a, align 8, !tbaa !27
  %call38 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %2, i8* noundef nonnull %call16, i32 noundef %conv25) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then45, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end35
  %3 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b, align 8, !tbaa !29
  %call43 = tail call i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef %3, i8* noundef nonnull %call20, i32 noundef %conv25) #7
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false40, %if.end35
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524301, i8* noundef null) #7
  br label %err

if.end46:                                         ; preds = %lor.lhs.false40
  %seed = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 8
  %4 = load i8*, i8** %seed, align 8, !tbaa !30
  %tobool47.not = icmp eq i8* %4, null
  %seed69 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %curve, i64 0, i32 2
  %5 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed69, align 8, !tbaa !33
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end46
  %tobool50.not = icmp eq %struct.asn1_string_st* %5, null
  br i1 %tobool50.not, label %if.then51, label %if.end58

if.then51:                                        ; preds = %if.then48
  %call52 = tail call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #7
  store %struct.asn1_string_st* %call52, %struct.asn1_string_st** %seed69, align 8, !tbaa !33
  %cmp54 = icmp eq %struct.asn1_string_st* %call52, null
  br i1 %cmp54, label %if.then56, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  %.pre = load i8*, i8** %seed, align 8, !tbaa !30
  br label %if.end58

if.then56:                                        ; preds = %if.then51
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end58:                                         ; preds = %if.then51.if.end58_crit_edge, %if.then48
  %6 = phi i8* [ %.pre, %if.then51.if.end58_crit_edge ], [ %4, %if.then48 ]
  %7 = phi %struct.asn1_string_st* [ %call52, %if.then51.if.end58_crit_edge ], [ %5, %if.then48 ]
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %7, i64 0, i32 3
  %8 = load i64, i64* %flags, align 8, !tbaa !34
  %and = and i64 %8, -16
  %or = or i64 %and, 8
  store i64 %or, i64* %flags, align 8, !tbaa !34
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 9
  %9 = load i64, i64* %seed_len, align 8, !tbaa !36
  %conv64 = trunc i64 %9 to i32
  %call65 = tail call i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef nonnull %7, i8* noundef %6, i32 noundef %conv64) #7
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %err

if.then67:                                        ; preds = %if.end58
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.ec_asn1_group2curve, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524301, i8* noundef null) #7
  br label %err

if.else:                                          ; preds = %if.end46
  tail call void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef %5) #7
  store %struct.asn1_string_st* null, %struct.asn1_string_st** %seed69, align 8, !tbaa !33
  br label %err

err:                                              ; preds = %if.else, %if.end58, %if.then67, %if.then56, %if.then45, %if.then34, %if.then23, %if.then13, %if.then9
  %ok.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then23 ], [ 0, %if.then34 ], [ 0, %if.then67 ], [ 0, %if.then56 ], [ 0, %if.then45 ], [ 0, %if.then13 ], [ 1, %if.end58 ], [ 1, %if.else ]
  %tmp_2.1 = phi %struct.bignum_st* [ null, %if.then9 ], [ %call7, %if.then23 ], [ %call7, %if.then34 ], [ %call7, %if.then67 ], [ %call7, %if.then56 ], [ %call7, %if.then45 ], [ %call7, %if.then13 ], [ %call7, %if.end58 ], [ %call7, %if.else ]
  %a_buf.0 = phi i8* [ null, %if.then9 ], [ %call16, %if.then23 ], [ %call16, %if.then34 ], [ %call16, %if.then67 ], [ %call16, %if.then56 ], [ %call16, %if.then45 ], [ null, %if.then13 ], [ %call16, %if.end58 ], [ %call16, %if.else ]
  %b_buf.1 = phi i8* [ null, %if.then9 ], [ null, %if.then23 ], [ %call20, %if.then34 ], [ %call20, %if.then67 ], [ %call20, %if.then56 ], [ %call20, %if.then45 ], [ null, %if.then13 ], [ %call20, %if.end58 ], [ %call20, %if.else ]
  tail call void @CRYPTO_free(i8* noundef %a_buf.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 376) #7
  tail call void @CRYPTO_free(i8* noundef %b_buf.1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 377) #7
  tail call void @BN_free(%struct.bignum_st* noundef %call) #7
  tail call void @BN_free(%struct.bignum_st* noundef %tmp_2.1) #7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false2, %lor.lhs.false4, %err
  %retval.0 = phi i32 [ %ok.0, %err ], [ 0, %lor.lhs.false4 ], [ 0, %lor.lhs.false2 ], [ 0, %entry ]
  ret i32 %retval.0
}

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_point_conversion_form(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i64 @EC_POINT_point2buf(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_OCTET_STRING_new() local_unnamed_addr #1

declare void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_STRING_set0(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @BN_to_ASN1_INTEGER(%struct.bignum_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @EC_GROUP_get0_cofactor(%struct.ec_group_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: noinline nounwind uwtable
define %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef %group, %struct.ecpk_parameters_st* noundef %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecpk_parameters_st* %params, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.ecpk_parameters_st* @ECPKPARAMETERS_new() #9
  %cmp1 = icmp eq %struct.ecpk_parameters_st* %call, null
  br i1 %cmp1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.then
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EC_GROUP_get_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !37
  switch i32 %0, label %if.end15 [
    i32 0, label %if.then4
    i32 1, label %land.lhs.true
  ]

if.then4:                                         ; preds = %if.else
  %named_curve = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 1, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %named_curve, align 8, !tbaa !18
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %1) #7
  br label %if.end15

land.lhs.true:                                    ; preds = %if.else
  %value8 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 1
  %parameters = bitcast %union.anon.2* %value8 to %struct.ec_parameters_st**
  %2 = load %struct.ec_parameters_st*, %struct.ec_parameters_st** %parameters, align 8, !tbaa !18
  %cmp9.not = icmp eq %struct.ec_parameters_st* %2, null
  br i1 %cmp9.not, label %if.end15, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  tail call void @ECPARAMETERS_free(%struct.ec_parameters_st* noundef nonnull %2) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then4, %if.then10, %land.lhs.true, %if.then
  %ret.0 = phi %struct.ecpk_parameters_st* [ %call, %if.then ], [ %params, %if.then4 ], [ %params, %if.then10 ], [ %params, %land.lhs.true ], [ %params, %if.else ]
  %call16 = tail call i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef %group) #7
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %if.then18, label %if.else33

if.then18:                                        ; preds = %if.end15
  %call19 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %group) #7
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %if.then43, label %if.then20

if.then20:                                        ; preds = %if.then18
  %call21 = tail call %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef %call19) #7
  %cmp22 = icmp eq %struct.asn1_object_st* %call21, null
  br i1 %cmp22, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20
  %call23 = tail call i64 @OBJ_length(%struct.asn1_object_st* noundef nonnull %call21) #7
  %cmp24 = icmp eq i64 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %lor.lhs.false, %if.then20
  tail call void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef %call21) #7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.EC_GROUP_get_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 167, i8* noundef null) #7
  br label %if.then43

if.else26:                                        ; preds = %lor.lhs.false
  %type27 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %ret.0, i64 0, i32 0
  store i32 0, i32* %type27, align 8, !tbaa !37
  %named_curve29 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %ret.0, i64 0, i32 1, i32 0
  store %struct.asn1_object_st* %call21, %struct.asn1_object_st** %named_curve29, align 8, !tbaa !18
  br label %cleanup

if.else33:                                        ; preds = %if.end15
  %type34 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %ret.0, i64 0, i32 0
  store i32 1, i32* %type34, align 8, !tbaa !37
  %call35 = tail call %struct.ec_parameters_st* @EC_GROUP_get_ecparameters(%struct.ec_group_st* noundef %group, %struct.ec_parameters_st* noundef null) #9
  %value36 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %ret.0, i64 0, i32 1
  %parameters37 = bitcast %union.anon.2* %value36 to %struct.ec_parameters_st**
  store %struct.ec_parameters_st* %call35, %struct.ec_parameters_st** %parameters37, align 8, !tbaa !18
  %cmp38 = icmp eq %struct.ec_parameters_st* %call35, null
  br i1 %cmp38, label %if.then43, label %cleanup

if.then43:                                        ; preds = %if.else33, %if.then25, %if.then18
  tail call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef nonnull %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.else33, %if.then43, %if.then2
  %retval.0 = phi %struct.ecpk_parameters_st* [ null, %if.then2 ], [ null, %if.then43 ], [ %ret.0, %if.else33 ], [ %ret.0, %if.else26 ]
  ret %struct.ecpk_parameters_st* %retval.0
}

declare void @ASN1_OBJECT_free(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_asn1_flag(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare %struct.asn1_object_st* @OBJ_nid2obj(i32 noundef) local_unnamed_addr #1

declare i64 @OBJ_length(%struct.asn1_object_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* nocapture noundef readonly %params) local_unnamed_addr #0 {
entry:
  %fieldID = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %params, i64 0, i32 1
  %0 = load %struct.x9_62_fieldid_st*, %struct.x9_62_fieldid_st** %fieldID, align 8, !tbaa !11
  %cmp = icmp eq %struct.x9_62_fieldid_st* %0, null
  br i1 %cmp, label %if.then335.sink.split, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %fieldType = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %0, i64 0, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %fieldType, align 8, !tbaa !16
  %cmp2 = icmp eq %struct.asn1_object_st* %1, null
  br i1 %cmp2, label %if.then335.sink.split, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ptr = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %0, i64 0, i32 1, i32 0
  %2 = load i8*, i8** %ptr, align 8, !tbaa !18
  %cmp6 = icmp eq i8* %2, null
  br i1 %cmp6, label %if.then335.sink.split, label %if.end

if.end:                                           ; preds = %lor.lhs.false3
  %curve = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %params, i64 0, i32 2
  %3 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %cmp7 = icmp eq %struct.x9_62_curve_st* %3, null
  br i1 %cmp7, label %if.then335.sink.split, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %a10 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %3, i64 0, i32 0
  %4 = load %struct.asn1_string_st*, %struct.asn1_string_st** %a10, align 8, !tbaa !27
  %cmp11 = icmp eq %struct.asn1_string_st* %4, null
  br i1 %cmp11, label %if.then335.sink.split, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %data = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 2
  %5 = load i8*, i8** %data, align 8, !tbaa !39
  %cmp15 = icmp eq i8* %5, null
  br i1 %cmp15, label %if.then335.sink.split, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %b18 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %3, i64 0, i32 1
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b18, align 8, !tbaa !29
  %cmp19 = icmp eq %struct.asn1_string_st* %6, null
  br i1 %cmp19, label %if.then335.sink.split, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %data23 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %6, i64 0, i32 2
  %7 = load i8*, i8** %data23, align 8, !tbaa !39
  %cmp24 = icmp eq i8* %7, null
  br i1 %cmp24, label %if.then335.sink.split, label %if.end26

if.end26:                                         ; preds = %lor.lhs.false20
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %4, i64 0, i32 0
  %8 = load i32, i32* %length, align 8, !tbaa !40
  %call = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef nonnull %5, i32 noundef %8, %struct.bignum_st* noundef null) #7
  %cmp32 = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp32, label %if.then335.sink.split, label %if.end34

if.end34:                                         ; preds = %if.end26
  %9 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %b36 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %9, i64 0, i32 1
  %10 = load %struct.asn1_string_st*, %struct.asn1_string_st** %b36, align 8, !tbaa !29
  %data37 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 2
  %11 = load i8*, i8** %data37, align 8, !tbaa !39
  %length40 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %10, i64 0, i32 0
  %12 = load i32, i32* %length40, align 8, !tbaa !40
  %call41 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %11, i32 noundef %12, %struct.bignum_st* noundef null) #7
  %cmp42 = icmp eq %struct.bignum_st* %call41, null
  br i1 %cmp42, label %if.then335.sink.split, label %if.end44

if.end44:                                         ; preds = %if.end34
  %13 = load %struct.x9_62_fieldid_st*, %struct.x9_62_fieldid_st** %fieldID, align 8, !tbaa !11
  %fieldType46 = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %13, i64 0, i32 0
  %14 = load %struct.asn1_object_st*, %struct.asn1_object_st** %fieldType46, align 8, !tbaa !16
  %call47 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %14) #7
  switch i32 %call47, label %if.then335.sink.split [
    i32 407, label %if.then49
    i32 406, label %if.then160
  ]

if.then49:                                        ; preds = %if.end44
  %15 = load %struct.x9_62_fieldid_st*, %struct.x9_62_fieldid_st** %fieldID, align 8, !tbaa !11
  %p51 = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %15, i64 0, i32 1
  %char_two52 = bitcast %union.anon.1* %p51 to %struct.x9_62_characteristic_two_st**
  %16 = load %struct.x9_62_characteristic_two_st*, %struct.x9_62_characteristic_two_st** %char_two52, align 8, !tbaa !18
  %m = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %16, i64 0, i32 0
  %17 = load i32, i32* %m, align 8, !tbaa !19
  %cmp53 = icmp sgt i32 %17, 661
  br i1 %cmp53, label %if.then335.sink.split, label %if.end56

if.end56:                                         ; preds = %if.then49
  %call57 = tail call %struct.bignum_st* @BN_new() #7
  %cmp58 = icmp eq %struct.bignum_st* %call57, null
  br i1 %cmp58, label %if.then335.sink.split, label %if.end61

if.end61:                                         ; preds = %if.end56
  %type = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %16, i64 0, i32 1
  %18 = load %struct.asn1_object_st*, %struct.asn1_object_st** %type, align 8, !tbaa !21
  %call62 = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %18) #7
  switch i32 %call62, label %if.else150 [
    i32 682, label %if.then65
    i32 683, label %if.then96
    i32 681, label %if.then335.sink.split
  ]

if.then65:                                        ; preds = %if.end61
  %p66 = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %16, i64 0, i32 2
  %tpBasis = bitcast %union.anon* %p66 to %struct.asn1_string_st**
  %19 = load %struct.asn1_string_st*, %struct.asn1_string_st** %tpBasis, align 8, !tbaa !18
  %tobool.not = icmp eq %struct.asn1_string_st* %19, null
  br i1 %tobool.not, label %if.then335.sink.split, label %if.end68

if.end68:                                         ; preds = %if.then65
  %call71 = tail call i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef nonnull %19) #7
  %20 = load i32, i32* %m, align 8, !tbaa !19
  %conv73 = sext i32 %20 to i64
  %cmp74 = icmp slt i64 %call71, %conv73
  %cmp76 = icmp sgt i64 %call71, 0
  %or.cond = and i1 %cmp76, %cmp74
  br i1 %or.cond, label %if.end79, label %if.then335.sink.split

if.end79:                                         ; preds = %if.end68
  %call81 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %20) #7
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then335, label %if.end84

if.end84:                                         ; preds = %if.end79
  %conv85 = trunc i64 %call71 to i32
  %call86 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %conv85) #7
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then335, label %cleanup

cleanup:                                          ; preds = %if.end84
  %call90 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef 0) #7
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then335, label %cleanup154.thread498

if.then96:                                        ; preds = %if.end61
  %p97 = getelementptr inbounds %struct.x9_62_characteristic_two_st, %struct.x9_62_characteristic_two_st* %16, i64 0, i32 2
  %ppBasis = bitcast %union.anon* %p97 to %struct.x9_62_pentanomial_st**
  %21 = load %struct.x9_62_pentanomial_st*, %struct.x9_62_pentanomial_st** %ppBasis, align 8, !tbaa !18
  %cmp98 = icmp eq %struct.x9_62_pentanomial_st* %21, null
  br i1 %cmp98, label %if.then335.sink.split, label %if.end101

if.end101:                                        ; preds = %if.then96
  %22 = load i32, i32* %m, align 8, !tbaa !19
  %k3 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %21, i64 0, i32 2
  %23 = load i32, i32* %k3, align 4, !tbaa !26
  %cmp103 = icmp sgt i32 %22, %23
  br i1 %cmp103, label %land.lhs.true105, label %if.then335.sink.split

land.lhs.true105:                                 ; preds = %if.end101
  %k2 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %21, i64 0, i32 1
  %24 = load i32, i32* %k2, align 4, !tbaa !25
  %cmp107 = icmp sgt i32 %23, %24
  br i1 %cmp107, label %land.lhs.true109, label %if.then335.sink.split

land.lhs.true109:                                 ; preds = %land.lhs.true105
  %k1 = getelementptr inbounds %struct.x9_62_pentanomial_st, %struct.x9_62_pentanomial_st* %21, i64 0, i32 0
  %25 = load i32, i32* %k1, align 4, !tbaa !23
  %cmp111 = icmp sgt i32 %24, %25
  %cmp115 = icmp sgt i32 %25, 0
  %or.cond487 = and i1 %cmp111, %cmp115
  br i1 %or.cond487, label %if.end118, label %if.then335.sink.split

if.end118:                                        ; preds = %land.lhs.true109
  %call120 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %22) #7
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then335, label %if.end123

if.end123:                                        ; preds = %if.end118
  %26 = load i32, i32* %k1, align 4, !tbaa !23
  %call125 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %26) #7
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then335, label %if.end128

if.end128:                                        ; preds = %if.end123
  %27 = load i32, i32* %k2, align 4, !tbaa !25
  %call130 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %27) #7
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then335, label %if.end133

if.end133:                                        ; preds = %if.end128
  %28 = load i32, i32* %k3, align 4, !tbaa !26
  %call135 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef %28) #7
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then335, label %cleanup143

cleanup143:                                       ; preds = %if.end133
  %call139 = tail call i32 @BN_set_bit(%struct.bignum_st* noundef nonnull %call57, i32 noundef 0) #7
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then335, label %cleanup154.thread498

if.else150:                                       ; preds = %if.end61
  br label %if.then335.sink.split

cleanup154.thread498:                             ; preds = %cleanup, %cleanup143
  %call153 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef nonnull %call57, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call41, %struct.bignum_ctx* noundef null) #7
  br label %if.end191

if.then160:                                       ; preds = %if.end44
  %29 = load %struct.x9_62_fieldid_st*, %struct.x9_62_fieldid_st** %fieldID, align 8, !tbaa !11
  %p162 = getelementptr inbounds %struct.x9_62_fieldid_st, %struct.x9_62_fieldid_st* %29, i64 0, i32 1
  %prime = bitcast %union.anon.1* %p162 to %struct.asn1_string_st**
  %30 = load %struct.asn1_string_st*, %struct.asn1_string_st** %prime, align 8, !tbaa !18
  %cmp163 = icmp eq %struct.asn1_string_st* %30, null
  br i1 %cmp163, label %if.then335.sink.split, label %if.end166

if.end166:                                        ; preds = %if.then160
  %call170 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %30, %struct.bignum_st* noundef null) #7
  %cmp171 = icmp eq %struct.bignum_st* %call170, null
  br i1 %cmp171, label %if.then335.sink.split, label %if.end174

if.end174:                                        ; preds = %if.end166
  %call175 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call170) #7
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %lor.lhs.false177, label %if.then335.sink.split

lor.lhs.false177:                                 ; preds = %if.end174
  %call178 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call170) #7
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.then335.sink.split

if.end181:                                        ; preds = %lor.lhs.false177
  %call182 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call170) #7
  %cmp184 = icmp sgt i32 %call182, 661
  br i1 %cmp184, label %if.then335.sink.split, label %if.end187

if.end187:                                        ; preds = %if.end181
  %call188 = tail call %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef nonnull %call170, %struct.bignum_st* noundef nonnull %call, %struct.bignum_st* noundef nonnull %call41, %struct.bignum_ctx* noundef null) #7
  br label %if.end191

if.end191:                                        ; preds = %cleanup154.thread498, %if.end187
  %ret.1 = phi %struct.ec_group_st* [ %call188, %if.end187 ], [ %call153, %cleanup154.thread498 ]
  %p.1 = phi %struct.bignum_st* [ %call170, %if.end187 ], [ %call57, %cleanup154.thread498 ]
  %field_bits.0 = phi i32 [ %call182, %if.end187 ], [ %17, %cleanup154.thread498 ]
  %cmp192 = icmp eq %struct.ec_group_st* %ret.1, null
  br i1 %cmp192, label %if.then335.sink.split, label %if.end195

if.end195:                                        ; preds = %if.end191
  %31 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %seed = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %31, i64 0, i32 2
  %32 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed, align 8, !tbaa !33
  %cmp197.not = icmp eq %struct.asn1_string_st* %32, null
  br i1 %cmp197.not, label %if.end224, label %if.then199

if.then199:                                       ; preds = %if.end195
  %seed200 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %ret.1, i64 0, i32 8
  %33 = load i8*, i8** %seed200, align 8, !tbaa !30
  tail call void @CRYPTO_free(i8* noundef %33, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 690) #7
  %34 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %seed202 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %34, i64 0, i32 2
  %35 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed202, align 8, !tbaa !33
  %length203 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %35, i64 0, i32 0
  %36 = load i32, i32* %length203, align 8, !tbaa !40
  %conv204 = sext i32 %36 to i64
  %call205 = tail call i8* @CRYPTO_malloc(i64 noundef %conv204, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 691) #7
  store i8* %call205, i8** %seed200, align 8, !tbaa !30
  %cmp207 = icmp eq i8* %call205, null
  br i1 %cmp207, label %if.then335.sink.split, label %if.end210

if.end210:                                        ; preds = %if.then199
  %37 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %seed213 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %37, i64 0, i32 2
  %38 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed213, align 8, !tbaa !33
  %data214 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %38, i64 0, i32 2
  %39 = load i8*, i8** %data214, align 8, !tbaa !39
  %length217 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %38, i64 0, i32 0
  %40 = load i32, i32* %length217, align 8, !tbaa !40
  %conv218 = sext i32 %40 to i64
  %call219 = tail call i8* @memcpy(i8* noundef nonnull %call205, i8* noundef %39, i64 noundef %conv218) #7
  %41 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %seed221 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %41, i64 0, i32 2
  %42 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed221, align 8, !tbaa !33
  %length222 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %42, i64 0, i32 0
  %43 = load i32, i32* %length222, align 8, !tbaa !40
  %conv223 = sext i32 %43 to i64
  %seed_len = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %ret.1, i64 0, i32 9
  store i64 %conv223, i64* %seed_len, align 8, !tbaa !36
  br label %if.end224

if.end224:                                        ; preds = %if.end210, %if.end195
  %order = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %params, i64 0, i32 4
  %44 = load %struct.asn1_string_st*, %struct.asn1_string_st** %order, align 8, !tbaa !14
  %cmp225 = icmp eq %struct.asn1_string_st* %44, null
  br i1 %cmp225, label %if.then335.sink.split, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %if.end224
  %base = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %params, i64 0, i32 3
  %45 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base, align 8, !tbaa !13
  %cmp228 = icmp eq %struct.asn1_string_st* %45, null
  br i1 %cmp228, label %if.then335.sink.split, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %lor.lhs.false227
  %data232 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %45, i64 0, i32 2
  %46 = load i8*, i8** %data232, align 8, !tbaa !39
  %cmp233 = icmp eq i8* %46, null
  br i1 %cmp233, label %if.then335.sink.split, label %lor.lhs.false235

lor.lhs.false235:                                 ; preds = %lor.lhs.false230
  %length237 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %45, i64 0, i32 0
  %47 = load i32, i32* %length237, align 8, !tbaa !40
  %cmp238 = icmp eq i32 %47, 0
  br i1 %cmp238, label %if.then335.sink.split, label %if.end241

if.end241:                                        ; preds = %lor.lhs.false235
  %call242 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef nonnull %ret.1) #7
  %cmp243 = icmp eq %struct.ec_point_st* %call242, null
  br i1 %cmp243, label %if.then335, label %if.end246

if.end246:                                        ; preds = %if.end241
  %48 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base, align 8, !tbaa !13
  %data248 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %48, i64 0, i32 2
  %49 = load i8*, i8** %data248, align 8, !tbaa !39
  %50 = load i8, i8* %49, align 1, !tbaa !18
  %51 = and i8 %50, -2
  %and = zext i8 %51 to i32
  tail call void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef nonnull %ret.1, i32 noundef %and) #7
  %52 = load %struct.asn1_string_st*, %struct.asn1_string_st** %base, align 8, !tbaa !13
  %data251 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %52, i64 0, i32 2
  %53 = load i8*, i8** %data251, align 8, !tbaa !39
  %length253 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %52, i64 0, i32 0
  %54 = load i32, i32* %length253, align 8, !tbaa !40
  %conv254 = sext i32 %54 to i64
  %call255 = tail call i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef nonnull %ret.1, %struct.ec_point_st* noundef nonnull %call242, i8* noundef %53, i64 noundef %conv254, %struct.bignum_ctx* noundef null) #7
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.then335.sink.split, label %if.end258

if.end258:                                        ; preds = %if.end246
  %55 = load %struct.asn1_string_st*, %struct.asn1_string_st** %order, align 8, !tbaa !14
  %call260 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef %55, %struct.bignum_st* noundef nonnull %call) #7
  %cmp261 = icmp eq %struct.bignum_st* %call260, null
  br i1 %cmp261, label %if.then335.sink.split, label %if.end264

if.end264:                                        ; preds = %if.end258
  %call265 = tail call i32 @BN_is_negative(%struct.bignum_st* noundef nonnull %call260) #7
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %lor.lhs.false267, label %if.then335.sink.split

lor.lhs.false267:                                 ; preds = %if.end264
  %call268 = tail call i32 @BN_is_zero(%struct.bignum_st* noundef nonnull %call260) #7
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %if.end271, label %if.then335.sink.split

if.end271:                                        ; preds = %lor.lhs.false267
  %call272 = tail call i32 @BN_num_bits(%struct.bignum_st* noundef nonnull %call260) #7
  %add = add nsw i32 %field_bits.0, 1
  %cmp274 = icmp sgt i32 %call272, %add
  br i1 %cmp274, label %if.then335.sink.split, label %if.end277

if.end277:                                        ; preds = %if.end271
  %cofactor = getelementptr inbounds %struct.ec_parameters_st, %struct.ec_parameters_st* %params, i64 0, i32 5
  %56 = load %struct.asn1_string_st*, %struct.asn1_string_st** %cofactor, align 8, !tbaa !15
  %cmp278 = icmp eq %struct.asn1_string_st* %56, null
  br i1 %cmp278, label %if.then280, label %if.else281

if.then280:                                       ; preds = %if.end277
  tail call void @BN_free(%struct.bignum_st* noundef nonnull %call41) #7
  br label %if.end288

if.else281:                                       ; preds = %if.end277
  %call283 = tail call %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef nonnull %56, %struct.bignum_st* noundef nonnull %call41) #7
  %cmp284 = icmp eq %struct.bignum_st* %call283, null
  br i1 %cmp284, label %if.then335.sink.split, label %if.end288

if.end288:                                        ; preds = %if.else281, %if.then280
  %b.0 = phi %struct.bignum_st* [ null, %if.then280 ], [ %call283, %if.else281 ]
  %call289 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef nonnull %ret.1, %struct.ec_point_st* noundef nonnull %call242, %struct.bignum_st* noundef nonnull %call260, %struct.bignum_st* noundef %b.0) #7
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.then335.sink.split, label %if.end292

if.end292:                                        ; preds = %if.end288
  %call293 = tail call %struct.bignum_ctx* @BN_CTX_new() #7
  %cmp294 = icmp eq %struct.bignum_ctx* %call293, null
  br i1 %cmp294, label %if.then335.sink.split, label %if.end297

if.end297:                                        ; preds = %if.end292
  %call298 = tail call %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef nonnull %ret.1) #7
  %cmp299 = icmp eq %struct.ec_group_st* %call298, null
  br i1 %cmp299, label %if.then335.sink.split, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %if.end297
  %call302 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %call298, i8* noundef null, i64 noundef 0) #7
  %cmp303.not = icmp eq i64 %call302, 1
  br i1 %cmp303.not, label %lor.lhs.false305, label %if.then335.sink.split

lor.lhs.false305:                                 ; preds = %lor.lhs.false301
  %call306 = tail call i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef nonnull %call298, %struct.ec_point_st* noundef nonnull %call242, %struct.bignum_st* noundef nonnull %call260, %struct.bignum_st* noundef null) #7
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.then335.sink.split, label %if.end309

if.end309:                                        ; preds = %lor.lhs.false305
  %call310 = tail call i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef nonnull %call298, %struct.bignum_ctx* noundef nonnull %call293) #7
  %cmp311.not = icmp eq i32 %call310, 0
  br i1 %cmp311.not, label %if.end336, label %if.then313

if.then313:                                       ; preds = %if.end309
  %call314 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %call310) #7
  %cmp315 = icmp eq %struct.ec_group_st* %call314, null
  br i1 %cmp315, label %if.then335.sink.split, label %if.end318

if.end318:                                        ; preds = %if.then313
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef nonnull %ret.1) #7
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call314, i32 noundef 0) #7
  %57 = load %struct.x9_62_curve_st*, %struct.x9_62_curve_st** %curve, align 8, !tbaa !12
  %seed320 = getelementptr inbounds %struct.x9_62_curve_st, %struct.x9_62_curve_st* %57, i64 0, i32 2
  %58 = load %struct.asn1_string_st*, %struct.asn1_string_st** %seed320, align 8, !tbaa !33
  %cmp321 = icmp eq %struct.asn1_string_st* %58, null
  br i1 %cmp321, label %if.then323, label %if.end336

if.then323:                                       ; preds = %if.end318
  %call324 = tail call i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef nonnull %call314, i8* noundef null, i64 noundef 0) #7
  %cmp325.not = icmp eq i64 %call324, 1
  br i1 %cmp325.not, label %if.end336, label %if.then335

if.then335.sink.split:                            ; preds = %if.then313, %if.end297, %lor.lhs.false301, %lor.lhs.false305, %if.end292, %if.end288, %if.else281, %if.end271, %if.end264, %lor.lhs.false267, %if.end258, %if.end246, %if.end224, %lor.lhs.false227, %lor.lhs.false230, %lor.lhs.false235, %if.then199, %if.end191, %if.end44, %if.end181, %if.end174, %lor.lhs.false177, %if.end166, %if.then160, %if.end61, %if.end101, %land.lhs.true105, %land.lhs.true109, %if.then96, %if.end68, %if.then65, %if.end56, %if.then49, %if.end34, %if.end26, %if.end, %lor.lhs.false8, %lor.lhs.false12, %lor.lhs.false16, %lor.lhs.false20, %entry, %lor.lhs.false, %lor.lhs.false3, %if.else150
  %.sink537 = phi i32 [ 644, %if.else150 ], [ 535, %lor.lhs.false3 ], [ 535, %lor.lhs.false ], [ 535, %entry ], [ 548, %lor.lhs.false20 ], [ 548, %lor.lhs.false16 ], [ 548, %lor.lhs.false12 ], [ 548, %lor.lhs.false8 ], [ 548, %if.end ], [ 553, %if.end26 ], [ 558, %if.end34 ], [ 578, %if.then49 ], [ 583, %if.end56 ], [ 594, %if.then65 ], [ 601, %if.end68 ], [ 617, %if.then96 ], [ 624, %land.lhs.true109 ], [ 624, %land.lhs.true105 ], [ 624, %if.end101 ], [ 640, %if.end61 ], [ 656, %if.then160 ], [ 661, %if.end166 ], [ 666, %lor.lhs.false177 ], [ 666, %if.end174 ], [ 672, %if.end181 ], [ 679, %if.end44 ], [ 684, %if.end191 ], [ 692, %if.then199 ], [ 704, %lor.lhs.false235 ], [ 704, %lor.lhs.false230 ], [ 704, %lor.lhs.false227 ], [ 704, %if.end224 ], [ 718, %if.end246 ], [ 724, %if.end258 ], [ 728, %lor.lhs.false267 ], [ 728, %if.end264 ], [ 732, %if.end271 ], [ 741, %if.else281 ], [ 746, %if.end288 ], [ 763, %if.end292 ], [ 769, %lor.lhs.false305 ], [ 769, %lor.lhs.false301 ], [ 769, %if.end297 ], [ 794, %if.then313 ]
  %.sink = phi i32 [ 115, %if.else150 ], [ 115, %lor.lhs.false3 ], [ 115, %lor.lhs.false ], [ 115, %entry ], [ 115, %lor.lhs.false20 ], [ 115, %lor.lhs.false16 ], [ 115, %lor.lhs.false12 ], [ 115, %lor.lhs.false8 ], [ 115, %if.end ], [ 524291, %if.end26 ], [ 524291, %if.end34 ], [ 143, %if.then49 ], [ 786688, %if.end56 ], [ 115, %if.then65 ], [ 137, %if.end68 ], [ 115, %if.then96 ], [ 132, %land.lhs.true109 ], [ 132, %land.lhs.true105 ], [ 132, %if.end101 ], [ 126, %if.end61 ], [ 115, %if.then160 ], [ 524301, %if.end166 ], [ 103, %lor.lhs.false177 ], [ 103, %if.end174 ], [ 143, %if.end181 ], [ 103, %if.end44 ], [ 524304, %if.end191 ], [ 786688, %if.then199 ], [ 115, %lor.lhs.false235 ], [ 115, %lor.lhs.false230 ], [ 115, %lor.lhs.false227 ], [ 115, %if.end224 ], [ 524304, %if.end246 ], [ 524301, %if.end258 ], [ 122, %lor.lhs.false267 ], [ 122, %if.end264 ], [ 122, %if.end271 ], [ 524301, %if.else281 ], [ 524304, %if.end288 ], [ 524291, %if.end292 ], [ 524304, %lor.lhs.false305 ], [ 524304, %lor.lhs.false301 ], [ 524304, %if.end297 ], [ 524304, %if.then313 ]
  %ret.4.ph.ph = phi %struct.ec_group_st* [ null, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ null, %if.then49 ], [ null, %if.end56 ], [ null, %if.then65 ], [ null, %if.end68 ], [ null, %if.then96 ], [ null, %land.lhs.true109 ], [ null, %land.lhs.true105 ], [ null, %if.end101 ], [ null, %if.end61 ], [ null, %if.then160 ], [ null, %if.end166 ], [ null, %lor.lhs.false177 ], [ null, %if.end174 ], [ null, %if.end181 ], [ null, %if.end44 ], [ null, %if.end191 ], [ %ret.1, %if.then199 ], [ %ret.1, %lor.lhs.false235 ], [ %ret.1, %lor.lhs.false230 ], [ %ret.1, %lor.lhs.false227 ], [ %ret.1, %if.end224 ], [ %ret.1, %if.end246 ], [ %ret.1, %if.end258 ], [ %ret.1, %lor.lhs.false267 ], [ %ret.1, %if.end264 ], [ %ret.1, %if.end271 ], [ %ret.1, %if.else281 ], [ %ret.1, %if.end288 ], [ %ret.1, %if.end292 ], [ %ret.1, %lor.lhs.false305 ], [ %ret.1, %lor.lhs.false301 ], [ %ret.1, %if.end297 ], [ %ret.1, %if.then313 ]
  %dup.0.ph.ph = phi %struct.ec_group_st* [ null, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ null, %if.then49 ], [ null, %if.end56 ], [ null, %if.then65 ], [ null, %if.end68 ], [ null, %if.then96 ], [ null, %land.lhs.true109 ], [ null, %land.lhs.true105 ], [ null, %if.end101 ], [ null, %if.end61 ], [ null, %if.then160 ], [ null, %if.end166 ], [ null, %lor.lhs.false177 ], [ null, %if.end174 ], [ null, %if.end181 ], [ null, %if.end44 ], [ null, %if.end191 ], [ null, %if.then199 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false230 ], [ null, %lor.lhs.false227 ], [ null, %if.end224 ], [ null, %if.end246 ], [ null, %if.end258 ], [ null, %lor.lhs.false267 ], [ null, %if.end264 ], [ null, %if.end271 ], [ null, %if.else281 ], [ null, %if.end288 ], [ null, %if.end292 ], [ %call298, %lor.lhs.false305 ], [ %call298, %lor.lhs.false301 ], [ %call298, %if.end297 ], [ %call298, %if.then313 ]
  %p.2.ph.ph = phi %struct.bignum_st* [ %call57, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ null, %if.then49 ], [ null, %if.end56 ], [ %call57, %if.then65 ], [ %call57, %if.end68 ], [ %call57, %if.then96 ], [ %call57, %land.lhs.true109 ], [ %call57, %land.lhs.true105 ], [ %call57, %if.end101 ], [ %call57, %if.end61 ], [ null, %if.then160 ], [ null, %if.end166 ], [ %call170, %lor.lhs.false177 ], [ %call170, %if.end174 ], [ %call170, %if.end181 ], [ null, %if.end44 ], [ %p.1, %if.end191 ], [ %p.1, %if.then199 ], [ %p.1, %lor.lhs.false235 ], [ %p.1, %lor.lhs.false230 ], [ %p.1, %lor.lhs.false227 ], [ %p.1, %if.end224 ], [ %p.1, %if.end246 ], [ %p.1, %if.end258 ], [ %p.1, %lor.lhs.false267 ], [ %p.1, %if.end264 ], [ %p.1, %if.end271 ], [ %p.1, %if.else281 ], [ %p.1, %if.end288 ], [ %p.1, %if.end292 ], [ %p.1, %lor.lhs.false305 ], [ %p.1, %lor.lhs.false301 ], [ %p.1, %if.end297 ], [ %p.1, %if.then313 ]
  %a.0.ph.ph = phi %struct.bignum_st* [ %call, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ %call, %if.end34 ], [ %call, %if.then49 ], [ %call, %if.end56 ], [ %call, %if.then65 ], [ %call, %if.end68 ], [ %call, %if.then96 ], [ %call, %land.lhs.true109 ], [ %call, %land.lhs.true105 ], [ %call, %if.end101 ], [ %call, %if.end61 ], [ %call, %if.then160 ], [ %call, %if.end166 ], [ %call, %lor.lhs.false177 ], [ %call, %if.end174 ], [ %call, %if.end181 ], [ %call, %if.end44 ], [ %call, %if.end191 ], [ %call, %if.then199 ], [ %call, %lor.lhs.false235 ], [ %call, %lor.lhs.false230 ], [ %call, %lor.lhs.false227 ], [ %call, %if.end224 ], [ %call, %if.end246 ], [ null, %if.end258 ], [ %call260, %lor.lhs.false267 ], [ %call260, %if.end264 ], [ %call260, %if.end271 ], [ %call260, %if.else281 ], [ %call260, %if.end288 ], [ %call260, %if.end292 ], [ %call260, %lor.lhs.false305 ], [ %call260, %lor.lhs.false301 ], [ %call260, %if.end297 ], [ %call260, %if.then313 ]
  %b.1.ph.ph = phi %struct.bignum_st* [ %call41, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ %call41, %if.then49 ], [ %call41, %if.end56 ], [ %call41, %if.then65 ], [ %call41, %if.end68 ], [ %call41, %if.then96 ], [ %call41, %land.lhs.true109 ], [ %call41, %land.lhs.true105 ], [ %call41, %if.end101 ], [ %call41, %if.end61 ], [ %call41, %if.then160 ], [ %call41, %if.end166 ], [ %call41, %lor.lhs.false177 ], [ %call41, %if.end174 ], [ %call41, %if.end181 ], [ %call41, %if.end44 ], [ %call41, %if.end191 ], [ %call41, %if.then199 ], [ %call41, %lor.lhs.false235 ], [ %call41, %lor.lhs.false230 ], [ %call41, %lor.lhs.false227 ], [ %call41, %if.end224 ], [ %call41, %if.end246 ], [ %call41, %if.end258 ], [ %call41, %lor.lhs.false267 ], [ %call41, %if.end264 ], [ %call41, %if.end271 ], [ null, %if.else281 ], [ %b.0, %if.end288 ], [ %b.0, %if.end292 ], [ %b.0, %lor.lhs.false305 ], [ %b.0, %lor.lhs.false301 ], [ %b.0, %if.end297 ], [ %b.0, %if.then313 ]
  %point.0.ph.ph = phi %struct.ec_point_st* [ null, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ null, %if.then49 ], [ null, %if.end56 ], [ null, %if.then65 ], [ null, %if.end68 ], [ null, %if.then96 ], [ null, %land.lhs.true109 ], [ null, %land.lhs.true105 ], [ null, %if.end101 ], [ null, %if.end61 ], [ null, %if.then160 ], [ null, %if.end166 ], [ null, %lor.lhs.false177 ], [ null, %if.end174 ], [ null, %if.end181 ], [ null, %if.end44 ], [ null, %if.end191 ], [ null, %if.then199 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false230 ], [ null, %lor.lhs.false227 ], [ null, %if.end224 ], [ %call242, %if.end246 ], [ %call242, %if.end258 ], [ %call242, %lor.lhs.false267 ], [ %call242, %if.end264 ], [ %call242, %if.end271 ], [ %call242, %if.else281 ], [ %call242, %if.end288 ], [ %call242, %if.end292 ], [ %call242, %lor.lhs.false305 ], [ %call242, %lor.lhs.false301 ], [ %call242, %if.end297 ], [ %call242, %if.then313 ]
  %ctx.0.ph.ph = phi %struct.bignum_ctx* [ null, %if.else150 ], [ null, %lor.lhs.false3 ], [ null, %lor.lhs.false ], [ null, %entry ], [ null, %lor.lhs.false20 ], [ null, %lor.lhs.false16 ], [ null, %lor.lhs.false12 ], [ null, %lor.lhs.false8 ], [ null, %if.end ], [ null, %if.end26 ], [ null, %if.end34 ], [ null, %if.then49 ], [ null, %if.end56 ], [ null, %if.then65 ], [ null, %if.end68 ], [ null, %if.then96 ], [ null, %land.lhs.true109 ], [ null, %land.lhs.true105 ], [ null, %if.end101 ], [ null, %if.end61 ], [ null, %if.then160 ], [ null, %if.end166 ], [ null, %lor.lhs.false177 ], [ null, %if.end174 ], [ null, %if.end181 ], [ null, %if.end44 ], [ null, %if.end191 ], [ null, %if.then199 ], [ null, %lor.lhs.false235 ], [ null, %lor.lhs.false230 ], [ null, %lor.lhs.false227 ], [ null, %if.end224 ], [ null, %if.end246 ], [ null, %if.end258 ], [ null, %lor.lhs.false267 ], [ null, %if.end264 ], [ null, %if.end271 ], [ null, %if.else281 ], [ null, %if.end288 ], [ null, %if.end292 ], [ %call293, %lor.lhs.false305 ], [ %call293, %lor.lhs.false301 ], [ %call293, %if.end297 ], [ %call293, %if.then313 ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink537, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.EC_GROUP_new_from_ecparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #7
  br label %if.then335

if.then335:                                       ; preds = %if.then335.sink.split, %cleanup143, %cleanup, %if.then323, %if.end133, %if.end128, %if.end123, %if.end118, %if.end84, %if.end79, %if.end241
  %ret.4.ph = phi %struct.ec_group_st* [ %ret.1, %if.end241 ], [ null, %if.end79 ], [ null, %if.end84 ], [ null, %if.end118 ], [ null, %if.end123 ], [ null, %if.end128 ], [ null, %if.end133 ], [ %call314, %if.then323 ], [ null, %cleanup ], [ null, %cleanup143 ], [ %ret.4.ph.ph, %if.then335.sink.split ]
  %dup.0.ph = phi %struct.ec_group_st* [ null, %if.end241 ], [ null, %if.end79 ], [ null, %if.end84 ], [ null, %if.end118 ], [ null, %if.end123 ], [ null, %if.end128 ], [ null, %if.end133 ], [ %call298, %if.then323 ], [ null, %cleanup ], [ null, %cleanup143 ], [ %dup.0.ph.ph, %if.then335.sink.split ]
  %p.2.ph = phi %struct.bignum_st* [ %p.1, %if.end241 ], [ %call57, %if.end79 ], [ %call57, %if.end84 ], [ %call57, %if.end118 ], [ %call57, %if.end123 ], [ %call57, %if.end128 ], [ %call57, %if.end133 ], [ %p.1, %if.then323 ], [ %call57, %cleanup ], [ %call57, %cleanup143 ], [ %p.2.ph.ph, %if.then335.sink.split ]
  %a.0.ph = phi %struct.bignum_st* [ %call, %if.end241 ], [ %call, %if.end79 ], [ %call, %if.end84 ], [ %call, %if.end118 ], [ %call, %if.end123 ], [ %call, %if.end128 ], [ %call, %if.end133 ], [ %call260, %if.then323 ], [ %call, %cleanup ], [ %call, %cleanup143 ], [ %a.0.ph.ph, %if.then335.sink.split ]
  %b.1.ph = phi %struct.bignum_st* [ %call41, %if.end241 ], [ %call41, %if.end79 ], [ %call41, %if.end84 ], [ %call41, %if.end118 ], [ %call41, %if.end123 ], [ %call41, %if.end128 ], [ %call41, %if.end133 ], [ %b.0, %if.then323 ], [ %call41, %cleanup ], [ %call41, %cleanup143 ], [ %b.1.ph.ph, %if.then335.sink.split ]
  %point.0.ph = phi %struct.ec_point_st* [ null, %if.end241 ], [ null, %if.end79 ], [ null, %if.end84 ], [ null, %if.end118 ], [ null, %if.end123 ], [ null, %if.end128 ], [ null, %if.end133 ], [ %call242, %if.then323 ], [ null, %cleanup ], [ null, %cleanup143 ], [ %point.0.ph.ph, %if.then335.sink.split ]
  %ctx.0.ph = phi %struct.bignum_ctx* [ null, %if.end241 ], [ null, %if.end79 ], [ null, %if.end84 ], [ null, %if.end118 ], [ null, %if.end123 ], [ null, %if.end128 ], [ null, %if.end133 ], [ %call293, %if.then323 ], [ null, %cleanup ], [ null, %cleanup143 ], [ %ctx.0.ph.ph, %if.then335.sink.split ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %ret.4.ph) #7
  br label %if.end336

if.end336:                                        ; preds = %if.then323, %if.end318, %if.end309, %if.then335
  %ctx.0534 = phi %struct.bignum_ctx* [ %ctx.0.ph, %if.then335 ], [ %call293, %if.then323 ], [ %call293, %if.end318 ], [ %call293, %if.end309 ]
  %point.0532 = phi %struct.ec_point_st* [ %point.0.ph, %if.then335 ], [ %call242, %if.then323 ], [ %call242, %if.end318 ], [ %call242, %if.end309 ]
  %b.1530 = phi %struct.bignum_st* [ %b.1.ph, %if.then335 ], [ %b.0, %if.then323 ], [ %b.0, %if.end318 ], [ %b.0, %if.end309 ]
  %a.0528 = phi %struct.bignum_st* [ %a.0.ph, %if.then335 ], [ %call260, %if.then323 ], [ %call260, %if.end318 ], [ %call260, %if.end309 ]
  %p.2526 = phi %struct.bignum_st* [ %p.2.ph, %if.then335 ], [ %p.1, %if.then323 ], [ %p.1, %if.end318 ], [ %p.1, %if.end309 ]
  %dup.0524 = phi %struct.ec_group_st* [ %dup.0.ph, %if.then335 ], [ %call298, %if.then323 ], [ %call298, %if.end318 ], [ %call298, %if.end309 ]
  %ret.5 = phi %struct.ec_group_st* [ null, %if.then335 ], [ %call314, %if.then323 ], [ %call314, %if.end318 ], [ %ret.1, %if.end309 ]
  tail call void @EC_GROUP_free(%struct.ec_group_st* noundef %dup.0524) #7
  tail call void @BN_free(%struct.bignum_st* noundef %p.2526) #7
  tail call void @BN_free(%struct.bignum_st* noundef %a.0528) #7
  tail call void @BN_free(%struct.bignum_st* noundef %b.1530) #7
  tail call void @EC_POINT_free(%struct.ec_point_st* noundef %point.0532) #7
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0534) #7
  ret %struct.ec_group_st* %ret.5
}

declare %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare i64 @ASN1_INTEGER_get(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @BN_set_bit(%struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare %struct.ec_group_st* @EC_GROUP_new_curve_GF2m(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.bignum_st* @ASN1_INTEGER_to_BN(%struct.asn1_string_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_negative(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(%struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.ec_group_st* @EC_GROUP_new_curve_GFp(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #4

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare void @EC_GROUP_set_point_conversion_form(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @EC_POINT_oct2point(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_set_generator(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare %struct.ec_group_st* @EC_GROUP_dup(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i64 @EC_GROUP_set_seed(%struct.ec_group_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_ec_curve_nid_from_params(%struct.ec_group_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef) local_unnamed_addr #1

declare void @EC_GROUP_free(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @EC_POINT_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef readonly %params) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ecpk_parameters_st* %params, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 846, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EC_GROUP_new_from_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 124, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 0
  %0 = load i32, i32* %type, align 8, !tbaa !37
  switch i32 %0, label %if.else18 [
    i32 0, label %if.then2
    i32 1, label %if.then9
    i32 2, label %cleanup
  ]

if.then2:                                         ; preds = %if.end
  %named_curve = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 1, i32 0
  %1 = load %struct.asn1_object_st*, %struct.asn1_object_st** %named_curve, align 8, !tbaa !18
  %call = tail call i32 @OBJ_obj2nid(%struct.asn1_object_st* noundef %1) #7
  %call3 = tail call %struct.ec_group_st* @EC_GROUP_new_by_curve_name(i32 noundef %call) #7
  %cmp4 = icmp eq %struct.ec_group_st* %call3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 854, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EC_GROUP_new_from_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 119, i8* noundef null) #7
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call3, i32 noundef 1) #7
  br label %cleanup

if.then9:                                         ; preds = %if.end
  %value10 = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %params, i64 0, i32 1
  %parameters = bitcast %union.anon.2* %value10 to %struct.ec_parameters_st**
  %2 = load %struct.ec_parameters_st*, %struct.ec_parameters_st** %parameters, align 8, !tbaa !18
  %call11 = tail call %struct.ec_group_st* @EC_GROUP_new_from_ecparameters(%struct.ec_parameters_st* noundef %2) #9
  %tobool.not = icmp eq %struct.ec_group_st* %call11, null
  br i1 %tobool.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 862, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EC_GROUP_new_from_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  tail call void @EC_GROUP_set_asn1_flag(%struct.ec_group_st* noundef nonnull %call11, i32 noundef 0) #7
  br label %cleanup

if.else18:                                        ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 870, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.EC_GROUP_new_from_ecpkparameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 115, i8* noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end13, %if.end, %if.else18, %if.then12, %if.then5, %if.then
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then ], [ null, %if.then5 ], [ null, %if.then12 ], [ null, %if.else18 ], [ null, %if.end ], [ %call3, %if.end6 ], [ %call11, %if.end13 ]
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef %a, i8** nocapture noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %call = call %struct.ecpk_parameters_st* @d2i_ECPKPARAMETERS(%struct.ecpk_parameters_st** noundef null, i8** noundef nonnull %p, i64 noundef %len) #9
  %cmp = icmp eq %struct.ecpk_parameters_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef null) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef nonnull %call) #9
  %cmp2 = icmp eq %struct.ec_group_st* %call1, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef nonnull %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %call, i64 0, i32 0
  %2 = load i32, i32* %type, align 8, !tbaa !37
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %decoded_from_explicit_params = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call1, i64 0, i32 6
  store i32 1, i32* %decoded_from_explicit_params, align 8, !tbaa !41
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %tobool.not = icmp eq %struct.ec_group_st** %a, null
  br i1 %tobool.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end7
  %3 = load %struct.ec_group_st*, %struct.ec_group_st** %a, align 8, !tbaa !4
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %3) #7
  store %struct.ec_group_st* %call1, %struct.ec_group_st** %a, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end7
  call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef nonnull %call) #9
  %4 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %4, i8** %in, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3, %if.then
  %retval.0 = phi %struct.ec_group_st* [ null, %if.then ], [ null, %if.then3 ], [ %call1, %if.end9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.ec_group_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %call = tail call %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef %a, %struct.ecpk_parameters_st* noundef null) #9
  %cmp = icmp eq %struct.ecpk_parameters_st* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 913, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.i2d_ECPKParameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 120, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2d_ECPKPARAMETERS(%struct.ecpk_parameters_st* noundef nonnull %call, i8** noundef %out) #9
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 917, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.i2d_ECPKParameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 121, i8* noundef null) #7
  tail call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef nonnull %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @ECPKPARAMETERS_free(%struct.ecpk_parameters_st* noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ %call1, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_ECPrivateKey(%struct.ec_key_st** noundef %a, i8** nocapture noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %p = alloca i8*, align 8
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = load i8*, i8** %in, align 8, !tbaa !4
  store i8* %1, i8** %p, align 8, !tbaa !4
  %call = call %struct.ec_privatekey_st* @d2i_EC_PRIVATEKEY(%struct.ec_privatekey_st** noundef null, i8** noundef nonnull %p, i64 noundef %len) #9
  %cmp = icmp eq %struct.ec_privatekey_st* %call, null
  br i1 %cmp, label %cleanup91, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct.ec_key_st** %a, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  %cmp2 = icmp eq %struct.ec_key_st* %2, null
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct.ec_key_st* @EC_KEY_new() #7
  %cmp5 = icmp eq %struct.ec_key_st* %call4, null
  br i1 %cmp5, label %err.sink.split, label %if.end8

if.end8:                                          ; preds = %lor.lhs.false, %if.then3
  %ret.0 = phi %struct.ec_key_st* [ %call4, %if.then3 ], [ %2, %lor.lhs.false ]
  %parameters = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 2
  %3 = load %struct.ecpk_parameters_st*, %struct.ecpk_parameters_st** %parameters, align 8, !tbaa !42
  %tobool.not = icmp eq %struct.ecpk_parameters_st* %3, null
  %group21.phi.trans.insert = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 3
  %.pre = load %struct.ec_group_st*, %struct.ec_group_st** %group21.phi.trans.insert, align 8, !tbaa !44
  br i1 %tobool.not, label %if.end20, label %if.then9

if.then9:                                         ; preds = %if.end8
  call void @EC_GROUP_free(%struct.ec_group_st* noundef %.pre) #7
  %4 = load %struct.ecpk_parameters_st*, %struct.ecpk_parameters_st** %parameters, align 8, !tbaa !42
  %call11 = call %struct.ec_group_st* @EC_GROUP_new_from_ecpkparameters(%struct.ecpk_parameters_st* noundef %4) #9
  store %struct.ec_group_st* %call11, %struct.ec_group_st** %group21.phi.trans.insert, align 8, !tbaa !44
  %cmp14.not = icmp eq %struct.ec_group_st* %call11, null
  br i1 %cmp14.not, label %err.sink.split, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then9
  %5 = load %struct.ecpk_parameters_st*, %struct.ecpk_parameters_st** %parameters, align 8, !tbaa !42
  %type = getelementptr inbounds %struct.ecpk_parameters_st, %struct.ecpk_parameters_st* %5, i64 0, i32 0
  %6 = load i32, i32* %type, align 8, !tbaa !37
  %cmp16 = icmp eq i32 %6, 1
  br i1 %cmp16, label %if.then17, label %if.end24

if.then17:                                        ; preds = %land.lhs.true
  %decoded_from_explicit_params = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %call11, i64 0, i32 6
  store i32 1, i32* %decoded_from_explicit_params, align 8, !tbaa !41
  br label %if.end24

if.end20:                                         ; preds = %if.end8
  %cmp22 = icmp eq %struct.ec_group_st* %.pre, null
  br i1 %cmp22, label %err.sink.split, label %if.end24

if.end24:                                         ; preds = %if.then17, %land.lhs.true, %if.end20
  %group21148 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 3
  %version = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 0
  %7 = load i32, i32* %version, align 8, !tbaa !47
  %version25 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 2
  store i32 %7, i32* %version25, align 8, !tbaa !48
  %privateKey = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 1
  %8 = load %struct.asn1_string_st*, %struct.asn1_string_st** %privateKey, align 8, !tbaa !49
  %tobool26.not = icmp eq %struct.asn1_string_st* %8, null
  br i1 %tobool26.not, label %err.sink.split, label %if.then27

if.then27:                                        ; preds = %if.end24
  %call29 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %8) #7
  %call30 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef nonnull %8) #7
  %conv = sext i32 %call30 to i64
  %call31 = call i32 @EC_KEY_oct2priv(%struct.ec_key_st* noundef nonnull %ret.0, i8* noundef %call29, i64 noundef %conv) #7
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %err, label %if.end37

if.end37:                                         ; preds = %if.then27
  %9 = load %struct.ec_group_st*, %struct.ec_group_st** %group21148, align 8, !tbaa !44
  %call39 = call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %9) #7
  %cmp40 = icmp eq i32 %call39, 1172
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end37
  call void @EC_KEY_set_flags(%struct.ec_key_st* noundef nonnull %ret.0, i32 noundef 4) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end37
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 4
  %10 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !50
  call void @EC_POINT_clear_free(%struct.ec_point_st* noundef %10) #7
  %11 = load %struct.ec_group_st*, %struct.ec_group_st** %group21148, align 8, !tbaa !44
  %call45 = call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* noundef %11) #7
  store %struct.ec_point_st* %call45, %struct.ec_point_st** %pub_key, align 8, !tbaa !50
  %cmp48 = icmp eq %struct.ec_point_st* %call45, null
  br i1 %cmp48, label %err.sink.split, label %if.end51

if.end51:                                         ; preds = %if.end43
  %publicKey = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 3
  %12 = load %struct.asn1_string_st*, %struct.asn1_string_st** %publicKey, align 8, !tbaa !51
  %tobool52.not = icmp eq %struct.asn1_string_st* %12, null
  br i1 %tobool52.not, label %if.else67, label %if.then53

if.then53:                                        ; preds = %if.end51
  %call55 = call i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef nonnull %12) #7
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %publicKey, align 8, !tbaa !51
  %call57 = call i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef %13) #7
  %conv58 = sext i32 %call57 to i64
  %call59 = call i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef nonnull %ret.0, i8* noundef %call55, i64 noundef %conv58, %struct.bignum_ctx* noundef null) #7
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %err.sink.split, label %if.end80

if.else67:                                        ; preds = %if.end51
  %14 = load %struct.ec_group_st*, %struct.ec_group_st** %group21148, align 8, !tbaa !44
  %meth = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %14, i64 0, i32 0
  %15 = load %struct.ec_method_st*, %struct.ec_method_st** %meth, align 8, !tbaa !52
  %keygenpub = getelementptr inbounds %struct.ec_method_st, %struct.ec_method_st* %15, i64 0, i32 44
  %16 = load i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)** %keygenpub, align 8, !tbaa !53
  %cmp69 = icmp eq i32 (%struct.ec_key_st*)* %16, null
  br i1 %cmp69, label %err, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.else67
  %call75 = call i32 %16(%struct.ec_key_st* noundef nonnull %ret.0) #7
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %err, label %if.end79

if.end79:                                         ; preds = %lor.lhs.false71
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 6
  %17 = load i32, i32* %enc_flag, align 8, !tbaa !55
  %or = or i32 %17, 2
  store i32 %or, i32* %enc_flag, align 8, !tbaa !55
  br label %if.end80

if.end80:                                         ; preds = %if.then53, %if.end79
  br i1 %cmp1, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end80
  store %struct.ec_key_st* %ret.0, %struct.ec_key_st** %a, align 8, !tbaa !4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end80
  call void @EC_PRIVATEKEY_free(%struct.ec_privatekey_st* noundef nonnull %call) #9
  %18 = load i8*, i8** %p, align 8, !tbaa !4
  store i8* %18, i8** %in, align 8, !tbaa !4
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.0, i64 0, i32 14
  %19 = load i64, i64* %dirty_cnt, align 8, !tbaa !56
  %inc = add i64 %19, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !56
  br label %cleanup91

err.sink.split:                                   ; preds = %if.then53, %if.end43, %if.end24, %if.end20, %if.then9, %if.then3
  %.sink152 = phi i32 [ 938, %if.then3 ], [ 953, %if.then9 ], [ 953, %if.end20 ], [ 965, %if.end24 ], [ 975, %if.end43 ], [ 986, %if.then53 ]
  %.sink = phi i32 [ 786688, %if.then3 ], [ 524304, %if.then9 ], [ 524304, %if.end20 ], [ 125, %if.end24 ], [ 524304, %if.end43 ], [ 524304, %if.then53 ]
  %ret.1.ph = phi %struct.ec_key_st* [ null, %if.then3 ], [ %ret.0, %if.then9 ], [ %ret.0, %if.end20 ], [ %ret.0, %if.end24 ], [ %ret.0, %if.end43 ], [ %ret.0, %if.then53 ]
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.sink152, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.d2i_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef %.sink, i8* noundef null) #7
  br label %err

err:                                              ; preds = %err.sink.split, %if.then27, %if.else67, %lor.lhs.false71
  %ret.1 = phi %struct.ec_key_st* [ %ret.0, %if.then27 ], [ %ret.0, %if.else67 ], [ %ret.0, %lor.lhs.false71 ], [ %ret.1.ph, %err.sink.split ]
  br i1 %cmp1, label %if.then89, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %err
  %20 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  %cmp87.not = icmp eq %struct.ec_key_st* %20, %ret.1
  br i1 %cmp87.not, label %if.end90, label %if.then89

if.then89:                                        ; preds = %lor.lhs.false86, %err
  call void @EC_KEY_free(%struct.ec_key_st* noundef %ret.1) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %lor.lhs.false86
  call void @EC_PRIVATEKEY_free(%struct.ec_privatekey_st* noundef nonnull %call) #9
  br label %cleanup91

cleanup91:                                        ; preds = %entry, %if.end90, %if.end83
  %retval.0 = phi %struct.ec_key_st* [ null, %if.end90 ], [ %ret.0, %if.end83 ], [ null, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret %struct.ec_key_st* %retval.0
}

declare %struct.ec_key_st* @EC_KEY_new() local_unnamed_addr #1

declare i32 @EC_KEY_oct2priv(%struct.ec_key_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare i8* @ASN1_STRING_get0_data(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare i32 @ASN1_STRING_length(%struct.asn1_string_st* noundef) local_unnamed_addr #1

declare void @EC_KEY_set_flags(%struct.ec_key_st* noundef, i32 noundef) local_unnamed_addr #1

declare void @EC_POINT_clear_free(%struct.ec_point_st* noundef) local_unnamed_addr #1

declare i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @EC_KEY_free(%struct.ec_key_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECPrivateKey(%struct.ec_key_st* noundef %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %priv = alloca i8*, align 8
  %pub = alloca i8*, align 8
  %0 = bitcast i8** %priv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  store i8* null, i8** %priv, align 8, !tbaa !4
  %1 = bitcast i8** %pub to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  store i8* null, i8** %pub, align 8, !tbaa !4
  %cmp = icmp eq %struct.ec_key_st* %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 3
  %2 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %cmp1 = icmp eq %struct.ec_group_st* %2, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %enc_flag = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 6
  %3 = load i32, i32* %enc_flag, align 8, !tbaa !55
  %and = and i32 %3, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false2
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 4
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !50
  %cmp3 = icmp eq %struct.ec_point_st* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1021, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #7
  br label %err

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false2
  %call = tail call %struct.ec_privatekey_st* @EC_PRIVATEKEY_new() #9
  %cmp4 = icmp eq %struct.ec_privatekey_st* %call, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1026, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end6:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 2
  %5 = load i32, i32* %version, align 8, !tbaa !48
  %version7 = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 0
  store i32 %5, i32* %version7, align 8, !tbaa !47
  %call8 = call i64 @EC_KEY_priv2buf(%struct.ec_key_st* noundef nonnull %a, i8** noundef nonnull %priv) #7
  %cmp9 = icmp eq i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1035, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end11:                                         ; preds = %if.end6
  %privateKey = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 1
  %6 = load %struct.asn1_string_st*, %struct.asn1_string_st** %privateKey, align 8, !tbaa !49
  %7 = load i8*, i8** %priv, align 8, !tbaa !4
  %conv = trunc i64 %call8 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %6, i8* noundef %7, i32 noundef %conv) #7
  store i8* null, i8** %priv, align 8, !tbaa !4
  %8 = load i32, i32* %enc_flag, align 8, !tbaa !55
  %and13 = and i32 %8, 1
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end11
  %9 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %parameters = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 2
  %10 = load %struct.ecpk_parameters_st*, %struct.ecpk_parameters_st** %parameters, align 8, !tbaa !42
  %call17 = call %struct.ecpk_parameters_st* @EC_GROUP_get_ecpkparameters(%struct.ec_group_st* noundef %9, %struct.ecpk_parameters_st* noundef %10) #9
  store %struct.ecpk_parameters_st* %call17, %struct.ecpk_parameters_st** %parameters, align 8, !tbaa !42
  %cmp19 = icmp eq %struct.ecpk_parameters_st* %call17, null
  br i1 %cmp19, label %if.then21, label %if.then15.if.end23_crit_edge

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  %.pre = load i32, i32* %enc_flag, align 8, !tbaa !55
  br label %if.end23

if.then21:                                        ; preds = %if.then15
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1046, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end23:                                         ; preds = %if.then15.if.end23_crit_edge, %if.end11
  %11 = phi i32 [ %.pre, %if.then15.if.end23_crit_edge ], [ %8, %if.end11 ]
  %and25 = and i32 %11, 2
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end45

if.then27:                                        ; preds = %if.end23
  %call28 = call %struct.asn1_string_st* @ASN1_BIT_STRING_new() #7
  %publicKey = getelementptr inbounds %struct.ec_privatekey_st, %struct.ec_privatekey_st* %call, i64 0, i32 3
  store %struct.asn1_string_st* %call28, %struct.asn1_string_st** %publicKey, align 8, !tbaa !51
  %cmp30 = icmp eq %struct.asn1_string_st* %call28, null
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then27
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1054, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %err

if.end33:                                         ; preds = %if.then27
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 7
  %12 = load i32, i32* %conv_form, align 4, !tbaa !57
  %call34 = call i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef nonnull %a, i32 noundef %12, i8** noundef nonnull %pub, %struct.bignum_ctx* noundef null) #7
  %cmp35 = icmp eq i64 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1061, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

if.end38:                                         ; preds = %if.end33
  %13 = load %struct.asn1_string_st*, %struct.asn1_string_st** %publicKey, align 8, !tbaa !51
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %13, i64 0, i32 3
  %14 = load i64, i64* %flags, align 8, !tbaa !34
  %and40 = and i64 %14, -16
  %or = or i64 %and40, 8
  store i64 %or, i64* %flags, align 8, !tbaa !34
  %15 = load i8*, i8** %pub, align 8, !tbaa !4
  %conv44 = trunc i64 %call34 to i32
  call void @ASN1_STRING_set0(%struct.asn1_string_st* noundef %13, i8* noundef %15, i32 noundef %conv44) #7
  store i8* null, i8** %pub, align 8, !tbaa !4
  br label %if.end45

if.end45:                                         ; preds = %if.end38, %if.end23
  %call46 = call i32 @i2d_EC_PRIVATEKEY(%struct.ec_privatekey_st* noundef nonnull %call, i8** noundef %out) #9
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %err

if.then49:                                        ; preds = %if.end45
  call void @ERR_new() #7
  call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1072, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECPrivateKey, i64 0, i64 0)) #7
  call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %err

err:                                              ; preds = %if.end45, %if.then49, %if.then37, %if.then32, %if.then21, %if.then10, %if.then5, %if.then
  %tobool51.not = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ 0, %if.then49 ], [ 0, %if.then32 ], [ 0, %if.then37 ], [ 0, %if.then21 ], [ %call46, %if.end45 ]
  %privlen.0 = phi i64 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then10 ], [ %call8, %if.then49 ], [ %call8, %if.then32 ], [ %call8, %if.then37 ], [ %call8, %if.then21 ], [ %call8, %if.end45 ]
  %priv_key.0 = phi %struct.ec_privatekey_st* [ null, %if.then ], [ null, %if.then5 ], [ %call, %if.then10 ], [ %call, %if.then49 ], [ %call, %if.then32 ], [ %call, %if.then37 ], [ %call, %if.then21 ], [ %call, %if.end45 ]
  %16 = load i8*, i8** %priv, align 8, !tbaa !4
  call void @CRYPTO_clear_free(i8* noundef %16, i64 noundef %privlen.0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1077) #7
  %17 = load i8*, i8** %pub, align 8, !tbaa !4
  call void @CRYPTO_free(i8* noundef %17, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1078) #7
  call void @EC_PRIVATEKEY_free(%struct.ec_privatekey_st* noundef %priv_key.0) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %tobool51.not
}

declare i64 @EC_KEY_priv2buf(%struct.ec_key_st* noundef, i8** noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_BIT_STRING_new() local_unnamed_addr #1

declare i64 @EC_KEY_key2buf(%struct.ec_key_st* noundef, i32 noundef, i8** noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(i8* noundef, i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECParameters(%struct.ec_key_st* noundef readonly %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %a, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1086, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.i2d_ECParameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #7
  br label %return

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %call = tail call i32 @i2d_ECPKParameters(%struct.ec_group_st* noundef %0, i8** noundef %out) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @d2i_ECParameters(%struct.ec_key_st** noundef %a, i8** noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i8** %in, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8*, i8** %in, align 8, !tbaa !4
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1097, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.d2i_ECParameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp eq %struct.ec_key_st** %a, null
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.end
  %1 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  %cmp4 = icmp eq %struct.ec_key_st* %1, null
  br i1 %cmp4, label %if.then5, label %if.end9.thread

if.then5:                                         ; preds = %lor.lhs.false3, %if.end
  %call = tail call %struct.ec_key_st* @EC_KEY_new() #7
  %cmp6 = icmp eq %struct.ec_key_st* %call, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1103, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.d2i_ECParameters, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %call, i64 0, i32 3
  %call10 = tail call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef nonnull %group, i8** noundef nonnull %in, i64 noundef %len) #9
  %tobool.not = icmp eq %struct.ec_group_st* %call10, null
  br i1 %tobool.not, label %if.then11, label %if.end18

if.end9.thread:                                   ; preds = %lor.lhs.false3
  %group47 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %1, i64 0, i32 3
  %call1048 = tail call %struct.ec_group_st* @d2i_ECPKParameters(%struct.ec_group_st** noundef nonnull %group47, i8** noundef nonnull %in, i64 noundef %len) #9
  %tobool.not49 = icmp eq %struct.ec_group_st* %call1048, null
  br i1 %tobool.not49, label %lor.lhs.false13, label %if.end18

if.then11:                                        ; preds = %if.end9
  br i1 %cmp2, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.end9.thread, %if.then11
  %ret.05255 = phi %struct.ec_key_st* [ %call, %if.then11 ], [ %1, %if.end9.thread ]
  %2 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  %cmp14.not = icmp eq %struct.ec_key_st* %2, %ret.05255
  br i1 %cmp14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %lor.lhs.false13, %if.then11
  %ret.05256 = phi %struct.ec_key_st* [ %ret.05255, %lor.lhs.false13 ], [ %call, %if.then11 ]
  tail call void @EC_KEY_free(%struct.ec_key_st* noundef nonnull %ret.05256) #7
  br label %cleanup

if.else16:                                        ; preds = %lor.lhs.false13
  %dirty_cnt = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.05255, i64 0, i32 14
  %3 = load i64, i64* %dirty_cnt, align 8, !tbaa !56
  %inc = add i64 %3, 1
  store i64 %inc, i64* %dirty_cnt, align 8, !tbaa !56
  br label %cleanup

if.end18:                                         ; preds = %if.end9.thread, %if.end9
  %group53 = phi %struct.ec_group_st** [ %group47, %if.end9.thread ], [ %group, %if.end9 ]
  %ret.050 = phi %struct.ec_key_st* [ %1, %if.end9.thread ], [ %call, %if.end9 ]
  %4 = load %struct.ec_group_st*, %struct.ec_group_st** %group53, align 8, !tbaa !44
  %call20 = tail call i32 @EC_GROUP_get_curve_name(%struct.ec_group_st* noundef %4) #7
  %cmp21 = icmp eq i32 %call20, 1172
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  tail call void @EC_KEY_set_flags(%struct.ec_key_st* noundef nonnull %ret.050, i32 noundef 4) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18
  %dirty_cnt24 = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %ret.050, i64 0, i32 14
  %5 = load i64, i64* %dirty_cnt24, align 8, !tbaa !56
  %inc25 = add i64 %5, 1
  store i64 %inc25, i64* %dirty_cnt24, align 8, !tbaa !56
  br i1 %cmp2, label %cleanup, label %if.then27

if.then27:                                        ; preds = %if.end23
  store %struct.ec_key_st* %ret.050, %struct.ec_key_st** %a, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then27, %if.then15, %if.else16, %if.then7, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ null, %if.then7 ], [ null, %if.else16 ], [ null, %if.then15 ], [ %ret.050, %if.then27 ], [ %ret.050, %if.end23 ]
  ret %struct.ec_key_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define %struct.ec_key_st* @o2i_ECPublicKey(%struct.ec_key_st** noundef readonly %a, i8** nocapture noundef %in, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st** %a, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load %struct.ec_key_st*, %struct.ec_key_st** %a, align 8, !tbaa !4
  %cmp1 = icmp eq %struct.ec_key_st* %0, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %0, i64 0, i32 3
  %1 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %cmp3 = icmp eq %struct.ec_group_st* %1, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1136, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.o2i_ECPublicKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %2 = load i8*, i8** %in, align 8, !tbaa !4
  %call = tail call i32 @EC_KEY_oct2key(%struct.ec_key_st* noundef nonnull %0, i8* noundef %2, i64 noundef %len, %struct.bignum_ctx* noundef null) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1142, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.o2i_ECPublicKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = load i8*, i8** %in, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %len
  store i8* %add.ptr, i8** %in, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi %struct.ec_key_st* [ null, %if.then ], [ %0, %if.end5 ], [ null, %if.then4 ]
  ret %struct.ec_key_st* %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @i2o_ECPublicKey(%struct.ec_key_st* noundef readonly %a, i8** noundef %out) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ec_key_st* %a, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1155, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2o_ECPublicKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786690, i8* noundef null) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %group = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 3
  %0 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %pub_key = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 4
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !50
  %conv_form = getelementptr inbounds %struct.ec_key_st, %struct.ec_key_st* %a, i64 0, i32 7
  %2 = load i32, i32* %conv_form, align 4, !tbaa !57
  %call = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %0, %struct.ec_point_st* noundef %1, i32 noundef %2, i8* noundef null, i64 noundef 0, %struct.bignum_ctx* noundef null) #7
  %cmp1 = icmp eq i8** %out, null
  %cmp2 = icmp eq i64 %call, 0
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %conv = trunc i64 %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load i8*, i8** %out, align 8, !tbaa !4
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end4
  %call8 = tail call i8* @CRYPTO_malloc(i64 noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1167) #7
  store i8* %call8, i8** %out, align 8, !tbaa !4
  %cmp9 = icmp eq i8* %call8, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1168, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2o_ECPublicKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then7, %if.end4
  %4 = phi i8* [ %call8, %if.then7 ], [ %3, %if.end4 ]
  %5 = load %struct.ec_group_st*, %struct.ec_group_st** %group, align 8, !tbaa !44
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %pub_key, align 8, !tbaa !50
  %7 = load i32, i32* %conv_form, align 4, !tbaa !57
  %call17 = tail call i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef %5, %struct.ec_point_st* noundef %6, i32 noundef %7, i8* noundef nonnull %4, i64 noundef %call, %struct.bignum_ctx* noundef null) #7
  %tobool.not = icmp eq i64 %call17, 0
  br i1 %tobool.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end13
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1175, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.i2o_ECPublicKey, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 524304, i8* noundef null) #7
  br i1 %cmp5, label %if.then20, label %cleanup

if.then20:                                        ; preds = %if.then18
  %8 = load i8*, i8** %out, align 8, !tbaa !4
  tail call void @CRYPTO_free(i8* noundef %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1177) #7
  store i8* null, i8** %out, align 8, !tbaa !4
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  br i1 %cmp5, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end22
  %9 = load i8*, i8** %out, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call
  store i8* %add.ptr, i8** %out, align 8, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %conv26 = trunc i64 %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.then20, %if.end25, %if.then11, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %conv, %if.then3 ], [ 0, %if.then11 ], [ %conv26, %if.end25 ], [ 0, %if.then20 ], [ 0, %if.then18 ]
  ret i32 %retval.0
}

declare i64 @EC_POINT_point2oct(%struct.ec_group_st* noundef, %struct.ec_point_st* noundef, i32 noundef, i8* noundef, i64 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @ECDSA_SIG_new() local_unnamed_addr #0 {
entry:
  %call = tail call i8* @CRYPTO_zalloc(i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1194) #7
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1196, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ECDSA_SIG_new, i64 0, i64 0)) #7
  tail call void (i32, i32, i8*, ...) @ERR_set_error(i32 noundef 16, i32 noundef 786688, i8* noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %0 = bitcast i8* %call to %struct.ECDSA_SIG_st*
  ret %struct.ECDSA_SIG_st* %0
}

declare i8* @CRYPTO_zalloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef %sig) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.ECDSA_SIG_st* %sig, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #7
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !60
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #7
  %2 = bitcast %struct.ECDSA_SIG_st* %sig to i8*
  tail call void @CRYPTO_free(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1206) #7
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

declare void @BN_clear_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define %struct.ECDSA_SIG_st* @d2i_ECDSA_SIG(%struct.ECDSA_SIG_st** noundef %psig, i8** noundef %ppin, i64 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %len, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq %struct.ECDSA_SIG_st** %psig, null
  br i1 %cmp1.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %0 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %psig, align 8, !tbaa !4
  %cmp2.not = icmp eq %struct.ECDSA_SIG_st* %0, null
  br i1 %cmp2.not, label %if.else, label %if.end7

if.else:                                          ; preds = %land.lhs.true, %if.end
  %call = tail call %struct.ECDSA_SIG_st* @ECDSA_SIG_new() #9
  %cmp4 = icmp eq %struct.ECDSA_SIG_st* %call, null
  br i1 %cmp4, label %cleanup, label %if.end7

if.end7:                                          ; preds = %land.lhs.true, %if.else
  %sig.0 = phi %struct.ECDSA_SIG_st* [ %call, %if.else ], [ %0, %land.lhs.true ]
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig.0, i64 0, i32 0
  %1 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  %cmp8 = icmp eq %struct.bignum_st* %1, null
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.bignum_st* @BN_new() #7
  store %struct.bignum_st* %call10, %struct.bignum_st** %r, align 8, !tbaa !58
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %2 = phi %struct.bignum_st* [ %call10, %if.then9 ], [ %1, %if.end7 ]
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig.0, i64 0, i32 1
  %3 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !60
  %cmp13 = icmp eq %struct.bignum_st* %3, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %call15 = tail call %struct.bignum_st* @BN_new() #7
  store %struct.bignum_st* %call15, %struct.bignum_st** %s, align 8, !tbaa !60
  %.pre = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  %4 = phi %struct.bignum_st* [ %call15, %if.then14 ], [ %3, %if.end12 ]
  %5 = phi %struct.bignum_st* [ %.pre, %if.then14 ], [ %2, %if.end12 ]
  %call20 = tail call i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef %5, %struct.bignum_st* noundef %4, i8** noundef %ppin, i64 noundef %len) #7
  %cmp21 = icmp eq i64 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end17
  br i1 %cmp1.not, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22
  %6 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %psig, align 8, !tbaa !4
  %cmp24 = icmp eq %struct.ECDSA_SIG_st* %6, null
  br i1 %cmp24, label %if.then25, label %cleanup

if.then25:                                        ; preds = %lor.lhs.false, %if.then22
  tail call void @ECDSA_SIG_free(%struct.ECDSA_SIG_st* noundef nonnull %sig.0) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  br i1 %cmp1.not, label %cleanup, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %if.end27
  %7 = load %struct.ECDSA_SIG_st*, %struct.ECDSA_SIG_st** %psig, align 8, !tbaa !4
  %cmp30 = icmp eq %struct.ECDSA_SIG_st* %7, null
  br i1 %cmp30, label %if.then31, label %cleanup

if.then31:                                        ; preds = %land.lhs.true29
  store %struct.ECDSA_SIG_st* %sig.0, %struct.ECDSA_SIG_st** %psig, align 8, !tbaa !4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %land.lhs.true29, %if.then31, %lor.lhs.false, %if.then25, %if.else, %entry
  %retval.0 = phi %struct.ECDSA_SIG_st* [ null, %entry ], [ null, %if.else ], [ null, %if.then25 ], [ null, %lor.lhs.false ], [ %sig.0, %if.then31 ], [ %sig.0, %land.lhs.true29 ], [ %sig.0, %if.end27 ]
  ret %struct.ECDSA_SIG_st* %retval.0
}

declare i64 @ossl_decode_der_dsa_sig(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i8** noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* nocapture noundef readonly %sig, i8** noundef %ppout) local_unnamed_addr #0 {
entry:
  %encoded_len = alloca i64, align 8
  %pkt = alloca %struct.wpacket_st, align 8
  %0 = bitcast i64* %encoded_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %1 = bitcast %struct.wpacket_st* %pkt to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #8
  %cmp = icmp eq i8** %ppout, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @WPACKET_init_null(%struct.wpacket_st* noundef nonnull %pkt, i64 noundef 0) #7
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %ppout, align 8, !tbaa !4
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then3, label %if.else10

if.then3:                                         ; preds = %if.else
  %call4 = tail call %struct.buf_mem_st* @BUF_MEM_new() #7
  %cmp5 = icmp eq %struct.buf_mem_st* %call4, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then3
  %call6 = call i32 @WPACKET_init_len(%struct.wpacket_st* noundef nonnull %pkt, %struct.buf_mem_st* noundef nonnull %call4, i64 noundef 0) #7
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end16

if.then8:                                         ; preds = %lor.lhs.false, %if.then3
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %call4) #7
  br label %cleanup

if.else10:                                        ; preds = %if.else
  %call11 = call i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef nonnull %pkt, i8* noundef nonnull %2, i64 noundef -1, i64 noundef 0) #7
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup, label %if.end16

if.end16:                                         ; preds = %lor.lhs.false, %if.else10, %if.then
  %buf.0 = phi %struct.buf_mem_st* [ null, %if.then ], [ %call4, %lor.lhs.false ], [ null, %if.else10 ]
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %3 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %4 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !60
  %call17 = call i32 @ossl_encode_der_dsa_sig(%struct.wpacket_st* noundef nonnull %pkt, %struct.bignum_st* noundef %3, %struct.bignum_st* noundef %4) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.end16
  %call20 = call i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef nonnull %pkt, i64* noundef nonnull %encoded_len) #7
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %call23 = call i32 @WPACKET_finish(%struct.wpacket_st* noundef nonnull %pkt) #7
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false19, %if.end16
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %buf.0) #7
  call void @WPACKET_cleanup(%struct.wpacket_st* noundef nonnull %pkt) #7
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false22
  br i1 %cmp, label %if.end34, label %if.then28

if.then28:                                        ; preds = %if.end26
  %5 = load i8*, i8** %ppout, align 8, !tbaa !4
  %cmp29 = icmp eq i8* %5, null
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.then28
  %data = getelementptr inbounds %struct.buf_mem_st, %struct.buf_mem_st* %buf.0, i64 0, i32 1
  %6 = load i8*, i8** %data, align 8, !tbaa !61
  store i8* %6, i8** %ppout, align 8, !tbaa !4
  store i8* null, i8** %data, align 8, !tbaa !61
  call void @BUF_MEM_free(%struct.buf_mem_st* noundef %buf.0) #7
  br label %if.end34

if.else32:                                        ; preds = %if.then28
  %7 = load i64, i64* %encoded_len, align 8, !tbaa !63
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %7
  store i8* %add.ptr, i8** %ppout, align 8, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.else32, %if.end26
  %8 = load i64, i64* %encoded_len, align 8, !tbaa !63
  %conv = trunc i64 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else10, %if.then, %if.end34, %if.then25, %if.then8
  %retval.0 = phi i32 [ %conv, %if.end34 ], [ -1, %if.then25 ], [ -1, %if.then8 ], [ -1, %if.then ], [ -1, %if.else10 ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare i32 @WPACKET_init_null(%struct.wpacket_st* noundef, i64 noundef) local_unnamed_addr #1

declare %struct.buf_mem_st* @BUF_MEM_new() local_unnamed_addr #1

declare i32 @WPACKET_init_len(%struct.wpacket_st* noundef, %struct.buf_mem_st* noundef, i64 noundef) local_unnamed_addr #1

declare void @BUF_MEM_free(%struct.buf_mem_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_init_static_len(%struct.wpacket_st* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_encode_der_dsa_sig(%struct.wpacket_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare i32 @WPACKET_get_total_written(%struct.wpacket_st* noundef, i64* noundef) local_unnamed_addr #1

declare i32 @WPACKET_finish(%struct.wpacket_st* noundef) local_unnamed_addr #1

declare void @WPACKET_cleanup(%struct.wpacket_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define void @ECDSA_SIG_get0(%struct.ECDSA_SIG_st* nocapture noundef readonly %sig, %struct.bignum_st** noundef writeonly %pr, %struct.bignum_st** noundef writeonly %ps) local_unnamed_addr #5 {
entry:
  %cmp.not = icmp eq %struct.bignum_st** %pr, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  store %struct.bignum_st* %0, %struct.bignum_st** %pr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp1.not = icmp eq %struct.bignum_st** %ps, null
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !60
  store %struct.bignum_st* %1, %struct.bignum_st** %ps, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @ECDSA_SIG_get0_r(%struct.ECDSA_SIG_st* nocapture noundef readonly %sig) local_unnamed_addr #6 {
entry:
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r, align 8, !tbaa !58
  ret %struct.bignum_st* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define %struct.bignum_st* @ECDSA_SIG_get0_s(%struct.ECDSA_SIG_st* nocapture noundef readonly %sig) local_unnamed_addr #6 {
entry:
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %0 = load %struct.bignum_st*, %struct.bignum_st** %s, align 8, !tbaa !60
  ret %struct.bignum_st* %0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ECDSA_SIG_set0(%struct.ECDSA_SIG_st* nocapture noundef %sig, %struct.bignum_st* noundef %r, %struct.bignum_st* noundef %s) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq %struct.bignum_st* %r, null
  %cmp1 = icmp eq %struct.bignum_st* %s, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %r2 = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  %0 = load %struct.bignum_st*, %struct.bignum_st** %r2, align 8, !tbaa !58
  tail call void @BN_clear_free(%struct.bignum_st* noundef %0) #7
  %s3 = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  %1 = load %struct.bignum_st*, %struct.bignum_st** %s3, align 8, !tbaa !60
  tail call void @BN_clear_free(%struct.bignum_st* noundef %1) #7
  store %struct.bignum_st* %r, %struct.bignum_st** %r2, align 8, !tbaa !58
  store %struct.bignum_st* %s, %struct.bignum_st** %s3, align 8, !tbaa !60
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define i32 @ECDSA_size(%struct.ec_key_st* noundef %ec) local_unnamed_addr #0 {
entry:
  %sig = alloca %struct.ECDSA_SIG_st, align 8
  %0 = bitcast %struct.ECDSA_SIG_st* %sig to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #8
  %cmp = icmp eq %struct.ec_key_st* %ec, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef nonnull %ec) #7
  %cmp1 = icmp eq %struct.ec_group_st* %call, null
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call %struct.bignum_st* @EC_GROUP_get0_order(%struct.ec_group_st* noundef nonnull %call) #7
  %cmp5 = icmp eq %struct.bignum_st* %call4, null
  br i1 %cmp5, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %s = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 1
  store %struct.bignum_st* %call4, %struct.bignum_st** %s, align 8, !tbaa !60
  %r = getelementptr inbounds %struct.ECDSA_SIG_st, %struct.ECDSA_SIG_st* %sig, i64 0, i32 0
  store %struct.bignum_st* %call4, %struct.bignum_st** %r, align 8, !tbaa !58
  %call8 = call i32 @i2d_ECDSA_SIG(%struct.ECDSA_SIG_st* noundef nonnull %sig, i8** noundef null) #9
  %1 = icmp sgt i32 %call8, 0
  %spec.store.select = select i1 %1, i32 %call8, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end, %entry, %if.end7
  %retval.0 = phi i32 [ %spec.store.select, %if.end7 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #8
  ret i32 %retval.0
}

declare %struct.ec_group_st* @EC_KEY_get0_group(%struct.ec_key_st* noundef) local_unnamed_addr #1

declare %struct.ASN1_ITEM_st* @INT32_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_OBJECT_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @X9_62_CHARACTERISTIC_TWO_adb() #2 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @X9_62_CHARACTERISTIC_TWO_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_NULL_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_INTEGER_it() #1

declare %struct.ASN1_ITEM_st* @ASN1_ANY_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @X9_62_FIELDID_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @X9_62_FIELDID_it.local_it
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @X9_62_CURVE_it() #2 {
entry:
  ret %struct.ASN1_ITEM_st* @X9_62_CURVE_it.local_it
}

declare %struct.ASN1_ITEM_st* @ASN1_OCTET_STRING_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal %struct.ASN1_ITEM_st* @X9_62_FIELDID_adb() #2 {
entry:
  ret %struct.ASN1_ITEM_st* bitcast (%struct.ASN1_ADB_st* @X9_62_FIELDID_adb.internal_adb to %struct.ASN1_ITEM_st*)
}

declare %struct.ASN1_ITEM_st* @ASN1_BIT_STRING_it() #1

declare void @ASN1_TYPE_free(%struct.asn1_type_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_field_type(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_curve(%struct.ec_group_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_degree(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_basis_type(%struct.ec_group_st* noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_trinomial_basis(%struct.ec_group_st* noundef, i32* noundef) local_unnamed_addr #1

declare %struct.asn1_string_st* @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_INTEGER_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EC_GROUP_get_pentanomial_basis(%struct.ec_group_st* noundef, i32* noundef, i32* noundef, i32* noundef) local_unnamed_addr #1

declare i32* @ASN1_NULL_new() local_unnamed_addr #1

declare i32 @BN_bn2binpad(%struct.bignum_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_OCTET_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ASN1_BIT_STRING_set(%struct.asn1_string_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_BIT_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"ec_parameters_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!10 = !{!"int", !6, i64 0}
!11 = !{!9, !5, i64 8}
!12 = !{!9, !5, i64 16}
!13 = !{!9, !5, i64 24}
!14 = !{!9, !5, i64 32}
!15 = !{!9, !5, i64 40}
!16 = !{!17, !5, i64 0}
!17 = !{!"x9_62_fieldid_st", !5, i64 0, !6, i64 8}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"x9_62_characteristic_two_st", !10, i64 0, !5, i64 8, !6, i64 16}
!21 = !{!20, !5, i64 8}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !10, i64 0}
!24 = !{!"x9_62_pentanomial_st", !10, i64 0, !10, i64 4, !10, i64 8}
!25 = !{!24, !10, i64 4}
!26 = !{!24, !10, i64 8}
!27 = !{!28, !5, i64 0}
!28 = !{!"x9_62_curve_st", !5, i64 0, !5, i64 8, !5, i64 16}
!29 = !{!28, !5, i64 8}
!30 = !{!31, !5, i64 48}
!31 = !{!"ec_group_st", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !6, i64 44, !5, i64 48, !32, i64 56, !5, i64 64, !6, i64 72, !5, i64 96, !5, i64 104, !10, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !6, i64 152, !6, i64 160, !5, i64 168, !5, i64 176}
!32 = !{!"long", !6, i64 0}
!33 = !{!28, !5, i64 16}
!34 = !{!35, !32, i64 16}
!35 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !5, i64 8, !32, i64 16}
!36 = !{!31, !32, i64 56}
!37 = !{!38, !10, i64 0}
!38 = !{!"ecpk_parameters_st", !10, i64 0, !6, i64 8}
!39 = !{!35, !5, i64 8}
!40 = !{!35, !10, i64 0}
!41 = !{!31, !10, i64 40}
!42 = !{!43, !5, i64 16}
!43 = !{!"ec_privatekey_st", !10, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!44 = !{!45, !5, i64 24}
!45 = !{!"ec_key_st", !5, i64 0, !5, i64 8, !10, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !6, i64 52, !6, i64 56, !10, i64 60, !46, i64 64, !5, i64 80, !5, i64 88, !5, i64 96, !32, i64 104}
!46 = !{!"crypto_ex_data_st", !5, i64 0, !5, i64 8}
!47 = !{!43, !10, i64 0}
!48 = !{!45, !10, i64 16}
!49 = !{!43, !5, i64 8}
!50 = !{!45, !5, i64 32}
!51 = !{!43, !5, i64 24}
!52 = !{!31, !5, i64 0}
!53 = !{!54, !5, i64 344}
!54 = !{!"ec_method_st", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !5, i64 232, !5, i64 240, !5, i64 248, !5, i64 256, !5, i64 264, !5, i64 272, !5, i64 280, !5, i64 288, !5, i64 296, !5, i64 304, !5, i64 312, !5, i64 320, !5, i64 328, !5, i64 336, !5, i64 344, !5, i64 352, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384, !5, i64 392, !5, i64 400, !5, i64 408, !5, i64 416, !5, i64 424, !5, i64 432}
!55 = !{!45, !10, i64 48}
!56 = !{!45, !32, i64 104}
!57 = !{!45, !6, i64 52}
!58 = !{!59, !5, i64 0}
!59 = !{!"ECDSA_SIG_st", !5, i64 0, !5, i64 8}
!60 = !{!59, !5, i64 8}
!61 = !{!62, !5, i64 8}
!62 = !{!"buf_mem_st", !32, i64 0, !5, i64 8, !32, i64 16, !32, i64 24}
!63 = !{!32, !32, i64 0}
