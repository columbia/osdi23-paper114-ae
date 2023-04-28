; ModuleID = 'test/test_test.c'
source_filename = "test/test_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.bignum_st = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test_int\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"test_uint\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"test_char\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"test_uchar\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test_long\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"test_ulong\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"test_size_t\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"test_time_t\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"test_pointer\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"test_bool\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"test_string\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"test_memory\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"test_memory_overflow\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"test_bignum\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"test_long_bignum\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"test_long_output\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"test_messages\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"test_single_eval\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"test_output\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"test_bn_output\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"test_skip_one\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"test_skip_null\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"test_skip_many\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"TEST_int_eq(1, 1)\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"test/test_test.c\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"TEST_int_eq(1, -1)\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"TEST_int_ne(1, 2)\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"TEST_int_ne(3, 3)\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"TEST_int_lt(4, 9)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"TEST_int_lt(9, 4)\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"TEST_int_le(4, 9)\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"TEST_int_le(5, 5)\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"TEST_int_le(9, 4)\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"TEST_int_gt(8, 5)\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"TEST_int_gt(5, 8)\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"TEST_int_ge(8, 5)\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"TEST_int_ge(6, 6)\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"TEST_int_ge(5, 8)\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [19 x i8] c"# FATAL: %s != %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"TEST_uint_eq(3u, 3u)\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"3u\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"TEST_uint_eq(3u, 5u)\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"5u\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"TEST_uint_ne(4u, 2u)\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"4u\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"2u\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"TEST_uint_ne(6u, 6u)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"6u\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"TEST_uint_lt(5u, 9u)\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"9u\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"TEST_uint_lt(9u, 5u)\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"TEST_uint_le(5u, 9u)\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"TEST_uint_le(7u, 7u)\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"7u\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"TEST_uint_le(9u, 5u)\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"TEST_uint_gt(11u, 1u)\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"11u\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"1u\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"TEST_uint_gt(1u, 11u)\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"TEST_uint_ge(11u, 1u)\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"TEST_uint_ge(6u, 6u)\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"TEST_uint_ge(1u, 11u)\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"TEST_char_eq('a', 'a')\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"'a'\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"TEST_char_eq('a', 'A')\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"'A'\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"TEST_char_ne('a', 'c')\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"'c'\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"TEST_char_ne('e', 'e')\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"'e'\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"TEST_char_lt('i', 'x')\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"'i'\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"'x'\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"TEST_char_lt('x', 'i')\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"TEST_char_le('i', 'x')\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"TEST_char_le('n', 'n')\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"'n'\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"TEST_char_le('x', 'i')\00", align 1
@.str.87 = private unnamed_addr constant [23 x i8] c"TEST_char_gt('w', 'n')\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"'w'\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"TEST_char_gt('n', 'w')\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"TEST_char_ge('w', 'n')\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"TEST_char_ge('p', 'p')\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"'p'\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"TEST_char_ge('n', 'w')\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"TEST_uchar_eq(49, 49)\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"49\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"TEST_uchar_eq(49, 60)\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"60\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"TEST_uchar_ne(50, 2)\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"TEST_uchar_ne(66, 66)\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"TEST_uchar_lt(60, 80)\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"80\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"TEST_uchar_lt(80, 60)\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"TEST_uchar_le(60, 80)\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"TEST_uchar_le(78, 78)\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"78\00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"TEST_uchar_le(80, 60)\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"TEST_uchar_gt(88, 37)\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"88\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"37\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"TEST_uchar_gt(37, 88)\00", align 1
@.str.113 = private unnamed_addr constant [22 x i8] c"TEST_uchar_ge(88, 37)\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"TEST_uchar_ge(66, 66)\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"TEST_uchar_ge(37, 88)\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"TEST_long_eq(123l, 123l)\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"123l\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"TEST_long_eq(123l, -123l)\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"-123l\00", align 1
@.str.120 = private unnamed_addr constant [25 x i8] c"TEST_long_ne(123l, 500l)\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"500l\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"TEST_long_ne(1000l, 1000l)\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"1000l\00", align 1
@.str.124 = private unnamed_addr constant [33 x i8] c"TEST_long_lt(-8923l, 102934563l)\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"-8923l\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"102934563l\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"TEST_long_lt(102934563l, -8923l)\00", align 1
@.str.128 = private unnamed_addr constant [33 x i8] c"TEST_long_le(-8923l, 102934563l)\00", align 1
@.str.129 = private unnamed_addr constant [29 x i8] c"TEST_long_le(12345l, 12345l)\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"12345l\00", align 1
@.str.131 = private unnamed_addr constant [33 x i8] c"TEST_long_le(102934563l, -8923l)\00", align 1
@.str.132 = private unnamed_addr constant [32 x i8] c"TEST_long_gt(84325677l, 12345l)\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"84325677l\00", align 1
@.str.134 = private unnamed_addr constant [32 x i8] c"TEST_long_gt(12345l, 84325677l)\00", align 1
@.str.135 = private unnamed_addr constant [32 x i8] c"TEST_long_ge(84325677l, 12345l)\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"TEST_long_ge(465869l, 465869l)\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"465869l\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"TEST_long_ge(12345l, 84325677l)\00", align 1
@.str.139 = private unnamed_addr constant [28 x i8] c"TEST_ulong_eq(919ul, 919ul)\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"919ul\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"TEST_ulong_eq(919ul, 10234ul)\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"10234ul\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"TEST_ulong_ne(8190ul, 66ul)\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"8190ul\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"66ul\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"TEST_ulong_ne(10555ul, 10555ul)\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"10555ul\00", align 1
@.str.148 = private unnamed_addr constant [34 x i8] c"TEST_ulong_lt(10234ul, 1000000ul)\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"1000000ul\00", align 1
@.str.150 = private unnamed_addr constant [34 x i8] c"TEST_ulong_lt(1000000ul, 10234ul)\00", align 1
@.str.151 = private unnamed_addr constant [34 x i8] c"TEST_ulong_le(10234ul, 1000000ul)\00", align 1
@.str.152 = private unnamed_addr constant [34 x i8] c"TEST_ulong_le(100000ul, 100000ul)\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"100000ul\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"TEST_ulong_le(1000000ul, 10234ul)\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"TEST_ulong_gt(100000000ul, 22ul)\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"100000000ul\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"22ul\00", align 1
@.str.158 = private unnamed_addr constant [33 x i8] c"TEST_ulong_gt(22ul, 100000000ul)\00", align 1
@.str.159 = private unnamed_addr constant [33 x i8] c"TEST_ulong_ge(100000000ul, 22ul)\00", align 1
@.str.160 = private unnamed_addr constant [32 x i8] c"TEST_ulong_ge(10555ul, 10555ul)\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"TEST_ulong_ge(22ul, 100000000ul)\00", align 1
@.str.162 = private unnamed_addr constant [39 x i8] c"TEST_size_t_eq((size_t)10, (size_t)10)\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"(size_t)10\00", align 1
@.str.164 = private unnamed_addr constant [39 x i8] c"TEST_size_t_eq((size_t)10, (size_t)12)\00", align 1
@.str.165 = private unnamed_addr constant [11 x i8] c"(size_t)12\00", align 1
@.str.166 = private unnamed_addr constant [39 x i8] c"TEST_size_t_ne((size_t)10, (size_t)12)\00", align 1
@.str.167 = private unnamed_addr constant [39 x i8] c"TEST_size_t_ne((size_t)24, (size_t)24)\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"(size_t)24\00", align 1
@.str.169 = private unnamed_addr constant [39 x i8] c"TEST_size_t_lt((size_t)30, (size_t)88)\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"(size_t)30\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"(size_t)88\00", align 1
@.str.172 = private unnamed_addr constant [39 x i8] c"TEST_size_t_lt((size_t)88, (size_t)30)\00", align 1
@.str.173 = private unnamed_addr constant [39 x i8] c"TEST_size_t_le((size_t)30, (size_t)88)\00", align 1
@.str.174 = private unnamed_addr constant [39 x i8] c"TEST_size_t_le((size_t)33, (size_t)33)\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"(size_t)33\00", align 1
@.str.176 = private unnamed_addr constant [39 x i8] c"TEST_size_t_le((size_t)88, (size_t)30)\00", align 1
@.str.177 = private unnamed_addr constant [39 x i8] c"TEST_size_t_gt((size_t)52, (size_t)33)\00", align 1
@.str.178 = private unnamed_addr constant [11 x i8] c"(size_t)52\00", align 1
@.str.179 = private unnamed_addr constant [39 x i8] c"TEST_size_t_gt((size_t)33, (size_t)52)\00", align 1
@.str.180 = private unnamed_addr constant [39 x i8] c"TEST_size_t_ge((size_t)52, (size_t)33)\00", align 1
@.str.181 = private unnamed_addr constant [39 x i8] c"TEST_size_t_ge((size_t)38, (size_t)38)\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"(size_t)38\00", align 1
@.str.183 = private unnamed_addr constant [39 x i8] c"TEST_size_t_ge((size_t)33, (size_t)52)\00", align 1
@.str.184 = private unnamed_addr constant [39 x i8] c"TEST_time_t_eq((time_t)10, (time_t)10)\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"(time_t)10\00", align 1
@.str.186 = private unnamed_addr constant [39 x i8] c"TEST_time_t_eq((time_t)10, (time_t)12)\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"(time_t)12\00", align 1
@.str.188 = private unnamed_addr constant [39 x i8] c"TEST_time_t_ne((time_t)10, (time_t)12)\00", align 1
@.str.189 = private unnamed_addr constant [39 x i8] c"TEST_time_t_ne((time_t)24, (time_t)24)\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"(time_t)24\00", align 1
@.str.191 = private unnamed_addr constant [39 x i8] c"TEST_time_t_lt((time_t)30, (time_t)88)\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"(time_t)30\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"(time_t)88\00", align 1
@.str.194 = private unnamed_addr constant [39 x i8] c"TEST_time_t_lt((time_t)88, (time_t)30)\00", align 1
@.str.195 = private unnamed_addr constant [39 x i8] c"TEST_time_t_le((time_t)30, (time_t)88)\00", align 1
@.str.196 = private unnamed_addr constant [39 x i8] c"TEST_time_t_le((time_t)33, (time_t)33)\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"(time_t)33\00", align 1
@.str.198 = private unnamed_addr constant [39 x i8] c"TEST_time_t_le((time_t)88, (time_t)30)\00", align 1
@.str.199 = private unnamed_addr constant [39 x i8] c"TEST_time_t_gt((time_t)52, (time_t)33)\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"(time_t)52\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"TEST_time_t_gt((time_t)33, (time_t)52)\00", align 1
@.str.202 = private unnamed_addr constant [39 x i8] c"TEST_time_t_ge((time_t)52, (time_t)33)\00", align 1
@.str.203 = private unnamed_addr constant [39 x i8] c"TEST_time_t_ge((time_t)38, (time_t)38)\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"(time_t)38\00", align 1
@.str.205 = private unnamed_addr constant [39 x i8] c"TEST_time_t_ge((time_t)33, (time_t)52)\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"TEST_ptr(&y)\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"&y\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"TEST_ptr(NULL)\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"TEST_ptr_null(&y)\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"TEST_ptr_null(NULL)\00", align 1
@.str.212 = private unnamed_addr constant [24 x i8] c"TEST_ptr_eq(NULL, NULL)\00", align 1
@.str.213 = private unnamed_addr constant [22 x i8] c"TEST_ptr_eq(NULL, &y)\00", align 1
@.str.214 = private unnamed_addr constant [22 x i8] c"TEST_ptr_eq(&y, NULL)\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"TEST_ptr_eq(&y, &x)\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"&x\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"TEST_ptr_eq(&x, &x)\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"TEST_ptr_ne(NULL, NULL)\00", align 1
@.str.219 = private unnamed_addr constant [22 x i8] c"TEST_ptr_ne(NULL, &y)\00", align 1
@.str.220 = private unnamed_addr constant [22 x i8] c"TEST_ptr_ne(&y, NULL)\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"TEST_ptr_ne(&y, &x)\00", align 1
@.str.222 = private unnamed_addr constant [20 x i8] c"TEST_ptr_ne(&x, &x)\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"TEST_true(0)\00", align 1
@.str.224 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"TEST_true(1)\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"TEST_false(0)\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"TEST_false(1)\00", align 1
@test_string.buf = internal global [4 x i8] c"abc\00", align 1
@.str.228 = private unnamed_addr constant [24 x i8] c"TEST_str_eq(NULL, NULL)\00", align 1
@.str.229 = private unnamed_addr constant [24 x i8] c"TEST_str_eq(\22abc\22, buf)\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"\22abc\22\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.232 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.233 = private unnamed_addr constant [25 x i8] c"TEST_str_eq(\22abc\22, NULL)\00", align 1
@.str.234 = private unnamed_addr constant [23 x i8] c"TEST_str_eq(\22abc\22, \22\22)\00", align 1
@.str.235 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.236 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.237 = private unnamed_addr constant [23 x i8] c"TEST_str_eq(NULL, buf)\00", align 1
@.str.238 = private unnamed_addr constant [24 x i8] c"TEST_str_ne(NULL, NULL)\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"TEST_str_eq(\22\22, NULL)\00", align 1
@.str.240 = private unnamed_addr constant [22 x i8] c"TEST_str_eq(NULL, \22\22)\00", align 1
@.str.241 = private unnamed_addr constant [20 x i8] c"TEST_str_ne(\22\22, \22\22)\00", align 1
@.str.242 = private unnamed_addr constant [39 x i8] c"TEST_str_eq(\22\\1\\2\\3\\4\\5\22, \22\\1x\\3\\6\\5\22)\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"\22\\1\\2\\3\\4\\5\22\00", align 1
@.str.244 = private unnamed_addr constant [12 x i8] c"\22\\1x\\3\\6\\5\22\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"\01\02\03\04\05\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"\01x\03\06\05\00", align 1
@.str.247 = private unnamed_addr constant [24 x i8] c"TEST_str_ne(\22abc\22, buf)\00", align 1
@.str.248 = private unnamed_addr constant [25 x i8] c"TEST_str_ne(\22abc\22, NULL)\00", align 1
@.str.249 = private unnamed_addr constant [23 x i8] c"TEST_str_ne(NULL, buf)\00", align 1
@.str.250 = private unnamed_addr constant [37 x i8] c"TEST_str_eq(\22abcdef\22, \22abcdefghijk\22)\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"\22abcdef\22\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"\22abcdefghijk\22\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"abcdefghijk\00", align 1
@test_memory.buf = internal global [4 x i8] c"xyz\00", align 1
@.str.255 = private unnamed_addr constant [30 x i8] c"TEST_mem_eq(NULL, 0, NULL, 0)\00", align 1
@.str.256 = private unnamed_addr constant [30 x i8] c"TEST_mem_eq(NULL, 1, NULL, 2)\00", align 1
@.str.257 = private unnamed_addr constant [31 x i8] c"TEST_mem_eq(NULL, 0, \22xyz\22, 3)\00", align 1
@.str.258 = private unnamed_addr constant [6 x i8] c"\22xyz\22\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.260 = private unnamed_addr constant [31 x i8] c"TEST_mem_eq(NULL, 7, \22abc\22, 3)\00", align 1
@.str.261 = private unnamed_addr constant [30 x i8] c"TEST_mem_ne(NULL, 0, NULL, 0)\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"TEST_mem_eq(NULL, 0, \22\22, 0)\00", align 1
@.str.263 = private unnamed_addr constant [28 x i8] c"TEST_mem_eq(\22\22, 0, NULL, 0)\00", align 1
@.str.264 = private unnamed_addr constant [26 x i8] c"TEST_mem_ne(\22\22, 0, \22\22, 0)\00", align 1
@.str.265 = private unnamed_addr constant [31 x i8] c"TEST_mem_eq(\22xyz\22, 3, NULL, 0)\00", align 1
@.str.266 = private unnamed_addr constant [40 x i8] c"TEST_mem_eq(\22xyz\22, 3, buf, sizeof(buf))\00", align 1
@.str.267 = private unnamed_addr constant [40 x i8] c"TEST_mem_eq(\22xyz\22, 4, buf, sizeof(buf))\00", align 1
@.str.268 = private unnamed_addr constant [53 x i8] c"1234567890123456789012345678901234567890123456789012\00", align 1
@.str.269 = private unnamed_addr constant [53 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.270 = private unnamed_addr constant [40 x i8] c"TEST_mem_eq(p, strlen(p), q, strlen(q))\00", align 1
@.str.271 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.272 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.273 = private unnamed_addr constant [35 x i8] c"TEST_int_eq(BN_dec2bn(&a, \220\22), 1)\00", align 1
@.str.274 = private unnamed_addr constant [19 x i8] c"BN_dec2bn(&a, \220\22)\00", align 1
@.str.275 = private unnamed_addr constant [22 x i8] c"TEST_BN_eq_word(a, 0)\00", align 1
@.str.276 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.277 = private unnamed_addr constant [23 x i8] c"TEST_BN_eq_word(a, 30)\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.279 = private unnamed_addr constant [26 x i8] c"TEST_BN_abs_eq_word(a, 0)\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"TEST_BN_eq_one(a)\00", align 1
@.str.281 = private unnamed_addr constant [19 x i8] c"TEST_BN_eq_zero(a)\00", align 1
@.str.282 = private unnamed_addr constant [19 x i8] c"TEST_BN_ne_zero(a)\00", align 1
@.str.283 = private unnamed_addr constant [19 x i8] c"TEST_BN_le_zero(a)\00", align 1
@.str.284 = private unnamed_addr constant [19 x i8] c"TEST_BN_lt_zero(a)\00", align 1
@.str.285 = private unnamed_addr constant [19 x i8] c"TEST_BN_ge_zero(a)\00", align 1
@.str.286 = private unnamed_addr constant [19 x i8] c"TEST_BN_gt_zero(a)\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"TEST_BN_even(a)\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"TEST_BN_odd(a)\00", align 1
@.str.289 = private unnamed_addr constant [17 x i8] c"TEST_BN_eq(b, c)\00", align 1
@.str.290 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.291 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.292 = private unnamed_addr constant [17 x i8] c"TEST_BN_eq(a, b)\00", align 1
@.str.293 = private unnamed_addr constant [20 x i8] c"TEST_BN_ne(NULL, c)\00", align 1
@.str.294 = private unnamed_addr constant [35 x i8] c"TEST_int_eq(BN_dec2bn(&b, \221\22), 1)\00", align 1
@.str.295 = private unnamed_addr constant [19 x i8] c"BN_dec2bn(&b, \221\22)\00", align 1
@.str.296 = private unnamed_addr constant [22 x i8] c"TEST_BN_eq_word(b, 1)\00", align 1
@.str.297 = private unnamed_addr constant [18 x i8] c"TEST_BN_eq_one(b)\00", align 1
@.str.298 = private unnamed_addr constant [26 x i8] c"TEST_BN_abs_eq_word(b, 0)\00", align 1
@.str.299 = private unnamed_addr constant [26 x i8] c"TEST_BN_abs_eq_word(b, 1)\00", align 1
@.str.300 = private unnamed_addr constant [19 x i8] c"TEST_BN_eq_zero(b)\00", align 1
@.str.301 = private unnamed_addr constant [19 x i8] c"TEST_BN_ne_zero(b)\00", align 1
@.str.302 = private unnamed_addr constant [19 x i8] c"TEST_BN_le_zero(b)\00", align 1
@.str.303 = private unnamed_addr constant [19 x i8] c"TEST_BN_lt_zero(b)\00", align 1
@.str.304 = private unnamed_addr constant [19 x i8] c"TEST_BN_ge_zero(b)\00", align 1
@.str.305 = private unnamed_addr constant [19 x i8] c"TEST_BN_gt_zero(b)\00", align 1
@.str.306 = private unnamed_addr constant [16 x i8] c"TEST_BN_even(b)\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"TEST_BN_odd(b)\00", align 1
@.str.308 = private unnamed_addr constant [45 x i8] c"TEST_int_eq(BN_dec2bn(&c, \22-334739439\22), 10)\00", align 1
@.str.309 = private unnamed_addr constant [28 x i8] c"BN_dec2bn(&c, \22-334739439\22)\00", align 1
@.str.310 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.311 = private unnamed_addr constant [11 x i8] c"-334739439\00", align 1
@.str.312 = private unnamed_addr constant [30 x i8] c"TEST_BN_eq_word(c, 334739439)\00", align 1
@.str.313 = private unnamed_addr constant [10 x i8] c"334739439\00", align 1
@.str.314 = private unnamed_addr constant [34 x i8] c"TEST_BN_abs_eq_word(c, 334739439)\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"TEST_BN_eq_zero(c)\00", align 1
@.str.316 = private unnamed_addr constant [19 x i8] c"TEST_BN_ne_zero(c)\00", align 1
@.str.317 = private unnamed_addr constant [19 x i8] c"TEST_BN_le_zero(c)\00", align 1
@.str.318 = private unnamed_addr constant [19 x i8] c"TEST_BN_lt_zero(c)\00", align 1
@.str.319 = private unnamed_addr constant [19 x i8] c"TEST_BN_ge_zero(c)\00", align 1
@.str.320 = private unnamed_addr constant [19 x i8] c"TEST_BN_gt_zero(c)\00", align 1
@.str.321 = private unnamed_addr constant [16 x i8] c"TEST_BN_even(c)\00", align 1
@.str.322 = private unnamed_addr constant [15 x i8] c"TEST_BN_odd(c)\00", align 1
@.str.323 = private unnamed_addr constant [17 x i8] c"TEST_BN_eq(a, a)\00", align 1
@.str.324 = private unnamed_addr constant [17 x i8] c"TEST_BN_ne(a, a)\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"TEST_BN_ne(a, b)\00", align 1
@.str.326 = private unnamed_addr constant [17 x i8] c"TEST_BN_lt(a, c)\00", align 1
@.str.327 = private unnamed_addr constant [17 x i8] c"TEST_BN_lt(c, b)\00", align 1
@.str.328 = private unnamed_addr constant [17 x i8] c"TEST_BN_lt(b, c)\00", align 1
@.str.329 = private unnamed_addr constant [17 x i8] c"TEST_BN_le(a, c)\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"TEST_BN_le(c, b)\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"TEST_BN_le(b, c)\00", align 1
@.str.332 = private unnamed_addr constant [17 x i8] c"TEST_BN_gt(a, c)\00", align 1
@.str.333 = private unnamed_addr constant [17 x i8] c"TEST_BN_gt(c, b)\00", align 1
@.str.334 = private unnamed_addr constant [17 x i8] c"TEST_BN_gt(b, c)\00", align 1
@.str.335 = private unnamed_addr constant [17 x i8] c"TEST_BN_ge(a, c)\00", align 1
@.str.336 = private unnamed_addr constant [17 x i8] c"TEST_BN_ge(c, b)\00", align 1
@.str.337 = private unnamed_addr constant [17 x i8] c"TEST_BN_ge(b, c)\00", align 1
@__const.test_long_bignum.as = private unnamed_addr constant [319 x i8] c"123456789012345678901234567890123456789012345678901212345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012123456789012345678901234567890123456789012345678901212345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789012FFFFFF\00", align 16
@__const.test_long_bignum.cs = private unnamed_addr constant [66 x i8] c"-123456789012345678901234567890123456789012345678901234567890ABCD\00", align 16
@__const.test_long_bignum.ds = private unnamed_addr constant [65 x i8] c"-23456789A123456789B123456789C123456789D123456789E123456789FABCD\00", align 16
@.str.338 = private unnamed_addr constant [18 x i8] c"BN_hex2bn(&a, as)\00", align 1
@.str.339 = private unnamed_addr constant [18 x i8] c"BN_hex2bn(&b, bs)\00", align 1
@.str.340 = private unnamed_addr constant [18 x i8] c"BN_hex2bn(&c, cs)\00", align 1
@.str.341 = private unnamed_addr constant [18 x i8] c"BN_hex2bn(&d, ds)\00", align 1
@.str.342 = private unnamed_addr constant [17 x i8] c"TEST_BN_eq(b, a)\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"TEST_BN_eq(b, NULL)\00", align 1
@.str.344 = private unnamed_addr constant [20 x i8] c"TEST_BN_eq(NULL, a)\00", align 1
@.str.345 = private unnamed_addr constant [20 x i8] c"TEST_BN_ne(a, NULL)\00", align 1
@.str.346 = private unnamed_addr constant [17 x i8] c"TEST_BN_eq(c, d)\00", align 1
@.str.347 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.348 = private unnamed_addr constant [53 x i8] c"1234567890klmnopqrs01234567890EFGHIJKLM0123456789XYZ\00", align 1
@.str.349 = private unnamed_addr constant [157 x i8] c"1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY+12345678901234567890123ABC78901234567890123456789012\00", align 1
@.str.350 = private unnamed_addr constant [209 x i8] c"1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY-1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@.str.351 = private unnamed_addr constant [18 x i8] c"TEST_str_eq(p, q)\00", align 1
@.str.352 = private unnamed_addr constant [18 x i8] c"TEST_str_eq(q, r)\00", align 1
@.str.353 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.354 = private unnamed_addr constant [18 x i8] c"TEST_str_eq(r, s)\00", align 1
@.str.355 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.356 = private unnamed_addr constant [40 x i8] c"TEST_mem_eq(r, strlen(r), s, strlen(s))\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"This is an %s message.\00", align 1
@.str.358 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.359 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.360 = private unnamed_addr constant [4 x i8] c"i++\00", align 1
@.str.361 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.362 = private unnamed_addr constant [4 x i8] c"++i\00", align 1
@.str.363 = private unnamed_addr constant [4 x i8] c"--i\00", align 1
@.str.364 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.365 = private unnamed_addr constant [7 x i8] c"i *= 2\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"l--\00", align 1
@.str.367 = private unnamed_addr constant [7 x i8] c"-9000L\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"++l\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"l /= 2\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c"--l\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"-4500L\00", align 1
@.str.372 = private unnamed_addr constant [4 x i8] c"++c\00", align 1
@.str.373 = private unnamed_addr constant [4 x i8] c"c--\00", align 1
@.str.374 = private unnamed_addr constant [4 x i8] c"'d'\00", align 1
@.str.375 = private unnamed_addr constant [4 x i8] c"--c\00", align 1
@.str.376 = private unnamed_addr constant [4 x i8] c"'b'\00", align 1
@.str.377 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.378 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.379 = private unnamed_addr constant [5 x i8] c"uc++\00", align 1
@.str.380 = private unnamed_addr constant [8 x i8] c"uc /= 2\00", align 1
@.str.381 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"ul ^= 1\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"501\00", align 1
@.str.384 = private unnamed_addr constant [4 x i8] c"502\00", align 1
@.str.385 = private unnamed_addr constant [8 x i8] c"ul ^= 3\00", align 1
@.str.386 = private unnamed_addr constant [16 x i8] c"ul = ul * 3 - 6\00", align 1
@.str.387 = private unnamed_addr constant [5 x i8] c"1500\00", align 1
@.str.388 = private unnamed_addr constant [12 x i8] c"(--i, st++)\00", align 1
@.str.389 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.390 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.391 = private unnamed_addr constant [5 x i8] c"1235\00", align 1
@.str.392 = private unnamed_addr constant [4 x i8] c"p++\00", align 1
@.str.393 = private unnamed_addr constant [8 x i8] c"buf + 2\00", align 1
@.str.394 = private unnamed_addr constant [4 x i8] c"++p\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"p -= 2\00", align 1
@.str.396 = private unnamed_addr constant [8 x i8] c"buf + 1\00", align 1
@.str.397 = private unnamed_addr constant [9 x i8] c"p = NULL\00", align 1
@.str.398 = private unnamed_addr constant [19 x i8] c"p = &(\22123456\22[1])\00", align 1
@.str.399 = private unnamed_addr constant [8 x i8] c"\2223456\22\00", align 1
@.str.400 = private unnamed_addr constant [7 x i8] c"123456\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"23456\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"\223456\22\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"3456\00", align 1
@.str.404 = private unnamed_addr constant [6 x i8] c"\22456\22\00", align 1
@.str.405 = private unnamed_addr constant [4 x i8] c"456\00", align 1
@.str.406 = private unnamed_addr constant [4 x i8] c"--p\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"p--\00", align 1
@__const.test_output.s = private unnamed_addr constant [105 x i8] c"1234567890123456789012345678901234567890123456789012abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str.408 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@bn_output_tests = internal unnamed_addr constant [4 x i8*] [i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.410, i32 0, i32 0), i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.411, i32 0, i32 0)], align 16
@.str.409 = private unnamed_addr constant [34 x i8] c"BN_hex2bn(&b, bn_output_tests[n])\00", align 1
@.str.410 = private unnamed_addr constant [10 x i8] c"-12345678\00", align 1
@.str.411 = private unnamed_addr constant [111 x i8] c"12345678901234567890123456789012345678901234567890121234567890123456789012345678901234567890123456789013987657\00", align 16
@.str.412 = private unnamed_addr constant [10 x i8] c"skip test\00", align 1
@.str.413 = private unnamed_addr constant [15 x i8] c"skip tests: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_int) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_uint) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_char) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_uchar) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_long) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_ulong) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_size_t) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_time_t) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_pointer) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 ()* noundef nonnull @test_bool) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 ()* noundef nonnull @test_string) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 ()* noundef nonnull @test_memory) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 ()* noundef nonnull @test_memory_overflow) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 ()* noundef nonnull @test_bignum) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 ()* noundef nonnull @test_long_bignum) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 ()* noundef nonnull @test_long_output) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 ()* noundef nonnull @test_messages) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 ()* noundef nonnull @test_single_eval) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 ()* noundef nonnull @test_output) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 (i32)* noundef nonnull @test_bn_output, i32 noundef 4, i32 noundef 1) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 ()* noundef nonnull @test_skip_one) #5
  tail call void @add_test(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 ()* noundef nonnull @test_skip_null) #5
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 (i32)* noundef nonnull @test_skip_many, i32 noundef 3, i32 noundef 1) #5
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_int() #0 {
entry:
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1, i32 noundef 1) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 noundef 1, i32 noundef -1) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1, i32 noundef 2) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i32 noundef 3, i32 noundef 3) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_int_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 4, i32 noundef 9) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_int_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef 9, i32 noundef 4) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32 noundef 4, i32 noundef 9) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 5, i32 noundef 5) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef 9, i32 noundef 4) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 8, i32 noundef 5) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef 5, i32 noundef 8) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 8, i32 noundef 5) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), i32 noundef 6, i32 noundef 6) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_int_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 noundef 5, i32 noundef 8) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uint() #0 {
entry:
  %call = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32 noundef 3, i32 noundef 3) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_uint_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i32 noundef 3, i32 noundef 5) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_uint_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 noundef 4, i32 noundef 2) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_uint_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 noundef 6, i32 noundef 6) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_uint_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5, i32 noundef 9) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_uint_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i32 noundef 9, i32 noundef 5) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_uint_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5, i32 noundef 9) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_uint_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32 noundef 7, i32 noundef 7) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.61, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_uint_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i32 noundef 9, i32 noundef 5) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_uint_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i32 noundef 11, i32 noundef 1) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.64, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_uint_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i32 noundef 1, i32 noundef 11) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.67, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_uint_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i32 noundef 11, i32 noundef 1) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_uint_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 noundef 6, i32 noundef 6) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.69, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_uint_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i32 noundef 1, i32 noundef 11) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_char() #0 {
