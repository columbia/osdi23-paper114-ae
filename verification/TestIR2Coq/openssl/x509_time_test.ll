; ModuleID = 'test/x509_time_test.c'
source_filename = "test/x509_time_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TESTDATA = type { i8*, i32, i64, i32 }
%struct.TESTDATA_FORMAT = type { i8*, i32, i32, i32, i8* }
%struct.anon = type { i32, i32, i32, i32, i32 }
%struct.anon.0 = type { %struct.asn1_string_st, i8* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.anon.1 = type { %struct.asn1_string_st, i8* }
%struct.X509_VERIFY_PARAM_st = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.bio_method_st = type opaque
%struct.bio_st = type opaque

@.str = private unnamed_addr constant [27 x i8] c"test_x509_cmp_time_current\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test_X509_cmp_timeframe\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"test_x509_cmp_time\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test_x509_time\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test_days\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"test_x509_time_print_rfc_822\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"test_x509_time_print_iso_8601\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test/x509_time_test.c\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cmp_result\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"X509_cmp_timeframe(vpm, asn1_before, asn1_after)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"X509_cmp_timeframe(vpm, asn1_before, NULL)\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"X509_cmp_timeframe(vpm, NULL, asn1_after)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"X509_cmp_timeframe(vpm, NULL, NULL)\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"X509_cmp_timeframe(vpm, asn1_after, asn1_after)\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"always_0 ? 0 : -1\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"X509_cmp_timeframe(vpm, asn1_before, asn1_before)\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"always_0 ? 0 : 1\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"X509_cmp_timeframe(vpm, asn1_after, asn1_before)\00", align 1
@x509_cmp_tests = internal global [26 x %struct.TESTDATA] [%struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 24, i64 1487354514, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 24, i64 1487354515, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 24, i64 1487354513, i32 1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 23, i64 1487354514, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 23, i64 1487354515, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 23, i64 1487354513, i32 1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 23, i64 919274514, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 23, i64 919274515, i32 -1 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 23, i64 919274513, i32 1 }, %struct.TESTDATA { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 23, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 24, i64 0, i32 0 }, %struct.TESTDATA { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 4, i64 0, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"x509_cmp_tests[idx].expected\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"test_x509_cmp_time(%d) failed: expected %d, got %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"20170217180154Z\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"170217180154Z\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"990217180154Z\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"20170217180154\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"170217180154\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"201702171801Z\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"1702171801Z\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"20170217180154.001Z\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"170217180154.001Z\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"20170217180154+0100\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"170217180154+0100\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"2017021718015400Z\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"17021718015400Z\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"2017021718015aZ\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"17021718015aZ\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"20170217180154Zlongtrailinggarbage\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"170217180154Zlongtrailinggarbage\00", align 1
@x509_format_tests = internal unnamed_addr constant [20 x %struct.TESTDATA_FORMAT] [%struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 1, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 1, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 1, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i32 0, i32 0), i32 1, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 1, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0) }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 1, i32 1, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0) }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 1, i32 1, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0) }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 1, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i32 1, i32 0, i32 -1, i8* null }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i32 1, i32 1, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0) }, %struct.TESTDATA_FORMAT { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0), i32 1, i32 1, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.60, i32 0, i32 0) }], align 16
@.str.41 = private unnamed_addr constant [43 x i8] c"test_x509_time(%d) failed: internal error\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"x509_format_tests[idx].expected\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"test_x509_time(%d) failed: expected %d, got %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"t->type\00", align 1
@.str.45 = private unnamed_addr constant [37 x i8] c"x509_format_tests[idx].expected_type\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"test_x509_time(%d) failed: expected_type %d, got %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"(const char *)t->data\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"x509_format_tests[idx].expected_string\00", align 1
@.str.49 = private unnamed_addr constant [57 x i8] c"test_x509_time(%d) failed: expected_string %s, got %.*s\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"20170217180105Z\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"20170229180105Z\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"20160229180105Z\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"20170217180105.001Z\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"20170217180105+0800\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"20510217180154Z\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"19230419180154Z\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"050229180101Z\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"040229180101Z\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"170217180154+0800\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"981223180154Z\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"%04d%02d%02d050505Z\00", align 1
@day_of_week_tests = internal unnamed_addr constant [49 x %struct.anon] [%struct.anon { i32 1900, i32 1, i32 1, i32 0, i32 1 }, %struct.anon { i32 1900, i32 2, i32 28, i32 58, i32 3 }, %struct.anon { i32 1900, i32 3, i32 1, i32 59, i32 4 }, %struct.anon { i32 1900, i32 12, i32 31, i32 364, i32 1 }, %struct.anon { i32 1901, i32 1, i32 1, i32 0, i32 2 }, %struct.anon { i32 1970, i32 1, i32 1, i32 0, i32 4 }, %struct.anon { i32 1999, i32 1, i32 10, i32 9, i32 0 }, %struct.anon { i32 1999, i32 12, i32 31, i32 364, i32 5 }, %struct.anon { i32 2000, i32 1, i32 1, i32 0, i32 6 }, %struct.anon { i32 2000, i32 2, i32 28, i32 58, i32 1 }, %struct.anon { i32 2000, i32 2, i32 29, i32 59, i32 2 }, %struct.anon { i32 2000, i32 3, i32 1, i32 60, i32 3 }, %struct.anon { i32 2000, i32 12, i32 31, i32 365, i32 0 }, %struct.anon { i32 2001, i32 1, i32 1, i32 0, i32 1 }, %struct.anon { i32 2008, i32 1, i32 1, i32 0, i32 2 }, %struct.anon { i32 2008, i32 2, i32 28, i32 58, i32 4 }, %struct.anon { i32 2008, i32 2, i32 29, i32 59, i32 5 }, %struct.anon { i32 2008, i32 3, i32 1, i32 60, i32 6 }, %struct.anon { i32 2008, i32 12, i32 31, i32 365, i32 3 }, %struct.anon { i32 2009, i32 1, i32 1, i32 0, i32 4 }, %struct.anon { i32 2011, i32 1, i32 1, i32 0, i32 6 }, %struct.anon { i32 2011, i32 2, i32 28, i32 58, i32 1 }, %struct.anon { i32 2011, i32 3, i32 1, i32 59, i32 2 }, %struct.anon { i32 2011, i32 12, i32 31, i32 364, i32 6 }, %struct.anon { i32 2012, i32 1, i32 1, i32 0, i32 0 }, %struct.anon { i32 2019, i32 1, i32 2, i32 1, i32 3 }, %struct.anon { i32 2019, i32 2, i32 2, i32 32, i32 6 }, %struct.anon { i32 2019, i32 3, i32 2, i32 60, i32 6 }, %struct.anon { i32 2019, i32 4, i32 2, i32 91, i32 2 }, %struct.anon { i32 2019, i32 5, i32 2, i32 121, i32 4 }, %struct.anon { i32 2019, i32 6, i32 2, i32 152, i32 0 }, %struct.anon { i32 2019, i32 7, i32 2, i32 182, i32 2 }, %struct.anon { i32 2019, i32 8, i32 2, i32 213, i32 5 }, %struct.anon { i32 2019, i32 9, i32 2, i32 244, i32 1 }, %struct.anon { i32 2019, i32 10, i32 2, i32 274, i32 3 }, %struct.anon { i32 2019, i32 11, i32 2, i32 305, i32 6 }, %struct.anon { i32 2019, i32 12, i32 2, i32 335, i32 1 }, %struct.anon { i32 2020, i32 1, i32 2, i32 1, i32 4 }, %struct.anon { i32 2020, i32 2, i32 2, i32 32, i32 0 }, %struct.anon { i32 2020, i32 3, i32 2, i32 61, i32 1 }, %struct.anon { i32 2020, i32 4, i32 2, i32 92, i32 4 }, %struct.anon { i32 2020, i32 5, i32 2, i32 122, i32 6 }, %struct.anon { i32 2020, i32 6, i32 2, i32 153, i32 2 }, %struct.anon { i32 2020, i32 7, i32 2, i32 183, i32 4 }, %struct.anon { i32 2020, i32 8, i32 2, i32 214, i32 0 }, %struct.anon { i32 2020, i32 9, i32 2, i32 245, i32 3 }, %struct.anon { i32 2020, i32 10, i32 2, i32 275, i32 5 }, %struct.anon { i32 2020, i32 11, i32 2, i32 306, i32 1 }, %struct.anon { i32 2020, i32 12, i32 2, i32 336, i32 3 }], align 16
@.str.62 = private unnamed_addr constant [20 x i8] c"a = ASN1_TIME_new()\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"ASN1_TIME_set_string(a, d)\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"ASN1_TIME_to_tm(a, &t)\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"t.tm_yday\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"day_of_week_tests[n].yd\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"t.tm_wday\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"day_of_week_tests[n].wd\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"m = BIO_new(BIO_s_mem())\00", align 1
@x509_print_tests_rfc_822 = internal constant [7 x %struct.anon.0] [%struct.anon.0 { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 13, i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 19, i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.82, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 17, i32 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.84, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 16, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.78, i32 0, i32 0) }, %struct.anon.0 { %struct.asn1_string_st { i32 11, i32 23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.80, i32 0, i32 0) }], align 16
@.str.70 = private unnamed_addr constant [9 x i8] c"readable\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"\22Bad time value\22\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"Bad time value\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"rv = BIO_get_mem_data(m, &pp)\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"(int)strlen(readable)\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"20170731222050Z\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"Jul 31 22:20:50 2017 GMT\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"201707312220Z\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"Jul 31 22:20:00 2017 GMT\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"20170731222050.123Z\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"Jul 31 22:20:50.123 2017 GMT\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"20170731222050.1Z\00", align 1
@.str.84 = private unnamed_addr constant [27 x i8] c"Jul 31 22:20:50.1 2017 GMT\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"20170731222050.Z\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"170731222050Z\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"1707312220Z\00", align 1
@x509_print_tests_iso_8601 = internal constant [7 x %struct.anon.1] [%struct.anon.1 { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 13, i32 24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 19, i32 24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.81, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.90, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 17, i32 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 16, i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.85, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i32 0, i32 0) }, %struct.anon.1 { %struct.asn1_string_st { i32 11, i32 23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0) }], align 16
@.str.88 = private unnamed_addr constant [21 x i8] c"2017-07-31 22:20:50Z\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"2017-07-31 22:20:00Z\00", align 1
@.str.90 = private unnamed_addr constant [25 x i8] c"2017-07-31 22:20:50.123Z\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"2017-07-31 22:20:50.1Z\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_x509_cmp_time_current) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_X509_cmp_timeframe) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_x509_cmp_time, i32 noundef 26, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_x509_time, i32 noundef 20, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 (i32)* noundef nonnull @test_days, i32 noundef 49, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_x509_time_print_rfc_822, i32 noundef 7, i32 noundef 1) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 (i32)* noundef nonnull @test_x509_time_print_iso_8601, i32 noundef 7, i32 noundef 1) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_cmp_time_current() #0 {
entry:
  %call = tail call i64 @time(i64* noundef null) #5
  %call1 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef -1, i64 noundef 0) #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef 1, i64 noundef 0) #5
  %call3 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call1, i64* noundef null) #5
  %call4 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 noundef %call3, i32 noundef -1) #5
  %tobool.not = icmp ne i32 %call4, 0
  %call5 = tail call i32 @X509_cmp_time(%struct.asn1_string_st* noundef %call2, i64* noundef null) #5
  %call6 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 noundef %call5, i32 noundef 1) #5
  %tobool7.not = icmp ne i32 %call6, 0
  %narrow = select i1 %tobool7.not, i1 %tobool.not, i1 false
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call1) #5
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call2) #5
  %conv = zext i1 %narrow to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_X509_cmp_timeframe() #0 {
