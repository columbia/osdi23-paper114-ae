; ModuleID = 'test/property_test.c'
source_filename = "test/property_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i32 }
%struct.anon.0 = type { i8*, i8*, i8* }
%struct.anon.1 = type { i8*, i8*, i32 }
%struct.anon.4 = type { i32, i8*, i8* }
%struct.anon.5 = type { i8*, i8* }
%struct.ossl_method_store_st = type opaque
%struct.ossl_lib_ctx_st = type opaque
%struct.ossl_property_list_st = type { i32, i8, [1 x %struct.ossl_property_definition_st] }
%struct.ossl_property_definition_st = type { i32, i32, i32, i8, %union.anon }
%union.anon = type { i64 }
%struct.ossl_provider_st = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"test_property_string\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"test_property_query_value_create\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"test_property_parse\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"test_property_merge\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"test_property_defn_cache\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"test_definition_compares\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"test_register_deregister\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"test_property\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"test_query_cache_stochastic\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"test_fips_mode\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"test_property_list_to_string\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"test/property_test.c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"store = ossl_method_store_new(NULL)\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"ossl_property_name(NULL, \22fnord\22, 0)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"fnord\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"ossl_property_name(NULL, \22fnord\22, 1)\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"ossl_property_name(NULL, \22name\22, 1)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"ossl_property_value(NULL, \22fnord\22, 0)\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"i = ossl_property_value(NULL, \22no\22, 0)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"j = ossl_property_value(NULL, \22yes\22, 0)\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"ossl_property_value(NULL, \22yes\22, 1)\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"ossl_property_value(NULL, \22no\22, 1)\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"i = ossl_property_value(NULL, \22illuminati\22, 1)\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"illuminati\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"j = ossl_property_value(NULL, \22fnord\22, 1)\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"i + 1\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"ossl_property_value(NULL, \22fnord\22, 1)\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"ossl_property_value(NULL, \22cold\22, 0)\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"wood\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"p = ossl_parse_query(NULL, \22wood=oak\22, 0)\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"wood=oak\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"q = ossl_parse_query(NULL, \22wood=oak\22, 1)\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"o = ossl_parse_query(NULL, \22wood=oak\22, 0)\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"ossl_property_match_count(q, p)\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"ossl_property_match_count(q, o)\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"ossl_property_name(NULL, n, 1)\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"sky\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"groan\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"tomorrow\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"p = ossl_parse_property(NULL, parser_tests[n].defn)\00", align 1
@parser_tests = internal unnamed_addr constant [30 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.67, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i32 -1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i32 2 }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i32 1 }], align 16
@.str.51 = private unnamed_addr constant [53 x i8] c"q = ossl_parse_query(NULL, parser_tests[n].query, 0)\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"parser_tests[n].e\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"sky=blue\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"sky!=blue\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"cold=yes\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"cold!=no\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"groan=yes\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"groan=no\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"groan!=yes\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"cold=no\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"?cold\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"cold!=yes\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"groan=blue\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"groan=yellow\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"?groan=yellow\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"groan!=yellow\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"?groan!=yellow\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"today=monday, tomorrow=3\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"today!=2\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"today!='monday'\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"tomorrow=3\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"n=0x3\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"n=3\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"n=-3\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"n=0x33\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"n=51\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"n=033\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"n=27\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"n=0\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"n=00\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"n=0x0\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"n=0, sky=blue\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"?n=0, sky=blue\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"n=1, sky=blue\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"urn\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"clouds\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"night\00", align 1
@.str.92 = private unnamed_addr constant [54 x i8] c"prop = ossl_parse_property(NULL, merge_tests[n].prop)\00", align 1
@merge_tests = internal unnamed_addr constant [14 x %struct.anon.0] [%struct.anon.0 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.101, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.110, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.113, i32 0, i32 0) }, %struct.anon.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0) }], align 16
@.str.93 = private unnamed_addr constant [62 x i8] c"q_global = ossl_parse_query(NULL, merge_tests[n].q_global, 0)\00", align 1
@.str.94 = private unnamed_addr constant [60 x i8] c"q_local = ossl_parse_query(NULL, merge_tests[n].q_local, 0)\00", align 1
@.str.95 = private unnamed_addr constant [52 x i8] c"q_combined = ossl_property_merge(q_local, q_global)\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"ossl_property_match_count(q_combined, prop)\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"colour=blue\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"colour=red\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"clouds=pink, urn=red\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"urn=blue, colour=green\00", align 1
@.str.101 = private unnamed_addr constant [36 x i8] c"urn=blue, colour=green, clouds=pink\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"pot=gold\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"urn=blue\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"pot=gold, urn=blue\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"day=yes, night=yes\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"day=yes\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"-day\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"day=no\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"day=arglebargle\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"pot=sesquioxidizing\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"day, night\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"-night, day\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"day=yes, night=no\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"red = ossl_parse_property(NULL, \22red\22)\00", align 1
@.str.117 = private unnamed_addr constant [41 x i8] c"blue = ossl_parse_property(NULL, \22blue\22)\00", align 1
@.str.118 = private unnamed_addr constant [37 x i8] c"ossl_prop_defn_set(NULL, \22red\22, red)\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"ossl_prop_defn_set(NULL, \22blue\22, blue)\00", align 1
@.str.120 = private unnamed_addr constant [32 x i8] c"ossl_prop_defn_get(NULL, \22red\22)\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"ossl_prop_defn_get(NULL, \22blue\22)\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str.124 = private unnamed_addr constant [56 x i8] c"d = ossl_parse_property(NULL, definition_tests[n].defn)\00", align 1
@definition_tests = internal unnamed_addr constant [11 x %struct.anon.1] [%struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.128, i32 0, i32 0), i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i32 -1 }, %struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i32 -1 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i32 -1 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i32 0, i32 0), i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i32 0, i32 0), i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0), i32 0 }, %struct.anon.1 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.135, i32 0, i32 0), i32 1 }, %struct.anon.1 { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 0 }], align 16
@.str.125 = private unnamed_addr constant [57 x i8] c"q = ossl_parse_query(NULL, definition_tests[n].query, 0)\00", align 1
@.str.126 = private unnamed_addr constant [32 x i8] c"ossl_property_match_count(q, d)\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"definition_tests[n].e\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"alpha=yes\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"alpha=no\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"alpha=1\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"alpha=2\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"?omega\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"?omega=1\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"?omega=no\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"?omega=yes\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"alpha, omega\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"position=1\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.139 = private unnamed_addr constant [11 x i8] c"position=2\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"position=3\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"position=4\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.146 = private unnamed_addr constant [99 x i8] c"ossl_method_store_add(store, NULL, impls[i].nid, impls[i].prop, impls[i].impl, &up_ref, &down_ref)\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"iteration %zd\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"ossl_method_store_remove(store, nid, impl)\00", align 1
@.str.149 = private unnamed_addr constant [28 x i8] c"iteration %zd, position %zd\00", align 1
@.str.150 = private unnamed_addr constant [61 x i8] c"ossl_method_store_remove(store, impls[0].nid, impls[0].impl)\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"fast=no, colour=green\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"fast, colour=blue\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"sky=blue, furry\00", align 1
@.str.155 = private unnamed_addr constant [37 x i8] c"sky.colour=blue, sky=green, old.data\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@test_property.queries = internal unnamed_addr constant [11 x %struct.anon.4] [%struct.anon.4 { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0) }, %struct.anon.4 { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0) }, %struct.anon.4 { i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon.4 { i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0) }, %struct.anon.4 { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0) }, %struct.anon.4 { i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i32 0, i32 0) }, %struct.anon.4 { i32 6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i32 0, i32 0) }, %struct.anon.4 { i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i32 0, i32 0) }, %struct.anon.4 { i32 9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i32 0, i32 0) }, %struct.anon.4 { i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i32 0, i32 0) }, %struct.anon.4 { i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i32 0, i32 0) }], align 16
@.str.157 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"fast=yes\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"colour=blue, fast\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"furry\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"sky.colour=blue\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"old.data\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"furry=yes, sky=blue\00", align 1
@.str.164 = private unnamed_addr constant [73 x i8] c"ossl_method_store_fetch(store, queries[i].nid, queries[i].prop, &result)\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"(char *)result\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"queries[i].expected\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"n=%d\0A\00", align 1
@.str.168 = private unnamed_addr constant [70 x i8] c"ossl_method_store_add(store, NULL, i, buf, \22abc\22, &up_ref, &down_ref)\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.170 = private unnamed_addr constant [70 x i8] c"ossl_method_store_cache_set(store, i, buf, v + i, &up_ref, &down_ref)\00", align 1
@.str.171 = private unnamed_addr constant [76 x i8] c"ossl_method_store_cache_set(store, i, \22n=1234\22, \22miss\22, &up_ref, &down_ref)\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"n=1234\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"miss\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"iteration %d\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"max - tail\00", align 1
@.str.178 = private unnamed_addr constant [25 x i8] c"ctx = OSSL_LIB_CTX_new()\00", align 1
@.str.179 = private unnamed_addr constant [56 x i8] c"EVP_set_default_properties(ctx, \22default=yes,fips=yes\22)\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"default=yes,fips=yes\00", align 1
@.str.181 = private unnamed_addr constant [44 x i8] c"EVP_default_properties_is_fips_enabled(ctx)\00", align 1
@.str.182 = private unnamed_addr constant [55 x i8] c"EVP_set_default_properties(ctx, \22fips=no,default=yes\22)\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"fips=no,default=yes\00", align 1
@.str.184 = private unnamed_addr constant [43 x i8] c"EVP_set_default_properties(ctx, \22fips=no\22)\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"fips=no\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"EVP_set_default_properties(ctx, \22fips!=no\22)\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"fips!=no\00", align 1
@.str.188 = private unnamed_addr constant [43 x i8] c"EVP_default_properties_enable_fips(ctx, 1)\00", align 1
@.str.189 = private unnamed_addr constant [43 x i8] c"EVP_default_properties_enable_fips(ctx, 0)\00", align 1
@to_string_tests = internal unnamed_addr constant [17 x %struct.anon.5] [%struct.anon.5 { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.197, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.200, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.201, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.202, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.203, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.202, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.204, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.205, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.206, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.196, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.209, i32 0, i32 0) }, %struct.anon.5 { i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i32 0, i32 0) }], align 16
@.str.190 = private unnamed_addr constant [54 x i8] c"pl = ossl_parse_query(NULL, to_string_tests[i].in, 1)\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.193 = private unnamed_addr constant [53 x i8] c"ossl_property_list_to_string(NULL, pl, buf, bufsize)\00", align 1
@.str.194 = private unnamed_addr constant [23 x i8] c"to_string_tests[i].out\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c"strlen(to_string_tests[i].out) + 1\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"fips=yes\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"fips!=yes\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"fips = yes\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"fips\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"-fips\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"?fips=yes\00", align 1
@.str.202 = private unnamed_addr constant [23 x i8] c"fips=yes,provider=fips\00", align 1
@.str.203 = private unnamed_addr constant [29 x i8] c"fips = yes , provider = fips\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"fips=yes,provider!=fips\00", align 1
@.str.205 = private unnamed_addr constant [24 x i8] c"fips=yes,?provider=fips\00", align 1
@.str.206 = private unnamed_addr constant [19 x i8] c"fips=yes,-provider\00", align 1
@.str.207 = private unnamed_addr constant [17 x i8] c"foo=yes,fips=yes\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"fips=3\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"fips=-3\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_property_string) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_property_query_value_create) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_property_parse, i32 noundef 30, i32 noundef 1) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 (i32)* noundef nonnull @test_property_merge, i32 noundef 14, i32 noundef 1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_property_defn_cache) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 (i32)* noundef nonnull @test_definition_compares, i32 noundef 11, i32 noundef 1) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_register_deregister) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_property) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_query_cache_stochastic) #6
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_fips_mode) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 (i32)* noundef nonnull @test_property_list_to_string, i32 noundef 17, i32 noundef 1) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_string() #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0) #6
  %call3 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call2, i32 noundef 0) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1) #6
  %call7 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call6, i32 noundef 0) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1) #6
  %call11 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call10, i32 noundef 0) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0) #6
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call14, i32 noundef 0) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 noundef 0) #6
  %call19 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call18, i32 noundef 0) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 noundef 0) #6
  %call23 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call22, i32 noundef 0) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call18, i32 noundef %call22) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call29 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 noundef 1) #6
  %call30 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call29, i32 noundef %call22) #6
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %call33 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 noundef 1) #6
  %call34 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 noundef %call33, i32 noundef %call18) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %call37 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1) #6
  %call38 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call37, i32 noundef 0) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %call41 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1) #6
  %add = add nsw i32 %call37, 1
  %call42 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 noundef %call41, i32 noundef %add) #6
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call45 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1) #6
  %call46 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call45, i32 noundef %call41) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %call49 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef 0) #6
  %call50 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call49, i32 noundef 0) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %call53 = tail call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0) #6
  %call54 = tail call i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0) #6
  %call55 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call53, i32 noundef %call54) #6
  %tobool56.not = icmp ne i32 %call55, 0
  %spec.select = zext i1 %tobool56.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true32, %land.lhs.true28, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %res.0 = phi i32 [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true44 ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true32 ], [ 0, %land.lhs.true28 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true52 ]
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_query_value_create() #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 noundef 0) #6
  %1 = bitcast %struct.ossl_property_list_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i8* noundef %1) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %call9 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 noundef 1) #6
  %2 = bitcast %struct.ossl_property_list_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.38, i64 0, i64 0), i8* noundef %2) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %call13 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i32 noundef 0) #6
  %3 = bitcast %struct.ossl_property_list_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0), i8* noundef %3) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %call17 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef %call9, %struct.ossl_property_list_st* noundef %call5) #6
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 noundef %call17, i32 noundef -1) #6
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %call21 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef %call9, %struct.ossl_property_list_st* noundef %call13) #6
  %call22 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 noundef %call21, i32 noundef 1) #6
  %tobool23.not = icmp ne i32 %call22, 0
  %spec.select = zext i1 %tobool23.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true20, %land.lhs.true16, %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %p.0 = phi %struct.ossl_property_list_st* [ %call5, %land.lhs.true16 ], [ %call5, %land.lhs.true12 ], [ %call5, %land.lhs.true8 ], [ %call5, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call5, %land.lhs.true20 ]
  %q.0 = phi %struct.ossl_property_list_st* [ %call9, %land.lhs.true16 ], [ %call9, %land.lhs.true12 ], [ %call9, %land.lhs.true8 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call9, %land.lhs.true20 ]
  %o.0 = phi %struct.ossl_property_list_st* [ %call13, %land.lhs.true16 ], [ %call13, %land.lhs.true12 ], [ null, %land.lhs.true8 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call13, %land.lhs.true20 ]
  %r.0 = phi i32 [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true20 ]
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %o.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %p.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q.0) #6
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %r.0
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_parse(i32 noundef %n) #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %n to i64
  %defn = getelementptr inbounds [30 x %struct.anon], [30 x %struct.anon]* @parser_tests, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %defn, align 8, !tbaa !3
  %call5 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %1) #6
  %2 = bitcast %struct.ossl_property_list_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i64 0, i64 0), i8* noundef %2) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %query = getelementptr inbounds [30 x %struct.anon], [30 x %struct.anon]* @parser_tests, i64 0, i64 %idxprom, i32 1
  %3 = load i8*, i8** %query, align 8, !tbaa !9
  %call11 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %3, i32 noundef 0) #6
  %4 = bitcast %struct.ossl_property_list_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i64 0, i64 0), i8* noundef %4) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true8
  %call15 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef %call11, %struct.ossl_property_list_st* noundef %call5) #6
  %e = getelementptr inbounds [30 x %struct.anon], [30 x %struct.anon]* @parser_tests, i64 0, i64 %idxprom, i32 2
  %5 = load i32, i32* %e, align 8, !tbaa !10
  %call18 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0), i32 noundef %call15, i32 noundef %5) #6
  %tobool19.not = icmp ne i32 %call18, 0
  %spec.select = zext i1 %tobool19.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true14, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %p.0 = phi %struct.ossl_property_list_st* [ %call5, %land.lhs.true8 ], [ %call5, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call5, %land.lhs.true14 ]
  %q.0 = phi %struct.ossl_property_list_st* [ %call11, %land.lhs.true8 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call11, %land.lhs.true14 ]
  %r.0 = phi i32 [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true14 ]
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %p.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q.0) #6
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_merge(i32 noundef %n) #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %n to i64
  %prop5 = getelementptr inbounds [14 x %struct.anon.0], [14 x %struct.anon.0]* @merge_tests, i64 0, i64 %idxprom, i32 2
  %1 = load i8*, i8** %prop5, align 8, !tbaa !11
  %call6 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %1) #6
  %2 = bitcast %struct.ossl_property_list_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.92, i64 0, i64 0), i8* noundef %2) #6
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %q_global12 = getelementptr inbounds [14 x %struct.anon.0], [14 x %struct.anon.0]* @merge_tests, i64 0, i64 %idxprom, i32 0
  %3 = load i8*, i8** %q_global12, align 8, !tbaa !13
  %call13 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %3, i32 noundef 0) #6
  %4 = bitcast %struct.ossl_property_list_st* %call13 to i8*
  %call14 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.93, i64 0, i64 0), i8* noundef %4) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true9
  %q_local19 = getelementptr inbounds [14 x %struct.anon.0], [14 x %struct.anon.0]* @merge_tests, i64 0, i64 %idxprom, i32 1
  %5 = load i8*, i8** %q_local19, align 8, !tbaa !14
  %call20 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %5, i32 noundef 0) #6
  %6 = bitcast %struct.ossl_property_list_st* %call20 to i8*
  %call21 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 187, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.94, i64 0, i64 0), i8* noundef %6) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %call24 = tail call %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef %call20, %struct.ossl_property_list_st* noundef %call13) #6
  %7 = bitcast %struct.ossl_property_list_st* %call24 to i8*
  %call25 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.95, i64 0, i64 0), i8* noundef %7) #6
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %call28 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef %call24, %struct.ossl_property_list_st* noundef %call6) #6
  %call29 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.96, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call28, i32 noundef 0) #6
  %tobool30.not = icmp ne i32 %call29, 0
  %spec.select = zext i1 %tobool30.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true27, %land.lhs.true23, %land.lhs.true16, %land.lhs.true9, %land.lhs.true4, %land.lhs.true, %entry
  %q_global.0 = phi %struct.ossl_property_list_st* [ %call13, %land.lhs.true23 ], [ %call13, %land.lhs.true16 ], [ %call13, %land.lhs.true9 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call13, %land.lhs.true27 ]
  %q_local.0 = phi %struct.ossl_property_list_st* [ %call20, %land.lhs.true23 ], [ %call20, %land.lhs.true16 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call20, %land.lhs.true27 ]
  %q_combined.0 = phi %struct.ossl_property_list_st* [ %call24, %land.lhs.true23 ], [ null, %land.lhs.true16 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call24, %land.lhs.true27 ]
  %prop.0 = phi %struct.ossl_property_list_st* [ %call6, %land.lhs.true23 ], [ %call6, %land.lhs.true16 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ], [ %call6, %land.lhs.true27 ]
  %r.0 = phi i32 [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true27 ]
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q_global.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q_local.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q_combined.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %prop.0) #6
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_defn_cache() #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #6
  %1 = bitcast %struct.ossl_property_list_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.116, i64 0, i64 0), i8* noundef %1) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %call9 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #6
  %2 = bitcast %struct.ossl_property_list_st* %call9 to i8*
  %call10 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.117, i64 0, i64 0), i8* noundef %2) #6
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %call13 = tail call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), i8* noundef %1, i8* noundef %2) #6
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call16 = tail call i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), %struct.ossl_property_list_st* noundef %call5) #6
  %cmp = icmp ne i32 %call16, 0
  %conv = zext i1 %cmp to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 210, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv) #6
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %call20 = tail call i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), %struct.ossl_property_list_st* noundef %call9) #6
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv22) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %call26 = tail call %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0)) #6
  %3 = bitcast %struct.ossl_property_list_st* %call26 to i8*
  %call27 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), i8* noundef %3, i8* noundef %1) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %call30 = tail call %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef null, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #6
  %4 = bitcast %struct.ossl_property_list_st* %call30 to i8*
  %call31 = tail call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 213, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.121, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), i8* noundef %4, i8* noundef %2) #6
  %tobool32.not = icmp ne i32 %call31, 0
  %spec.select = zext i1 %tobool32.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true29, %land.lhs.true25, %land.lhs.true19, %land.lhs.true15, %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %r.0 = phi i32 [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true12 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %spec.select, %land.lhs.true29 ]
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %r.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_definition_compares(i32 noundef %n) #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %n to i64
  %defn = getelementptr inbounds [11 x %struct.anon.1], [11 x %struct.anon.1]* @definition_tests, i64 0, i64 %idxprom, i32 0
  %1 = load i8*, i8** %defn, align 8, !tbaa !3
  %call5 = tail call %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %1) #6
  %2 = bitcast %struct.ossl_property_list_st* %call5 to i8*
  %call6 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.124, i64 0, i64 0), i8* noundef %2) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %query = getelementptr inbounds [11 x %struct.anon.1], [11 x %struct.anon.1]* @definition_tests, i64 0, i64 %idxprom, i32 1
  %3 = load i8*, i8** %query, align 8, !tbaa !9
  %call11 = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %3, i32 noundef 0) #6
  %4 = bitcast %struct.ossl_property_list_st* %call11 to i8*
  %call12 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.125, i64 0, i64 0), i8* noundef %4) #6
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true8
  %call14 = tail call i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef %call11, %struct.ossl_property_list_st* noundef %call5) #6
  %e = getelementptr inbounds [11 x %struct.anon.1], [11 x %struct.anon.1]* @definition_tests, i64 0, i64 %idxprom, i32 2
  %5 = load i32, i32* %e, align 8, !tbaa !10
  %call17 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.127, i64 0, i64 0), i32 noundef %call14, i32 noundef %5) #6
  %tobool18 = icmp ne i32 %call17, 0
  %phi.cast = zext i1 %tobool18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %entry
  %q.0 = phi %struct.ossl_property_list_st* [ %call11, %land.rhs ], [ %call11, %land.lhs.true8 ], [ null, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ]
  %d.0 = phi %struct.ossl_property_list_st* [ %call5, %land.rhs ], [ %call5, %land.lhs.true8 ], [ %call5, %land.lhs.true4 ], [ null, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true4 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %d.0) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %q.0) #6
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_register_deregister() #0 {
entry:
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %0 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false
  %call6 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.081.lcssa = phi i64 [ 1, %for.body.preheader ], [ 2, %for.inc ], [ 3, %for.inc.1 ], [ 4, %for.inc.2 ]
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), i64 noundef %i.081.lcssa) #6
  br label %err

