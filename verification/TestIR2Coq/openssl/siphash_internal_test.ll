; ModuleID = 'test/siphash_internal_test.c'
source_filename = "test/siphash_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siphash_st = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, [8 x i8] }
%struct.TESTDATA = type { i32, %struct.SIZED_DATA }
%struct.SIZED_DATA = type { i64, [64 x i8] }

@.str = private unnamed_addr constant [19 x i8] c"test_siphash_basic\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"test_siphash\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"test/siphash_internal_test.c\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"SipHash_set_hash_size(&siphash, 4)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SipHash_set_hash_size(&siphash, 8)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"SipHash_Init(&siphash, key, 0, 0)\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SipHash_Final(&siphash, output, 8)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"SipHash_Final(&siphash, output, 16)\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"SipHash_set_hash_size(&siphash, 16)\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"SipHash_set_hash_size(&siphash, 0)\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"size %zu vs %d and %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"inlen\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"sizeof(in)\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"SipHash_set_hash_size(&siphash, expectedlen)\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"SipHash_Final(&siphash, out, expectedlen)\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"expected\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"SipHash test #%d/1+(N-1) failed.\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"SipHash test #%d/2 failed.\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"SipHash test #%d/%zu+%zu failed.\00", align 1
@tests = internal unnamed_addr constant <{ { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } }> <{ { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 0, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"1\0E\0E\DDG\DBor", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 1, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\FDg\DC\93\C59\F8t", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 2, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"ZO\A9\D9\09\80l\0D", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 3, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"-~\FB\D7\96fg\85", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 4, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\B7\87q'\E0\94'\CF", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 5, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\8D\A6\99\CDdUv\18", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 6, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\CE\E3\FEXnF\C9\CB", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 7, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"7\D1\01\8B\F5\00\02\AB", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 8, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"b$\93\9Ay\F5\F5\93", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 9, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\B0\E4\A9\0B\DF\82\00\9E", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 10, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\F3\B9\DD\94\C5\BB]z", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 11, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\A7\ADk\22F/\B3\F4", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 12, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\FB\E5\0E\86\BC\8F\1Eu", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 13, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\90=\84\C0'V\EA\14", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 14, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\EE\F2z\8E\90\CA#\F7", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 15, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\E5E\BEIa\CA)\A1", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 16, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\DB\9B\C2W\7F\CC*?", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 17, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\94G\BE,\F5\E9\9Ai", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 18, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\9C\D3\8D\96\F0\B3\C1K", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 19, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\BDay\A7\1D\C9m\BB", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 20, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\98\EE\A2\1A\F2\\\D6\BE", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 21, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\C7g;.\B0\CB\F2\D0", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 22, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\88>\A3\E3\95gS\93", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 23, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\C8\CE\\\CD\8C\03\0C\A8", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 24, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\94\AFI\F6\C6P\AD\B8", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 25, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\EA\B8\85\8A\DE\92\E1\BC", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 26, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\F3\15\BB[\B85\D8\17", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 27, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\AD\CFk\07ca./", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 28, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\A5\C9\1D\A7\AC\AAM\DE", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 29, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"qe\95\87fP\A2\A6", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 30, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"(\EFI\\S\A3\87\AD", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 31, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"B\C3A\D8\FA\92\D82", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 32, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\CE|\F2r/Q'q", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 33, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\E3xY\F9F#\F3\A7", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 34, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"8\12\05\BB\1A\B0\E0\12", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 35, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\AE\97\A1\0F\D44\E0\15", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 36, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\B4\A3\15\08\BE\FFM1", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 37, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\819b)\F0\90y\02", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 38, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"M\0C\F4\9E\E5\D4\DC\CA", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 39, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\\s3jv\D8\BF\9A", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 40, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\D0\A7\04Sk\A9>\0E", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 41, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\92YX\FC\D6B\0C\AD", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 42, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\A9\15\C2\9B\C8\06s\18", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 43, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\95+y\F3\BC\0A\A6\D4", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 44, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\F2\1D\F2\E4\1DE5\F9", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 45, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\87Wu\19\04\8FS\A9", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 46, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\10\A5l\F5\DF\CD\9A\DB", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 47, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\EBu\09\\\CD\98l\D0", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 48, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"Q\A9\CB\9E\CB\A3\12\E6", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 49, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\96\AF\AD\FC,\E6f\C7", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 50, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"r\FER\97ZCd\EE", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 51, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"Z\16E\B2v\D5\92\A1", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 52, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\B2t\CB\8E\BF\87\87\0A", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 53, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"o\9B\B4 =\E7\B3\81", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 54, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\EA\EC\B2\A3\0B\22\A8\7F", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 55, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\99$\A4<\C11W$", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 56, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\BD\83\8D:\AF\BF\8D\B7", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 57, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\0B\1A*2e\D5\1A\EA", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 58, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\13Py\A3#\1C\E6`", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 59, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\93+(F\E4\D7\06f", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 60, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\E1\91_\\\B1\EC\A4l", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 61, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"\F3%\96\\\A1mb\9F", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 62, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"W_\F2\8E`8\1B\E5", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } } { i32 63, { i64, <{ [8 x i8], [56 x i8] }> } { i64 8, <{ [8 x i8], [56 x i8] }> <{ [8 x i8] c"rE\06\EBL2\8A\95", [56 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 0, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\A3\81\7F\04\BA%\A8\E6m\F6r\14\C7U\02\93", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 1, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\DA\87\C1\D8k\99\AFD4vY\11\9B\22\FCE", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 2, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\81w\22\8D\A4\A4]\C7\FC\A3\8B\DE\F6\0A\FF\E4", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 3, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\9Cp\B6\0CRg\A9N_3\B6\B0)\85\EDQ", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 4, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\F8\81d\C1-\9C\8F\AF}\0Fn|{\CDUy", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 5, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\13h\87Y\80wo\88TRz\07i\0E\96'", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 6, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\14\EE\CA3\8B \86\13H^\A00\8F\D7\A1^", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 7, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\A1\F1\EB\BE\D8\DB\C1S\C0\B8J\A6\1F\F0\829", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 8, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c";b\A9\BAbX\F5a\0F\83\E2d\F3\14\97\B4", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 9, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"&D\99\06\0A\D9\BA\AB\C4\7F\8B\02\BBmq\ED", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 10, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\00\11\0D\C3x\14iV\C9TG\D3\F3\D0\FB\BA", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 11, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\01Q\C5h8kfw\A2\B4\DCo\81\E5\DC\18", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 12, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\D6&\B2f\90^\F3X\82cM\F6\852\C1%", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 13, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\98i\E2G\E9\C0\8B\10\D0)\93O\C4\B9R\F7", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 14, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"1\FC\EF\ACf\D7\DE\9C~\C7H_\E4II\02", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 15, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"T\93\E9\993\B0\A8\11~\08\EC\0F\97\CF\C3\D9", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 16, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"n\E2\A4\CAg\B0T\BB\FD3\15\BF\85#\05w", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 17, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"G=\06\E8s\8D\B8\98T\C0f\C4z\E4w@", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 18, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\A4&\E5\E4#\BFH\85)M\A4\81\FE\AE\F7#", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 19, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"x\01w1\CFe\FA\B0t\D5 \89RQ.\B1", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 20, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\9E%\FC\83?\22\90s>\93D\A5\E889\EB", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 21, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"V\8EIZ\BERZ!\8A\22\14\CD>\07\1D\12", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 22, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"J)\B5ER\D1k\9AF\9C\10R\8E\FF\0A\AE", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 23, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\C9\D1\84\DD\D5\A9\F5\E0\CF\8C\E2\9A\9A\BFi\1C", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 24, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"-\B4y\AEx\BDP\D8\88*\8A\17\8Aa2\AD", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 25, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\8E\CE_\04-^D{PQ\B9\EA\CB\8D\8Fo", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 26, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\9C\0BS\B4\B3\C3\07\E8~\AE\E0\86x\14\1Ff", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 27, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\AB\F2H\AFi\A6\EA\E4\BF\D3\EB/\12\9E\EB\94", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 28, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\06d\DA\16hWK\88\B95\F3\02sX\AE\F4", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 29, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\AAK\9D\C4\BF3}\E9\0C\D4\FD<F|j\B7", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 30, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\EA\\\7FG\1F\AFk\DE+\1A\D7\D4hm\22\87", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 31, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c")9\B0\182#\FA\FC\17#\DEOR\C4=5", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 32, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"|9V\CA^\EA\FC>6>\9DUeF\EBh", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 33, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"w\C6\07qF\F0\1C2\B6\B6\9D_N\A9\FF\CF", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 34, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"7\A6\98l\B8\84~\DF\09%\F0\F10\9BT\DE", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 35, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\A7\05\F0\E6\9D\A9\A8\F9\07$\1A.\92<\8C\C8", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 36, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"=\C4}\1F)\C4HF\1E\9Ev\ED\90Og\11", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 37, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\0Db\BF\01\E6\FC\0E\1A\0D<GQ\C5\D3i+", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 38, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\8C\03F\8B\CA|f\9E\E4\FD^\08K\BE\E7\B5", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 39, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"R\8A[\B9;\AF,\9CDs\CC\E5\D0\D2+\D9", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 40, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\DFj0\1E\95\C9]\AD\97\AE\0C\C8\C6\91;\D8", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 41, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\80\11\89\90,\85\7F9\E75\91(^p\B6\DB", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 42, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\E6\174j\C9\C21\BB6P\AE4\CC\CA\0C[", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 43, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"'\D947\EF\B7!\AA@\18!\DC\ECZ\DF\89", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 44, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\89#}\9D\ED\9C^x\D8\B1\C9\B1f\CCsB", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 45, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"Jm\80\91\BF^}e\11\89\FA\94\A2P\B1L", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 46, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\0E3\F9`U\E7\AE\89?\FC\0E=\CFI)\02", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 47, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\E6\1CC+r\0B\19\D1\8E\C8\D8K\DCc\15\1B", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 48, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\F7\E5\AE\F5I\F7\82\CF7\90U\A6\08&\9B\16", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 49, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"C\8D\03\0F\D0\B7\A5O\A87\F2\AD \1Ad\03", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 50, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\A5\90\D3\EEO\BF\04\E3$~\0D'\F2\86B?", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 51, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"_\E2\C1\A1r\FE\93\C4\B1\\\D3|\AE\F9\F58", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 52, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c",\972\\\BD\06\B3n\B2\13=\D0\8B:\01|", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 53, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\92\C8\14\22zk\CA\94\9F\F0e\9F\00*\D3\9E", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 54, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\DC\E8P\11\0B\D82\8C\FB\D5\08A\D6\91\1D\87", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 55, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"g\F1I\84\C7\DAy\12H\E3+\B5\92%\83\DA", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 56, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\198\F2\CFr\D5N\E9~\94\16o\A9\1D*6", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 57, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"tH\1E\96F\EDI\FE\0Fb$0\16\04i\8E", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 58, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"W\FC\A5\DE\98\A9\D6\D8\00d8\D0X=\8A\1D", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 59, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\9F\EC\DE\1C\EF\DC\1C\BE\D4v6t\D9WSY", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 60, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\E3\04\0C\00\EB(\F1Sf\CAs\CB\D8r\E7@", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 61, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"v\97\00\9Aj\83\1D\FE\CC\A9\1CY\93g\0Fz", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 62, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"XST#!\F5g\A0\05\D5G\A4\F0GY\BD", [48 x i8] zeroinitializer }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } { i32 63, { i64, <{ [16 x i8], [48 x i8] }> } { i64 16, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"QP\D1w/P\83JP>\06\9A\97?\BD|", [48 x i8] zeroinitializer }> } } }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_siphash_basic) #6
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_siphash, i32 noundef 128, i32 noundef 1) #6
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_siphash_basic() #0 {
entry:
  %siphash = alloca %struct.siphash_st, align 8
  %key = alloca [16 x i8], align 16
  %output = alloca [16 x i8], align 16
  %0 = bitcast %struct.siphash_st* %siphash to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %output, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7
  %call = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef 4) #6
  %call1 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call, i32 noundef 0) #6
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef 8) #6
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 noundef %conv) #6
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %1, i32 noundef 0, i32 noundef 0) #6
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv8) #6
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true5
  %call13 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 8) #6
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 268, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 noundef %conv15) #6
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.end, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true11
  %call20 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 16) #6
  %call21 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call20, i32 noundef 0) #6
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %call24 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef 16) #6
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 272, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 noundef %conv26) #6
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %call31 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %1, i32 noundef 0, i32 noundef 0) #6
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv33) #6
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true29
  %call38 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 8) #6
  %call39 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call38, i32 noundef 0) #6
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %call43 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 16) #6
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv45) #6
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.end, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true41
  %call49 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef 0) #6
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 278, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 noundef %conv51) #6
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.end, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true48
  %call56 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %1, i32 noundef 0, i32 noundef 0) #6
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 279, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv58) #6
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.end, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %land.lhs.true54
  %call63 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 8) #6
  %call64 = call i32 @test_int_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 280, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 noundef %call63, i32 noundef 0) #6
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true61
  %call67 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %2, i64 noundef 16) #6
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 281, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 noundef %conv69) #6
  %tobool71 = icmp ne i32 %call70, 0
  %phi.cast = zext i1 %tobool71 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true61, %land.lhs.true54, %land.lhs.true48, %land.lhs.true41, %land.lhs.true36, %land.lhs.true29, %land.lhs.true23, %land.lhs.true18, %land.lhs.true11, %land.lhs.true5, %land.lhs.true, %entry
  %3 = phi i32 [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true41 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true18 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %3
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_siphash(i32 noundef %idx) #0 {
entry:
  %siphash = alloca %struct.siphash_st, align 8
  %test = alloca %struct.TESTDATA, align 8
  %key = alloca <16 x i8>, align 16
  %in = alloca [64 x i8], align 16
  %out = alloca [16 x i8], align 16
  %0 = bitcast %struct.siphash_st* %siphash to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %1 = bitcast %struct.TESTDATA* %test to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #7
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds [128 x %struct.TESTDATA], [128 x %struct.TESTDATA]* bitcast (<{ { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [8 x i8], [56 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } }, { i32, { i64, <{ [16 x i8], [48 x i8] }> } } }>* @tests to [128 x %struct.TESTDATA]*), i64 0, i64 %idxprom
  %2 = bitcast %struct.TESTDATA* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %1, i8* noundef nonnull align 16 dereferenceable(80) %2, i64 80, i1 false), !tbaa.struct !3
  %3 = getelementptr inbounds <16 x i8>, <16 x i8>* %key, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #7
  %idx1 = getelementptr inbounds %struct.TESTDATA, %struct.TESTDATA* %test, i64 0, i32 0
  %5 = load i32, i32* %idx1, align 8, !tbaa !11
  %conv = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds %struct.TESTDATA, %struct.TESTDATA* %test, i64 0, i32 1, i32 1, i64 0
  %size = getelementptr inbounds %struct.TESTDATA, %struct.TESTDATA* %test, i64 0, i32 1, i32 0
  %6 = load i64, i64* %size, align 8, !tbaa !14
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7
  switch i64 %6, label %if.then [
    i64 16, label %if.end
    i64 8, label %if.end
  ]