entry:
  %call = tail call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8 noundef signext 97, i8 noundef signext 97) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i64 0, i64 0), i8 noundef signext 97, i8 noundef signext 65) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_char_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i8 noundef signext 97, i8 noundef signext 99) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_char_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8 noundef signext 101, i8 noundef signext 101) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_char_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i8 noundef signext 105, i8 noundef signext 120) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_char_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8 noundef signext 120, i8 noundef signext 105) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i8 noundef signext 105, i8 noundef signext 120) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.83, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8 noundef signext 110, i8 noundef signext 110) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8 noundef signext 120, i8 noundef signext 105) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.86, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_char_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8 noundef signext 119, i8 noundef signext 110) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.87, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_char_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8 noundef signext 110, i8 noundef signext 119) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.89, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_char_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8 noundef signext 119, i8 noundef signext 110) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_char_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i8 noundef signext 112, i8 noundef signext 112) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_char_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0), i8 noundef signext 110, i8 noundef signext 119) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_uchar() #0 {
entry:
  %call = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8 noundef zeroext 49, i8 noundef zeroext 49) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8 noundef zeroext 49, i8 noundef zeroext 60) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_uchar_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8 noundef zeroext 50, i8 noundef zeroext 2) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_uchar_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), i8 noundef zeroext 66, i8 noundef zeroext 66) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.100, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_uchar_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8 noundef zeroext 60, i8 noundef zeroext 80) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_uchar_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8 noundef zeroext 80, i8 noundef zeroext 60) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_uchar_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8 noundef zeroext 60, i8 noundef zeroext 80) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_uchar_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8 noundef zeroext 78, i8 noundef zeroext 78) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.106, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_uchar_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8 noundef zeroext 80, i8 noundef zeroext 60) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_uchar_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8 noundef zeroext 88, i8 noundef zeroext 37) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_uchar_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8 noundef zeroext 37, i8 noundef zeroext 88) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.112, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_uchar_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8 noundef zeroext 88, i8 noundef zeroext 37) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.113, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_uchar_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), i8 noundef zeroext 66, i8 noundef zeroext 66) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_uchar_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i64 0, i64 0), i8 noundef zeroext 37, i8 noundef zeroext 88) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.115, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long() #0 {