entry:
  %call = tail call i64 @time(i64* noundef null) #5
  %call1 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef 0, i64 noundef 0) #5
  %call2 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef -1, i64 noundef 0) #5
  %call3 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef 1, i64 noundef 0) #5
  %call4 = tail call %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() #5
  %cmp = icmp eq %struct.X509_VERIFY_PARAM_st* %call4, null
  br i1 %cmp, label %finish, label %if.end

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @test_X509_cmp_timeframe_vpm(%struct.X509_VERIFY_PARAM_st* noundef null, %struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %call3) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.end17.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @test_X509_cmp_timeframe_vpm(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, %struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %call3) #6
  %tobool7.not = icmp eq i32 %call6, 0
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, i64 noundef %call) #5
  br i1 %tobool7.not, label %land.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %call9 = tail call fastcc i32 @test_X509_cmp_timeframe_vpm(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, %struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %call3) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end17, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true
  %call12 = tail call i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, i64 noundef 2097152) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end17, label %land.rhs14

land.rhs14:                                       ; preds = %land.lhs.true11
  %call15 = tail call fastcc i32 @test_X509_cmp_timeframe_vpm(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, %struct.asn1_string_st* noundef %call2, %struct.asn1_string_st* noundef %call1, %struct.asn1_string_st* noundef %call3) #6
  %tobool16 = icmp ne i32 %call15, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %land.end17