if.then:                                          ; preds = %entry
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i64 noundef %6, i32 noundef 8, i32 noundef 16) #6
  br label %cleanup155

if.end:                                           ; preds = %entry, %entry
  %call = tail call i32 @test_int_le(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 188, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 noundef %5, i32 noundef 64) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup155, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* %key, align 16, !tbaa !10
  %cmp15229.not = icmp eq i32 %5, 0
  br i1 %cmp15229.not, label %for.end22, label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.body.preheader
  %umax = call i64 @llvm.umax.i64(i64 %conv, i64 1)
  %min.iters.check = icmp ult i64 %umax, 32
  br i1 %min.iters.check, label %for.body17.preheader245, label %vector.ph

vector.ph:                                        ; preds = %for.body17.preheader
  %n.vec = and i64 %umax, -32
  %8 = add i64 %n.vec, -32
  %9 = lshr exact i64 %8, 5
  %10 = add nuw nsw i64 %9, 1
  %xtraiter = and i64 %10, 3
  %11 = icmp ult i64 %8, 96
  br i1 %11, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %10, 1152921504606846972
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %vec.ind240 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph.new ], [ %vec.ind.next243.3, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.3, %vector.body ]
  %step.add241 = add <16 x i8> %vec.ind240, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %index
  %13 = bitcast i8* %12 to <16 x i8>*
  store <16 x i8> %vec.ind240, <16 x i8>* %13, align 16, !tbaa !10
  %14 = getelementptr inbounds i8, i8* %12, i64 16
  %15 = bitcast i8* %14 to <16 x i8>*
  store <16 x i8> %step.add241, <16 x i8>* %15, align 16, !tbaa !10
  %index.next = or i64 %index, 32
  %vec.ind.next243 = add <16 x i8> %vec.ind240, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %step.add241.1 = add <16 x i8> %vec.ind240, <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>
  %16 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %index.next
  %17 = bitcast i8* %16 to <16 x i8>*
  store <16 x i8> %vec.ind.next243, <16 x i8>* %17, align 16, !tbaa !10
  %18 = getelementptr inbounds i8, i8* %16, i64 16
  %19 = bitcast i8* %18 to <16 x i8>*
  store <16 x i8> %step.add241.1, <16 x i8>* %19, align 16, !tbaa !10
  %index.next.1 = or i64 %index, 64
  %vec.ind.next243.1 = add <16 x i8> %vec.ind240, <i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64, i8 64>
  %step.add241.2 = add <16 x i8> %vec.ind240, <i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80, i8 80>
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %index.next.1
  %21 = bitcast i8* %20 to <16 x i8>*
  store <16 x i8> %vec.ind.next243.1, <16 x i8>* %21, align 16, !tbaa !10
  %22 = getelementptr inbounds i8, i8* %20, i64 16
  %23 = bitcast i8* %22 to <16 x i8>*
  store <16 x i8> %step.add241.2, <16 x i8>* %23, align 16, !tbaa !10
  %index.next.2 = or i64 %index, 96
  %vec.ind.next243.2 = add <16 x i8> %vec.ind240, <i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96, i8 96>
  %step.add241.3 = add <16 x i8> %vec.ind240, <i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112, i8 112>
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %index.next.2
  %25 = bitcast i8* %24 to <16 x i8>*
  store <16 x i8> %vec.ind.next243.2, <16 x i8>* %25, align 16, !tbaa !10
  %26 = getelementptr inbounds i8, i8* %24, i64 16
  %27 = bitcast i8* %26 to <16 x i8>*
  store <16 x i8> %step.add241.3, <16 x i8>* %27, align 16, !tbaa !10
  %index.next.3 = add nuw i64 %index, 128
  %vec.ind.next243.3 = xor <16 x i8> %vec.ind240, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !15

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.ind240.unr = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next243.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %vec.ind240.epil = phi <16 x i8> [ %vec.ind.next243.epil, %vector.body.epil ], [ %vec.ind240.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %vector.body.epil ], [ 0, %middle.block.unr-lcssa ]
  %step.add241.epil = add <16 x i8> %vec.ind240.epil, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %index.epil
  %29 = bitcast i8* %28 to <16 x i8>*
  store <16 x i8> %vec.ind240.epil, <16 x i8>* %29, align 16, !tbaa !10
  %30 = getelementptr inbounds i8, i8* %28, i64 16
  %31 = bitcast i8* %30 to <16 x i8>*
  store <16 x i8> %step.add241.epil, <16 x i8>* %31, align 16, !tbaa !10
  %index.next.epil = add nuw i64 %index.epil, 32
  %vec.ind.next243.epil = add <16 x i8> %vec.ind240.epil, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !18

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %umax, %n.vec
  br i1 %cmp.n, label %for.end22, label %for.body17.preheader245

