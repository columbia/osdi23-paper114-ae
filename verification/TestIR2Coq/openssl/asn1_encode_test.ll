; ModuleID = 'test/asn1_encode_test.c'
source_filename = "test/asn1_encode_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TEST_PACKAGE = type { %struct.ASN1_ITEM_st* ()*, i8*, i32, i8*, i64, i64, i8*, i64, i64, i32 (i8*, i8**)*, i8* (i8**, i8**, i64)*, void (i8*)* }
%struct.ASN1_ITEM_st = type { i8, i64, %struct.ASN1_TEMPLATE_st*, i64, i8*, i64, i8* }
%struct.ASN1_TEMPLATE_st = type { i64, i64, i64, i8*, {}* }
%struct.TEST_CUSTOM_DATA = type { i8*, i64, i8*, i64 }
%struct.bio_st = type opaque
%struct.ASN1_LONG_DATA = type { i32, i64, i64 }
%struct.ASN1_INT32_DATA = type { i32, i32, i32 }
%struct.ASN1_UINT32_DATA = type { i32, i32, i32 }
%struct.ASN1_INT64_DATA = type { i32, i64, i64 }
%struct.ASN1_UINT64_DATA = type { i32, i64, i64 }
%struct.INVALIDTEMPLATE = type { %struct.asn1_string_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.EXPECTED = type { i32, [1 x i8] }
%struct.ASN1_VALUE_st = type opaque
%struct.asn1_pctx_st = type opaque

@.str = private unnamed_addr constant [16 x i8] c"test_long_32bit\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test_long_64bit\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"test_int32\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"test_uint32\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"test_int64\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"test_uint64\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"test_invalid_template\00", align 1
@long_test_package_32bit = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_LONG_DATA_it, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* bitcast ([34 x %struct.ASN1_LONG_DATA]* @long_expected_32bit to i8*), i64 816, i64 24, i8* bitcast ([12 x %struct.ASN1_LONG_DATA]* @long_encdec_data_32bit to i8*), i64 288, i64 24, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_LONG_DATA*, i8**)* @i2d_ASN1_LONG_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_LONG_DATA* (%struct.ASN1_LONG_DATA**, i8**, i64)* @d2i_ASN1_LONG_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_LONG_DATA*)* @ASN1_LONG_DATA_free to void (i8*)*) }, align 8
@.str.7 = private unnamed_addr constant [83 x i8] c"assertion failed: nelems == sizeof(test_custom_data) / sizeof(test_custom_data[0])\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"test/asn1_encode_test.c\00", align 1
@test_custom_data = internal global [34 x %struct.TEST_CUSTOM_DATA] [%struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_zero, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_zero, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_longundef, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_longundef, i32 0, i32 0), i64 4 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one_neg, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one_neg, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @t_minus_256, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @t_minus_256, i32 0, i32 0), i64 2 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_9bytes_1, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_9bytes_1, i32 0, i32 0), i64 9 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_1, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_1, i32 0, i32 0), i64 9 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_8bytes_2, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_8bytes_2, i32 0, i32 0), i64 8 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_3_pad, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_3_pad, i32 0, i32 0), i64 9 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_8bytes_4_neg, i32 0, i32 0), i64 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @t_8bytes_4_neg, i32 0, i32 0), i64 8 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_5_negpad, i32 0, i32 0), i64 9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @t_8bytes_5_negpad, i32 0, i32 0), i64 9 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_5bytes_1, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_5bytes_1, i32 0, i32 0), i64 5 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_1, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_1, i32 0, i32 0), i64 5 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_4bytes_2, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_4bytes_2, i32 0, i32 0), i64 4 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_3_pad, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_3_pad, i32 0, i32 0), i64 5 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_4bytes_4_neg, i32 0, i32 0), i64 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @t_4bytes_4_neg, i32 0, i32 0), i64 4 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_5_negpad, i32 0, i32 0), i64 5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1 }, %struct.TEST_CUSTOM_DATA { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @t_one, i32 0, i32 0), i64 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @t_4bytes_5_negpad, i32 0, i32 0), i64 5 }], align 16
@.str.9 = private unnamed_addr constant [41 x i8] c"Failed custom encode round trip %u of %s\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Custom encode round trip %u of %s mismatch\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"do_encode_custom() return unknown value\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed custom decode round trip %u of %s\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Custom decode round trip %u of %s mismatch\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"do_decode_custom() return unknown value\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Failed encode/decode round trip %u of %s\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"Encode/decode round trip %u of %s mismatch\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"do_enc_dec() return unknown value\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Printing of %s failed\00", align 1
@__const.make_custom_der.t_true = private unnamed_addr constant [3 x i8] c"\01\01\FF", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"assertion failed: seqbytes == (size_t)(p - *encoding)\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"assertion failed: len < 0x8000\00", align 1
@t_zero = internal global [1 x i8] zeroinitializer, align 1
@t_one = internal global [1 x i8] c"\01", align 1
@t_longundef = internal global [4 x i8] c"\7F\FF\FF\FF", align 1
@t_one_neg = internal global [1 x i8] c"\FF", align 1
@t_minus_256 = internal global [2 x i8] c"\FF\00", align 1
@t_9bytes_1 = internal global [9 x i8] c"\01\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@t_8bytes_1 = internal global [9 x i8] c"\00\80\00\00\00\00\00\00\00", align 1
@t_8bytes_2 = internal global [8 x i8] c"\7F\FF\FF\FF\FF\FF\FF\FF", align 1
@t_8bytes_3_pad = internal global [9 x i8] c"\00\7F\FF\FF\FF\FF\FF\FF\FF", align 1
@t_8bytes_4_neg = internal global [8 x i8] c"\80\00\00\00\00\00\00\00", align 1
@t_8bytes_5_negpad = internal global [9 x i8] c"\FF\80\00\00\00\00\00\00\00", align 1
@t_5bytes_1 = internal global [5 x i8] c"\01\FF\FF\FF\FF", align 1
@t_4bytes_1 = internal global [5 x i8] c"\00\80\00\00\00", align 1
@t_4bytes_2 = internal global [4 x i8] c"\7F\FF\FF\FE", align 1
@t_4bytes_3_pad = internal global [5 x i8] c"\00\7F\FF\FF\FE", align 1
@t_4bytes_4_neg = internal global [4 x i8] c"\80\00\00\00", align 1
@t_4bytes_5_negpad = internal global [5 x i8] c"\FF\80\00\00\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"assertion failed: package->encode_expectations_elem_size <= DATA_BUF_SIZE\00", align 1
@bio_err = external dso_local local_unnamed_addr global %struct.bio_st*, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"LONG\00", align 1
@long_expected_32bit = internal global [34 x %struct.ASN1_LONG_DATA] [%struct.ASN1_LONG_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -256, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -256 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 2147483646, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483646 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 -2147483648, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -2147483648 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer], align 16
@long_encdec_data_32bit = internal global [12 x %struct.ASN1_LONG_DATA] [%struct.ASN1_LONG_DATA { i32 255, i64 9223372036854775806, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_LONG_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_LONG_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_LONG_DATA { i32 0, i64 2147483647, i64 1 }, %struct.ASN1_LONG_DATA { i32 0, i64 1, i64 0 }], align 16
@ASN1_LONG_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASN1_LONG_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0) }, align 8
@.str.23 = private unnamed_addr constant [15 x i8] c"ASN1_LONG_DATA\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"test_long\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"test_zlong\00", align 1
@ASN1_LONG_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @LONG_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 145, i64 0, i64 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZLONG_it }], align 16
@long_test_package_64bit = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_LONG_DATA_it, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 0, i8* bitcast ([34 x %struct.ASN1_LONG_DATA]* @long_expected_64bit to i8*), i64 816, i64 24, i8* bitcast ([12 x %struct.ASN1_LONG_DATA]* @long_encdec_data_64bit to i8*), i64 288, i64 24, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_LONG_DATA*, i8**)* @i2d_ASN1_LONG_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_LONG_DATA* (%struct.ASN1_LONG_DATA**, i8**, i64)* @d2i_ASN1_LONG_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_LONG_DATA*)* @ASN1_LONG_DATA_free to void (i8*)*) }, align 8
@long_expected_64bit = internal global [34 x %struct.ASN1_LONG_DATA] [%struct.ASN1_LONG_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -256, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -256 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 9223372036854775807, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 8589934591, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 8589934591 }, %struct.ASN1_LONG_DATA { i32 255, i64 2147483648, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483648 }, %struct.ASN1_LONG_DATA { i32 255, i64 2147483646, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483646 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA { i32 255, i64 -2147483648, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -2147483648 }, %struct.ASN1_LONG_DATA zeroinitializer, %struct.ASN1_LONG_DATA zeroinitializer], align 16
@long_encdec_data_64bit = internal global [12 x %struct.ASN1_LONG_DATA] [%struct.ASN1_LONG_DATA { i32 255, i64 9223372036854775807, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_LONG_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_LONG_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_LONG_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_LONG_DATA { i32 0, i64 2147483647, i64 1 }, %struct.ASN1_LONG_DATA { i32 0, i64 1, i64 0 }], align 16
@int32_test_package = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_INT32_DATA_it, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* bitcast ([34 x %struct.ASN1_INT32_DATA]* @int32_expected to i8*), i64 408, i64 12, i8* bitcast ([10 x %struct.ASN1_INT32_DATA]* @int32_encdec_data to i8*), i64 120, i64 12, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_INT32_DATA*, i8**)* @i2d_ASN1_INT32_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_INT32_DATA* (%struct.ASN1_INT32_DATA**, i8**, i64)* @d2i_ASN1_INT32_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_INT32_DATA*)* @ASN1_INT32_DATA_free to void (i8*)*) }, align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"INT32\00", align 1
@int32_expected = internal global [34 x %struct.ASN1_INT32_DATA] [%struct.ASN1_INT32_DATA { i32 255, i32 0, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 0 }, %struct.ASN1_INT32_DATA { i32 255, i32 2147483647, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 2147483647 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 -1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 -1 }, %struct.ASN1_INT32_DATA { i32 255, i32 -256, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 -256 }, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA { i32 255, i32 2147483646, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 2147483646 }, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA { i32 255, i32 -2147483648, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 -2147483648 }, %struct.ASN1_INT32_DATA zeroinitializer, %struct.ASN1_INT32_DATA zeroinitializer], align 16
@int32_encdec_data = internal global [10 x %struct.ASN1_INT32_DATA] [%struct.ASN1_INT32_DATA { i32 255, i32 2147483647, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 2147483647 }, %struct.ASN1_INT32_DATA { i32 255, i32 -2147483648, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 -2147483648 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 -1, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 -1 }, %struct.ASN1_INT32_DATA { i32 255, i32 0, i32 1 }, %struct.ASN1_INT32_DATA { i32 255, i32 1, i32 2147483647 }], align 16
@ASN1_INT32_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASN1_INT32_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0) }, align 8
@.str.29 = private unnamed_addr constant [16 x i8] c"ASN1_INT32_DATA\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"test_zint32\00", align 1
@ASN1_INT32_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4241, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT32_it }], align 16
@uint32_test_package = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_UINT32_DATA_it, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0, i8* bitcast ([34 x %struct.ASN1_UINT32_DATA]* @uint32_expected to i8*), i64 408, i64 12, i8* bitcast ([10 x %struct.ASN1_UINT32_DATA]* @uint32_encdec_data to i8*), i64 120, i64 12, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_UINT32_DATA*, i8**)* @i2d_ASN1_UINT32_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_UINT32_DATA* (%struct.ASN1_UINT32_DATA**, i8**, i64)* @d2i_ASN1_UINT32_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_UINT32_DATA*)* @ASN1_UINT32_DATA_free to void (i8*)*) }, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"UINT32\00", align 1
@uint32_expected = internal global [34 x %struct.ASN1_UINT32_DATA] [%struct.ASN1_UINT32_DATA { i32 255, i32 0, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 0 }, %struct.ASN1_UINT32_DATA { i32 255, i32 2147483647, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 2147483647 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA { i32 255, i32 -2147483648, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 -2147483648 }, %struct.ASN1_UINT32_DATA { i32 255, i32 2147483646, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 2147483646 }, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer, %struct.ASN1_UINT32_DATA zeroinitializer], align 16
@uint32_encdec_data = internal global [10 x %struct.ASN1_UINT32_DATA] [%struct.ASN1_UINT32_DATA { i32 255, i32 -1, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 -1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 0, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 0 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 -1, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 -1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 0, i32 1 }, %struct.ASN1_UINT32_DATA { i32 255, i32 1, i32 2147483647 }], align 16
@ASN1_UINT32_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASN1_UINT32_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0) }, align 8
@.str.33 = private unnamed_addr constant [17 x i8] c"ASN1_UINT32_DATA\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"test_zuint32\00", align 1
@ASN1_UINT32_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT32_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4241, i64 0, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT32_it }], align 16
@int64_test_package = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_INT64_DATA_it, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i8* bitcast ([34 x %struct.ASN1_INT64_DATA]* @int64_expected to i8*), i64 816, i64 24, i8* bitcast ([20 x %struct.ASN1_INT64_DATA]* @int64_encdec_data to i8*), i64 480, i64 24, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_INT64_DATA*, i8**)* @i2d_ASN1_INT64_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_INT64_DATA* (%struct.ASN1_INT64_DATA**, i8**, i64)* @d2i_ASN1_INT64_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_INT64_DATA*)* @ASN1_INT64_DATA_free to void (i8*)*) }, align 8
@.str.36 = private unnamed_addr constant [6 x i8] c"INT64\00", align 1
@int64_expected = internal global [34 x %struct.ASN1_INT64_DATA] [%struct.ASN1_INT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 0 }, %struct.ASN1_INT64_DATA { i32 255, i64 2147483647, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_INT64_DATA { i32 255, i64 -256, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -256 }, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA { i32 255, i64 9223372036854775807, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA { i32 255, i64 8589934591, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 8589934591 }, %struct.ASN1_INT64_DATA { i32 255, i64 2147483648, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483648 }, %struct.ASN1_INT64_DATA { i32 255, i64 2147483646, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483646 }, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA { i32 255, i64 -2147483648, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -2147483648 }, %struct.ASN1_INT64_DATA zeroinitializer, %struct.ASN1_INT64_DATA zeroinitializer], align 16
@int64_encdec_data = internal global [20 x %struct.ASN1_INT64_DATA] [%struct.ASN1_INT64_DATA { i32 255, i64 9223372036854775807, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_INT64_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_INT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_INT64_DATA { i32 255, i64 2147483647, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_INT64_DATA { i32 255, i64 -2147483648, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -2147483648 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_INT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_INT64_DATA { i32 255, i64 1, i64 2147483647 }], align 16
@ASN1_INT64_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASN1_INT64_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0) }, align 8
@.str.37 = private unnamed_addr constant [16 x i8] c"ASN1_INT64_DATA\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"test_zint64\00", align 1
@ASN1_INT64_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @INT64_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4241, i64 0, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZINT64_it }], align 16
@uint64_test_package = internal global %struct.TEST_PACKAGE { %struct.ASN1_ITEM_st* ()* @ASN1_UINT64_DATA_it, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 0, i8* bitcast ([34 x %struct.ASN1_UINT64_DATA]* @uint64_expected to i8*), i64 816, i64 24, i8* bitcast ([10 x %struct.ASN1_UINT64_DATA]* @uint64_encdec_data to i8*), i64 240, i64 24, i32 (i8*, i8**)* bitcast (i32 (%struct.ASN1_UINT64_DATA*, i8**)* @i2d_ASN1_UINT64_DATA to i32 (i8*, i8**)*), i8* (i8**, i8**, i64)* bitcast (%struct.ASN1_UINT64_DATA* (%struct.ASN1_UINT64_DATA**, i8**, i64)* @d2i_ASN1_UINT64_DATA to i8* (i8**, i8**, i64)*), void (i8*)* bitcast (void (%struct.ASN1_UINT64_DATA*)* @ASN1_UINT64_DATA_free to void (i8*)*) }, align 8
@.str.40 = private unnamed_addr constant [7 x i8] c"UINT64\00", align 1
@uint64_expected = internal global [34 x %struct.ASN1_UINT64_DATA] [%struct.ASN1_UINT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 0 }, %struct.ASN1_UINT64_DATA { i32 255, i64 2147483647, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 2147483647 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA { i32 255, i64 -9223372036854775808, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 -9223372036854775808 }, %struct.ASN1_UINT64_DATA { i32 255, i64 9223372036854775807, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 9223372036854775807 }, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA { i32 255, i64 8589934591, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 8589934591 }, %struct.ASN1_UINT64_DATA { i32 255, i64 2147483648, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 2147483648 }, %struct.ASN1_UINT64_DATA { i32 255, i64 2147483646, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 2147483646 }, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer, %struct.ASN1_UINT64_DATA zeroinitializer], align 16
@uint64_encdec_data = internal global [10 x %struct.ASN1_UINT64_DATA] [%struct.ASN1_UINT64_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 0 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 -1, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 -1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 0, i64 1 }, %struct.ASN1_UINT64_DATA { i32 255, i64 1, i64 2147483647 }], align 16
@ASN1_UINT64_DATA_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([3 x %struct.ASN1_TEMPLATE_st], [3 x %struct.ASN1_TEMPLATE_st]* bitcast ([3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @ASN1_UINT64_DATA_seq_tt to [3 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 3, i8* null, i64 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0) }, align 8
@.str.41 = private unnamed_addr constant [17 x i8] c"ASN1_UINT64_DATA\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"test_zuint64\00", align 1
@ASN1_UINT64_DATA_seq_tt = internal constant [3 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 0, i64 0, i64 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ASN1_BOOLEAN_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4096, i64 0, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @UINT64_it }, { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 4241, i64 0, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @ZUINT64_it }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@INVALIDTEMPLATE_it.local_it = internal constant %struct.ASN1_ITEM_st { i8 1, i64 16, %struct.ASN1_TEMPLATE_st* getelementptr inbounds ([1 x %struct.ASN1_TEMPLATE_st], [1 x %struct.ASN1_TEMPLATE_st]* bitcast ([1 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }]* @INVALIDTEMPLATE_seq_tt to [1 x %struct.ASN1_TEMPLATE_st]*), i32 0, i32 0), i64 1, i8* null, i64 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, align 8
@.str.45 = private unnamed_addr constant [16 x i8] c"INVALIDTEMPLATE\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"invalidDirString\00", align 1
@INVALIDTEMPLATE_seq_tt = internal constant [1 x { i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* }] [{ i64, i64, i64, i8*, %struct.ASN1_ITEM_st* ()* } { i64 136, i64 12, i64 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), %struct.ASN1_ITEM_st* ()* @DIRECTORYSTRING_it }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_long_32bit) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_long_64bit) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_int32) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_uint32) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_int64) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_uint64) #8
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_invalid_template) #8
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long_32bit() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @long_test_package_32bit) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long_64bit() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @long_test_package_64bit) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int32() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @int32_test_package) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uint32() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @uint32_test_package) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int64() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @int64_test_package) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uint64() #0 {
entry:
  %call = tail call fastcc i32 @test_intern(%struct.TEST_PACKAGE* noundef nonnull @uint64_test_package) #9
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_invalid_template() #0 {
entry:
  %call = tail call fastcc %struct.INVALIDTEMPLATE* @INVALIDTEMPLATE_new() #9
  %0 = bitcast %struct.INVALIDTEMPLATE* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 884, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* noundef %0) #8
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @i2d_INVALIDTEMPLATE(%struct.INVALIDTEMPLATE* noundef %call) #9
  tail call fastcc void @INVALIDTEMPLATE_free(%struct.INVALIDTEMPLATE* noundef %call) #9
  %call2.lobit = lshr i32 %call2, 31
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2.lobit, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_intern(%struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %skip = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 2
  %0 = load i32, i32* %skip, align 8, !tbaa !3
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %encode_expectations_size = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 4
  %1 = load i64, i64* %encode_expectations_size, align 8, !tbaa !10
  %encode_expectations_elem_size = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 5
  %2 = load i64, i64* %encode_expectations_elem_size, align 8, !tbaa !11
  %div = udiv i64 %1, %2
  %cmp = icmp eq i64 %div, 34
  br i1 %cmp, label %for.cond.preheader, label %cond.false

for.cond.preheader:                               ; preds = %if.end
  %encode_expectations = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 3
  %name10 = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 1
  br label %for.body

cond.false:                                       ; preds = %if.end
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 742) #10
  unreachable