land.end17.critedge:                              ; preds = %if.end
  tail call void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4, i64 noundef %call) #5
  br label %land.end17

land.end17:                                       ; preds = %land.end17.critedge, %land.rhs14, %land.lhs.true11, %land.lhs.true, %land.rhs
  %0 = phi i32 [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true ], [ 0, %land.rhs ], [ %phi.cast, %land.rhs14 ], [ 0, %land.end17.critedge ]
  tail call void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef nonnull %call4) #5
  br label %finish

finish:                                           ; preds = %entry, %land.end17
  %res.0 = phi i32 [ 0, %entry ], [ %0, %land.end17 ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call1) #5
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call2) #5
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call3) #5
  ret i32 %res.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_cmp_time(i32 noundef %idx) #0 {
entry:
  %t = alloca %struct.asn1_string_st, align 8
  %0 = bitcast %struct.asn1_string_st* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7
  %call = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef 24) #5
  %idxprom = sext i32 %idx to i64
  %type = getelementptr inbounds [26 x %struct.TESTDATA], [26 x %struct.TESTDATA]* @x509_cmp_tests, i64 0, i64 %idxprom, i32 1
  %1 = load i32, i32* %type, align 8, !tbaa !3
  %type1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 1
  store i32 %1, i32* %type1, align 4, !tbaa !10
  %data = getelementptr inbounds [26 x %struct.TESTDATA], [26 x %struct.TESTDATA]* @x509_cmp_tests, i64 0, i64 %idxprom, i32 0
  %2 = load i8*, i8** %data, align 16, !tbaa !12
  %data4 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 2
  store i8* %2, i8** %data4, align 8, !tbaa !13
  %call8 = call i64 @strlen(i8* noundef %2) #8
  %conv = trunc i64 %call8 to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !14
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !15
  %cmp_time = getelementptr inbounds [26 x %struct.TESTDATA], [26 x %struct.TESTDATA]* @x509_cmp_tests, i64 0, i64 %idxprom, i32 2
  %call11 = call i32 @X509_cmp_time(%struct.asn1_string_st* noundef nonnull %t, i64* noundef nonnull %cmp_time) #5
  %expected = getelementptr inbounds [26 x %struct.TESTDATA], [26 x %struct.TESTDATA]* @x509_cmp_tests, i64 0, i64 %idxprom, i32 3
  %3 = load i32, i32* %expected, align 8, !tbaa !16
  %call14 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i32 noundef %call11, i32 noundef %3) #5
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then, label %cleanup

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %expected, align 8, !tbaa !16
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0), i32 noundef %idx, i32 noundef %4, i32 noundef %call11) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_time(i32 noundef %idx) #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %0 = lshr i64 61503, %idxprom
  %1 = and i64 %0, 1
  %tobool.not.not = icmp eq i64 %1, 0
  br i1 %tobool.not.not, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call %struct.asn1_string_st* @ASN1_TIME_new() #5
  %cmp = icmp eq %struct.asn1_string_st* %call, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.then
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0), i32 noundef %idx) #5
  br label %cleanup