for.body17.preheader245:                          ; preds = %for.body17.preheader, %middle.block
  %i.1230.ph = phi i64 [ 0, %for.body17.preheader ], [ %n.vec, %middle.block ]
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader245, %for.body17
  %i.1230 = phi i64 [ %inc21, %for.body17 ], [ %i.1230.ph, %for.body17.preheader245 ]
  %conv18 = trunc i64 %i.1230 to i8
  %arrayidx19 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %i.1230
  store i8 %conv18, i8* %arrayidx19, align 1, !tbaa !10
  %inc21 = add nuw i64 %i.1230, 1
  %exitcond.not = icmp eq i64 %inc21, %umax
  br i1 %exitcond.not, label %for.end22, label %for.body17, !llvm.loop !20

for.end22:                                        ; preds = %for.body17, %middle.block, %for.body.preheader
  %call23 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef %6) #6
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv25) #6
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %cleanup155, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end22
  %call29 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv31) #6
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %cleanup155, label %if.end35

if.end35:                                         ; preds = %lor.lhs.false
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %4, i64 noundef %conv) #6
  %call38 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %7, i64 noundef %6) #6
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 202, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv40) #6
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %cleanup155, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end35
  %call45 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef %6, i8* noundef nonnull %arraydecay, i64 noundef %6) #6
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup155, label %if.end48