entry:
  %call = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 127, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i64 noundef 123, i64 noundef 123) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.116, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i64 0, i64 0), i64 noundef 123, i64 noundef -123) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.118, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_long_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.121, i64 0, i64 0), i64 noundef 123, i64 noundef 500) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.120, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_long_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i64 0, i64 0), i64 noundef 1000, i64 noundef 1000) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.122, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_long_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 131, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i64 noundef -8923, i64 noundef 102934563) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.124, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_long_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 132, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i64 noundef 102934563, i64 noundef -8923) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.127, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_long_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i64 noundef -8923, i64 noundef 102934563) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.128, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_long_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 134, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i64 noundef 12345, i64 noundef 12345) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.129, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_long_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 135, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.125, i64 0, i64 0), i64 noundef 102934563, i64 noundef -8923) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.131, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_long_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i64 noundef 84325677, i64 noundef 12345) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.132, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_long_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i64 noundef 12345, i64 noundef 84325677) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.134, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_long_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i64 noundef 84325677, i64 noundef 12345) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.135, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_long_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 139, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.137, i64 0, i64 0), i64 noundef 465869, i64 noundef 465869) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.136, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_long_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 140, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i64 0, i64 0), i64 noundef 12345, i64 noundef 84325677) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_ulong() #0 {