for.inc:                                          ; preds = %for.body.preheader
  %call6.1 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.139, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.1 = icmp ne i32 %call6.1, 0
  %conv.1 = zext i1 %cmp7.1 to i32
  %call8.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.1) #6
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.then10, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call6.2 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.141, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.2 = icmp ne i32 %call6.2, 0
  %conv.2 = zext i1 %cmp7.2 to i32
  %call8.2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.2) #6
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.then10, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call6.3 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 6, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.143, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.3 = icmp ne i32 %call6.3, 0
  %conv.3 = zext i1 %cmp7.3 to i32
  %call8.3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.3) #6
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %if.then10, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call23 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0)) #6
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %for.inc.3
  %call29 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0)) #6
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup, label %for.inc40

cleanup:                                          ; preds = %lor.lhs.false28.3, %for.inc40.2, %lor.lhs.false28.2, %for.inc40.1, %lor.lhs.false28.1, %for.inc40, %for.inc.3, %lor.lhs.false28
  %i.182.lcssa = phi i64 [ 1, %for.inc.3 ], [ 1, %lor.lhs.false28 ], [ 2, %for.inc40 ], [ 2, %lor.lhs.false28.1 ], [ 3, %for.inc40.1 ], [ 3, %lor.lhs.false28.2 ], [ 4, %for.inc40.2 ], [ 4, %lor.lhs.false28.3 ]
  %rem.lcssa = phi i64 [ 2, %for.inc.3 ], [ 2, %lor.lhs.false28 ], [ 1, %for.inc40 ], [ 1, %lor.lhs.false28.1 ], [ 4, %for.inc40.1 ], [ 4, %lor.lhs.false28.2 ], [ 3, %for.inc40.2 ], [ 3, %lor.lhs.false28.3 ]
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.149, i64 0, i64 0), i64 noundef %i.182.lcssa, i64 noundef %rem.lcssa) #6
  br label %err