for.body:                                         ; preds = %sw.epilog27.for.body_crit_edge, %for.cond.preheader
  %3 = phi i64 [ %2, %for.cond.preheader ], [ %.pre, %sw.epilog27.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %sw.epilog27.for.body_crit_edge ]
  %fail.0125 = phi i32 [ 0, %for.cond.preheader ], [ %fail.2, %sw.epilog27.for.body_crit_edge ]
  %mul = mul i64 %3, %indvars.iv
  %4 = load i8*, i8** %encode_expectations, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %mul
  %5 = bitcast i8* %arrayidx to %struct.EXPECTED*
  %arrayidx5 = getelementptr inbounds [34 x %struct.TEST_CUSTOM_DATA], [34 x %struct.TEST_CUSTOM_DATA]* @test_custom_data, i64 0, i64 %indvars.iv
  %call = tail call fastcc i32 @do_encode_custom(%struct.EXPECTED* noundef %5, %struct.TEST_CUSTOM_DATA* noundef nonnull %arrayidx5, %struct.TEST_PACKAGE* noundef nonnull %package) #9
  switch i32 %call, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb9
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.body
  %success = bitcast i8* %arrayidx to i32*
  %6 = load i32, i32* %success, align 4, !tbaa !13
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %sw.epilog, label %if.then7