entry:
  %call = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 150, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i64 noundef 919, i64 noundef 919) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.139, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i64 noundef 919, i64 noundef 10234) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.141, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.144, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.145, i64 0, i64 0), i64 noundef 8190, i64 noundef 66) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_ulong_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i64 noundef 10555, i64 noundef 10555) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_ulong_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i64 0, i64 0), i64 noundef 10234, i64 noundef 1000000) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.148, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_ulong_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i64 noundef 1000000, i64 noundef 10234) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.150, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_ulong_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i64 0, i64 0), i64 noundef 10234, i64 noundef 1000000) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.151, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_ulong_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.153, i64 0, i64 0), i64 noundef 100000, i64 noundef 100000) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.152, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_ulong_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.149, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.142, i64 0, i64 0), i64 noundef 1000000, i64 noundef 10234) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.154, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_ulong_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 noundef 100000000, i64 noundef 22) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.155, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_ulong_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0), i64 noundef 22, i64 noundef 100000000) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.158, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_ulong_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i64 noundef 100000000, i64 noundef 22) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.159, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_ulong_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.147, i64 0, i64 0), i64 noundef 10555, i64 noundef 10555) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.160, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_ulong_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.156, i64 0, i64 0), i64 noundef 22, i64 noundef 100000000) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.161, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_size_t() #0 {
entry:
  %call = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 173, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0), i64 noundef 10, i64 noundef 10) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.162, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i64 0, i64 0), i64 noundef 10, i64 noundef 12) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.164, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 175, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.165, i64 0, i64 0), i64 noundef 10, i64 noundef 12) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.166, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_size_t_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 176, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i64 0, i64 0), i64 noundef 24, i64 noundef 24) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.167, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_size_t_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 177, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0), i64 noundef 30, i64 noundef 88) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.169, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_size_t_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i64 0, i64 0), i64 noundef 88, i64 noundef 30) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.172, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 179, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0), i64 noundef 30, i64 noundef 88) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.173, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 180, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i64 noundef 33, i64 noundef 33) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.174, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_size_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 181, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i64 0, i64 0), i64 noundef 88, i64 noundef 30) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.176, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i64 noundef 52, i64 noundef 33) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.177, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_size_t_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 183, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i64 noundef 33, i64 noundef 52) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.179, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i64 noundef 52, i64 noundef 33) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.180, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 185, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i64 0, i64 0), i64 noundef 38, i64 noundef 38) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.181, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_size_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 186, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i64 noundef 33, i64 noundef 52) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.183, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_time_t() #0 {
entry:
  %call = tail call i32 @test_time_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), i64 noundef 10, i64 noundef 10) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.184, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_time_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i64 0, i64 0), i64 noundef 10, i64 noundef 12) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.186, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_time_t_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.187, i64 0, i64 0), i64 noundef 10, i64 noundef 12) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.188, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_time_t_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.190, i64 0, i64 0), i64 noundef 24, i64 noundef 24) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.189, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_time_t_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i64 0, i64 0), i64 noundef 30, i64 noundef 88) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.191, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_time_t_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i64 noundef 88, i64 noundef 30) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.194, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i64 0, i64 0), i64 noundef 30, i64 noundef 88) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.195, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i64 noundef 33, i64 noundef 33) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.196, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_time_t_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 204, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.193, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.192, i64 0, i64 0), i64 noundef 88, i64 noundef 30) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.198, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_time_t_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i64 noundef 52, i64 noundef 33) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.199, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_time_t_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0), i64 noundef 33, i64 noundef 52) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.201, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_time_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i64 noundef 52, i64 noundef 33) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.202, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_time_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i64 0, i64 0), i64 noundef 38, i64 noundef 38) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.203, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_time_t_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.197, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.200, i64 0, i64 0), i64 noundef 33, i64 noundef 52) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.205, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pointer() #0 {
entry:
  %x = alloca i32, align 4
  %y = alloca i8, align 1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %x, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %y) #7
  store i8 1, i8* %y, align 1, !tbaa !7
  %call = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 222, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef nonnull %y) #5
  %call1 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.206, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null) #5
  %call3 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.208, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or81 = or i1 %tobool.not, %tobool4.not
  %call7 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef nonnull %y) #5
  %call8 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1282 = or i1 %or81, %tobool9.not
  %call13 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null) #5
  %call14 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1883 = or i1 %or1282, %tobool15.not
  %call19 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i8* noundef null) #5
  %call20 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.212, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2484 = or i1 %or1883, %tobool21.not
  %call25 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef null, i8* noundef nonnull %y) #5
  %call26 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.213, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3085 = or i1 %or2484, %tobool27.not
  %call31 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef nonnull %y, i8* noundef null) #5
  %call32 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.214, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3686 = or i1 %or3085, %tobool33.not
  %call37 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef nonnull %y, i8* noundef nonnull %0) #5
  %call38 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.215, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4287 = or i1 %or3686, %tobool39.not
  %call43 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef nonnull %0) #5
  %call44 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.217, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4888 = or i1 %or4287, %tobool45.not
  %call49 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i8* noundef null) #5
  %call50 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.218, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5489 = or i1 %or4888, %tobool51.not
  %call55 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef null, i8* noundef nonnull %y) #5
  %call56 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.219, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6090 = or i1 %or5489, %tobool57.not
  %call61 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef nonnull %y, i8* noundef null) #5
  %call62 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.220, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6691 = or i1 %or6090, %tobool63.not
  %call67 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.207, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef nonnull %y, i8* noundef nonnull %0) #5
  %call68 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.221, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7292 = or i1 %or6691, %tobool69.not
  %call73 = call i32 @test_ptr_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.216, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef nonnull %0) #5
  %call74 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.222, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7893 = or i1 %or7292, %tobool75.not
  %not.or7893 = xor i1 %or7893, true
  %. = zext i1 %not.or7893 to i32
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %y) #7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bool() #0 {
entry:
  %call = tail call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0), i32 noundef 0) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.223, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.225, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or20 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0), i32 noundef 0) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1221 = or i1 %or20, %tobool9.not
  %call13 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef 1) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.227, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1822 = or i1 %or1221, %tobool15.not
  %not.or1822 = xor i1 %or1822, true
  %. = zext i1 %not.or1822 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_string() #0 {