for.inc40:                                        ; preds = %lor.lhs.false28
  %call23.1 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0)) #6
  %cmp24.1 = icmp ne i32 %call23.1, 0
  %conv25.1 = zext i1 %cmp24.1 to i32
  %call26.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv25.1) #6
  %tobool27.not.1 = icmp eq i32 %call26.1, 0
  br i1 %tobool27.not.1, label %cleanup, label %lor.lhs.false28.1

lor.lhs.false28.1:                                ; preds = %for.inc40
  %call29.1 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0)) #6
  %cmp30.1 = icmp ne i32 %call29.1, 0
  %conv31.1 = zext i1 %cmp30.1 to i32
  %call32.1 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv31.1) #6
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %cleanup, label %for.inc40.1

for.inc40.1:                                      ; preds = %lor.lhs.false28.1
  %call23.2 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0)) #6
  %cmp24.2 = icmp ne i32 %call23.2, 0
  %conv25.2 = zext i1 %cmp24.2 to i32
  %call26.2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv25.2) #6
  %tobool27.not.2 = icmp eq i32 %call26.2, 0
  br i1 %tobool27.not.2, label %cleanup, label %lor.lhs.false28.2

lor.lhs.false28.2:                                ; preds = %for.inc40.1
  %call29.2 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0)) #6
  %cmp30.2 = icmp ne i32 %call29.2, 0
  %conv31.2 = zext i1 %cmp30.2 to i32
  %call32.2 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv31.2) #6
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %cleanup, label %for.inc40.2