if.then7:                                         ; preds = %sw.bb
  %7 = load i8*, i8** %name10, align 8, !tbaa !15
  %8 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 752, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %8, i8* noundef %7) #8
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %for.body
  %9 = load i8*, i8** %name10, align 8, !tbaa !15
  %10 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 759, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %10, i8* noundef %9) #8
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %for.body
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 767) #10
  unreachable

sw.epilog.sink.split:                             ; preds = %sw.bb9, %if.then7
  tail call void @test_openssl_errors() #8
  %inc = add nsw i32 %fail.0125, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb, %for.body
  %fail.1 = phi i32 [ %fail.0125, %for.body ], [ %fail.0125, %sw.bb ], [ %inc, %sw.epilog.sink.split ]
  %11 = load i64, i64* %encode_expectations_elem_size, align 8, !tbaa !11
  %call15 = tail call fastcc i32 @do_decode_custom(%struct.TEST_CUSTOM_DATA* noundef nonnull %arrayidx5, %struct.EXPECTED* noundef %5, i64 noundef %11, %struct.TEST_PACKAGE* noundef nonnull %package) #9
  switch i32 %call15, label %sw.default26 [
    i32 -1, label %sw.bb16
    i32 0, label %sw.bb23
    i32 1, label %sw.epilog27
  ]