entry:
  %call = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 260, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i8* noundef null) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.228, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_string.buf, i64 0, i64 0)) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.229, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or80 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 262, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i8* noundef null) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.233, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1281 = or i1 %or80, %tobool9.not
  %call13 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0)) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.234, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1882 = or i1 %or1281, %tobool15.not
  %call19 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_string.buf, i64 0, i64 0)) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.237, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2483 = or i1 %or1882, %tobool21.not
  %call25 = tail call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 265, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i8* noundef null) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.238, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3084 = or i1 %or2483, %tobool27.not
  %call31 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i8* noundef null) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.239, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3685 = or i1 %or3084, %tobool33.not
  %call37 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0)) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.240, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4286 = or i1 %or3685, %tobool39.not
  %call43 = tail call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0)) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.241, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4887 = or i1 %or4286, %tobool45.not
  %call49 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.243, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.244, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i64 0, i64 0)) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.242, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5488 = or i1 %or4887, %tobool51.not
  %call55 = tail call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 270, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_string.buf, i64 0, i64 0)) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.247, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6089 = or i1 %or5488, %tobool57.not
  %call61 = tail call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 271, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i8* noundef null) #5
  %call62 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.248, i64 0, i64 0), i32 noundef %call61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  %or6690 = or i1 %or6089, %tobool63.not
  %call67 = tail call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_string.buf, i64 0, i64 0)) #5
  %call68 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.249, i64 0, i64 0), i32 noundef %call67) #6
  %tobool69.not = icmp eq i32 %call68, 0
  %or7291 = or i1 %or6690, %tobool69.not
  %call73 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.251, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.252, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.253, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.254, i64 0, i64 0)) #5
  %call74 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.250, i64 0, i64 0), i32 noundef %call73) #6
  %tobool75.not = icmp eq i32 %call74, 0
  %or7892 = or i1 %or7291, %tobool75.not
  %not.or7892 = xor i1 %or7892, true
  %. = zext i1 %not.or7892 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_memory() #0 {
entry:
  %call = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 285, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.255, i64 0, i64 0), i32 noundef %call) #6
  %tobool.not = icmp eq i32 %call1, 0
  %call2 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 286, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i64 noundef 1, i8* noundef null, i64 noundef 2) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.256, i64 0, i64 0), i32 noundef %call2) #6
  %tobool4.not = icmp eq i32 %call3, 0
  %or62 = or i1 %tobool.not, %tobool4.not
  %call7 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 287, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i64 0, i64 0), i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i64 0, i64 0), i64 noundef 3) #5
  %call8 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.257, i64 0, i64 0), i32 noundef %call7) #6
  %tobool9.not = icmp eq i32 %call8, 0
  %or1263 = or i1 %or62, %tobool9.not
  %call13 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 288, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i64 0, i64 0), i8* noundef null, i64 noundef 7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.232, i64 0, i64 0), i64 noundef 3) #5
  %call14 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.260, i64 0, i64 0), i32 noundef %call13) #6
  %tobool15.not = icmp eq i32 %call14, 0
  %or1864 = or i1 %or1263, %tobool15.not
  %call19 = tail call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef null, i64 noundef 0, i8* noundef null, i64 noundef 0) #5
  %call20 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.261, i64 0, i64 0), i32 noundef %call19) #6
  %tobool21.not = icmp eq i32 %call20, 0
  %or2465 = or i1 %or1864, %tobool21.not
  %call25 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef null, i64 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i64 noundef 0) #5
  %call26 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.262, i64 0, i64 0), i32 noundef %call25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  %or3066 = or i1 %or2465, %tobool27.not
  %call31 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i64 noundef 0, i8* noundef null, i64 noundef 0) #5
  %call32 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.263, i64 0, i64 0), i32 noundef %call31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  %or3667 = or i1 %or3066, %tobool33.not
  %call37 = tail call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.235, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i64 noundef 0) #5
  %call38 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.264, i64 0, i64 0), i32 noundef %call37) #6
  %tobool39.not = icmp eq i32 %call38, 0
  %or4268 = or i1 %or3667, %tobool39.not
  %call43 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i64 0, i64 0), i64 noundef 3, i8* noundef null, i64 noundef 0) #5
  %call44 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.265, i64 0, i64 0), i32 noundef %call43) #6
  %tobool45.not = icmp eq i32 %call44, 0
  %or4869 = or i1 %or4268, %tobool45.not
  %call49 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i64 0, i64 0), i64 noundef 3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_memory.buf, i64 0, i64 0), i64 noundef 4) #5
  %call50 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.266, i64 0, i64 0), i32 noundef %call49) #6
  %tobool51.not = icmp eq i32 %call50, 0
  %or5470 = or i1 %or4869, %tobool51.not
  %call55 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.258, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.259, i64 0, i64 0), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @test_memory.buf, i64 0, i64 0), i64 noundef 4) #5
  %call56 = tail call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.267, i64 0, i64 0), i32 noundef %call55) #6
  %tobool57.not = icmp eq i32 %call56, 0
  %or6071 = or i1 %or5470, %tobool57.not
  %not.or6071 = xor i1 %or6071, true
  %. = zext i1 %not.or6071 to i32
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_memory_overflow() #0 {
entry:
  %call = tail call i64 @strlen(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.268, i64 0, i64 0)) #8
  %call1 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.269, i64 0, i64 0)) #8
  %call2 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 309, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.271, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.272, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.268, i64 0, i64 0), i64 noundef %call, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.269, i64 0, i64 0), i64 noundef %call1) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.270, i64 0, i64 0), i32 noundef %call2) #6
  ret i32 %call3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bignum() #0 {