for.inc40.2:                                      ; preds = %lor.lhs.false28.2
  %call23.3 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0)) #6
  %cmp24.3 = icmp ne i32 %call23.3, 0
  %conv25.3 = zext i1 %cmp24.3 to i32
  %call26.3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv25.3) #6
  %tobool27.not.3 = icmp eq i32 %call26.3, 0
  br i1 %tobool27.not.3, label %cleanup, label %lor.lhs.false28.3

lor.lhs.false28.3:                                ; preds = %for.inc40.2
  %call29.3 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0)) #6
  %cmp30.3 = icmp ne i32 %call29.3, 0
  %conv31.3 = zext i1 %cmp30.3 to i32
  %call32.3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 noundef %conv31.3) #6
  %tobool33.not.3 = icmp eq i32 %call32.3, 0
  br i1 %tobool33.not.3, label %cleanup, label %for.inc40.3

for.inc40.3:                                      ; preds = %lor.lhs.false28.3
  %call43 = tail call i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef %call, i32 noundef 6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0)) #6
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.150, i64 0, i64 0), i32 noundef %conv45) #6
  %tobool47.not = icmp ne i32 %call46, 0
  %spec.select = zext i1 %tobool47.not to i32
  br label %err

err:                                              ; preds = %cleanup, %for.inc40.3, %entry, %lor.lhs.false, %if.then10
  %ret.0 = phi i32 [ 0, %if.then10 ], [ 0, %cleanup ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ %spec.select, %for.inc40.3 ]
  tail call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property() #0 {