if.end2:                                          ; preds = %if.then, %entry
  %t.0 = phi %struct.asn1_string_st* [ %call, %if.then ], [ null, %entry ]
  %data = getelementptr inbounds [20 x %struct.TESTDATA_FORMAT], [20 x %struct.TESTDATA_FORMAT]* @x509_format_tests, i64 0, i64 %idxprom, i32 0
  %2 = load i8*, i8** %data, align 16, !tbaa !17
  %call5 = tail call i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef %t.0, i8* noundef %2) #5
  %expected = getelementptr inbounds [20 x %struct.TESTDATA_FORMAT], [20 x %struct.TESTDATA_FORMAT]* @x509_format_tests, i64 0, i64 %idxprom, i32 2
  %3 = load i32, i32* %expected, align 4, !tbaa !19
  %call8 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call5, i32 noundef %3) #5
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %out, label %if.end14

if.end14:                                         ; preds = %if.end2
  %cmp15.not = icmp eq %struct.asn1_string_st* %t.0, null
  br i1 %cmp15.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %4 = lshr i64 258559, %idxprom
  %5 = and i64 %4, 1
  %cmp18.not.not = icmp eq i64 %5, 0
  br i1 %cmp18.not.not, label %if.then19, label %if.then58

if.then19:                                        ; preds = %land.lhs.true
  %expected_type = getelementptr inbounds [20 x %struct.TESTDATA_FORMAT], [20 x %struct.TESTDATA_FORMAT]* @x509_format_tests, i64 0, i64 %idxprom, i32 3
  %6 = load i32, i32* %expected_type, align 16, !tbaa !20
  %type = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t.0, i64 0, i32 1
  %7 = load i32, i32* %type, align 4, !tbaa !10
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.45, i64 0, i64 0), i32 noundef %7, i32 noundef %6) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then37