entry:
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %c = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !8
  %1 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !8
  %2 = bitcast %struct.bignum_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.bignum_st* null, %struct.bignum_st** %c, align 8, !tbaa !8
  %call = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0)) #5
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.274, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call, i32 noundef 1) #5
  %call2 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.273, i64 0, i64 0), i32 noundef %call1) #6
  %tobool.not = icmp eq i32 %call2, 0
  %3 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call3 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0), %struct.bignum_st* noundef %3, i64 noundef 0) #5
  %call4 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.275, i64 0, i64 0), i32 noundef %call3) #6
  %tobool5.not = icmp eq i32 %call4, 0
  %or336 = or i1 %tobool.not, %tobool5.not
  %4 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call8 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.278, i64 0, i64 0), %struct.bignum_st* noundef %4, i64 noundef 30) #5
  %call9 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.277, i64 0, i64 0), i32 noundef %call8) #6
  %tobool10.not = icmp eq i32 %call9, 0
  %or13337 = or i1 %or336, %tobool10.not
  %5 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call14 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0), %struct.bignum_st* noundef %5, i64 noundef 0) #5
  %call15 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.279, i64 0, i64 0), i32 noundef %call14) #6
  %tobool16.not = icmp eq i32 %call15, 0
  %or19338 = or i1 %or13337, %tobool16.not
  %6 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call20 = call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %6) #5
  %call21 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.280, i64 0, i64 0), i32 noundef %call20) #6
  %tobool22.not = icmp eq i32 %call21, 0
  %or25339 = or i1 %or19338, %tobool22.not
  %7 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call26 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %7) #5
  %call27 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.281, i64 0, i64 0), i32 noundef %call26) #6
  %tobool28.not = icmp eq i32 %call27, 0
  %or31340 = or i1 %or25339, %tobool28.not
  %8 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call32 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %8) #5
  %call33 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.282, i64 0, i64 0), i32 noundef %call32) #6
  %tobool34.not = icmp eq i32 %call33, 0
  %or37341 = or i1 %or31340, %tobool34.not
  %9 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call38 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %9) #5
  %call39 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.283, i64 0, i64 0), i32 noundef %call38) #6
  %tobool40.not = icmp eq i32 %call39, 0
  %or43342 = or i1 %or37341, %tobool40.not
  %10 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call44 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %10) #5
  %call45 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.284, i64 0, i64 0), i32 noundef %call44) #6
  %tobool46.not = icmp eq i32 %call45, 0
  %or49343 = or i1 %or43342, %tobool46.not
  %11 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call50 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %11) #5
  %call51 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.285, i64 0, i64 0), i32 noundef %call50) #6
  %tobool52.not = icmp eq i32 %call51, 0
  %or55344 = or i1 %or49343, %tobool52.not
  %12 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call56 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 327, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %12) #5
  %call57 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.286, i64 0, i64 0), i32 noundef %call56) #6
  %tobool58.not = icmp eq i32 %call57, 0
  %or61345 = or i1 %or55344, %tobool58.not
  %13 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call62 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %13) #5
  %call63 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.287, i64 0, i64 0), i32 noundef %call62) #6
  %tobool64.not = icmp eq i32 %call63, 0
  %or67346 = or i1 %or61345, %tobool64.not
  %14 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call68 = call i32 @test_BN_odd(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %14) #5
  %call69 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.288, i64 0, i64 0), i32 noundef %call68) #6
  %tobool70.not = icmp eq i32 %call69, 0
  %or73347 = or i1 %or67346, %tobool70.not
  %15 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %16 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call74 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16) #5
  %call75 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.289, i64 0, i64 0), i32 noundef %call74) #6
  %tobool76.not = icmp eq i32 %call75, 0
  %or79348 = or i1 %or73347, %tobool76.not
  %17 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %18 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call80 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %17, %struct.bignum_st* noundef %18) #5
  %call81 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.292, i64 0, i64 0), i32 noundef %call80) #6
  %tobool82.not = icmp eq i32 %call81, 0
  %or85349 = or i1 %or79348, %tobool82.not
  %19 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call86 = call i32 @test_BN_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef null, %struct.bignum_st* noundef %19) #5
  %call87 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.293, i64 0, i64 0), i32 noundef %call86) #6
  %tobool88.not = icmp eq i32 %call87, 0
  %or91350 = or i1 %or85349, %tobool88.not
  %call92 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #5
  %call93 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.295, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 noundef %call92, i32 noundef 1) #5
  %call94 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.294, i64 0, i64 0), i32 noundef %call93) #6
  %tobool95.not = icmp eq i32 %call94, 0
  %or98351 = or i1 %or91350, %tobool95.not
  %20 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call99 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %20, i64 noundef 1) #5
  %call100 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.296, i64 0, i64 0), i32 noundef %call99) #6
  %tobool101.not = icmp eq i32 %call100, 0
  %or104352 = or i1 %or98351, %tobool101.not
  %21 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call105 = call i32 @test_BN_eq_one(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 335, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %21) #5
  %call106 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.297, i64 0, i64 0), i32 noundef %call105) #6
  %tobool107.not = icmp eq i32 %call106, 0
  %or110353 = or i1 %or104352, %tobool107.not
  %22 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call111 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.224, i64 0, i64 0), %struct.bignum_st* noundef %22, i64 noundef 0) #5
  %call112 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.298, i64 0, i64 0), i32 noundef %call111) #6
  %tobool113.not = icmp eq i32 %call112, 0
  %or116354 = or i1 %or110353, %tobool113.not
  %23 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call117 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct.bignum_st* noundef %23, i64 noundef 1) #5
  %call118 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.299, i64 0, i64 0), i32 noundef %call117) #6
  %tobool119.not = icmp eq i32 %call118, 0
  %or122355 = or i1 %or116354, %tobool119.not
  %24 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call123 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %24) #5
  %call124 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.300, i64 0, i64 0), i32 noundef %call123) #6
  %tobool125.not = icmp eq i32 %call124, 0
  %or128356 = or i1 %or122355, %tobool125.not
  %25 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call129 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 339, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %25) #5
  %call130 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.301, i64 0, i64 0), i32 noundef %call129) #6
  %tobool131.not = icmp eq i32 %call130, 0
  %or134357 = or i1 %or128356, %tobool131.not
  %26 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call135 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %26) #5
  %call136 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.302, i64 0, i64 0), i32 noundef %call135) #6
  %tobool137.not = icmp eq i32 %call136, 0
  %or140358 = or i1 %or134357, %tobool137.not
  %27 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call141 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 341, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %27) #5
  %call142 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.303, i64 0, i64 0), i32 noundef %call141) #6
  %tobool143.not = icmp eq i32 %call142, 0
  %or146359 = or i1 %or140358, %tobool143.not
  %28 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call147 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 342, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %28) #5
  %call148 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.304, i64 0, i64 0), i32 noundef %call147) #6
  %tobool149.not = icmp eq i32 %call148, 0
  %or152360 = or i1 %or146359, %tobool149.not
  %29 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call153 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 343, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %29) #5
  %call154 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.305, i64 0, i64 0), i32 noundef %call153) #6
  %tobool155.not = icmp eq i32 %call154, 0
  %or158361 = or i1 %or152360, %tobool155.not
  %30 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call159 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 344, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %30) #5
  %call160 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.306, i64 0, i64 0), i32 noundef %call159) #6
  %tobool161.not = icmp eq i32 %call160, 0
  %or164362 = or i1 %or158361, %tobool161.not
  %31 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call165 = call i32 @test_BN_odd(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 345, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %31) #5
  %call166 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.307, i64 0, i64 0), i32 noundef %call165) #6
  %tobool167.not = icmp eq i32 %call166, 0
  %or170363 = or i1 %or164362, %tobool167.not
  %call171 = call i32 @BN_dec2bn(%struct.bignum_st** noundef nonnull %c, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.311, i64 0, i64 0)) #5
  %call172 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.309, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.310, i64 0, i64 0), i32 noundef %call171, i32 noundef 10) #5
  %call173 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.308, i64 0, i64 0), i32 noundef %call172) #6
  %tobool174.not = icmp eq i32 %call173, 0
  %or177364 = or i1 %or170363, %tobool174.not
  %32 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call178 = call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.313, i64 0, i64 0), %struct.bignum_st* noundef %32, i64 noundef 334739439) #5
  %call179 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.312, i64 0, i64 0), i32 noundef %call178) #6
  %tobool180.not = icmp eq i32 %call179, 0
  %or183365 = or i1 %or177364, %tobool180.not
  %33 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call184 = call i32 @test_BN_abs_eq_word(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 348, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.313, i64 0, i64 0), %struct.bignum_st* noundef %33, i64 noundef 334739439) #5
  %call185 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.314, i64 0, i64 0), i32 noundef %call184) #6
  %tobool186.not = icmp eq i32 %call185, 0
  %or189366 = or i1 %or183365, %tobool186.not
  %34 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call190 = call i32 @test_BN_eq_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 349, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %34) #5
  %call191 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.315, i64 0, i64 0), i32 noundef %call190) #6
  %tobool192.not = icmp eq i32 %call191, 0
  %or195367 = or i1 %or189366, %tobool192.not
  %35 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call196 = call i32 @test_BN_ne_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 350, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %35) #5
  %call197 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.316, i64 0, i64 0), i32 noundef %call196) #6
  %tobool198.not = icmp eq i32 %call197, 0
  %or201368 = or i1 %or195367, %tobool198.not
  %36 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call202 = call i32 @test_BN_le_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 351, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %36) #5
  %call203 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.317, i64 0, i64 0), i32 noundef %call202) #6
  %tobool204.not = icmp eq i32 %call203, 0
  %or207369 = or i1 %or201368, %tobool204.not
  %37 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call208 = call i32 @test_BN_lt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 352, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %37) #5
  %call209 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.318, i64 0, i64 0), i32 noundef %call208) #6
  %tobool210.not = icmp eq i32 %call209, 0
  %or213370 = or i1 %or207369, %tobool210.not
  %38 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call214 = call i32 @test_BN_ge_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %38) #5
  %call215 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.319, i64 0, i64 0), i32 noundef %call214) #6
  %tobool216.not = icmp eq i32 %call215, 0
  %or219371 = or i1 %or213370, %tobool216.not
  %39 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call220 = call i32 @test_BN_gt_zero(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %39) #5
  %call221 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.320, i64 0, i64 0), i32 noundef %call220) #6
  %tobool222.not = icmp eq i32 %call221, 0
  %or225372 = or i1 %or219371, %tobool222.not
  %40 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call226 = call i32 @test_BN_even(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %40) #5
  %call227 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.321, i64 0, i64 0), i32 noundef %call226) #6
  %tobool228.not = icmp eq i32 %call227, 0
  %or231373 = or i1 %or225372, %tobool228.not
  %41 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call232 = call i32 @test_BN_odd(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 356, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %41) #5
  %call233 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.322, i64 0, i64 0), i32 noundef %call232) #6
  %tobool234.not = icmp eq i32 %call233, 0
  %or237374 = or i1 %or231373, %tobool234.not
  %42 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call238 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %42, %struct.bignum_st* noundef %42) #5
  %call239 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.323, i64 0, i64 0), i32 noundef %call238) #6
  %tobool240.not = icmp eq i32 %call239, 0
  %or243375 = or i1 %or237374, %tobool240.not
  %43 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call244 = call i32 @test_BN_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %43, %struct.bignum_st* noundef %43) #5
  %call245 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.324, i64 0, i64 0), i32 noundef %call244) #6
  %tobool246.not = icmp eq i32 %call245, 0
  %or249376 = or i1 %or243375, %tobool246.not
  %44 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %45 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call250 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %44, %struct.bignum_st* noundef %45) #5
  %call251 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.292, i64 0, i64 0), i32 noundef %call250) #6
  %tobool252.not = icmp eq i32 %call251, 0
  %or255377 = or i1 %or249376, %tobool252.not
  %46 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %47 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call256 = call i32 @test_BN_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 360, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %46, %struct.bignum_st* noundef %47) #5
  %call257 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.325, i64 0, i64 0), i32 noundef %call256) #6
  %tobool258.not = icmp eq i32 %call257, 0
  %or261378 = or i1 %or255377, %tobool258.not
  %48 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %49 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call262 = call i32 @test_BN_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %48, %struct.bignum_st* noundef %49) #5
  %call263 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.326, i64 0, i64 0), i32 noundef %call262) #6
  %tobool264.not = icmp eq i32 %call263, 0
  %or267379 = or i1 %or261378, %tobool264.not
  %50 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %51 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call268 = call i32 @test_BN_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %50, %struct.bignum_st* noundef %51) #5
  %call269 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.327, i64 0, i64 0), i32 noundef %call268) #6
  %tobool270.not = icmp eq i32 %call269, 0
  %or273380 = or i1 %or267379, %tobool270.not
  %52 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %53 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call274 = call i32 @test_BN_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %52, %struct.bignum_st* noundef %53) #5
  %call275 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.328, i64 0, i64 0), i32 noundef %call274) #6
  %tobool276.not = icmp eq i32 %call275, 0
  %or279381 = or i1 %or273380, %tobool276.not
  %54 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %55 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call280 = call i32 @test_BN_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %54, %struct.bignum_st* noundef %55) #5
  %call281 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.329, i64 0, i64 0), i32 noundef %call280) #6
  %tobool282.not = icmp eq i32 %call281, 0
  %or285382 = or i1 %or279381, %tobool282.not
  %56 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %57 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call286 = call i32 @test_BN_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %56, %struct.bignum_st* noundef %57) #5
  %call287 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.330, i64 0, i64 0), i32 noundef %call286) #6
  %tobool288.not = icmp eq i32 %call287, 0
  %or291383 = or i1 %or285382, %tobool288.not
  %58 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %59 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call292 = call i32 @test_BN_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 366, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %58, %struct.bignum_st* noundef %59) #5
  %call293 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.331, i64 0, i64 0), i32 noundef %call292) #6
  %tobool294.not = icmp eq i32 %call293, 0
  %or297384 = or i1 %or291383, %tobool294.not
  %60 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %61 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call298 = call i32 @test_BN_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 367, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %60, %struct.bignum_st* noundef %61) #5
  %call299 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.332, i64 0, i64 0), i32 noundef %call298) #6
  %tobool300.not = icmp eq i32 %call299, 0
  %or303385 = or i1 %or297384, %tobool300.not
  %62 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %63 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call304 = call i32 @test_BN_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 368, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %62, %struct.bignum_st* noundef %63) #5
  %call305 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.333, i64 0, i64 0), i32 noundef %call304) #6
  %tobool306.not = icmp eq i32 %call305, 0
  %or309386 = or i1 %or303385, %tobool306.not
  %64 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %65 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call310 = call i32 @test_BN_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 369, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %64, %struct.bignum_st* noundef %65) #5
  %call311 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.334, i64 0, i64 0), i32 noundef %call310) #6
  %tobool312.not = icmp eq i32 %call311, 0
  %or315387 = or i1 %or309386, %tobool312.not
  %66 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %67 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call316 = call i32 @test_BN_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %66, %struct.bignum_st* noundef %67) #5
  %call317 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.335, i64 0, i64 0), i32 noundef %call316) #6
  %tobool318.not = icmp eq i32 %call317, 0
  %or321388 = or i1 %or315387, %tobool318.not
  %68 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %69 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call322 = call i32 @test_BN_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 371, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %68, %struct.bignum_st* noundef %69) #5
  %call323 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.336, i64 0, i64 0), i32 noundef %call322) #6
  %tobool324.not = icmp eq i32 %call323, 0
  %or327389 = or i1 %or321388, %tobool324.not
  %70 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %71 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %call328 = call i32 @test_BN_ge(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), %struct.bignum_st* noundef %70, %struct.bignum_st* noundef %71) #5
  %call329 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.337, i64 0, i64 0), i32 noundef %call328) #6
  %tobool330.not = icmp eq i32 %call329, 0
  %or333390 = or i1 %or327389, %tobool330.not
  %not.or333390 = xor i1 %or333390, true
  %spec.select = zext i1 %not.or333390 to i32
  %72 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %72) #5
  %73 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %73) #5
  %74 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %74) #5
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %spec.select
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long_bignum() #0 {
entry:
  %a = alloca %struct.bignum_st*, align 8
  %b = alloca %struct.bignum_st*, align 8
  %c = alloca %struct.bignum_st*, align 8
  %d = alloca %struct.bignum_st*, align 8
  %as = alloca [319 x i8], align 16
  %bs = alloca [111 x i8], align 16
  %cs = alloca [66 x i8], align 16
  %ds = alloca [65 x i8], align 16
  %0 = bitcast %struct.bignum_st** %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.bignum_st* null, %struct.bignum_st** %a, align 8, !tbaa !8
  %1 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !8
  %2 = bitcast %struct.bignum_st** %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7
  store %struct.bignum_st* null, %struct.bignum_st** %c, align 8, !tbaa !8
  %3 = bitcast %struct.bignum_st** %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7
  store %struct.bignum_st* null, %struct.bignum_st** %d, align 8, !tbaa !8
  %4 = getelementptr inbounds [319 x i8], [319 x i8]* %as, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 319, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(319) %4, i8* noundef nonnull align 16 dereferenceable(319) getelementptr inbounds ([319 x i8], [319 x i8]* @__const.test_long_bignum.as, i64 0, i64 0), i64 319, i1 false)
  %5 = getelementptr inbounds [111 x i8], [111 x i8]* %bs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 111, i8* nonnull %5) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(111) %5, i8* noundef nonnull align 16 dereferenceable(111) getelementptr inbounds ([111 x i8], [111 x i8]* @.str.411, i64 0, i64 0), i64 111, i1 false)
  %6 = getelementptr inbounds [66 x i8], [66 x i8]* %cs, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 66, i8* nonnull %6) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(66) %6, i8* noundef nonnull align 16 dereferenceable(66) getelementptr inbounds ([66 x i8], [66 x i8]* @__const.test_long_bignum.cs, i64 0, i64 0), i64 66, i1 false)
  %7 = getelementptr inbounds [65 x i8], [65 x i8]* %ds, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 65, i8* nonnull %7) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(65) %7, i8* noundef nonnull align 16 dereferenceable(65) getelementptr inbounds ([65 x i8], [65 x i8]* @__const.test_long_bignum.ds, i64 0, i64 0), i64 65, i1 false)
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %a, i8* noundef nonnull %4) #5
  %cmp = icmp ne i32 %call, 0
  %conv = zext i1 %cmp to i32
  %call1 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.338, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call3 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef nonnull %5) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv5 = zext i1 %cmp4 to i32
  %call6 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.339, i64 0, i64 0), i32 noundef %conv5) #5
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.end, label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call10 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %c, i8* noundef nonnull %6) #5
  %cmp11 = icmp ne i32 %call10, 0
  %conv12 = zext i1 %cmp11 to i32
  %call13 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.340, i64 0, i64 0), i32 noundef %conv12) #5
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.end, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true8
  %call17 = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %d, i8* noundef nonnull %7) #5
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.341, i64 0, i64 0), i32 noundef %conv19) #5
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true15
  %8 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %9 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call22 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), %struct.bignum_st* noundef %8, %struct.bignum_st* noundef %9) #5
  %call23 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.292, i64 0, i64 0), i32 noundef %call22) #6
  %10 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %11 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call24 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 429, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef %10, %struct.bignum_st* noundef %11) #5
  %call25 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.342, i64 0, i64 0), i32 noundef %call24) #6
  %and = and i32 %call25, %call23
  %12 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  %call26 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.290, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), %struct.bignum_st* noundef %12, %struct.bignum_st* noundef null) #5
  %call27 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.343, i64 0, i64 0), i32 noundef %call26) #6
  %and28 = and i32 %and, %call27
  %13 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call29 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), %struct.bignum_st* noundef null, %struct.bignum_st* noundef %13) #5
  %call30 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.344, i64 0, i64 0), i32 noundef %call29) #6
  %and31 = and i32 %and28, %call30
  %14 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  %call32 = call i32 @test_BN_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.209, i64 0, i64 0), %struct.bignum_st* noundef %14, %struct.bignum_st* noundef null) #5
  %call33 = call fastcc i32 @test_case(i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.345, i64 0, i64 0), i32 noundef %call32) #6
  %and34 = and i32 %and31, %call33
  %15 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  %16 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !8
  %call35 = call i32 @test_BN_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.291, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.347, i64 0, i64 0), %struct.bignum_st* noundef %15, %struct.bignum_st* noundef %16) #5
  %call36 = call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.346, i64 0, i64 0), i32 noundef %call35) #6
  %and37 = and i32 %and34, %call36
  %tobool38 = icmp ne i32 %and37, 0
  %phi.cast = zext i1 %tobool38 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true15, %land.lhs.true8, %land.lhs.true, %entry
  %17 = phi i32 [ 0, %land.lhs.true15 ], [ 0, %land.lhs.true8 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  %18 = load %struct.bignum_st*, %struct.bignum_st** %a, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %18) #5
  %19 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %19) #5
  %20 = load %struct.bignum_st*, %struct.bignum_st** %c, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %20) #5
  %21 = load %struct.bignum_st*, %struct.bignum_st** %d, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %21) #5
  call void @llvm.lifetime.end.p0i8(i64 65, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 66, i8* nonnull %6) #7
  call void @llvm.lifetime.end.p0i8(i64 111, i8* nonnull %5) #7
  call void @llvm.lifetime.end.p0i8(i64 319, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_long_output() #0 {
entry:
  %call = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.271, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.272, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.268, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.348, i64 0, i64 0)) #5
  %call1 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.351, i64 0, i64 0), i32 noundef %call) #6
  %call2 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.272, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.353, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.348, i64 0, i64 0), i8* noundef getelementptr inbounds ([157 x i8], [157 x i8]* @.str.349, i64 0, i64 0)) #5
  %call3 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.352, i64 0, i64 0), i32 noundef %call2) #6
  %and = and i32 %call3, %call1
  %call4 = tail call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 397, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.353, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.355, i64 0, i64 0), i8* noundef getelementptr inbounds ([157 x i8], [157 x i8]* @.str.349, i64 0, i64 0), i8* noundef getelementptr inbounds ([209 x i8], [209 x i8]* @.str.350, i64 0, i64 0)) #5
  %call5 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.354, i64 0, i64 0), i32 noundef %call4) #6
  %and6 = and i32 %and, %call5
  %call7 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([157 x i8], [157 x i8]* @.str.349, i64 0, i64 0)) #8
  %call8 = tail call i64 @strlen(i8* noundef getelementptr inbounds ([209 x i8], [209 x i8]* @.str.350, i64 0, i64 0)) #8
  %call9 = tail call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 398, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.353, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.355, i64 0, i64 0), i8* noundef getelementptr inbounds ([157 x i8], [157 x i8]* @.str.349, i64 0, i64 0), i64 noundef %call7, i8* noundef getelementptr inbounds ([209 x i8], [209 x i8]* @.str.350, i64 0, i64 0), i64 noundef %call8) #5
  %call10 = tail call fastcc i32 @test_case(i32 noundef 0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.356, i64 0, i64 0), i32 noundef %call9) #6
  %and11 = and i32 %and6, %call10
  ret i32 %and11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_messages() #0 {