entry:
  %result = alloca i8*, align 8
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %1 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.160, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false
  %call6 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.151, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %for.body.preheader
  %i.062.lcssa = phi i64 [ 1, %for.body.preheader ], [ 2, %for.inc ], [ 3, %for.inc.1 ], [ 4, %for.inc.2 ], [ 5, %for.inc.3 ], [ 6, %for.inc.4 ]
  tail call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), i64 noundef %i.062.lcssa) #6
  br label %err

for.inc:                                          ; preds = %for.body.preheader
  %call6.1 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.152, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.1 = icmp ne i32 %call6.1, 0
  %conv.1 = zext i1 %cmp7.1 to i32
  %call8.1 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.1) #6
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.then10, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %call6.2 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.153, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.2 = icmp ne i32 %call6.2, 0
  %conv.2 = zext i1 %cmp7.2 to i32
  %call8.2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.2) #6
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.then10, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %call6.3 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 9, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.142, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.3 = icmp ne i32 %call6.3, 0
  %conv.3 = zext i1 %cmp7.3 to i32
  %call8.3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.3) #6
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %if.then10, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %call6.4 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 3, i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.4 = icmp ne i32 %call6.4, 0
  %conv.4 = zext i1 %cmp7.4 to i32
  %call8.4 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.4) #6
  %tobool9.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool9.not.4, label %if.then10, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %call6.5 = tail call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef 6, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.155, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.156, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7.5 = icmp ne i32 %call6.5, 0
  %conv.5 = zext i1 %cmp7.5 to i32
  %call8.5 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.146, i64 0, i64 0), i32 noundef %conv.5) #6
  %tobool9.not.5 = icmp eq i32 %call8.5, 0
  br i1 %tobool9.not.5, label %if.then10, label %for.body15