if.then25:                                        ; preds = %if.then19
  %8 = load i32, i32* %type, align 4, !tbaa !10
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i64 0, i64 0), i32 noundef %idx, i32 noundef %6, i32 noundef %8) #5
  br label %if.then58

if.then37:                                        ; preds = %if.then19
  %expected_string92 = getelementptr inbounds [20 x %struct.TESTDATA_FORMAT], [20 x %struct.TESTDATA_FORMAT]* @x509_format_tests, i64 0, i64 %idxprom, i32 4
  %9 = load i8*, i8** %expected_string92, align 8, !tbaa !21
  %data38 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t.0, i64 0, i32 2
  %10 = load i8*, i8** %data38, align 8, !tbaa !13
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %t.0, i64 0, i32 0
  %11 = load i32, i32* %length, align 8, !tbaa !14
  %conv = sext i32 %11 to i64
  %call45 = tail call i64 @strlen(i8* noundef %9) #8
  %call46 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 387, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8* noundef %10, i64 noundef %conv, i8* noundef %9, i64 noundef %call45) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.then58

if.then48:                                        ; preds = %if.then37
  %12 = load i32, i32* %length, align 8, !tbaa !14
  %13 = load i8*, i8** %data38, align 8, !tbaa !13
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 390, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.49, i64 0, i64 0), i32 noundef %idx, i8* noundef %9, i32 noundef %12, i8* noundef %13) #5
  br label %if.then58

out:                                              ; preds = %if.end2
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i64 0, i64 0), i32 noundef %idx, i32 noundef %3, i32 noundef %call5) #5
  %cmp56.not = icmp eq %struct.asn1_string_st* %t.0, null
  br i1 %cmp56.not, label %cleanup, label %if.then58