sw.bb16:                                          ; preds = %sw.epilog
  %success17 = bitcast i8* %arrayidx to i32*
  %12 = load i32, i32* %success17, align 4, !tbaa !13
  %tobool18.not = icmp eq i32 %12, 0
  br i1 %tobool18.not, label %sw.epilog27, label %if.then19

if.then19:                                        ; preds = %sw.bb16
  %13 = load i8*, i8** %name10, align 8, !tbaa !15
  %14 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 775, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 noundef %14, i8* noundef %13) #8
  br label %sw.epilog27.sink.split

sw.bb23:                                          ; preds = %sw.epilog
  %15 = load i8*, i8** %name10, align 8, !tbaa !15
  %16 = trunc i64 %indvars.iv to i32
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 782, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 noundef %16, i8* noundef %15) #8
  br label %sw.epilog27.sink.split

sw.default26:                                     ; preds = %sw.epilog
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 790) #10
  unreachable

sw.epilog27.sink.split:                           ; preds = %sw.bb23, %if.then19
  tail call void @test_openssl_errors() #8
  %inc21 = add nsw i32 %fail.1, 1
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.epilog27.sink.split, %sw.bb16, %sw.epilog
  %fail.2 = phi i32 [ %fail.1, %sw.epilog ], [ %fail.1, %sw.bb16 ], [ %inc21, %sw.epilog27.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 34
  br i1 %exitcond.not, label %for.end, label %sw.epilog27.for.body_crit_edge, !llvm.loop !16

sw.epilog27.for.body_crit_edge:                   ; preds = %sw.epilog27
  %.pre = load i64, i64* %encode_expectations_elem_size, align 8, !tbaa !11
  br label %for.body

for.end:                                          ; preds = %sw.epilog27
  %encdec_data_size = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 7
  %17 = load i64, i64* %encdec_data_size, align 8, !tbaa !18
  %encdec_data_elem_size = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 8
  %18 = load i64, i64* %encdec_data_elem_size, align 8, !tbaa !19
  %div29 = udiv i64 %17, %18
  %cmp32130.not = icmp ugt i64 %18, %17
  br i1 %cmp32130.not, label %for.end57, label %for.body34.lr.ph

for.body34.lr.ph:                                 ; preds = %for.end
  %encdec_data = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 6
  br label %for.body34

for.body34:                                       ; preds = %sw.epilog54.for.body34_crit_edge, %for.body34.lr.ph
  %19 = phi i64 [ %18, %for.body34.lr.ph ], [ %.pre136, %sw.epilog54.for.body34_crit_edge ]
  %conv31134 = phi i64 [ 0, %for.body34.lr.ph ], [ %conv31, %sw.epilog54.for.body34_crit_edge ]
  %fail.3131 = phi i32 [ %fail.2, %for.body34.lr.ph ], [ %fail.4, %sw.epilog54.for.body34_crit_edge ]
  %indvars = trunc i64 %conv31134 to i32
  %mul38 = mul i64 %19, %conv31134
  %20 = load i8*, i8** %encdec_data, align 8, !tbaa !20
  %arrayidx40 = getelementptr inbounds i8, i8* %20, i64 %mul38
  %21 = bitcast i8* %arrayidx40 to %struct.EXPECTED*
  %call42 = tail call fastcc i32 @do_enc_dec(%struct.EXPECTED* noundef %21, i64 noundef %19, %struct.TEST_PACKAGE* noundef nonnull %package) #9
  switch i32 %call42, label %sw.default53 [
    i32 -1, label %sw.bb43
    i32 0, label %sw.bb50
    i32 1, label %sw.epilog54
  ]

sw.bb43:                                          ; preds = %for.body34
  %success44 = bitcast i8* %arrayidx40 to i32*
  %22 = load i32, i32* %success44, align 4, !tbaa !13
  %tobool45.not = icmp eq i32 %22, 0
  br i1 %tobool45.not, label %sw.epilog54, label %if.then46

if.then46:                                        ; preds = %sw.bb43
  %23 = load i8*, i8** %name10, align 8, !tbaa !15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 805, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 noundef %indvars, i8* noundef %23) #8
  tail call void @test_openssl_errors() #8
  %inc48 = add nsw i32 %fail.3131, 1
  br label %sw.epilog54