for.body15:                                       ; preds = %for.inc.4, %for.inc32
  %i.163 = phi i64 [ %inc33, %for.inc32 ], [ 0, %for.inc.4 ]
  %nid17 = getelementptr inbounds [11 x %struct.anon.4], [11 x %struct.anon.4]* @test_property.queries, i64 0, i64 %i.163, i32 0
  %2 = load i32, i32* %nid17, align 8, !tbaa !15
  %prop19 = getelementptr inbounds [11 x %struct.anon.4], [11 x %struct.anon.4]* @test_property.queries, i64 0, i64 %i.163, i32 1
  %3 = load i8*, i8** %prop19, align 8, !tbaa !17
  %call20 = call i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef %call, i32 noundef %2, i8* noundef %3, i8** noundef nonnull %result) #6
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.164, i64 0, i64 0), i32 noundef %conv22) #6
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %for.body15
  %4 = load i8*, i8** %result, align 8, !tbaa !18
  %expected = getelementptr inbounds [11 x %struct.anon.4], [11 x %struct.anon.4]* @test_property.queries, i64 0, i64 %i.163, i32 2
  %5 = load i8*, i8** %expected, align 8, !tbaa !19
  %call27 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.166, i64 0, i64 0), i8* noundef %4, i8* noundef %5) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %for.inc32

cleanup:                                          ; preds = %for.body15, %lor.lhs.false25
  %add30 = add nuw nsw i64 %i.163, 1
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.147, i64 0, i64 0), i64 noundef %add30) #6
  call void @ossl_property_free(%struct.ossl_property_list_st* noundef null) #6
  br label %err

for.inc32:                                        ; preds = %lor.lhs.false25
  call void @ossl_property_free(%struct.ossl_property_list_st* noundef null) #6
  %inc33 = add nuw nsw i64 %i.163, 1
  %exitcond.not = icmp eq i64 %inc33, 11
  br i1 %exitcond.not, label %err, label %for.body15, !llvm.loop !20

err:                                              ; preds = %for.inc32, %cleanup, %entry, %lor.lhs.false, %if.then10
  %ret.0 = phi i32 [ 0, %if.then10 ], [ 0, %cleanup ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 1, %for.inc32 ]
  call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_query_cache_stochastic() #0 {
entry:
  %buf = alloca [50 x i8], align 16
  %result = alloca i8*, align 8
  %v = alloca [10001 x i32], align 16
  %0 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %0) #8
  %1 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8
  %2 = bitcast [10001 x i32]* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 40004, i8* nonnull %2) #8
  %call = tail call %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef null) #6
  %3 = bitcast %struct.ossl_method_store_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 378, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* noundef %3) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call i32 (i8*, ...) @add_property_names(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0), i8* noundef null) #7
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %err, label %for.body

for.body:                                         ; preds = %lor.lhs.false, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %lor.lhs.false ]
  %arrayidx = getelementptr inbounds [10001 x i32], [10001 x i32]* %v, i64 0, i64 %indvars.iv
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %4 = shl i32 %indvars.iv.tr, 1
  store i32 %4, i32* %arrayidx, align 4, !tbaa !22
  %5 = trunc i64 %indvars.iv to i32
  %call4 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 50, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i64 0, i64 0), i32 noundef %5) #6
  %call6 = call i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef %call, %struct.ossl_provider_st* noundef null, i32 noundef %5, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.169, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp7 to i32
  %call8 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.168, i64 0, i64 0), i32 noundef %conv) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then24, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %for.body
  %6 = bitcast i32* %arrayidx to i8*
  %call13 = call i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef %call, i32 noundef %5, i8* noundef nonnull %0, i8* noundef nonnull %6, i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 388, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.170, i64 0, i64 0), i32 noundef %conv15) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then24, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false10
  %call19 = call i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef %call, i32 noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.172, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i64 0, i64 0), i32 (i8*)* noundef nonnull @up_ref, void (i8*)* noundef nonnull @down_ref) #6
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 391, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.171, i64 0, i64 0), i32 noundef %conv21) #6
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %for.inc

if.then24:                                        ; preds = %lor.lhs.false18, %lor.lhs.false10, %for.body
  %7 = trunc i64 %indvars.iv to i32
  call void (i8*, ...) @test_note(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i64 0, i64 0), i32 noundef %7) #6
  br label %err

for.inc:                                          ; preds = %lor.lhs.false18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10001
  br i1 %exitcond.not, label %for.body29, label %for.body, !llvm.loop !23

for.body29:                                       ; preds = %for.inc, %for.body29
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body29 ], [ 1, %for.inc ]
  %errors.081 = phi i32 [ %errors.1, %for.body29 ], [ 0, %for.inc ]
  %8 = trunc i64 %indvars.iv85 to i32
  %call31 = call i32 (i8*, i64, i8*, ...) @BIO_snprintf(i8* noundef nonnull %0, i64 noundef 50, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i64 0, i64 0), i32 noundef %8) #6
  %call33 = call i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef %call, i32 noundef %8, i8* noundef nonnull %0, i8** noundef nonnull %result) #6
  %tobool34.not = icmp eq i32 %call33, 0
  %9 = load i8*, i8** %result, align 8
  %add.ptr38 = getelementptr inbounds [10001 x i32], [10001 x i32]* %v, i64 0, i64 %indvars.iv85
  %10 = bitcast i32* %add.ptr38 to i8*
  %cmp39.not = icmp ne i8* %9, %10
  %or.cond = select i1 %tobool34.not, i1 true, i1 %cmp39.not
  %inc42 = zext i1 %or.cond to i32
  %errors.1 = add nuw nsw i32 %errors.081, %inc42
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, 10001
  br i1 %exitcond88.not, label %for.end46, label %for.body29, !llvm.loop !24