if.then58:                                        ; preds = %land.lhs.true, %if.then25, %if.then48, %if.then37, %out
  %rv.095 = phi i32 [ 0, %out ], [ 1, %if.then37 ], [ 0, %if.then25 ], [ 0, %if.then48 ], [ 1, %land.lhs.true ]
  tail call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %t.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %out, %if.then58, %if.then1
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %rv.095, %if.then58 ], [ 0, %out ], [ 1, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_days(i32 noundef %n) #0 {
entry:
  %d = alloca [16 x i8], align 16
  %t = alloca %struct.tm, align 8
  %0 = getelementptr inbounds [16 x i8], [16 x i8]* %d, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7
  %1 = bitcast %struct.tm* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %1) #7
  %idxprom = sext i32 %n to i64
  %y = getelementptr inbounds [49 x %struct.anon], [49 x %struct.anon]* @day_of_week_tests, i64 0, i64 %idxprom, i32 0
  %2 = load i32, i32* %y, align 4, !tbaa !22
  %m = getelementptr inbounds [49 x %struct.anon], [49 x %struct.anon]* @day_of_week_tests, i64 0, i64 %idxprom, i32 1
  %3 = load i32, i32* %m, align 4, !tbaa !24
  %d5 = getelementptr inbounds [49 x %struct.anon], [49 x %struct.anon]* @day_of_week_tests, i64 0, i64 %idxprom, i32 2
  %4 = load i32, i32* %d5, align 4, !tbaa !25
  %call = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 16, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %4) #5
  %call6 = call %struct.asn1_string_st* @ASN1_TIME_new() #5
  %5 = bitcast %struct.asn1_string_st* %call6 to i8*
  %call7 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), i8* noundef %5) #5
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call9 = call i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef %call6, i8* noundef nonnull %0) #5
  %cmp = icmp ne i32 %call9, 0
  %conv = zext i1 %cmp to i32
  %call10 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0), i32 noundef %conv) #5
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call12 = call i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef %call6, %struct.tm* noundef nonnull %t) #5
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i64 0, i64 0), i32 noundef %conv14) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %t, i64 0, i32 7
  %6 = load i32, i32* %tm_yday, align 4, !tbaa !26
  %yd = getelementptr inbounds [49 x %struct.anon], [49 x %struct.anon]* @day_of_week_tests, i64 0, i64 %idxprom, i32 3
  %7 = load i32, i32* %yd, align 4, !tbaa !28
  %call20 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.66, i64 0, i64 0), i32 noundef %6, i32 noundef %7) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true17
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %t, i64 0, i32 6
  %8 = load i32, i32* %tm_wday, align 8, !tbaa !29
  %wd = getelementptr inbounds [49 x %struct.anon], [49 x %struct.anon]* @day_of_week_tests, i64 0, i64 %idxprom, i32 4
  %9 = load i32, i32* %wd, align 4, !tbaa !30
  %call24 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i64 0, i64 0), i32 noundef %8, i32 noundef %9) #5
  %tobool25 = icmp ne i32 %call24, 0
  %phi.cast = zext i1 %tobool25 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true17, %land.lhs.true, %if.end
  %10 = phi i32 [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %entry, %land.end
  %retval.0 = phi i32 [ %10, %land.end ], [ 0, %entry ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_time_print_rfc_822(i32 noundef %idx) #0 {
entry:
  %pp = alloca i8*, align 8
  %0 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %asn1 = getelementptr inbounds [7 x %struct.anon.0], [7 x %struct.anon.0]* @x509_print_tests_rfc_822, i64 0, i64 %idxprom, i32 0
  %call3 = tail call i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef %call1, %struct.asn1_string_st* noundef nonnull %asn1, i64 noundef 0) #5
  %readable6 = getelementptr inbounds [7 x %struct.anon.0], [7 x %struct.anon.0]* @x509_print_tests_rfc_822, i64 0, i64 %idxprom, i32 1
  %2 = load i8*, i8** %readable6, align 8, !tbaa !31
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 551, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0)) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %call11 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #5
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 555, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call14 = call i64 @strlen(i8* noundef %2) #8
  %conv15 = trunc i64 %call14 to i32
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 556, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv15) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %3 = load i8*, i8** %pp, align 8, !tbaa !33
  %sext = shl i64 %call11, 32
  %conv19 = ashr exact i64 %sext, 32
  %call21 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 557, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8* noundef %3, i64 noundef %conv19, i8* noundef %2, i64 noundef %conv19) #5
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false18, %if.end10, %lor.lhs.false, %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end10 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  %call25 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_x509_time_print_iso_8601(i32 noundef %idx) #0 {
entry:
  %pp = alloca i8*, align 8
  %0 = bitcast i8** %pp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  %call = tail call %struct.bio_method_st* @BIO_s_mem() #5
  %call1 = tail call %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef %call) #5
  %1 = bitcast %struct.bio_st* %call1 to i8*
  %call2 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 573, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* noundef %1) #5
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %idx to i64
  %asn1 = getelementptr inbounds [7 x %struct.anon.1], [7 x %struct.anon.1]* @x509_print_tests_iso_8601, i64 0, i64 %idxprom, i32 0
  %call3 = tail call i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef %call1, %struct.asn1_string_st* noundef nonnull %asn1, i64 noundef 1) #5
  %readable6 = getelementptr inbounds [7 x %struct.anon.1], [7 x %struct.anon.1]* @x509_print_tests_iso_8601, i64 0, i64 %idxprom, i32 1
  %2 = load i8*, i8** %readable6, align 8, !tbaa !31
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 579, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.71, i64 0, i64 0), i8* noundef %2, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0)) #5
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %err, label %if.end10

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %call11 = call i64 @BIO_ctrl(%struct.bio_st* noundef %call1, i32 noundef 3, i64 noundef 0, i8* noundef nonnull %0) #5
  %conv = trunc i64 %call11 to i32
  %call12 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 583, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv, i32 noundef 0) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %call14 = call i64 @strlen(i8* noundef %2) #8
  %conv15 = trunc i64 %call14 to i32
  %call16 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 584, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv, i32 noundef %conv15) #5
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %err, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %3 = load i8*, i8** %pp, align 8, !tbaa !33
  %sext = shl i64 %call11, 32
  %conv19 = ashr exact i64 %sext, 32
  %call21 = call i32 @test_strn_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 585, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), i8* noundef %3, i64 noundef %conv19, i8* noundef %2, i64 noundef %conv19) #5
  %tobool22.not = icmp ne i32 %call21, 0
  %spec.select = zext i1 %tobool22.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false18, %if.end10, %lor.lhs.false, %land.lhs.true, %entry
  %ret.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.end10 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %lor.lhs.false18 ]
  %call25 = call i32 @BIO_free(%struct.bio_st* noundef %call1) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_cmp_time(%struct.asn1_string_st* noundef, i64* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local %struct.X509_VERIFY_PARAM_st* @X509_VERIFY_PARAM_new() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_X509_cmp_timeframe_vpm(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef %asn1_before, %struct.asn1_string_st* noundef readnone %asn1_mid, %struct.asn1_string_st* noundef %asn1_after) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq %struct.X509_VERIFY_PARAM_st* %vpm, null
  br i1 %cmp.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm) #5
  %and = and i64 %call, 2
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef nonnull %vpm) #5
  %and3 = and i64 %call2, 2097152
  %cmp4 = icmp eq i64 %and3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %0 = phi i1 [ true, %land.lhs.true ], [ true, %entry ], [ %cmp4, %land.rhs ]
  %cmp5 = icmp ne %struct.asn1_string_st* %asn1_before, null
  %cmp7 = icmp ne %struct.asn1_string_st* %asn1_mid, null
  %or.cond = and i1 %cmp5, %cmp7
  %cmp9 = icmp ne %struct.asn1_string_st* %asn1_after, null
  %or.cond44 = and i1 %or.cond, %cmp9
  br i1 %or.cond44, label %land.lhs.true10, label %land.end42