if.end48:                                         ; preds = %lor.lhs.false43
  %cmp49 = icmp ugt i32 %5, 16
  br i1 %cmp49, label %if.then51, label %cleanup155

if.then51:                                        ; preds = %if.end48
  %call52 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef %6) #6
  %cmp53 = icmp ne i32 %call52, 0
  %conv54 = zext i1 %cmp53 to i32
  %call55 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv54) #6
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %cleanup155, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.then51
  %call59 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv61) #6
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %cleanup155, label %if.end65

if.end65:                                         ; preds = %lor.lhs.false57
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %4, i64 noundef 1) #6
  %add.ptr = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 1
  %sub = add nsw i64 %conv, -1
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %add.ptr, i64 noundef %sub) #6
  %call69 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %7, i64 noundef %6) #6
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 212, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv71) #6
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %cleanup155, label %if.end75

if.end75:                                         ; preds = %if.end65
  %call77 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef %6, i8* noundef nonnull %arraydecay, i64 noundef %6) #6
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end75
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 noundef %idx) #6
  br label %cleanup155

if.end81:                                         ; preds = %if.end75
  %cmp82 = icmp ugt i32 %5, 32
  br i1 %cmp82, label %if.then84, label %cleanup155

if.then84:                                        ; preds = %if.end81
  %div = lshr i64 %conv, 1
  %call85 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef %6) #6
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 224, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv87) #6
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %cleanup155, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.then84
  %call92 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  %cmp93 = icmp ne i32 %call92, 0
  %conv94 = zext i1 %cmp93 to i32
  %call95 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv94) #6
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %cleanup155, label %if.end98