for.end46:                                        ; preds = %for.body29
  %call47 = call i32 @test_int_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.176, i64 0, i64 0), i32 noundef %errors.1, i32 noundef 10) #6
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %err, label %land.rhs

land.rhs:                                         ; preds = %for.end46
  %call49 = call i32 @test_int_lt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 403, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.177, i64 0, i64 0), i32 noundef %errors.1, i32 noundef 9990) #6
  %tobool50 = icmp ne i32 %call49, 0
  %phi.cast = zext i1 %tobool50 to i32
  br label %err

err:                                              ; preds = %for.end46, %land.rhs, %entry, %lor.lhs.false, %if.then24
  %res.0 = phi i32 [ 0, %if.then24 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %for.end46 ], [ %phi.cast, %land.rhs ]
  call void @ossl_method_store_free(%struct.ossl_method_store_st* noundef %call) #6
  call void @llvm.lifetime.end.p0i8(i64 40004, i8* nonnull %2) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %0) #8
  ret i32 %res.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_fips_mode() #0 {
entry:
  %call = tail call %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() #6
  %0 = bitcast %struct.ossl_lib_ctx_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 415, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.178, i64 0, i64 0), i8* noundef %0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.180, i64 0, i64 0)) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.179, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %err, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call5 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp6 = icmp ne i32 %call5, 0
  %conv7 = zext i1 %cmp6 to i32
  %call8 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 419, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %err, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true
  %call11 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0)) #6
  %cmp12 = icmp ne i32 %call11, 0
  %conv13 = zext i1 %cmp12 to i32
  %call14 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.182, i64 0, i64 0), i32 noundef %conv13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %call17 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %err, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %call23 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i64 0, i64 0)) #6
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.184, i64 0, i64 0), i32 noundef %conv25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %err, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %call29 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 423, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %err, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %call35 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.187, i64 0, i64 0)) #6
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.186, i64 0, i64 0), i32 noundef %conv37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %err, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %call41 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %err, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %call47 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i64 0, i64 0)) #6
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.184, i64 0, i64 0), i32 noundef %conv49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %err, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %call53 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %err, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true52
  %call59 = tail call i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef %call, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0)) #6
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.182, i64 0, i64 0), i32 noundef %conv61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %err, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %call65 = tail call i32 @EVP_default_properties_enable_fips(%struct.ossl_lib_ctx_st* noundef %call, i32 noundef 1) #6
  %cmp66 = icmp ne i32 %call65, 0
  %conv67 = zext i1 %cmp66 to i32
  %call68 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.188, i64 0, i64 0), i32 noundef %conv67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %err, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %land.lhs.true64
  %call71 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp72 = icmp ne i32 %call71, 0
  %conv73 = zext i1 %cmp72 to i32
  %call74 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %err, label %land.lhs.true76

land.lhs.true76:                                  ; preds = %land.lhs.true70
  %call77 = tail call i32 @EVP_default_properties_enable_fips(%struct.ossl_lib_ctx_st* noundef %call, i32 noundef 0) #6
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.189, i64 0, i64 0), i32 noundef %conv79) #6
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %err, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true76
  %call82 = tail call i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef %call) #6
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.181, i64 0, i64 0), i32 noundef %conv84) #6
  %tobool86 = icmp ne i32 %call85, 0
  %phi.cast = zext i1 %tobool86 to i32
  br label %err

err:                                              ; preds = %if.end, %land.lhs.true, %land.lhs.true10, %land.lhs.true16, %land.lhs.true22, %land.lhs.true28, %land.lhs.true34, %land.lhs.true40, %land.lhs.true46, %land.lhs.true52, %land.lhs.true58, %land.lhs.true64, %land.lhs.true70, %land.lhs.true76, %land.rhs, %entry
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %land.lhs.true76 ], [ 0, %land.lhs.true70 ], [ 0, %land.lhs.true64 ], [ 0, %land.lhs.true58 ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true46 ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true28 ], [ 0, %land.lhs.true22 ], [ 0, %land.lhs.true16 ], [ 0, %land.lhs.true10 ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ %phi.cast, %land.rhs ]
  tail call void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef %call) #6
  ret i32 %ret.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_property_list_to_string(i32 noundef %i) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %cmp.not = icmp eq i32 %i, 16
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %in = getelementptr inbounds [17 x %struct.anon.5], [17 x %struct.anon.5]* @to_string_tests, i64 0, i64 %idxprom, i32 0
  %0 = load i8*, i8** %in, align 16, !tbaa !25
  %call = tail call %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef null, i8* noundef nonnull %0, i32 noundef 1) #6
  %1 = bitcast %struct.ossl_property_list_st* %call to i8*
  %call4 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.190, i64 0, i64 0), i8* noundef %1) #6
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %err, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %pl.0 = phi %struct.ossl_property_list_st* [ %call, %land.lhs.true ], [ null, %entry ]
  %call5 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef null, %struct.ossl_property_list_st* noundef %pl.0, i8* noundef null, i64 noundef 0) #6
  %call6 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 noundef %call5, i64 noundef 0) #6
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %err, label %if.end9