sw.bb50:                                          ; preds = %for.body34
  %24 = load i8*, i8** %name10, align 8, !tbaa !15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 812, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef %indvars, i8* noundef %24) #8
  %inc52 = add nsw i32 %fail.3131, 1
  br label %sw.epilog54

sw.default53:                                     ; preds = %for.body34
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 819) #10
  unreachable

sw.epilog54:                                      ; preds = %sw.bb43, %if.then46, %for.body34, %sw.bb50
  %fail.4 = phi i32 [ %fail.3131, %for.body34 ], [ %inc52, %sw.bb50 ], [ %inc48, %if.then46 ], [ %fail.3131, %sw.bb43 ]
  %inc56 = add nuw nsw i64 %conv31134, 1
  %conv31 = and i64 %inc56, 4294967295
  %cmp32 = icmp ugt i64 %div29, %conv31
  br i1 %cmp32, label %sw.epilog54.for.body34_crit_edge, label %for.end57, !llvm.loop !21

sw.epilog54.for.body34_crit_edge:                 ; preds = %sw.epilog54
  %.pre136 = load i64, i64* %encdec_data_elem_size, align 8, !tbaa !19
  br label %for.body34

for.end57:                                        ; preds = %sw.epilog54, %for.end
  %fail.3.lcssa = phi i32 [ %fail.2, %for.end ], [ %fail.4, %sw.epilog54 ]
  %call58 = tail call fastcc i32 @do_print_item(%struct.TEST_PACKAGE* noundef nonnull %package) #9
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.end63

if.then60:                                        ; preds = %for.end57
  %25 = load i8*, i8** %name10, align 8, !tbaa !15
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 824, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* noundef %25) #8
  tail call void @test_openssl_errors() #8
  %inc62 = add nsw i32 %fail.3.lcssa, 1
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %for.end57
  %fail.5 = phi i32 [ %fail.3.lcssa, %for.end57 ], [ %inc62, %if.then60 ]
  %cmp64 = icmp eq i32 %fail.5, 0
  %conv65 = zext i1 %cmp64 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end63
  %retval.0 = phi i32 [ %conv65, %if.end63 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noreturn
declare dso_local void @OPENSSL_die(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_encode_custom(%struct.EXPECTED* noundef %input, %struct.TEST_CUSTOM_DATA* nocapture noundef readonly %custom_data, %struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %expected = alloca i8*, align 8
  %0 = bitcast i8** %expected to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %expected, align 8, !tbaa !22
  %call = call fastcc i64 @make_custom_der(%struct.TEST_CUSTOM_DATA* noundef %custom_data, i8** noundef nonnull %expected, i32 noundef 0) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %expected, align 8, !tbaa !22
  %call1 = tail call fastcc i32 @do_encode(%struct.EXPECTED* noundef %input, i8* noundef %1, i64 noundef %call, %struct.TEST_PACKAGE* noundef %package) #9
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 704) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_openssl_errors() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_decode_custom(%struct.TEST_CUSTOM_DATA* nocapture noundef readonly %custom_data, %struct.EXPECTED* noundef %expected, i64 noundef %expected_size, %struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %encoding = alloca i8*, align 8
  %0 = bitcast i8** %encoding to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %encoding, align 8, !tbaa !22
  %call = call fastcc i64 @make_custom_der(%struct.TEST_CUSTOM_DATA* noundef %custom_data, i8** noundef nonnull %encoding, i32 noundef 1) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8, !tbaa !22
  %call1 = tail call fastcc i32 @do_decode(i8* noundef %1, i64 noundef %call, %struct.EXPECTED* noundef %expected, i64 noundef %expected_size, %struct.TEST_PACKAGE* noundef %package) #9
  tail call void @CRYPTO_free(i8* noundef %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 686) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_enc_dec(%struct.EXPECTED* noundef %bytes, i64 noundef %nbytes, %struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %data, align 8, !tbaa !22
  %1 = bitcast %struct.EXPECTED* %bytes to i8*
  %i2d = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 9
  %2 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d, align 8, !tbaa !23
  %call = call i32 %2(i8* noundef %1, i8** noundef nonnull %data) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !tbaa !22
  %conv11 = zext i32 %call to i64
  %call1 = call fastcc i32 @do_decode(i8* noundef %3, i64 noundef %conv11, %struct.EXPECTED* noundef %bytes, i64 noundef %nbytes, %struct.TEST_PACKAGE* noundef nonnull %package) #9
  %4 = load i8*, i8** %data, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %4, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 562) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_print_item(%struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %asn1_type = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 0
  %0 = load %struct.ASN1_ITEM_st* ()*, %struct.ASN1_ITEM_st* ()** %asn1_type, align 8, !tbaa !24
  %call = tail call %struct.ASN1_ITEM_st* %0() #8
  %encode_expectations_elem_size = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 5
  %1 = load i64, i64* %encode_expectations_elem_size, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 257
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 716) #10
  unreachable

cond.end:                                         ; preds = %entry
  %call1 = tail call i8* @CRYPTO_malloc(i64 noundef 256, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 717) #8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %cond.end
  %2 = bitcast i8* %call1 to %struct.ASN1_VALUE_st*
  %3 = load i64, i64* %encode_expectations_elem_size, align 8, !tbaa !11
  %conv = trunc i64 %3 to i32
  %call4 = tail call i32 @RAND_bytes(i8* noundef nonnull %call1, i32 noundef %conv) #8
  %4 = load %struct.bio_st*, %struct.bio_st** @bio_err, align 8, !tbaa !22
  %call5 = tail call i32 @ASN1_item_print(%struct.bio_st* noundef %4, %struct.ASN1_VALUE_st* noundef nonnull %2, i32 noundef 0, %struct.ASN1_ITEM_st* noundef %call, %struct.asn1_pctx_st* noundef null) #8
  tail call void @CRYPTO_free(i8* noundef nonnull %call1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 723) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end
  %retval.0 = phi i32 [ %call5, %if.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @make_custom_der(%struct.TEST_CUSTOM_DATA* nocapture noundef readonly %custom_data, i8** nocapture noundef %encoding, i32 noundef %explicit_default) unnamed_addr #0 {
entry:
  %t_true = alloca [3 x i8], align 1
  %p = alloca i8*, align 8
  %0 = getelementptr inbounds [3 x i8], [3 x i8]* %t_true, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %0) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %0, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @__const.make_custom_der.t_true, i64 0, i64 0), i64 3, i1 false)
  %1 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #11
  %nbytes1 = getelementptr inbounds %struct.TEST_CUSTOM_DATA, %struct.TEST_CUSTOM_DATA* %custom_data, i64 0, i32 1
  %2 = load i64, i64* %nbytes1, align 8, !tbaa !25
  %call = tail call fastcc i64 @der_encode_length(i64 noundef %2, i8** noundef null) #9
  %add = add i64 %call, 1
  %3 = load i64, i64* %nbytes1, align 8, !tbaa !25
  %add2 = add i64 %add, %3
  %nbytes2 = getelementptr inbounds %struct.TEST_CUSTOM_DATA, %struct.TEST_CUSTOM_DATA* %custom_data, i64 0, i32 3
  %4 = load i64, i64* %nbytes2, align 8, !tbaa !27
  %bytes2 = getelementptr inbounds %struct.TEST_CUSTOM_DATA, %struct.TEST_CUSTOM_DATA* %custom_data, i64 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ %4, %entry ], [ %sub, %for.body ]
  %cmp.not = icmp eq i64 %i.0, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %bytes2, align 8, !tbaa !28
  %sub = add i64 %i.0, -1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %sub
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !29
  %cmp3.not = icmp eq i8 %6, 0
  br i1 %cmp3.not, label %for.cond, label %if.then7, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %tobool.not = icmp eq i32 %explicit_default, 0
  br i1 %tobool.not, label %if.end16, label %if.then7