if.end98:                                         ; preds = %lor.lhs.false90
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %4, i64 noundef %div) #6
  %add.ptr101 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %div
  %sub102 = sub i64 %conv, %div
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %add.ptr101, i64 noundef %sub102) #6
  %call104 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %7, i64 noundef %6) #6
  %cmp105 = icmp ne i32 %call104, 0
  %conv106 = zext i1 %cmp105 to i32
  %call107 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv106) #6
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup155, label %if.end110

if.end110:                                        ; preds = %if.end98
  %call112 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 232, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef %6, i8* noundef nonnull %arraydecay, i64 noundef %6) #6
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then114, label %for.body119

if.then114:                                       ; preds = %if.end110
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 noundef %idx) #6
  br label %cleanup155

for.body119:                                      ; preds = %if.end110, %for.inc152
  %half.0232 = phi i64 [ %add, %for.inc152 ], [ 16, %if.end110 ]
  %call120 = call i32 @SipHash_set_hash_size(%struct.siphash_st* noundef nonnull %siphash, i64 noundef %6) #6
  %cmp121 = icmp ne i32 %call120, 0
  %conv122 = zext i1 %cmp121 to i32
  %call123 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 238, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv122) #6
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %cleanup155, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %for.body119
  %call127 = call i32 @SipHash_Init(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #6
  %cmp128 = icmp ne i32 %call127, 0
  %conv129 = zext i1 %cmp128 to i32
  %call130 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 239, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv129) #6
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %cleanup155, label %if.end133