if.end9:                                          ; preds = %if.end
  %call10 = tail call i8* @CRYPTO_malloc(i64 noundef %call5, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 475) #6
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 476, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0), i8* noundef %call10) #6
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call13 = tail call i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef null, %struct.ossl_property_list_st* noundef %pl.0, i8* noundef %call10, i64 noundef %call5) #6
  %call14 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 479, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.193, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i64 0, i64 0), i64 noundef %call13, i64 noundef %call5) #6
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %out = getelementptr inbounds [17 x %struct.anon.5], [17 x %struct.anon.5]* @to_string_tests, i64 0, i64 %idxprom, i32 1
  %2 = load i8*, i8** %out, align 8, !tbaa !27
  %call19 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.194, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0), i8* noundef %2, i8* noundef %call10) #6
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %err, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %call25 = tail call i64 @strlen(i8* noundef %2) #9
  %add = add i64 %call25, 1
  %call26 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.191, i64 0, i64 0), i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.195, i64 0, i64 0), i64 noundef %call5, i64 noundef %add) #6
  %tobool27.not = icmp ne i32 %call26, 0
  %spec.select = zext i1 %tobool27.not to i32
  br label %err

err:                                              ; preds = %lor.lhs.false21, %if.end9, %lor.lhs.false, %lor.lhs.false16, %if.end, %land.lhs.true
  %ret.0 = phi i32 [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false ], [ 0, %if.end9 ], [ 0, %if.end ], [ 0, %land.lhs.true ], [ %spec.select, %lor.lhs.false21 ]
  %pl.1 = phi %struct.ossl_property_list_st* [ %pl.0, %lor.lhs.false16 ], [ %pl.0, %lor.lhs.false ], [ %pl.0, %if.end9 ], [ %pl.0, %if.end ], [ %call, %land.lhs.true ], [ %pl.0, %lor.lhs.false21 ]
  %buf.0 = phi i8* [ %call10, %lor.lhs.false16 ], [ %call10, %lor.lhs.false ], [ %call10, %if.end9 ], [ null, %if.end ], [ null, %land.lhs.true ], [ %call10, %lor.lhs.false21 ]
  tail call void @CRYPTO_free(i8* noundef %buf.0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 486) #6
  tail call void @ossl_property_free(%struct.ossl_property_list_st* noundef %pl.1) #6
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_method_store_st* @ossl_method_store_new(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_property_value(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @ossl_method_store_free(%struct.ossl_method_store_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_property_names(i8* noundef %n, ...) unnamed_addr #0 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8
  call void @llvm.va_start(i8* nonnull %0)
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 0
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 2
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, i32 3
  br label %do.body

do.body:                                          ; preds = %vaarg.end, %entry
  %n.addr.0 = phi i8* [ %n, %entry ], [ %5, %vaarg.end ]
  %res.0 = phi i32 [ 1, %entry ], [ %spec.select, %vaarg.end ]
  %call = call i32 @ossl_property_name(%struct.ossl_lib_ctx_st* noundef null, i8* noundef %n.addr.0, i32 noundef 1) #6
  %call2 = call i32 @test_int_ne(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef 25, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %res.0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %do.body
  %reg_save_area = load i8*, i8** %1, align 16
  %2 = zext i32 %gp_offset to i64
  %3 = getelementptr i8, i8* %reg_save_area, i64 %2
  %4 = add nuw nsw i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %do.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**
  %5 = load i8*, i8** %vaarg.addr, align 8
  %cmp.not = icmp eq i8* %5, null
  br i1 %cmp.not, label %do.end, label %do.body, !llvm.loop !28

do.end:                                           ; preds = %vaarg.end
  call void @llvm.va_end(i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8
  ret i32 %spec.select
}

declare dso_local %struct.ossl_property_list_st* @ossl_parse_query(%struct.ossl_lib_ctx_st* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_property_match_count(%struct.ossl_property_list_st* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #1

declare dso_local void @ossl_property_free(%struct.ossl_property_list_st* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

declare dso_local %struct.ossl_property_list_st* @ossl_parse_property(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_property_list_st* @ossl_property_merge(%struct.ossl_property_list_st* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_prop_defn_set(%struct.ossl_lib_ctx_st* noundef, i8* noundef, %struct.ossl_property_list_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_property_list_st* @ossl_prop_defn_get(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_method_store_add(%struct.ossl_method_store_st* noundef, %struct.ossl_provider_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @up_ref(i8* nocapture noundef readnone %p) #4 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @down_ref(i8* nocapture noundef %p) #4 {
entry:
  ret void
}

declare dso_local void @test_note(i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @ossl_method_store_remove(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_method_store_fetch(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @BIO_snprintf(i8* noundef, i64 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @ossl_method_store_cache_set(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8* noundef, i32 (i8*)* noundef, void (i8*)* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_method_store_cache_get(%struct.ossl_method_store_st* noundef, i32 noundef, i8* noundef, i8** noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.ossl_lib_ctx_st* @OSSL_LIB_CTX_new() local_unnamed_addr #1

declare dso_local i32 @EVP_set_default_properties(%struct.ossl_lib_ctx_st* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_default_properties_is_fips_enabled(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i32 @EVP_default_properties_enable_fips(%struct.ossl_lib_ctx_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @OSSL_LIB_CTX_free(%struct.ossl_lib_ctx_st* noundef) local_unnamed_addr #1

declare dso_local i64 @ossl_property_list_to_string(%struct.ossl_lib_ctx_st* noundef, %struct.ossl_property_list_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i8* @CRYPTO_malloc(i64 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #5

declare dso_local void @CRYPTO_free(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !5, i64 0}
!4 = !{!"", !5, i64 0, !5, i64 8, !8, i64 16}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"int", !6, i64 0}
!9 = !{!4, !5, i64 8}
!10 = !{!4, !8, i64 16}
!11 = !{!12, !5, i64 16}
!12 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16}
!13 = !{!12, !5, i64 0}
!14 = !{!12, !5, i64 8}
!15 = !{!16, !8, i64 0}
!16 = !{!"", !8, i64 0, !5, i64 8, !5, i64 16}
!17 = !{!16, !5, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!16, !5, i64 16}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!8, !8, i64 0}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{!26, !5, i64 0}
!26 = !{!"", !5, i64 0, !5, i64 8}
!27 = !{!26, !5, i64 8}
!28 = distinct !{!28, !21}