entry:
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 443, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.357, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.358, i64 0, i64 0)) #5
  tail call void (i8*, i32, i8*, ...) @test_error(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 444, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.357, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.359, i64 0, i64 0)) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_single_eval() #0 {
entry:
  %buf = alloca i32, align 4
  %0 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7
  store i32 0, i32* %buf, align 4
  %call = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 459, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.360, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32 noundef 4, i32 noundef 4) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 460, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.361, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 5, i32 noundef 5) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @test_int_gt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 461, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.362, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 6, i32 noundef 5) #5
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.end, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %land.lhs.true3
  %call9 = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 462, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.360, i64 0, i64 0), i32 noundef 5, i32 noundef 6) #5
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %call12 = tail call i32 @test_int_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 463, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.363, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), i32 noundef 6, i32 noundef 5) #5
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %call15 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 464, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.364, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.365, i64 0, i64 0), i32 noundef 12, i32 noundef 12) #5
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %call19 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 466, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.366, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.367, i64 0, i64 0), i64 noundef -9000, i64 noundef -9000) #5
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call23 = tail call i32 @test_long_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 467, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.368, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.367, i64 0, i64 0), i64 noundef -9000, i64 noundef -9000) #5
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call i32 @test_long_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.367, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.369, i64 0, i64 0), i64 noundef -9000, i64 noundef -4500) #5
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.end, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %call30 = tail call i32 @test_long_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 469, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.370, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.371, i64 0, i64 0), i64 noundef -4501, i64 noundef -4500) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.end, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %call34 = tail call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 471, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.372, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8 noundef signext 101, i8 noundef signext 101) #5
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %call38 = tail call i32 @test_char_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.373, i64 0, i64 0), i8 noundef signext 101, i8 noundef signext 101) #5
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.end, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %call42 = tail call i32 @test_char_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.374, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.375, i64 0, i64 0), i8 noundef signext 100, i8 noundef signext 99) #5
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %call46 = tail call i32 @test_char_le(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.376, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.375, i64 0, i64 0), i8 noundef signext 98, i8 noundef signext 98) #5
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.end, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true44
  %call50 = tail call i32 @test_char_lt(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.377, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i64 0, i64 0), i8 noundef signext 98, i8 noundef signext 99) #5
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.end, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true48
  %call54 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 477, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.378, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.379, i64 0, i64 0), i8 noundef zeroext 22, i8 noundef zeroext 22) #5
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.end, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true52
  %call59 = tail call i32 @test_uchar_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 478, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.380, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.381, i64 0, i64 0), i8 noundef zeroext 11, i8 noundef zeroext 11) #5
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.end, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %call62 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 479, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.382, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.383, i64 0, i64 0), i64 noundef 501, i64 noundef 501) #5
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.end, label %land.lhs.true64

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %call66 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 480, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.384, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.385, i64 0, i64 0), i64 noundef 502, i64 noundef 502) #5
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.end, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true64
  %call70 = tail call i32 @test_ulong_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 481, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.386, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.387, i64 0, i64 0), i64 noundef 1500, i64 noundef 1500) #5
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.end, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %land.lhs.true68
  %call75 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.388, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.389, i64 0, i64 0), i64 noundef 1234, i64 noundef 1234) #5
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.end, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %land.lhs.true72
  %call78 = tail call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 484, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.390, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.391, i64 0, i64 0), i64 noundef 1235, i64 noundef 1235) #5
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.end, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %call81 = tail call i32 @test_int_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.381, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.361, i64 0, i64 0), i32 noundef 11, i32 noundef 11) #5
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.end, label %land.lhs.true83

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %call85 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 487, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.392, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef nonnull %0) #5
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %land.end, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %land.lhs.true83
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 2
  %call90 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.393, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.394, i64 0, i64 0), i8* noundef nonnull %add.ptr, i8* noundef nonnull %add.ptr) #5
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.end, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true87
  %call95 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.395, i64 0, i64 0), i8* noundef nonnull %0, i8* noundef nonnull %0) #5
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.end, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %land.lhs.true92
  %incdec.ptr98 = getelementptr inbounds i8, i8* %0, i64 1
  %call99 = call i32 @test_ptr(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 490, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.394, i64 0, i64 0), i8* noundef nonnull %incdec.ptr98) #5
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.end, label %land.lhs.true101