if.end133:                                        ; preds = %lor.lhs.false125
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %4, i64 noundef %half.0232) #6
  %add.ptr136 = getelementptr inbounds [64 x i8], [64 x i8]* %in, i64 0, i64 %half.0232
  %sub137 = sub i64 %conv, %half.0232
  call void @SipHash_Update(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %add.ptr136, i64 noundef %sub137) #6
  %call139 = call i32 @SipHash_Final(%struct.siphash_st* noundef nonnull %siphash, i8* noundef nonnull %7, i64 noundef %6) #6
  %cmp140 = icmp ne i32 %call139, 0
  %conv141 = zext i1 %cmp140 to i32
  %call142 = call i32 @test_true(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv141) #6
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %cleanup155, label %if.end145

if.end145:                                        ; preds = %if.end133
  %call147 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* noundef nonnull %7, i64 noundef %6, i8* noundef nonnull %arraydecay, i64 noundef %6) #6
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.then149, label %for.inc152

if.then149:                                       ; preds = %if.end145
  call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 noundef %idx, i64 noundef %half.0232, i64 noundef %sub137) #6
  br label %cleanup155

for.inc152:                                       ; preds = %if.end145
  %add = add i64 %half.0232, 16
  %cmp117 = icmp ult i64 %add, %conv
  br i1 %cmp117, label %for.body119, label %cleanup155, !llvm.loop !22

