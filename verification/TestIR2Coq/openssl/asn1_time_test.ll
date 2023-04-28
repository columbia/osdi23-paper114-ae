; ModuleID = 'test/asn1_time_test.c'
source_filename = "test/asn1_time_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testdata = type { i8*, i32, i32, i32, i64, i32, i32 }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.compare_testdata = type { %struct.asn1_string_st, %struct.asn1_string_st, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [15 x i8] c"test_table_pos\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test/asn1_time_test.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Adding negative-sign time_t tests\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"test_table_neg\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Adding 64-bit time_t tests\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"test_table_pos_64bit\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Adding negative-sign 64-bit time_t tests\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"test_table_neg_64bit\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"test_table_compare\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"test_time_dup\00", align 1
@tbl_testdata_pos = internal global [46 x %struct.testdata] [%struct.testdata { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i32 23, i32 23, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i32 23, i32 23, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.65, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.68, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i32 23, i32 23, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i32 0, i32 0), i32 24, i32 24, i32 0, i64 0, i32 0, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0), i32 24, i32 23, i32 1, i64 0, i32 -1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.80, i32 0, i32 0), i32 23, i32 23, i32 1, i64 0, i32 -1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), i32 24, i32 23, i32 1, i64 2147483647, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0), i32 23, i32 23, i32 1, i64 2147483647, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i32 24, i32 23, i32 1, i64 2145916799, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.83, i32 0, i32 0), i32 23, i32 23, i32 0, i64 0, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.84, i32 0, i32 0), i32 23, i32 23, i32 1, i64 2145916799, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 24, i32 23, i32 1, i64 24063296, i32 -1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.86, i32 0, i32 0), i32 23, i32 23, i32 1, i64 24063296, i32 -1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i32 0, i32 0), i32 24, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0), i32 24, i32 23, i32 0, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i32 0, i32 0), i32 24, i32 23, i32 0, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i32 0, i32 0), i32 23, i32 23, i32 1, i64 946598400, i32 0, i32 1 }], align 16
@.str.10 = private unnamed_addr constant [24 x i8] c"ASN1_TIME_check(&atime)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"td->check_result\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"ASN1_TIME_check(%s) unexpected result\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"ASN1_TIME_cmp_time_t(&atime, td->t)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"ASN1_TIME_cmp_time_t(%s vs %ld) compare failed\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"ASN1_TIME_diff(&day, &sec, &atime, &atime)\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"ASN1_TIME_diff(%s) to self failed\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"ASN1_TIME_diff(%s) to self not equal\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"ASN1_TIME_diff(&day, &sec, &gtime, &atime)\00", align 1
@gtime = internal global %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.57, i32 0, i32 0), i64 0 }, align 8
@.str.22 = private unnamed_addr constant [38 x i8] c"ASN1_TIME_diff(%s) to baseline failed\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"(day == 0 && sec == 0)\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"(day < 0 || sec < 0)\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"(day > 0 || sec > 0)\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"ASN1_TIME_diff(%s) to baseline bad comparison\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"ASN1_TIME_cmp_time_t(&atime, gtime_t)\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"td->cmp_result\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"ASN1_TIME_cmp_time_t(%s) to baseline bad comparison\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"ptime\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"ASN1_TIME_set(%ld) failed\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"ASN1_TIME_cmp_time_t(ptime, td->t)\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"ASN1_TIME_set(%ld) compare failed (%s->%s)\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ptime->type\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"td->expected_type\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"ASN1_TIME_set(%ld) unexpected type\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"ASN1_TIME_set() = %*s\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"ASN1_TIME_new() failed\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"ASN1_TIME_set_string(ptime, td->data)\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"ASN1_TIME_set_string_gmt(%s) failed\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"ASN1_TIME_normalize(ptime)\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"ASN1_TIME_normalize(%s) failed\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"ASN1_TIME_set_string_gmt(%s) unexpected type\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"ASN1_TIME_diff(&day, &sec, ptime, &atime)\00", align 1
@.str.45 = private unnamed_addr constant [75 x i8] c"ASN1_TIME_diff(day=%d, sec=%d, %s) after ASN1_TIME_set_string_gmt() failed\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"ASN1_TIME_cmp_time_t(ptime, gtime_t)\00", align 1
@.str.47 = private unnamed_addr constant [85 x i8] c"ASN1_TIME_cmp_time_t(%s) after ASN1_TIME_set_string_gnt() to baseline bad comparison\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"ASN1_TIME_set_string_gmt() = %*s\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"ASN1_TIME_set_string(%s) failed\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"ASN1_TIME_diff(day=%d, sec=%d, %s) after ASN1_TIME_set_string() failed\00", align 1
@.str.51 = private unnamed_addr constant [81 x i8] c"ASN1_TIME_cmp_time_t(%s) after ASN1_TIME_set_string() to baseline bad comparison\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"ASN1_TIME_set_string() = %*s\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"ASN1_TIME_to_generalizedtime(%s) failed\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"ASN1_TIME_to_generalizedtime(%s) should have failed\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"ASN1_TIME_to_generalizedtime(%s->%s) bad result\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"atime=%s\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"19991231000000Z\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"0ABCD\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"1-700101000000Z\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"`9700101000000Z\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"19700101000000Z\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"A00101000000Z\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"A9700101000000Z\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"1A700101000000Z\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"19A00101000000Z\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"197A0101000000Z\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"1970A101000000Z\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"19700A01000000Z\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"197001A1000000Z\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"1970010A000000Z\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"19700101A00000Z\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"197001010A0000Z\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"1970010100A000Z\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"19700101000A00Z\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"197001010000A0Z\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"1970010100000AZ\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"700101000000X\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"19700101000000X\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"700101000000Z\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"20380119031407Z\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"380119031407Z\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"20371231235959Z\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"371231235959Z\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"19701006121456Z\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"701006121456Z\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"199912310000Z\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"991231000000Z\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"9912310000Z\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"9912310000+0000\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"199912310000+0000\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"9912310000-0000\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"199912310000-0000\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"199912310100+0100\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"199912302300-0100\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"199912302300-A000\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"199912302300-0A00\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"9912310100+0100\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"9912302300-0100\00", align 1
@tbl_testdata_neg = internal global [3 x %struct.testdata] [%struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i32 24, i32 24, i32 1, i64 -2147483648, i32 -1, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), i32 23, i32 23, i32 1, i64 -7472704, i32 -1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0), i32 24, i32 23, i32 1, i64 -7472704, i32 -1, i32 1 }], align 16
@.str.100 = private unnamed_addr constant [16 x i8] c"19011213204552Z\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"691006121456Z\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"19691006121456Z\00", align 1
@tbl_testdata_pos_64bit = internal global [4 x %struct.testdata] [%struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i32 0, i32 0), i32 24, i32 23, i32 1, i64 2147483648, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.104, i32 0, i32 0), i32 24, i32 23, i32 1, i64 2147483649, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0), i32 23, i32 23, i32 1, i64 2147483648, i32 1, i32 1 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i32 0, i32 0), i32 24, i32 24, i32 1, i64 2524651200, i32 1, i32 0 }], align 16
@.str.103 = private unnamed_addr constant [16 x i8] c"20380119031408Z\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"20380119031409Z\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"380119031408Z\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"20500101120000Z\00", align 1
@tbl_testdata_neg_64bit = internal global [2 x %struct.testdata] [%struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.107, i32 0, i32 0), i32 24, i32 24, i32 1, i64 -2147483649, i32 -1, i32 0 }, %struct.testdata { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i32 0, i32 0), i32 24, i32 24, i32 1, i64 -2208945600, i32 -1, i32 0 }], align 16
@.str.107 = private unnamed_addr constant [16 x i8] c"19011213204551Z\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"19000101120000Z\00", align 1
@tbl_compare_testdata = internal global [16 x %struct.compare_testdata] [%struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, i32 -1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, i32 -1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, i32 -1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, i32 -1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, i32 1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, i32 1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TODAY_GEN_STR, i32 0, i32 0), i64 0 }, i32 1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TODAY_UTC_STR, i32 0, i32 0), i64 0 }, i32 1 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 15, i32 24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @TOMORROW_GEN_STR, i32 0, i32 0), i64 0 }, i32 0 }, %struct.compare_testdata { %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, %struct.asn1_string_st { i32 13, i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @TOMORROW_UTC_STR, i32 0, i32 0), i64 0 }, i32 0 }], align 16
@.str.109 = private unnamed_addr constant [36 x i8] c"ASN1_TIME_compare(&td->t1, &td->t2)\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"td->result\00", align 1
@TODAY_GEN_STR = internal global [16 x i8] c"20170825000000Z\00", align 16
@TODAY_UTC_STR = internal global [14 x i8] c"170825000000Z\00", align 1
@TOMORROW_GEN_STR = internal global [16 x i8] c"20170826000000Z\00", align 16
@TOMORROW_UTC_STR = internal global [14 x i8] c"170826000000Z\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"Internal error.\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"asn1_time_dup\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"ASN1_TIME_dup() failed.\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"ASN1_TIME_compare(asn1_time, asn1_time_dup)\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"ASN1_TIME_dup() duplicated non-identical value.\00", align 1
@.str.117 = private unnamed_addr constant [27 x i8] c"ASN1_UTCTIME_dup() failed.\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"ASN1_UTCTIME_dup() duplicated non-identical UTCTIME value.\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"ASN1_GENERALIZEDTIME_dup() failed.\00", align 1
@.str.120 = private unnamed_addr constant [47 x i8] c"ASN1_TIME_compare(asn1_gentime, asn1_time_dup)\00", align 1
@.str.121 = private unnamed_addr constant [55 x i8] c"ASN1_GENERALIZEDTIME_dup() dup'ed non-identical value.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  %t = alloca i64, align 8
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #5
  store i64 -1, i64* %t, align 8, !tbaa !3
  %call = call %struct.tm* @localtime(i64* noundef nonnull %t) #6
  call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_table_pos, i32 noundef 46, i32 noundef 1) #6
  %1 = load i64, i64* %t, align 8, !tbaa !3
  %cmp = icmp slt i64 %1, 1
  %cmp1 = icmp ne %struct.tm* %call, null
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #6
  call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_table_neg, i32 noundef 3, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #6
  call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_table_pos_64bit, i32 noundef 4, i32 noundef 1) #6
  %2 = load i64, i64* %t, align 8, !tbaa !3
  %cmp2 = icmp slt i64 %2, 1
  %or.cond7 = select i1 %cmp2, i1 %cmp1, i1 false
  br i1 %or.cond7, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0)) #6
  call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 (i32)* noundef nonnull @test_table_neg_64bit, i32 noundef 2, i32 noundef 1) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  call void @add_all_tests(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 (i32)* noundef nonnull @test_table_compare, i32 noundef 16, i32 noundef 1) #6
  call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_time_dup) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #5
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) local_unnamed_addr #2

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_table_pos(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @test_table(%struct.testdata* noundef getelementptr inbounds ([46 x %struct.testdata], [46 x %struct.testdata]* @tbl_testdata_pos, i64 0, i64 0), i32 noundef %idx) #7
  ret i32 %call
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_table_neg(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @test_table(%struct.testdata* noundef getelementptr inbounds ([3 x %struct.testdata], [3 x %struct.testdata]* @tbl_testdata_neg, i64 0, i64 0), i32 noundef %idx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_table_pos_64bit(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @test_table(%struct.testdata* noundef getelementptr inbounds ([4 x %struct.testdata], [4 x %struct.testdata]* @tbl_testdata_pos_64bit, i64 0, i64 0), i32 noundef %idx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_table_neg_64bit(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @test_table(%struct.testdata* noundef getelementptr inbounds ([2 x %struct.testdata], [2 x %struct.testdata]* @tbl_testdata_neg_64bit, i64 0, i64 0), i32 noundef %idx) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_table_compare(i32 noundef %idx) #0 {
entry:
  %idxprom = sext i32 %idx to i64
  %t1 = getelementptr inbounds [16 x %struct.compare_testdata], [16 x %struct.compare_testdata]* @tbl_compare_testdata, i64 0, i64 %idxprom, i32 0
  %t2 = getelementptr inbounds [16 x %struct.compare_testdata], [16 x %struct.compare_testdata]* @tbl_compare_testdata, i64 0, i64 %idxprom, i32 1
  %call = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef nonnull %t1, %struct.asn1_string_st* noundef nonnull %t2) #6
  %result = getelementptr inbounds [16 x %struct.compare_testdata], [16 x %struct.compare_testdata]* @tbl_compare_testdata, i64 0, i64 %idxprom, i32 2
  %0 = load i32, i32* %result, align 8, !tbaa !7
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0), i32 noundef %call, i32 noundef %0) #6
  ret i32 %call1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_time_dup() #0 {
entry:
  %call = tail call i64 @time(i64* noundef null) #6
  %call1 = tail call %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef null, i64 noundef %call, i32 noundef 0, i64 noundef 0) #6
  %cmp = icmp eq %struct.asn1_string_st* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0)) #6
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef nonnull %call1, %struct.asn1_string_st** noundef null) #6
  %cmp3 = icmp eq %struct.asn1_string_st* %call2, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0)) #6
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = tail call %struct.asn1_string_st* @ASN1_TIME_dup(%struct.asn1_string_st* noundef nonnull %call1) #6
  %0 = bitcast %struct.asn1_string_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i8* noundef %0, i8* noundef null) #6
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0)) #6
  br label %err

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef nonnull %call1, %struct.asn1_string_st* noundef %call6) #6
  %call11 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.116, i64 0, i64 0)) #6
  br label %err

if.end14:                                         ; preds = %if.end9
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call6) #6
  %call15 = tail call %struct.asn1_string_st* @ASN1_UTCTIME_dup(%struct.asn1_string_st* noundef nonnull %call1) #6
  %1 = bitcast %struct.asn1_string_st* %call15 to i8*
  %call16 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i8* noundef %1, i8* noundef null) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.117, i64 0, i64 0)) #6
  br label %err

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef nonnull %call1, %struct.asn1_string_st* noundef %call15) #6
  %call21 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.115, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call20, i32 noundef 0) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.118, i64 0, i64 0)) #6
  br label %err

if.end24:                                         ; preds = %if.end19
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call15) #6
  %call25 = tail call %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_dup(%struct.asn1_string_st* noundef nonnull %call2) #6
  %2 = bitcast %struct.asn1_string_st* %call25 to i8*
  %call26 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i8* noundef %2, i8* noundef null) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i64 0, i64 0)) #6
  br label %err

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef nonnull %call2, %struct.asn1_string_st* noundef %call25) #6
  %call31 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call30, i32 noundef 0) #6
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %err

if.then33:                                        ; preds = %if.end29
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.121, i64 0, i64 0)) #6
  br label %err

err:                                              ; preds = %if.end29, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then4, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then33 ], [ 0, %if.then28 ], [ 0, %if.then23 ], [ 0, %if.then18 ], [ 0, %if.then13 ], [ 0, %if.then8 ], [ 1, %if.end29 ]
  %asn1_time_dup.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then4 ], [ %call25, %if.then33 ], [ %call25, %if.then28 ], [ %call15, %if.then23 ], [ %call15, %if.then18 ], [ %call6, %if.then13 ], [ %call6, %if.then8 ], [ %call25, %if.end29 ]
  %asn1_gentime.0 = phi %struct.asn1_string_st* [ null, %if.then ], [ null, %if.then4 ], [ %call2, %if.then33 ], [ %call2, %if.then28 ], [ %call2, %if.then23 ], [ %call2, %if.then18 ], [ %call2, %if.then13 ], [ %call2, %if.then8 ], [ %call2, %if.end29 ]
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %call1) #6
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %asn1_gentime.0) #6
  tail call void @ASN1_STRING_free(%struct.asn1_string_st* noundef %asn1_time_dup.0) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_table(%struct.testdata* nocapture noundef readonly %tbl, i32 noundef %idx) unnamed_addr #0 {
entry:
  %atime = alloca %struct.asn1_string_st, align 8
  %day = alloca i32, align 4
  %sec = alloca i32, align 4
  %0 = bitcast %struct.asn1_string_st* %atime to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #5
  %idxprom = sext i32 %idx to i64
  %1 = bitcast i32* %day to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  %2 = bitcast i32* %sec to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  %data = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !12
  %data1 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %atime, i64 0, i32 2
  store i8* %3, i8** %data1, align 8, !tbaa !14
  %call = tail call i64 @strlen(i8* noundef %3) #8
  %conv = trunc i64 %call to i32
  %length = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %atime, i64 0, i32 0
  store i32 %conv, i32* %length, align 8, !tbaa !15
  %type = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 1
  %4 = load i32, i32* %type, align 8, !tbaa !16
  %type3 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %atime, i64 0, i32 1
  store i32 %4, i32* %type3, align 4, !tbaa !17
  %flags = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %atime, i64 0, i32 3
  store i64 0, i64* %flags, align 8, !tbaa !18
  %call4 = call i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef nonnull %atime) #6
  %check_result = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 3
  %5 = load i32, i32* %check_result, align 8, !tbaa !19
  %call5 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call4, i32 noundef %5) #6
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i8* noundef %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %error.0 = phi i32 [ 0, %entry ], [ 1, %if.then ]
  %7 = load i32, i32* %check_result, align 8, !tbaa !19
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end
  %t = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 4
  %8 = load i64, i64* %t, align 8, !tbaa !20
  %call11 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef nonnull %atime, i64 noundef %8) #6
  %call12 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call11, i32 noundef 0) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  %9 = load i8*, i8** %data1, align 8, !tbaa !14
  %10 = load i64, i64* %t, align 8, !tbaa !20
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* noundef %9, i64 noundef %10) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10
  %error.1 = phi i32 [ %error.0, %if.end10 ], [ 1, %if.then14 ]
  %call18 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef nonnull %atime, %struct.asn1_string_st* noundef nonnull %atime) #6
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv20) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  %11 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* noundef %11) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17
  %error.2 = phi i32 [ %error.1, %if.end17 ], [ 1, %if.then23 ]
  %12 = load i32, i32* %day, align 4, !tbaa !21
  %call26 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %12, i32 noundef 0) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end25
  %13 = load i32, i32* %sec, align 4, !tbaa !21
  %call28 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %13, i32 noundef 0) #6
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %lor.lhs.false, %if.end25
  %14 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* noundef %14) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %lor.lhs.false
  %error.3 = phi i32 [ %error.2, %lor.lhs.false ], [ 1, %if.then30 ]
  %call33 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef nonnull @gtime, %struct.asn1_string_st* noundef nonnull %atime) #6
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 144, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv35) #6
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end32
  %15 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 145, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i8* noundef %15) #6
  br label %if.end82

if.else:                                          ; preds = %if.end32
  %cmp_result = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 5
  %16 = load i32, i32* %cmp_result, align 8, !tbaa !22
  %cmp40 = icmp eq i32 %16, 0
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false50

land.lhs.true:                                    ; preds = %if.else
  %17 = load i32, i32* %day, align 4, !tbaa !21
  %cmp42 = icmp eq i32 %17, 0
  %18 = load i32, i32* %sec, align 4
  %cmp44 = icmp eq i32 %18, 0
  %19 = select i1 %cmp42, i1 %cmp44, i1 false
  %land.ext = zext i1 %19 to i32
  %call48 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 noundef %land.ext) #6
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false50thread-pre-split, label %if.end82

lor.lhs.false50thread-pre-split:                  ; preds = %land.lhs.true
  %.pr = load i32, i32* %cmp_result, align 8, !tbaa !22
  br label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %lor.lhs.false50thread-pre-split, %if.else
  %20 = phi i32 [ %.pr, %lor.lhs.false50thread-pre-split ], [ %16, %if.else ]
  %cmp52 = icmp eq i32 %20, -1
  br i1 %cmp52, label %land.lhs.true54, label %lor.lhs.false63

land.lhs.true54:                                  ; preds = %lor.lhs.false50
  %21 = load i32, i32* %day, align 4, !tbaa !21
  %cmp55 = icmp slt i32 %21, 0
  %22 = load i32, i32* %sec, align 4
  %cmp57 = icmp slt i32 %22, 0
  %23 = select i1 %cmp55, i1 true, i1 %cmp57
  %lor.ext = zext i1 %23 to i32
  %call61 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 148, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 noundef %lor.ext) #6
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true54.lor.lhs.false63_crit_edge, label %if.end82

land.lhs.true54.lor.lhs.false63_crit_edge:        ; preds = %land.lhs.true54
  %.pre = load i32, i32* %cmp_result, align 8, !tbaa !22
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true54.lor.lhs.false63_crit_edge, %lor.lhs.false50
  %24 = phi i32 [ %.pre, %land.lhs.true54.lor.lhs.false63_crit_edge ], [ %20, %lor.lhs.false50 ]
  %cmp65 = icmp eq i32 %24, 1
  br i1 %cmp65, label %land.lhs.true67, label %if.then79

land.lhs.true67:                                  ; preds = %lor.lhs.false63
  %25 = load i32, i32* %day, align 4, !tbaa !21
  %cmp68 = icmp sgt i32 %25, 0
  %26 = load i32, i32* %sec, align 4
  %cmp71 = icmp sgt i32 %26, 0
  %27 = select i1 %cmp68, i1 true, i1 %cmp71
  %lor.ext74 = zext i1 %27 to i32
  %call77 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 noundef %lor.ext74) #6
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end82

if.then79:                                        ; preds = %land.lhs.true67, %lor.lhs.false63
  %28 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i8* noundef %28) #6
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true, %land.lhs.true54, %land.lhs.true67, %if.then79, %if.then38
  %error.4 = phi i32 [ %error.3, %land.lhs.true ], [ %error.3, %land.lhs.true54 ], [ %error.3, %land.lhs.true67 ], [ 1, %if.then79 ], [ 1, %if.then38 ]
  %call83 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef nonnull %atime, i64 noundef 946598400) #6
  %cmp_result84 = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 5
  %29 = load i32, i32* %cmp_result84, align 8, !tbaa !22
  %call85 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call83, i32 noundef %29) #6
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end82
  %30 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i64 0, i64 0), i8* noundef %30) #6
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end82
  %error.5 = phi i32 [ %error.4, %if.end82 ], [ 1, %if.then87 ]
  %31 = load i64, i64* %t, align 8, !tbaa !20
  %call91 = call %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef null, i64 noundef %31) #6
  %32 = bitcast %struct.asn1_string_st* %call91 to i8*
  %call92 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %32) #6
  %tobool93.not = icmp eq i32 %call92, 0
  %33 = load i64, i64* %t, align 8, !tbaa !20
  br i1 %tobool93.not, label %if.then94, label %if.else96

if.then94:                                        ; preds = %if.end89
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i64 noundef %33) #6
  br label %if.end117

if.else96:                                        ; preds = %if.end89
  %call98 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef %call91, i64 noundef %33) #6
  %call99 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call98, i32 noundef 0) #6
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %if.end105

if.then101:                                       ; preds = %if.else96
  %34 = load i64, i64* %t, align 8, !tbaa !20
  %35 = load i8*, i8** %data, align 8, !tbaa !12
  %data104 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call91, i64 0, i32 2
  %36 = load i8*, i8** %data104, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.33, i64 0, i64 0), i64 noundef %34, i8* noundef %35, i8* noundef %36) #6
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.else96
  %error.6 = phi i32 [ %error.5, %if.else96 ], [ 1, %if.then101 ]
  %type106 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call91, i64 0, i32 1
  %37 = load i32, i32* %type106, align 4, !tbaa !17
  %expected_type = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 2
  %38 = load i32, i32* %expected_type, align 4, !tbaa !23
  %call107 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %37, i32 noundef %38) #6
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end111.thread, label %if.end111

if.end111.thread:                                 ; preds = %if.end105
  %39 = load i64, i64* %t, align 8, !tbaa !20
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i64 0, i64 0), i64 noundef %39) #6
  br label %if.then113

if.end111:                                        ; preds = %if.end105
  br i1 %tobool100.not, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end111.thread, %if.end111
  %error.7333 = phi i32 [ 1, %if.end111.thread ], [ %error.6, %if.end111 ]
  %length114 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call91, i64 0, i32 0
  %40 = load i32, i32* %length114, align 8, !tbaa !15
  %data115 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call91, i64 0, i32 2
  %41 = load i8*, i8** %data115, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i32 noundef %40, i8* noundef %41) #6
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end111
  %error.7334 = phi i32 [ %error.7333, %if.then113 ], [ %error.6, %if.end111 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call91) #6
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then94
  %error.8 = phi i32 [ %error.7334, %if.end116 ], [ 1, %if.then94 ]
  %call118 = call %struct.asn1_string_st* @ASN1_TIME_new() #6
  %42 = bitcast %struct.asn1_string_st* %call118 to i8*
  %call119 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %42) #6
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.end117
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %if.end172

if.else122:                                       ; preds = %if.end117
  %43 = load i8*, i8** %data, align 8, !tbaa !12
  %call125 = call i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef %call118, i8* noundef %43) #6
  %44 = load i32, i32* %check_result, align 8, !tbaa !19
  %call127 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call125, i32 noundef %44) #6
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.else122
  %45 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0), i8* noundef %45) #6
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.else122
  %error.9 = phi i32 [ %error.8, %if.else122 ], [ 1, %if.then129 ]
  %local_error123.0 = phi i32 [ 0, %if.else122 ], [ 1, %if.then129 ]
  %call132 = call i32 @ASN1_TIME_normalize(%struct.asn1_string_st* noundef %call118) #6
  %46 = load i32, i32* %check_result, align 8, !tbaa !19
  %call134 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call132, i32 noundef %46) #6
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.end138

if.then136:                                       ; preds = %if.end131
  %47 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 190, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i8* noundef %47) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %if.end131
  %error.10 = phi i32 [ %error.9, %if.end131 ], [ 1, %if.then136 ]
  %local_error123.1 = phi i32 [ %local_error123.0, %if.end131 ], [ 1, %if.then136 ]
  %type139 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call118, i64 0, i32 1
  %48 = load i32, i32* %type139, align 4, !tbaa !17
  %expected_type140 = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 2
  %49 = load i32, i32* %expected_type140, align 4, !tbaa !23
  %call141 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %48, i32 noundef %49) #6
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.end138
  %50 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.43, i64 0, i64 0), i8* noundef %50) #6
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.end138
  %error.11 = phi i32 [ %error.10, %if.end138 ], [ 1, %if.then143 ]
  %local_error123.2 = phi i32 [ %local_error123.1, %if.end138 ], [ 1, %if.then143 ]
  store i32 0, i32* %sec, align 4, !tbaa !21
  store i32 0, i32* %day, align 4, !tbaa !21
  %call146 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef nonnull %call118, %struct.asn1_string_st* noundef nonnull %atime) #6
  %cmp147 = icmp ne i32 %call146, 0
  %conv148 = zext i1 %cmp147 to i32
  %call149 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv148) #6
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.then157, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %if.end145
  %51 = load i32, i32* %day, align 4, !tbaa !21
  %call152 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %51, i32 noundef 0) #6
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.then157, label %lor.lhs.false154

lor.lhs.false154:                                 ; preds = %lor.lhs.false151
  %52 = load i32, i32* %sec, align 4, !tbaa !21
  %call155 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %52, i32 noundef 0) #6
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then157, label %if.end159

if.then157:                                       ; preds = %lor.lhs.false154, %lor.lhs.false151, %if.end145
  %53 = load i32, i32* %day, align 4, !tbaa !21
  %54 = load i32, i32* %sec, align 4, !tbaa !21
  %55 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.45, i64 0, i64 0), i32 noundef %53, i32 noundef %54, i8* noundef %55) #6
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %lor.lhs.false154
  %error.12 = phi i32 [ %error.11, %lor.lhs.false154 ], [ 1, %if.then157 ]
  %local_error123.3 = phi i32 [ %local_error123.2, %lor.lhs.false154 ], [ 1, %if.then157 ]
  %call160 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef nonnull %call118, i64 noundef 946598400) #6
  %56 = load i32, i32* %cmp_result84, align 8, !tbaa !22
  %call162 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call160, i32 noundef %56) #6
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end166.thread, label %if.end166

if.end166.thread:                                 ; preds = %if.end159
  %57 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.47, i64 0, i64 0), i8* noundef %57) #6
  br label %if.then168

if.end166:                                        ; preds = %if.end159
  %tobool167.not = icmp eq i32 %local_error123.3, 0
  br i1 %tobool167.not, label %if.end171, label %if.then168

if.then168:                                       ; preds = %if.end166.thread, %if.end166
  %error.13338 = phi i32 [ 1, %if.end166.thread ], [ %error.12, %if.end166 ]
  %length169 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call118, i64 0, i32 0
  %58 = load i32, i32* %length169, align 8, !tbaa !15
  %data170 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call118, i64 0, i32 2
  %59 = load i8*, i8** %data170, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0), i32 noundef %58, i8* noundef %59) #6
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end166
  %error.13339 = phi i32 [ %error.13338, %if.then168 ], [ %error.12, %if.end166 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef nonnull %call118) #6
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then121
  %error.14 = phi i32 [ %error.13339, %if.end171 ], [ 1, %if.then121 ]
  %call173 = call %struct.asn1_string_st* @ASN1_TIME_new() #6
  %60 = bitcast %struct.asn1_string_st* %call173 to i8*
  %call174 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %60) #6
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.end172
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %if.end213

if.else177:                                       ; preds = %if.end172
  %61 = load i8*, i8** %data, align 8, !tbaa !12
  %call180 = call i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef %call173, i8* noundef %61) #6
  %62 = load i32, i32* %check_result, align 8, !tbaa !19
  %call182 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 noundef %call180, i32 noundef %62) #6
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then184, label %if.end186

if.then184:                                       ; preds = %if.else177
  %63 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 218, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i64 0, i64 0), i8* noundef %63) #6
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %if.else177
  %error.15 = phi i32 [ %error.14, %if.else177 ], [ 1, %if.then184 ]
  %local_error178.0 = phi i32 [ 0, %if.else177 ], [ 1, %if.then184 ]
  store i32 0, i32* %sec, align 4, !tbaa !21
  store i32 0, i32* %day, align 4, !tbaa !21
  %call187 = call i32 @ASN1_TIME_diff(i32* noundef nonnull %day, i32* noundef nonnull %sec, %struct.asn1_string_st* noundef %call173, %struct.asn1_string_st* noundef nonnull %atime) #6
  %cmp188 = icmp ne i32 %call187, 0
  %conv189 = zext i1 %cmp188 to i32
  %call190 = call i32 @test_true(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv189) #6
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.then198, label %lor.lhs.false192

lor.lhs.false192:                                 ; preds = %if.end186
  %64 = load i32, i32* %day, align 4, !tbaa !21
  %call193 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %64, i32 noundef 0) #6
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then198, label %lor.lhs.false195

lor.lhs.false195:                                 ; preds = %lor.lhs.false192
  %65 = load i32, i32* %sec, align 4, !tbaa !21
  %call196 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %65, i32 noundef 0) #6
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %if.end200

if.then198:                                       ; preds = %lor.lhs.false195, %lor.lhs.false192, %if.end186
  %66 = load i32, i32* %day, align 4, !tbaa !21
  %67 = load i32, i32* %sec, align 4, !tbaa !21
  %68 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0), i32 noundef %66, i32 noundef %67, i8* noundef %68) #6
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %lor.lhs.false195
  %error.16 = phi i32 [ %error.15, %lor.lhs.false195 ], [ 1, %if.then198 ]
  %local_error178.1 = phi i32 [ %local_error178.0, %lor.lhs.false195 ], [ 1, %if.then198 ]
  %call201 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef %call173, i64 noundef 946598400) #6
  %69 = load i32, i32* %cmp_result84, align 8, !tbaa !22
  %call203 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call201, i32 noundef %69) #6
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end207.thread, label %if.end207

if.end207.thread:                                 ; preds = %if.end200
  %70 = load i8*, i8** %data, align 8, !tbaa !12
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.51, i64 0, i64 0), i8* noundef %70) #6
  br label %if.then209

if.end207:                                        ; preds = %if.end200
  %tobool208.not = icmp eq i32 %local_error178.1, 0
  br i1 %tobool208.not, label %if.end212, label %if.then209

if.then209:                                       ; preds = %if.end207.thread, %if.end207
  %error.17343 = phi i32 [ 1, %if.end207.thread ], [ %error.16, %if.end207 ]
  %length210 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call173, i64 0, i32 0
  %71 = load i32, i32* %length210, align 8, !tbaa !15
  %data211 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call173, i64 0, i32 2
  %72 = load i8*, i8** %data211, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.52, i64 0, i64 0), i32 noundef %71, i8* noundef %72) #6
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.end207
  %error.17344 = phi i32 [ %error.17343, %if.then209 ], [ %error.16, %if.end207 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call173) #6
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.then176
  %error.18 = phi i32 [ %error.17344, %if.end212 ], [ 1, %if.then176 ]
  %73 = load i32, i32* %type, align 8, !tbaa !16
  %cmp215 = icmp eq i32 %73, 23
  br i1 %cmp215, label %if.then217, label %if.end248

if.then217:                                       ; preds = %if.end213
  %call218 = call %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef nonnull %atime, %struct.asn1_string_st** noundef null) #6
  %convert_result = getelementptr inbounds %struct.testdata, %struct.testdata* %tbl, i64 %idxprom, i32 6
  %74 = load i32, i32* %convert_result, align 4, !tbaa !24
  %cmp219 = icmp eq i32 %74, 1
  br i1 %cmp219, label %land.lhs.true221, label %if.else226

land.lhs.true221:                                 ; preds = %if.then217
  %75 = bitcast %struct.asn1_string_st* %call218 to i8*
  %call222 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %75) #6
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.then224, label %if.else226thread-pre-split

if.then224:                                       ; preds = %land.lhs.true221
  %76 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i8* noundef %76) #6
  br label %if.end236

if.else226thread-pre-split:                       ; preds = %land.lhs.true221
  %.pr345 = load i32, i32* %convert_result, align 4, !tbaa !24
  br label %if.else226

if.else226:                                       ; preds = %if.else226thread-pre-split, %if.then217
  %77 = phi i32 [ %.pr345, %if.else226thread-pre-split ], [ %74, %if.then217 ]
  %cmp228 = icmp eq i32 %77, 0
  br i1 %cmp228, label %land.lhs.true230, label %if.end236

land.lhs.true230:                                 ; preds = %if.else226
  %78 = bitcast %struct.asn1_string_st* %call218 to i8*
  %call231 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 240, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* noundef %78) #6
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.then233, label %if.end236

if.then233:                                       ; preds = %land.lhs.true230
  %79 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 241, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0), i8* noundef %79) #6
  br label %if.end236

if.end236:                                        ; preds = %if.else226, %land.lhs.true230, %if.then233, %if.then224
  %error.19 = phi i32 [ %error.18, %land.lhs.true230 ], [ 1, %if.then233 ], [ %error.18, %if.else226 ], [ 1, %if.then224 ]
  %cmp237.not = icmp eq %struct.asn1_string_st* %call218, null
  br i1 %cmp237.not, label %if.end247, label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.end236
  %80 = load i64, i64* %t, align 8, !tbaa !20
  %call241 = call i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef nonnull %call218, i64 noundef %80) #6
  %call242 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call241, i32 noundef 0) #6
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.then244, label %if.end247

if.then244:                                       ; preds = %land.lhs.true239
  %81 = load i8*, i8** %data1, align 8, !tbaa !14
  %data246 = getelementptr inbounds %struct.asn1_string_st, %struct.asn1_string_st* %call218, i64 0, i32 2
  %82 = load i8*, i8** %data246, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.55, i64 0, i64 0), i8* noundef %81, i8* noundef %82) #6
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %land.lhs.true239, %if.end236
  %error.20 = phi i32 [ %error.19, %land.lhs.true239 ], [ 1, %if.then244 ], [ %error.19, %if.end236 ]
  call void @ASN1_TIME_free(%struct.asn1_string_st* noundef %call218) #6
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.end213
  %error.21 = phi i32 [ %error.20, %if.end247 ], [ %error.18, %if.end213 ]
  %tobool249.not = icmp eq i32 %error.21, 0
  br i1 %tobool249.not, label %if.end252, label %if.then250

if.then250:                                       ; preds = %if.end248
  %83 = load i8*, i8** %data1, align 8, !tbaa !14
  call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef 253, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8* noundef %83) #6
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end248
  %lnot.ext = zext i1 %tobool249.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end252
  %retval.0 = phi i32 [ %lnot.ext, %if.end252 ], [ 1, %if.end ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #4

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_check(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_cmp_time_t(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_diff(i32* noundef, i32* noundef, %struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_set(%struct.asn1_string_st* noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ASN1_TIME_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_new() local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_set_string(%struct.asn1_string_st* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_normalize(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_to_generalizedtime(%struct.asn1_string_st* noundef, %struct.asn1_string_st** noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare dso_local i32 @ASN1_TIME_compare(%struct.asn1_string_st* noundef, %struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_TIME_adj(%struct.asn1_string_st* noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) local_unnamed_addr #2

declare dso_local %struct.asn1_string_st* @ASN1_TIME_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

declare dso_local void @ASN1_STRING_free(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_UTCTIME_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #3

declare dso_local %struct.asn1_string_st* @ASN1_GENERALIZEDTIME_dup(%struct.asn1_string_st* noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 48}
!8 = !{!"compare_testdata", !9, i64 0, !9, i64 24, !10, i64 48}
!9 = !{!"asn1_string_st", !10, i64 0, !10, i64 4, !11, i64 8, !4, i64 16}
!10 = !{!"int", !5, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"testdata", !11, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !4, i64 24, !10, i64 32, !10, i64 36}
!14 = !{!9, !11, i64 8}
!15 = !{!9, !10, i64 0}
!16 = !{!13, !10, i64 8}
!17 = !{!9, !10, i64 4}
!18 = !{!9, !4, i64 16}
!19 = !{!13, !10, i64 16}
!20 = !{!13, !4, i64 24}
!21 = !{!10, !10, i64 0}
!22 = !{!13, !10, i64 32}
!23 = !{!13, !10, i64 12}
!24 = !{!13, !10, i64 36}