land.lhs.true101:                                 ; preds = %land.lhs.true97
  %call104 = call i32 @test_ptr_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 491, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.271, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.396, i64 0, i64 0), i8* noundef nonnull %incdec.ptr98, i8* noundef nonnull %incdec.ptr98) #5
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.end, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %land.lhs.true101
  %call107 = call i32 @test_ptr_null(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 492, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.397, i64 0, i64 0), i8* noundef null) #5
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.end, label %land.lhs.true109

land.lhs.true109:                                 ; preds = %land.lhs.true106
  %call110 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 494, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.398, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.399, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 1), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.401, i64 0, i64 0)) #5
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.end, label %land.lhs.true112

land.lhs.true112:                                 ; preds = %land.lhs.true109
  %call114 = call i32 @test_str_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.402, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.394, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.403, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 2)) #5
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.end, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %land.lhs.true112
  %call118 = call i32 @test_str_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 496, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.392, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.404, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 2), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.405, i64 0, i64 0)) #5
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.end, label %land.lhs.true120

land.lhs.true120:                                 ; preds = %land.lhs.true116
  %call122 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 498, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.406, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.402, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 2), i64 noundef 5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.403, i64 0, i64 0), i64 noundef 5) #5
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %land.end, label %land.lhs.true124

land.lhs.true124:                                 ; preds = %land.lhs.true120
  %call126 = call i32 @test_mem_ne(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 499, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.392, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.404, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 2), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.405, i64 0, i64 0), i64 noundef 4) #5
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true124
  %call129 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 500, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.407, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.404, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.400, i64 0, i64 3), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.405, i64 0, i64 0), i64 noundef 4) #5
  %tobool130 = icmp ne i32 %call129, 0
  %phi.cast = zext i1 %tobool130 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true124, %land.lhs.true120, %land.lhs.true116, %land.lhs.true112, %land.lhs.true109, %land.lhs.true106, %land.lhs.true101, %land.lhs.true97, %land.lhs.true92, %land.lhs.true87, %land.lhs.true83, %land.lhs.true80, %land.lhs.true77, %land.lhs.true72, %land.lhs.true68, %land.lhs.true64, %land.lhs.true61, %land.lhs.true56, %land.lhs.true52, %land.lhs.true48, %land.lhs.true44, %land.lhs.true40, %land.lhs.true36, %land.lhs.true32, %land.lhs.true28, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true14, %land.lhs.true11, %land.lhs.true7, %land.lhs.true3, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true124 ], [ 0, %land.lhs.true120 ], [ 0, %land.lhs.true116 ], [ 0, %land.lhs.true112 ], [ 0, %land.lhs.true109 ], [ 0, %land.lhs.true106 ], [ 0, %land.lhs.true101 ], [ 0, %land.lhs.true97 ], [ 0, %land.lhs.true92 ], [ 0, %land.lhs.true87 ], [ 0, %land.lhs.true83 ], [ 0, %land.lhs.true80 ], [ 0, %land.lhs.true77 ], [ 0, %land.lhs.true72 ], [ 0, %land.lhs.true68 ], [ 0, %land.lhs.true64 ], [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true52 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true44 ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true32 ], [ 0, %land.lhs.true28 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true14 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true7 ], [ 0, %land.lhs.true3 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_output() #0 {
entry:
  %s = alloca [105 x i8], align 16
  %0 = getelementptr inbounds [105 x i8], [105 x i8]* %s, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 105, i8* nonnull %0) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(105) %0, i8* noundef nonnull align 16 dereferenceable(105) getelementptr inbounds ([105 x i8], [105 x i8]* @__const.test_output.s, i64 0, i64 0), i64 105, i1 false)
  call void @test_output_string(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.408, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 104) #5
  call void @test_output_memory(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.408, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef 105) #5
  call void @llvm.lifetime.end.p0i8(i64 105, i8* nonnull %0) #7
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_bn_output(i32 noundef %n) #0 {
entry:
  %b = alloca %struct.bignum_st*, align 8
  %0 = bitcast %struct.bignum_st** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7
  store %struct.bignum_st* null, %struct.bignum_st** %b, align 8, !tbaa !8
  %idxprom = sext i32 %n to i64
  %arrayidx = getelementptr inbounds [4 x i8*], [4 x i8*]* @bn_output_tests, i64 0, i64 %idxprom
  %cmp.not = icmp eq i32 %n, 0
  %.pre = load i8*, i8** %arrayidx, align 8, !tbaa !8
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @BN_hex2bn(%struct.bignum_st** noundef nonnull %b, i8* noundef %.pre) #5
  %cmp3 = icmp ne i32 %call, 0
  %conv = zext i1 %cmp3 to i32
  %call4 = call i32 @test_true(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 527, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.409, i64 0, i64 0), i32 noundef %conv) #5
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  %.pre9 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %entry, %land.lhs.true.if.end_crit_edge
  %1 = phi %struct.bignum_st* [ %.pre9, %land.lhs.true.if.end_crit_edge ], [ null, %entry ]
  call void @test_output_bignum(i8* noundef %.pre, %struct.bignum_st* noundef %1) #5
  %2 = load %struct.bignum_st*, %struct.bignum_st** %b, align 8, !tbaa !8
  call void @BN_free(%struct.bignum_st* noundef %2) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_skip_one() #0 {
entry:
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 536, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.412, i64 0, i64 0)) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_skip_null() #0 {
entry:
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 550, i8* noundef null) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_skip_many(i32 noundef %n) #0 {
entry:
  %call = tail call i32 (i8*, i32, i8*, ...) @test_skip(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 noundef 541, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.413, i64 0, i64 0), i32 noundef %n) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @test_case(i32 noundef %expected, i8* noundef %test, i32 noundef %result) unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %result, %expected
  br i1 %cmp.not, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i8* noundef %test, i32 noundef %expected) #5
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry ]
  ret i32 %retval.0
}

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_uint_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_uint_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_char_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_char_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef signext, i8 noundef signext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_uchar_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local i32 @test_long_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_long_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_ulong_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_size_t_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_time_t_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_null(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_ptr_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_str_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) local_unnamed_addr #3

declare dso_local i32 @BN_dec2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_abs_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_one(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_ne_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_le_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_lt_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_ge_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_gt_zero(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_even(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_odd(i8* noundef, i32 noundef, i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_ne(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_lt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_gt(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @BN_hex2bn(%struct.bignum_st** noundef, i8* noundef) local_unnamed_addr #1

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_error(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local void @test_output_string(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_output_memory(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @test_output_bignum(i8* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @test_skip(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nobuiltin "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin nounwind readonly willreturn "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