cleanup155:                                       ; preds = %for.inc152, %lor.lhs.false125, %for.body119, %if.end133, %if.end48, %if.end98, %if.then84, %lor.lhs.false90, %if.end81, %if.then114, %if.then149, %if.end65, %if.then51, %lor.lhs.false57, %if.end35, %lor.lhs.false43, %for.end22, %lor.lhs.false, %if.end, %if.then79, %if.then
  %retval.1 = phi i32 [ 0, %if.then ], [ 0, %if.then79 ], [ 0, %if.end ], [ 0, %lor.lhs.false ], [ 0, %for.end22 ], [ 0, %lor.lhs.false43 ], [ 0, %if.end35 ], [ 0, %lor.lhs.false57 ], [ 0, %if.then51 ], [ 0, %if.end65 ], [ 0, %if.then149 ], [ 0, %if.then114 ], [ 1, %if.end81 ], [ 0, %lor.lhs.false90 ], [ 0, %if.then84 ], [ 0, %if.end98 ], [ 1, %if.end48 ], [ 1, %for.inc152 ], [ 0, %lor.lhs.false125 ], [ 0, %for.body119 ], [ 0, %if.end133 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #7
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @test_int_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SipHash_set_hash_size(%struct.siphash_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SipHash_Init(%struct.siphash_st* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @SipHash_Final(%struct.siphash_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_int_le(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @SipHash_Update(%struct.siphash_st* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{i64 0, i64 4, !4, i64 8, i64 8, !8, i64 16, i64 64, !10}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !5, i64 0}
!12 = !{!"", !5, i64 0, !13, i64 8}
!13 = !{!"", !9, i64 0, !6, i64 8}
!14 = !{!12, !9, i64 8}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !16, !21, !17}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !16}