land.lhs.true10:                                  ; preds = %land.end
  %call11 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef nonnull %asn1_before, %struct.asn1_string_st* noundef nonnull %asn1_after) #5
  %call12 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %land.end42, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef nonnull %asn1_before, %struct.asn1_string_st* noundef null) #5
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end42, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef nonnull %asn1_after) #5
  %call19 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end42, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef null, %struct.asn1_string_st* noundef null) #5
  %call23 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end42, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef nonnull %asn1_after, %struct.asn1_string_st* noundef nonnull %asn1_after) #5
  %cond = sext i1 %0 to i32
  %call28 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 315, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 noundef %call26, i32 noundef %cond) #5
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.end42, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %call31 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef nonnull %asn1_before, %struct.asn1_string_st* noundef nonnull %asn1_before) #5
  %cond33 = zext i1 %0 to i32
  %call34 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call31, i32 noundef %cond33) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end42, label %land.rhs36

land.rhs36:                                       ; preds = %land.lhs.true30
  %call37 = tail call i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef %vpm, %struct.asn1_string_st* noundef nonnull %asn1_after, %struct.asn1_string_st* noundef nonnull %asn1_before) #5
  %call40 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call37, i32 noundef %cond33) #5
  %tobool41 = icmp ne i32 %call40, 0
  %phi.cast = zext i1 %tobool41 to i32
  br label %land.end42