if.then7:                                         ; preds = %for.body, %for.end
  %call9 = tail call fastcc i64 @der_encode_length(i64 noundef %4, i8** noundef null) #9
  %add10 = add i64 %call9, 1
  %7 = load i64, i64* %nbytes2, align 8, !tbaa !27
  %add12 = add i64 %add10, %7
  %call13 = tail call fastcc i64 @der_encode_length(i64 noundef %add12, i8** noundef null) #9
  %add14 = add i64 %call13, 1
  %add15 = add i64 %add14, %add12
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then7
  %secondbytes.0 = phi i64 [ %add15, %if.then7 ], [ 0, %for.end ]
  %secondbytesinner.0 = phi i64 [ %add12, %if.then7 ], [ 0, %for.end ]
  %add17 = add i64 %secondbytes.0, %add2
  %add18 = add i64 %add17, 3
  %call19 = tail call fastcc i64 @der_encode_length(i64 noundef %add18, i8** noundef null) #9
  %add22 = add i64 %add17, 4
  %add23 = add i64 %add22, %call19
  %call24 = tail call i8* @CRYPTO_malloc(i64 noundef %add23, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 634) #8
  store i8* %call24, i8** %encoding, align 8, !tbaa !22
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end16
  %incdec.ptr = getelementptr inbounds i8, i8* %call24, i64 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !22
  store i8 48, i8* %call24, align 1, !tbaa !29
  %call31 = call fastcc i64 @der_encode_length(i64 noundef %add18, i8** noundef nonnull %p) #9
  %8 = load i8*, i8** %p, align 8, !tbaa !22
  %call32 = call i8* @memcpy(i8* noundef %8, i8* noundef nonnull %0, i64 noundef 3) #8
  %9 = load i8*, i8** %p, align 8, !tbaa !22
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 3
  %incdec.ptr33 = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %incdec.ptr33, i8** %p, align 8, !tbaa !22
  store i8 2, i8* %add.ptr, align 1, !tbaa !29
  %10 = load i64, i64* %nbytes1, align 8, !tbaa !25
  %call35 = call fastcc i64 @der_encode_length(i64 noundef %10, i8** noundef nonnull %p) #9
  %11 = load i8*, i8** %p, align 8, !tbaa !22
  %bytes1 = getelementptr inbounds %struct.TEST_CUSTOM_DATA, %struct.TEST_CUSTOM_DATA* %custom_data, i64 0, i32 0
  %12 = load i8*, i8** %bytes1, align 8, !tbaa !31
  %13 = load i64, i64* %nbytes1, align 8, !tbaa !25
  %call37 = call i8* @memcpy(i8* noundef %11, i8* noundef %12, i64 noundef %13) #8
  %14 = load i64, i64* %nbytes1, align 8, !tbaa !25
  %15 = load i8*, i8** %p, align 8, !tbaa !22
  %add.ptr39 = getelementptr inbounds i8, i8* %15, i64 %14
  store i8* %add.ptr39, i8** %p, align 8, !tbaa !22
  %cmp40.not = icmp eq i64 %secondbytes.0, 0
  br i1 %cmp40.not, label %if.end53, label %if.then42

if.then42:                                        ; preds = %if.end28
  %incdec.ptr43 = getelementptr inbounds i8, i8* %add.ptr39, i64 1
  store i8* %incdec.ptr43, i8** %p, align 8, !tbaa !22
  store i8 -96, i8* %add.ptr39, align 1, !tbaa !29
  %call44 = call fastcc i64 @der_encode_length(i64 noundef %secondbytesinner.0, i8** noundef nonnull %p) #9
  %16 = load i8*, i8** %p, align 8, !tbaa !22
  %incdec.ptr45 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %incdec.ptr45, i8** %p, align 8, !tbaa !22
  store i8 2, i8* %16, align 1, !tbaa !29
  %17 = load i64, i64* %nbytes2, align 8, !tbaa !27
  %call47 = call fastcc i64 @der_encode_length(i64 noundef %17, i8** noundef nonnull %p) #9
  %18 = load i8*, i8** %p, align 8, !tbaa !22
  %19 = load i8*, i8** %bytes2, align 8, !tbaa !28
  %20 = load i64, i64* %nbytes2, align 8, !tbaa !27
  %call50 = call i8* @memcpy(i8* noundef %18, i8* noundef %19, i64 noundef %20) #8
  %21 = load i64, i64* %nbytes2, align 8, !tbaa !27
  %22 = load i8*, i8** %p, align 8, !tbaa !22
  %add.ptr52 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8* %add.ptr52, i8** %p, align 8, !tbaa !22
  br label %if.end53

if.end53:                                         ; preds = %if.then42, %if.end28
  %23 = phi i8* [ %add.ptr52, %if.then42 ], [ %add.ptr39, %if.end28 ]
  %24 = load i8*, i8** %encoding, align 8, !tbaa !22
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp54 = icmp eq i64 %add23, %sub.ptr.sub
  br i1 %cmp54, label %cleanup, label %cond.false

cond.false:                                       ; preds = %if.end53
  call void @OPENSSL_die(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 663) #10
  unreachable