land.end42:                                       ; preds = %land.rhs36, %land.lhs.true30, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true10, %land.end
  %1 = phi i32 [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true10 ], [ 0, %land.end ], [ %phi.cast, %land.rhs36 ]
  ret i32 %1
}

declare dso_local void @X509_VERIFY_PARAM_set_time(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @X509_VERIFY_PARAM_set_flags(%struct.X509_VERIFY_PARAM_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @X509_VERIFY_PARAM_free(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare dso_local i64 @X509_VERIFY_PARAM_get_flags(%struct.X509_VERIFY_PARAM_st* noundef) local_unnamed_addr #1

declare dso_local i32 @X509_cmp_timeframe(%struct.X509_VERIFY_PARAM_st* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local %struct.asn1_string_st* @ASN1_TIME_new() local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_set_string_X509(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_to_tm(%struct.asn1_string_st* noundef, %struct.tm* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_st* @BIO_new(%struct.bio_method_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bio_method_st* @BIO_s_mem() local_unnamed_addr #1

declare dso_local i32 @ASN1_TIME_print_ex(%struct.bio_st* noundef, %struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i64 @BIO_ctrl(%struct.bio_st* noundef, i32 noundef, i64 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_strn_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_free(%struct.bio_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 8}
!4 = !{!"", !5, i64 0, !8, i64 8, !9, i64 16, !8, i64 24}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !8, i64 4}
!11 = !{!"asn1_string_st", !8, i64 0, !8, i64 4, !5, i64 8, !9, i64 16}
!12 = !{!4, !5, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !8, i64 0}
!15 = !{!11, !9, i64 16}
!16 = !{!4, !8, i64 24}
!17 = !{!18, !5, i64 0}
!18 = !{!"", !5, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !5, i64 24}
!19 = !{!18, !8, i64 12}
!20 = !{!18, !8, i64 16}
!21 = !{!18, !5, i64 24}
!22 = !{!23, !8, i64 0}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!24 = !{!23, !8, i64 4}
!25 = !{!23, !8, i64 8}
!26 = !{!27, !8, i64 28}
!27 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 40, !5, i64 48}
!28 = !{!23, !8, i64 12}
!29 = !{!27, !8, i64 24}
!30 = !{!23, !8, i64 16}
!31 = !{!32, !5, i64 24}
!32 = !{!"", !11, i64 0, !5, i64 24}
!33 = !{!5, !5, i64 0}