cleanup:                                          ; preds = %if.end53, %if.end16
  %retval.0 = phi i64 [ 0, %if.end16 ], [ %add23, %if.end53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #11
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %0) #11
  ret i64 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_encode(%struct.EXPECTED* noundef %input, i8* noundef readonly %expected, i64 noundef %expected_len, %struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %data = alloca i8*, align 8
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #11
  store i8* null, i8** %data, align 8, !tbaa !22
  %i2d = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 9
  %1 = load i32 (i8*, i8**)*, i32 (i8*, i8**)** %i2d, align 8, !tbaa !23
  %2 = bitcast %struct.EXPECTED* %input to i8*
  %call = call i32 %1(i8* noundef %2, i8** noundef nonnull %data) #8
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %conv20 = zext i32 %call to i64
  %cmp1.not = icmp eq i64 %conv20, %expected_len
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %data, align 8, !tbaa !22
  %call3 = call i32 @memcmp(i8* noundef %3, i8* noundef %expected, i64 noundef %expected_len) #12
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end12, label %if.then6

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %success = getelementptr inbounds %struct.EXPECTED, %struct.EXPECTED* %input, i64 0, i32 0
  %4 = load i32, i32* %success, align 4, !tbaa !13
  %cmp7 = icmp eq i32 %4, 0
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @ERR_clear_error() #8
  br label %if.end12

if.end12:                                         ; preds = %lor.lhs.false, %if.then6, %if.then9
  %ret.0 = phi i32 [ 1, %if.then9 ], [ 0, %if.then6 ], [ 1, %lor.lhs.false ]
  %5 = load i8*, i8** %data, align 8, !tbaa !22
  call void @CRYPTO_free(i8* noundef %5, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 544) #8
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ %ret.0, %if.end12 ], [ -1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #11
  ret i32 %retval.0
}

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @der_encode_length(i64 noundef %len, i8** noundef %pp) unnamed_addr #0 {
entry:
  %cmp = icmp ult i64 %len, 32768
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  tail call void @OPENSSL_die(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 noundef 570) #10
  unreachable

cond.end:                                         ; preds = %entry
  %cmp1 = icmp ugt i64 %len, 255
  br i1 %cmp1, label %if.end5.thread, label %if.end5

if.end5:                                          ; preds = %cond.end
  %cmp2 = icmp ugt i64 %len, 127
  %.43 = select i1 %cmp2, i64 2, i64 1
  %cmp6.not = icmp eq i8** %pp, null
  br i1 %cmp6.not, label %if.end26, label %if.then7

if.end5.thread:                                   ; preds = %cond.end
  %cmp6.not47 = icmp eq i8** %pp, null
  br i1 %cmp6.not47, label %if.end26, label %if.else10.thread

if.else10.thread:                                 ; preds = %if.end5.thread
  %0 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr1260 = getelementptr inbounds i8, i8* %0, i64 1
  store i8* %incdec.ptr1260, i8** %pp, align 8, !tbaa !22
  store i8 2, i8* %0, align 1, !tbaa !29
  %shr = lshr i64 %len, 8
  %1 = trunc i64 %shr to i8
  %conv20 = or i8 %1, -128
  %2 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr21 = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %incdec.ptr21, i8** %pp, align 8, !tbaa !22
  store i8 %conv20, i8* %2, align 1, !tbaa !29
  %conv22 = trunc i64 %len to i8
  %3 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr23 = getelementptr inbounds i8, i8* %3, i64 1
  store i8* %incdec.ptr23, i8** %pp, align 8, !tbaa !22
  store i8 %conv22, i8* %3, align 1, !tbaa !29
  br label %if.end26

if.then7:                                         ; preds = %if.end5
  br i1 %cmp2, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.then7
  %conv = trunc i64 %len to i8
  %4 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %incdec.ptr, i8** %pp, align 8, !tbaa !22
  store i8 %conv, i8* %4, align 1, !tbaa !29
  br label %if.end26

if.else10:                                        ; preds = %if.then7
  %5 = trunc i64 %.43 to i8
  %conv11 = add nsw i8 %5, -1
  %6 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr12 = getelementptr inbounds i8, i8* %6, i64 1
  store i8* %incdec.ptr12, i8** %pp, align 8, !tbaa !22
  store i8 %conv11, i8* %6, align 1, !tbaa !29
  %7 = trunc i64 %len to i8
  %conv16 = or i8 %7, -128
  %8 = load i8*, i8** %pp, align 8, !tbaa !22
  %incdec.ptr17 = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %incdec.ptr17, i8** %pp, align 8, !tbaa !22
  store i8 %conv16, i8* %8, align 1, !tbaa !29
  br label %if.end26

if.end26:                                         ; preds = %if.end5.thread, %if.then9, %if.else10.thread, %if.else10, %if.end5
  %lenbytes.051 = phi i64 [ 3, %if.end5.thread ], [ 1, %if.then9 ], [ 3, %if.else10.thread ], [ 2, %if.else10 ], [ %.43, %if.end5 ]
  ret i64 %lenbytes.051
}

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #6

declare dso_local void @ERR_clear_error() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @do_decode(i8* noundef %bytes, i64 noundef %nbytes, %struct.EXPECTED* noundef readonly %expected, i64 noundef %expected_size, %struct.TEST_PACKAGE* nocapture noundef readonly %package) unnamed_addr #0 {
entry:
  %bytes.addr = alloca i8*, align 8
  store i8* %bytes, i8** %bytes.addr, align 8, !tbaa !22
  %d2i = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 10
  %0 = load i8* (i8**, i8**, i64)*, i8* (i8**, i8**, i64)** %d2i, align 8, !tbaa !32
  %call = call i8* %0(i8** noundef null, i8** noundef nonnull %bytes.addr, i64 noundef %nbytes) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %success = getelementptr inbounds %struct.EXPECTED, %struct.EXPECTED* %expected, i64 0, i32 0
  %1 = load i32, i32* %success, align 4, !tbaa !13
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  call void @ERR_clear_error() #8
  br label %if.end10

if.else3:                                         ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %bytes, i64 %nbytes
  %2 = load i8*, i8** %bytes.addr, align 8, !tbaa !22
  %cmp4 = icmp eq i8* %add.ptr, %2
  br i1 %cmp4, label %land.lhs.true, label %if.else8

land.lhs.true:                                    ; preds = %if.else3
  %3 = bitcast %struct.EXPECTED* %expected to i8*
  %call5 = call i32 @memcmp(i8* noundef nonnull %call, i8* noundef %3, i64 noundef %expected_size) #12
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.end10, label %if.else8

if.else8:                                         ; preds = %land.lhs.true, %if.else3
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.then, %if.else8, %if.then2
  %ret.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.else8 ], [ -1, %if.then ], [ 1, %land.lhs.true ]
  %ifree = getelementptr inbounds %struct.TEST_PACKAGE, %struct.TEST_PACKAGE* %package, i64 0, i32 11
  %4 = load void (i8*)*, void (i8*)** %ifree, align 8, !tbaa !33
  call void %4(i8* noundef %call) #8
  ret i32 %ret.0
}

declare dso_local i32 @RAND_bytes(i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_item_print(%struct.bio_st* noundef, %struct.ASN1_VALUE_st* noundef, i32 noundef, %struct.ASN1_ITEM_st* noundef, %struct.asn1_pctx_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ASN1_LONG_DATA_it() #7 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_LONG_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ASN1_LONG_DATA(%struct.ASN1_LONG_DATA* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ASN1_LONG_DATA* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_LONG_DATA_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ASN1_LONG_DATA* @d2i_ASN1_LONG_DATA(%struct.ASN1_LONG_DATA** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.ASN1_LONG_DATA** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_LONG_DATA_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_LONG_DATA*
  ret %struct.ASN1_LONG_DATA* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ASN1_LONG_DATA_free(%struct.ASN1_LONG_DATA* noundef %a) #0 {
entry:
  %0 = bitcast %struct.ASN1_LONG_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_LONG_DATA_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @ASN1_BOOLEAN_it() #1

declare dso_local %struct.ASN1_ITEM_st* @LONG_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZLONG_it() #1

declare dso_local i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef, i8** noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef, i8** noundef, i64 noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef, %struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ASN1_INT32_DATA_it() #7 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_INT32_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ASN1_INT32_DATA(%struct.ASN1_INT32_DATA* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT32_DATA* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT32_DATA_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ASN1_INT32_DATA* @d2i_ASN1_INT32_DATA(%struct.ASN1_INT32_DATA** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT32_DATA** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT32_DATA_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_INT32_DATA*
  ret %struct.ASN1_INT32_DATA* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ASN1_INT32_DATA_free(%struct.ASN1_INT32_DATA* noundef %a) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT32_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT32_DATA_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @INT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZINT32_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ASN1_UINT32_DATA_it() #7 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_UINT32_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ASN1_UINT32_DATA(%struct.ASN1_UINT32_DATA* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT32_DATA* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT32_DATA_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ASN1_UINT32_DATA* @d2i_ASN1_UINT32_DATA(%struct.ASN1_UINT32_DATA** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT32_DATA** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT32_DATA_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_UINT32_DATA*
  ret %struct.ASN1_UINT32_DATA* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ASN1_UINT32_DATA_free(%struct.ASN1_UINT32_DATA* noundef %a) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT32_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT32_DATA_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @UINT32_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZUINT32_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ASN1_INT64_DATA_it() #7 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_INT64_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ASN1_INT64_DATA(%struct.ASN1_INT64_DATA* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT64_DATA* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT64_DATA_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ASN1_INT64_DATA* @d2i_ASN1_INT64_DATA(%struct.ASN1_INT64_DATA** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT64_DATA** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT64_DATA_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_INT64_DATA*
  ret %struct.ASN1_INT64_DATA* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ASN1_INT64_DATA_free(%struct.ASN1_INT64_DATA* noundef %a) #0 {
entry:
  %0 = bitcast %struct.ASN1_INT64_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_INT64_DATA_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @INT64_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZINT64_it() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal nonnull %struct.ASN1_ITEM_st* @ASN1_UINT64_DATA_it() #7 {
entry:
  ret %struct.ASN1_ITEM_st* @ASN1_UINT64_DATA_it.local_it
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @i2d_ASN1_UINT64_DATA(%struct.ASN1_UINT64_DATA* noundef %a, i8** noundef %out) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT64_DATA* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef %out, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT64_DATA_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ASN1_UINT64_DATA* @d2i_ASN1_UINT64_DATA(%struct.ASN1_UINT64_DATA** noundef %a, i8** noundef %in, i64 noundef %len) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT64_DATA** %a to %struct.ASN1_VALUE_st**
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_d2i(%struct.ASN1_VALUE_st** noundef %0, i8** noundef %in, i64 noundef %len, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT64_DATA_it.local_it) #8
  %1 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.ASN1_UINT64_DATA*
  ret %struct.ASN1_UINT64_DATA* %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @ASN1_UINT64_DATA_free(%struct.ASN1_UINT64_DATA* noundef %a) #0 {
entry:
  %0 = bitcast %struct.ASN1_UINT64_DATA* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @ASN1_UINT64_DATA_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_ITEM_st* @UINT64_it() #1

declare dso_local %struct.ASN1_ITEM_st* @ZUINT64_it() #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.INVALIDTEMPLATE* @INVALIDTEMPLATE_new() unnamed_addr #0 {
entry:
  %call1 = tail call %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef nonnull @INVALIDTEMPLATE_it.local_it) #8
  %0 = bitcast %struct.ASN1_VALUE_st* %call1 to %struct.INVALIDTEMPLATE*
  ret %struct.INVALIDTEMPLATE* %0
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @i2d_INVALIDTEMPLATE(%struct.INVALIDTEMPLATE* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.INVALIDTEMPLATE* %a to %struct.ASN1_VALUE_st*
  %call1 = tail call i32 @ASN1_item_i2d(%struct.ASN1_VALUE_st* noundef %0, i8** noundef null, %struct.ASN1_ITEM_st* noundef nonnull @INVALIDTEMPLATE_it.local_it) #8
  ret i32 %call1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @INVALIDTEMPLATE_free(%struct.INVALIDTEMPLATE* noundef %a) unnamed_addr #0 {
entry:
  %0 = bitcast %struct.INVALIDTEMPLATE* %a to %struct.ASN1_VALUE_st*
  tail call void @ASN1_item_free(%struct.ASN1_VALUE_st* noundef %0, %struct.ASN1_ITEM_st* noundef nonnull @INVALIDTEMPLATE_it.local_it) #8
  ret void
}

declare dso_local %struct.ASN1_VALUE_st* @ASN1_item_new(%struct.ASN1_ITEM_st* noundef) local_unnamed_addr #1

declare dso_local %struct.ASN1_ITEM_st* @DIRECTORYSTRING_it() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nobuiltin noreturn nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 16}
!4 = !{!"", !5, i64 0, !5, i64 8, !8, i64 16, !5, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!4, !9, i64 32}
!11 = !{!4, !9, i64 40}
!12 = !{!4, !5, i64 24}
!13 = !{!14, !8, i64 0}
!14 = !{!"", !8, i64 0, !6, i64 4}
!15 = !{!4, !5, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!4, !9, i64 56}
!19 = !{!4, !9, i64 64}
!20 = !{!4, !5, i64 48}
!21 = distinct !{!21, !17}
!22 = !{!5, !5, i64 0}
!23 = !{!4, !5, i64 72}
!24 = !{!4, !5, i64 0}
!25 = !{!26, !9, i64 8}
!26 = !{!"", !5, i64 0, !9, i64 8, !5, i64 16, !9, i64 24}
!27 = !{!26, !9, i64 24}
!28 = !{!26, !5, i64 16}
!29 = !{!6, !6, i64 0}
!30 = distinct !{!30, !17}
!31 = !{!26, !5, i64 0}
!32 = !{!4, !5, i64 80}
!33 = !{!4, !5, i64 88}
