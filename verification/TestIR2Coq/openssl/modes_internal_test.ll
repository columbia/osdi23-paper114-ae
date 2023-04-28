; ModuleID = 'test/modes_internal_test.c'
source_filename = "test/modes_internal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CTS128_FIXTURE = type { i8*, i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)* }
%struct.SIZED_DATA = type { i64, i8* }
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.gcm128_data = type { %struct.SIZED_DATA, %struct.SIZED_DATA, %struct.SIZED_DATA, %struct.SIZED_DATA, %struct.SIZED_DATA, %struct.SIZED_DATA }
%struct.gcm128_context = type { %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, [16 x %struct.u128], void (i64*, %struct.u128*)*, void (i64*, %struct.u128*, i8*, i64)*, i32, i32, void (i8*, i8*, i8*)*, i8*, [48 x i8] }
%union.anon = type { [2 x i64] }
%struct.u128 = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"test_aes_cts128\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"test_aes_cts128_nist\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"test_gcm128\00", align 1
@test_aes_cts128.fixture_cts128 = internal constant %struct.CTS128_FIXTURE { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i64 (i8*, i8*, i64)* @last_blocks_correction, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)* @CRYPTO_cts128_encrypt_block, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)* @CRYPTO_cts128_encrypt, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)* @CRYPTO_cts128_decrypt_block, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)* @CRYPTO_cts128_decrypt }, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"aes_cts128\00", align 1
@cts128_test_iv = internal constant [16 x i8] zeroinitializer, align 16
@aes_cts128_vectors = internal unnamed_addr constant [6 x %struct.SIZED_DATA] [%struct.SIZED_DATA { i64 17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @vector_17, i32 0, i32 0) }, %struct.SIZED_DATA { i64 31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @vector_31, i32 0, i32 0) }, %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @vector_32, i32 0, i32 0) }, %struct.SIZED_DATA { i64 47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @vector_47, i32 0, i32 0) }, %struct.SIZED_DATA { i64 48, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @vector_48, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @vector_64, i32 0, i32 0) }], align 16
@cts128_test_input = internal constant [64 x i8] c"I would like the General Gau's Chicken, please, and wonton soup.", align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"test/modes_internal_test.c\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s_vector_%lu\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"fixture->encrypt_block(test_input, ciphertext, len, encrypt_key_schedule, iv, (block128_f)AES_encrypt)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ciphertext\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"iv\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"vector + len - tail\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"len == size || len + 16 == size\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"cleartext\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"test_input\00", align 1
@.str.15 = private unnamed_addr constant [107 x i8] c"fixture->encrypt_stream(test_input, ciphertext, len, encrypt_key_schedule, iv, (cbc128_f) AES_cbc_encrypt)\00", align 1
@.str.16 = private unnamed_addr constant [105 x i8] c"fixture->decrypt_stream(ciphertext, cleartext, len, decrypt_key_schedule, iv, (cbc128_f)AES_cbc_encrypt)\00", align 1
@vector_17 = internal constant [17 x i8] c"\C655h\F2\BF\8C\B4\D8\A5\806-\A7\FF\7F\97", align 16
@vector_31 = internal constant [31 x i8] c"\FC\00x>\0E\FD\B2\C1\D4E\D4\C8\EF\F7\ED\22\97hrh\D6\EC\CC\C0\C0{%\E2^\CF\E5", align 16
@vector_32 = internal constant [32 x i8] c"91%#\A7\86b\D5\BE\7F\CB\CC\98\EB\F5\A8\97hrh\D6\EC\CC\C0\C0{%\E2^\CF\E5\84", align 16
@vector_47 = internal constant [47 x i8] c"\97hrh\D6\EC\CC\C0\C0{%\E2^\CF\E5\84\B3\FF\FD\94\0C\16\A1\8C\1BUI\D2\F88\02\9E91%#\A7\86b\D5\BE\7F\CB\CC\98\EB\F5", align 16
@vector_48 = internal constant [48 x i8] c"\97hrh\D6\EC\CC\C0\C0{%\E2^\CF\E5\84\9D\AD\8B\BB\96\C4\CD\C0;\C1\03\E1\A1\94\BB\D891%#\A7\86b\D5\BE\7F\CB\CC\98\EB\F5\A8", align 16
@vector_64 = internal constant [64 x i8] c"\97hrh\D6\EC\CC\C0\C0{%\E2^\CF\E5\8491%#\A7\86b\D5\BE\7F\CB\CC\98\EB\F5\A8H\07\EF\E86\EE\89\A5&s\0D\BC/{\C8@\9D\AD\8B\BB\96\C4\CD\C0;\C1\03\E1\A1\94\BB\D8", align 16
@cts128_encrypt_key_schedule.init_key = internal unnamed_addr global i1 false, align 4
@cts128_encrypt_key_schedule.ks = internal global %struct.aes_key_st zeroinitializer, align 4
@cts128_test_key = internal constant [16 x i8] c"chicken teriyaki", align 16
@cts128_decrypt_key_schedule.init_key = internal unnamed_addr global i1 false, align 4
@cts128_decrypt_key_schedule.ks = internal global %struct.aes_key_st zeroinitializer, align 4
@test_aes_cts128_nist.fixture_cts128_nist = internal constant %struct.CTS128_FIXTURE { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i64 (i8*, i8*, i64)* @last_blocks_correction_nist, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)* @CRYPTO_nistcts128_encrypt_block, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)* @CRYPTO_nistcts128_encrypt, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)* @CRYPTO_nistcts128_decrypt_block, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)* @CRYPTO_nistcts128_decrypt }, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"aes_cts128_nist\00", align 1
@gcm128_vectors = internal unnamed_addr constant [20 x %struct.gcm128_data] [%struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @P1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @C1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T1, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @P2, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @C2, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T2, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @P3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @C3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T3, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T4, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @IV5, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C5, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T5, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K3, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @IV6, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P4, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C6, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T6, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @P7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @C7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T7, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @P8, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @C8, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T8, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A7, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @P9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @C9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T9, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T10, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @IV11, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C11, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T11, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @K9, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @IV12, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P10, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C12, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T12, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @P13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @C13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T13, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV14, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @P14, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @C14, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T14, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A13, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @P15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @C15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T15, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T16, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @IV17, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C17, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T17, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @K15, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @IV18, i32 0, i32 0) }, %struct.SIZED_DATA { i64 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @A16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @P16, i32 0, i32 0) }, %struct.SIZED_DATA { i64 60, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @C18, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T18, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @IV1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 128, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @A19, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @P1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @C1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T19, i32 0, i32 0) } }, %struct.gcm128_data { %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @K1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* bitcast (<{ i8, i8, i8, i8, [60 x i8] }>* @IV20 to [64 x i8]*), i32 0, i32 0) }, %struct.SIZED_DATA { i64 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @A1, i32 0, i32 0) }, %struct.SIZED_DATA { i64 288, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @P20, i32 0, i32 0) }, %struct.SIZED_DATA { i64 288, i8* getelementptr inbounds ([288 x i8], [288 x i8]* @C20, i32 0, i32 0) }, %struct.SIZED_DATA { i64 16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @T20, i32 0, i32 0) } }], align 16
@.str.18 = private unnamed_addr constant [50 x i8] c"CRYPTO_gcm128_encrypt( &ctx, P.data, out, P.size)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"CRYPTO_gcm128_finish(&ctx, T.data, 16)\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"C.data\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"P.data\00", align 1
@K1 = internal constant [16 x i8] zeroinitializer, align 16
@IV1 = internal constant [12 x i8] zeroinitializer, align 1
@A1 = internal constant [1 x i8] zeroinitializer, align 1
@P1 = internal constant [1 x i8] zeroinitializer, align 1
@C1 = internal constant [1 x i8] zeroinitializer, align 1
@T1 = internal constant [16 x i8] c"X\E2\FC\CE\FA~0a6\7F\1DW\A4\E7EZ", align 16
@P2 = internal constant [16 x i8] zeroinitializer, align 16
@C2 = internal constant [16 x i8] c"\03\88\DA\CE`\B6\A3\92\F3(\C2\B9q\B2\FEx", align 16
@T2 = internal constant [16 x i8] c"\ABnG\D4,\EC\13\BD\F5:g\B2\12W\BD\DF", align 16
@K3 = internal constant [16 x i8] c"\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08", align 16
@IV3 = internal constant [12 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD\DE\CA\F8\88", align 1
@P3 = internal constant [64 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9\1A\AF\D2U", align 16
@C3 = internal constant [64 x i8] c"B\83\1E\C2!wt$Kr!\B7\84\D0\D4\9C\E3\AA!/,\02\A4\E05\C1~#)\AC\A1.!\D5\14\B2Tf\93\1C}\8FjZ\AC\84\AA\05\1B\A3\0B9j\0A\AC\97=X\E0\91G?Y\85", align 16
@T3 = internal constant [16 x i8] c"M\\*\F3'\CDd\A6,\F3Z\BD+\A6\FA\B4", align 16
@A4 = internal constant [20 x i8] c"\FE\ED\FA\CE\DE\AD\BE\EF\FE\ED\FA\CE\DE\AD\BE\EF\AB\AD\DA\D2", align 16
@P4 = internal constant [60 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9", align 16
@C4 = internal constant [60 x i8] c"B\83\1E\C2!wt$Kr!\B7\84\D0\D4\9C\E3\AA!/,\02\A4\E05\C1~#)\AC\A1.!\D5\14\B2Tf\93\1C}\8FjZ\AC\84\AA\05\1B\A3\0B9j\0A\AC\97=X\E0\91", align 16
@T4 = internal constant [16 x i8] c"[\C9O\BC2!\A5\DB\94\FA\E9Z\E7\12\1AG", align 16
@IV5 = internal constant [8 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD", align 1
@C5 = internal constant [60 x i8] c"a5;L(\06\93Jw\7F\F5\1F\A2*GUi\9B*qO\CD\C6\F87f\E5\F9{lt#s\80i\00\E4\9F$\B2+\09uD\D4\89kBI\89\B5\E1\EB\AC\0F\07\C2?E\98", align 16
@T5 = internal constant [16 x i8] c"6\12\D2\E7\9E;\07\85V\1B\E1J\AC\A2\FC\CB", align 16
@IV6 = internal constant [60 x i8] c"\93\13\22]\F8\84\06\E5U\90\9CZ\FFRi\AAjz\958SO}\A1\E4\C3\03\D2\A3\18\A7(\C3\C0\C9QV\80\959\FC\F0\E2B\9AkRT\16\AE\DB\F5\A0\DEjW\A67\B3\9B", align 16
@C6 = internal constant [60 x i8] c"\8C\E2I\98bV\15\B6\03\A03\AC\A1?\B8\94\BE\91\12\A5\C3\A2\11\A8\BA&*<\CA~,\A7\01\E4\A9\A4\FB\A4<\90\CC\DC\B2\81\D4\8C|o\D6(u\D2\AC\A4\17\03L4\AE\E5", align 16
@T6 = internal constant [16 x i8] c"a\9C\C5\AE\FF\FE\0B\FAF*\F4<\16\99\D0P", align 16
@K7 = internal constant [24 x i8] zeroinitializer, align 16
@IV7 = internal constant [12 x i8] zeroinitializer, align 1
@A7 = internal constant [1 x i8] zeroinitializer, align 1
@P7 = internal constant [1 x i8] zeroinitializer, align 1
@C7 = internal constant [1 x i8] zeroinitializer, align 1
@T7 = internal constant [16 x i8] c"\CD3\B2\8A\C7s\F7K\A0\0E\D1\F3\12W$5", align 16
@P8 = internal constant [16 x i8] zeroinitializer, align 16
@C8 = internal constant [16 x i8] c"\98\E7$|\07\F0\FEA\1C&~C\84\B0\F6\00", align 16
@T8 = internal constant [16 x i8] c"/\F5\8D\80\039'\AB\8E\F4\D4Xu\14\F0\FB", align 16
@K9 = internal constant [24 x i8] c"\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08\FE\FF\E9\92\86es\1C", align 16
@IV9 = internal constant [12 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD\DE\CA\F8\88", align 1
@P9 = internal constant [64 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9\1A\AF\D2U", align 16
@C9 = internal constant [64 x i8] c"9\80\CA\0B<\00\E8A\EB\06\FA\C4\87*'W\85\9E\1C\EA\A6\EF\D9\84b\85\93\B4\0C\A1\E1\9C}w=\00\C1D\C5%\ACa\9D\18\C8J?G\18\E2D\8B/\E3$\D9\CC\DA'\10\AC\AD\E2V", align 16
@T9 = internal constant [16 x i8] c"\99$\A7\C8Xs6\BF\B1\18\02M\B8gJ\14", align 16
@A10 = internal constant [20 x i8] c"\FE\ED\FA\CE\DE\AD\BE\EF\FE\ED\FA\CE\DE\AD\BE\EF\AB\AD\DA\D2", align 16
@P10 = internal constant [60 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9", align 16
@C10 = internal constant [60 x i8] c"9\80\CA\0B<\00\E8A\EB\06\FA\C4\87*'W\85\9E\1C\EA\A6\EF\D9\84b\85\93\B4\0C\A1\E1\9C}w=\00\C1D\C5%\ACa\9D\18\C8J?G\18\E2D\8B/\E3$\D9\CC\DA'\10", align 16
@T10 = internal constant [16 x i8] c"%\19I\8E\80\F1G\8F7\BAU\BDm'a\8C", align 16
@IV11 = internal constant [8 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD", align 1
@C11 = internal constant [60 x i8] c"\0F\10\F5\99\AE\14\A1T\ED$\B3n%2M\B8\C5fc.\F2\BB\B3O\83G(\0F\C4PpW\FD\DC)\DF\9AG\1Fu\C6eA\D4\D4\DA\D1\C9\E9:\19\A5\8E\8BG?\A0\F0b\F7", align 16
@T11 = internal constant [16 x i8] c"e\DC\C5\7F\CFb:$\09O\CC\A4\0D53\F8", align 16
@IV12 = internal constant [60 x i8] c"\93\13\22]\F8\84\06\E5U\90\9CZ\FFRi\AAjz\958SO}\A1\E4\C3\03\D2\A3\18\A7(\C3\C0\C9QV\80\959\FC\F0\E2B\9AkRT\16\AE\DB\F5\A0\DEjW\A67\B3\9B", align 16
@C12 = internal constant [60 x i8] c"\D2~\88h\1C\E3$<H0\16Z\8F\DC\F9\FF\1D\E9\A1\D8\E6\B4G\EFn\F7\B7\98(fnE\81\E7\90\12\AF4\DD\D9\E2\F07X\9B)-\B3\E6|\03gE\FA\22\E7\E9\B77;", align 16
@T12 = internal constant [16 x i8] c"\DC\F5f\FF)\1C%\BB\B8V\8F\C3\D3v\A6\D9", align 16
@K13 = internal constant [32 x i8] zeroinitializer, align 16
@IV13 = internal constant [12 x i8] zeroinitializer, align 1
@A13 = internal constant [1 x i8] zeroinitializer, align 1
@P13 = internal constant [1 x i8] zeroinitializer, align 1
@C13 = internal constant [1 x i8] zeroinitializer, align 1
@T13 = internal constant [16 x i8] c"S\0F\8A\FB\C7E6\B9\A9c\B4\F1\C4\CBs\8B", align 16
@IV14 = internal constant [12 x i8] zeroinitializer, align 1
@P14 = internal constant [16 x i8] zeroinitializer, align 16
@C14 = internal constant [16 x i8] c"\CE\A7@=M`kn\07N\C5\D3\BA\F3\9D\18", align 16
@T14 = internal constant [16 x i8] c"\D0\D1\C8\A7\99\99k\F0&[\98\B5\D4\8A\B9\19", align 16
@K15 = internal constant [32 x i8] c"\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08\FE\FF\E9\92\86es\1Cmj\8F\94g0\83\08", align 16
@IV15 = internal constant [12 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD\DE\CA\F8\88", align 1
@P15 = internal constant [64 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9\1A\AF\D2U", align 16
@C15 = internal constant [64 x i8] c"R-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b\89\80\15\AD", align 16
@T15 = internal constant [16 x i8] c"\B0\94\DA\C5\D94q\BD\EC\1AP\22p\E3\CCl", align 16
@A16 = internal constant [20 x i8] c"\FE\ED\FA\CE\DE\AD\BE\EF\FE\ED\FA\CE\DE\AD\BE\EF\AB\AD\DA\D2", align 16
@P16 = internal constant [60 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9", align 16
@C16 = internal constant [60 x i8] c"R-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b", align 16
@T16 = internal constant [16 x i8] c"v\FCn\CE\0FN\17h\CD\DF\88S\BB-U\1B", align 16
@IV17 = internal constant [8 x i8] c"\CA\FE\BA\BE\FA\CE\DB\AD", align 1
@C17 = internal constant [60 x i8] c"\C3v-\F1\CAx}2\AEG\C1;\F1\98D\CB\AF\1A\E1M\0B\97j\FA\C5/\F7\D7\9B\BA\9D\E0\FE\B5\82\D394\A4\F0\95L\C26;\C7?xb\ACC\0Ed\AB\E4\99\F4|\9B\1F", align 16
@T17 = internal constant [16 x i8] c":3}\BFF\A7\92\C4^EI\13\FE.\A8\F2", align 16
@IV18 = internal constant [60 x i8] c"\93\13\22]\F8\84\06\E5U\90\9CZ\FFRi\AAjz\958SO}\A1\E4\C3\03\D2\A3\18\A7(\C3\C0\C9QV\80\959\FC\F0\E2B\9AkRT\16\AE\DB\F5\A0\DEjW\A67\B3\9B", align 16
@C18 = internal constant [60 x i8] c"Z\8D\EF/\0C\9ES\F1\F7]xSe\9E* \EE\B2\B2*\AF\DEd\19\A0X\ABOotk\F4\0F\C0\C3\B7\80\F2DE-\A3\EB\F1\C5\D8,\DE\A2A\89\97 \0E\F8.D\AE~?", align 16
@T18 = internal constant [16 x i8] c"\A4J\82f\EE\1C\8E\B0\C8\B5\D4\CFZ\E9\F1\9A", align 16
@A19 = internal constant [128 x i8] c"\D912%\F8\84\06\E5\A5Y\09\C5\AF\F5&\9A\86\A7\A9S\154\F7\DA.L0=\8A1\8Ar\1C<\0C\95\95h\09S/\CF\0E$I\A6\B5%\B1j\ED\F5\AA\0D\E6W\BAc{9\1A\AF\D2UR-\C1\F0\99V}\07\F4\7F7\A3*\84B}d:\8C\DC\BF\E5\C0\C9u\98\A2\BD%U\D1\AA\8C\B0\8EHY\0D\BB=\A7\B0\8B\10V\82\888\C5\F6\1Ec\93\BAz\0A\BC\C9\F6b\89\80\15\AD", align 16
@T19 = internal constant [16 x i8] c"_\EAy:-o\97M7\E6\8E\0C\B8\FF\94\92", align 16
@P20 = internal constant [288 x i8] zeroinitializer, align 16
@C20 = internal constant [288 x i8] c"V\B37<\A9\EFnJ+d\FE\1E\9A\17\B6\14%\F1\0DG\A7Z_\CE\13\EF\C6\BCxJ\F2OAA\BD\D4\8C\F7\C7p\88z\FDW<\CAT\18\A9\AE\FF\CD|\\\ED\DF\C6\A7\83\97\B9\A8[I\9D\A5X%rg\CA\AB*\D0\B2<\A4v\A5<\B1\7F\B4\1CK\8BG\\\B4\F3\F7\16P\94\C2)\C9\E8\C4\DC\0A*_\F1\90>P\15\11\22\13v\A1\CD\B86LPa\A2\0C\AEt\BCJ\CDv\CE\B0\AB\C9\FD2\17\EF\9F\8C\90\BE@-\DFm\86\97\F4\F8\80\DF\F1[\FBzk($\1E\C8\FE\18<-Y\E3\F9\DF\FFe<q&\F0\AC\B9\E6B\11\F4+\AE\12\AFF+\10p\BE\F1\AB^6\06\87,\A1\0D\EE\15\B3$\9B\1A\1B\95\8F#\13LK\CC\B7\D02\00\BC\E4 \A2\F8\EBf\DC\F3dM\14#\C1\B5i\90\03\C1>\CE\F4\BF8\A3\B6\0E\ED\C3@3\BA\C1\90'\83\DCm\89\E2\E7t\18\8AC\9C~\BC\C0g-\BD\A4\DD\CF\B2yF\13\B0\BEA1^\F7xp\8Ap\EE}u\16\\", align 16
@T20 = internal constant [16 x i8] c"\8B0\7Fk3(m\0A\B0&\A9\ED?\E1\E8_", align 16
@IV20 = internal constant <{ i8, i8, i8, i8, [60 x i8] }> <{ i8 -1, i8 -1, i8 -1, i8 -1, [60 x i8] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 (i32)* noundef nonnull @test_aes_cts128, i32 noundef 6, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 (i32)* noundef nonnull @test_aes_cts128_nist, i32 noundef 6, i32 noundef 1) #4
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 (i32)* noundef nonnull @test_gcm128, i32 noundef 20, i32 noundef 1) #4
  ret i32 1
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_aes_cts128(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @execute_cts128(%struct.CTS128_FIXTURE* noundef nonnull @test_aes_cts128.fixture_cts128, i32 noundef %idx) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_aes_cts128_nist(i32 noundef %idx) #0 {
entry:
  %call = tail call fastcc i32 @execute_cts128(%struct.CTS128_FIXTURE* noundef nonnull @test_aes_cts128_nist.fixture_cts128_nist, i32 noundef %idx) #5
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_gcm128(i32 noundef %idx) #0 {
entry:
  %out = alloca [512 x i8], align 16
  %ctx = alloca %struct.gcm128_context, align 8
  %key = alloca %struct.aes_key_st, align 4
  %0 = getelementptr inbounds [512 x i8], [512 x i8]* %out, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 512, i8* nonnull %0) #6
  %idxprom = sext i32 %idx to i64
  %K.sroa.0.0..sroa_idx = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 0, i32 0
  %K.sroa.0.0.copyload = load i64, i64* %K.sroa.0.0..sroa_idx, align 16, !tbaa.struct !3
  %K.sroa.4.0..sroa_idx157 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 0, i32 1
  %K.sroa.4.0.copyload = load i8*, i8** %K.sroa.4.0..sroa_idx157, align 8, !tbaa.struct !10
  %IV.sroa.0.0..sroa_idx = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 1, i32 0
  %IV.sroa.0.0.copyload = load i64, i64* %IV.sroa.0.0..sroa_idx, align 16, !tbaa.struct !3
  %IV.sroa.5.0..sroa_idx153 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 1, i32 1
  %IV.sroa.5.0.copyload = load i8*, i8** %IV.sroa.5.0..sroa_idx153, align 8, !tbaa.struct !10
  %A.sroa.0.0..sroa_idx = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 2, i32 0
  %A.sroa.0.0.copyload = load i64, i64* %A.sroa.0.0..sroa_idx, align 16, !tbaa.struct !3
  %A.sroa.6.0..sroa_idx146 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 2, i32 1
  %A.sroa.6.0.copyload = load i8*, i8** %A.sroa.6.0..sroa_idx146, align 8, !tbaa.struct !10
  %P.sroa.0.0..sroa_idx = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 3, i32 0
  %P.sroa.0.0.copyload = load i64, i64* %P.sroa.0.0..sroa_idx, align 16, !tbaa.struct !3
  %P.sroa.12.0..sroa_idx138 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 3, i32 1
  %P.sroa.12.0.copyload = load i8*, i8** %P.sroa.12.0..sroa_idx138, align 8, !tbaa.struct !10
  %C.sroa.4.0..sroa_idx124 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 4, i32 1
  %C.sroa.4.0.copyload = load i8*, i8** %C.sroa.4.0..sroa_idx124, align 8, !tbaa.struct !10
  %T.sroa.3.0..sroa_idx120 = getelementptr inbounds [20 x %struct.gcm128_data], [20 x %struct.gcm128_data]* @gcm128_vectors, i64 0, i64 %idxprom, i32 5, i32 1
  %T.sroa.3.0.copyload = load i8*, i8** %T.sroa.3.0..sroa_idx120, align 8, !tbaa.struct !10
  %1 = bitcast %struct.gcm128_context* %ctx to i8*
  call void @llvm.lifetime.start.p0i8(i64 440, i8* nonnull %1) #6
  %2 = bitcast %struct.aes_key_st* %key to i8*
  call void @llvm.lifetime.start.p0i8(i64 244, i8* nonnull %2) #6
  %3 = lshr i64 553415, %idxprom
  %4 = and i64 %3, 1
  %cmp.not = icmp eq i64 %4, 0
  %spec.select = select i1 %cmp.not, i8* %A.sroa.6.0.copyload, i8* null
  %5 = lshr i64 266305, %idxprom
  %6 = and i64 %5, 1
  %cmp18.not = icmp eq i64 %6, 0
  %P.sroa.12.0 = select i1 %cmp18.not, i8* %P.sroa.12.0.copyload, i8* null
  %C.sroa.4.0 = select i1 %cmp18.not, i8* %C.sroa.4.0.copyload, i8* null
  %K.sroa.0.0.copyload.tr = trunc i64 %K.sroa.0.0.copyload to i32
  %conv = shl i32 %K.sroa.0.0.copyload.tr, 3
  %call = call i32 @AES_set_encrypt_key(i8* noundef %K.sroa.4.0.copyload, i32 noundef %conv, %struct.aes_key_st* noundef nonnull %key) #4
  call void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef nonnull %2, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #4
  call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef %IV.sroa.5.0.copyload, i64 noundef %IV.sroa.0.0.copyload) #4
  %call32 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef %P.sroa.0.0.copyload) #4
  %cmp34.not = icmp eq i8* %spec.select, null
  br i1 %cmp34.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %entry
  %call39 = call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef nonnull %spec.select, i64 noundef %A.sroa.0.0.copyload) #4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %entry
  %cmp42.not = icmp eq i8* %P.sroa.12.0, null
  br i1 %cmp42.not, label %if.end52, label %if.then44

if.then44:                                        ; preds = %if.end40
  %call48 = call i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef nonnull %P.sroa.12.0, i8* noundef nonnull %0, i64 noundef %P.sroa.0.0.copyload) #4
  %call49 = call i32 @test_int_ge(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 872, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 noundef %call48, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call49, 0
  br i1 %tobool.not, label %cleanup, label %if.end52

if.end52:                                         ; preds = %if.then44, %if.end40
  %call54 = call i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef %T.sroa.3.0.copyload, i64 noundef 16) #4
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = call i32 @test_false(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 874, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv56) #4
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %cmp60.not = icmp eq i8* %C.sroa.4.0, null
  br i1 %cmp60.not, label %if.end69, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call66 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 876, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %P.sroa.0.0.copyload, i8* noundef nonnull %C.sroa.4.0, i64 noundef %P.sroa.0.0.copyload) #4
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup, label %if.end69

if.end69:                                         ; preds = %land.lhs.true, %lor.lhs.false
  call void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef %IV.sroa.5.0.copyload, i64 noundef %IV.sroa.0.0.copyload) #4
  %call74 = call i8* @memset(i8* noundef nonnull %0, i32 noundef 0, i64 noundef %P.sroa.0.0.copyload) #4
  br i1 %cmp34.not, label %if.end82, label %if.then78

if.then78:                                        ; preds = %if.end69
  %call81 = call i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef nonnull %spec.select, i64 noundef %A.sroa.0.0.copyload) #4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end69
  br i1 %cmp60.not, label %if.end91, label %if.then86

if.then86:                                        ; preds = %if.end82
  %call90 = call i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef nonnull %C.sroa.4.0, i8* noundef nonnull %0, i64 noundef %P.sroa.0.0.copyload) #4
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end82
  %call93 = call i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef nonnull %ctx, i8* noundef %T.sroa.3.0.copyload, i64 noundef 16) #4
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = call i32 @test_false(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 885, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 noundef %conv95) #4
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end91
  br i1 %cmp42.not, label %if.end110, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %lor.lhs.false98
  %call107 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 887, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef nonnull %0, i64 noundef %P.sroa.0.0.copyload, i8* noundef nonnull %P.sroa.12.0, i64 noundef %P.sroa.0.0.copyload) #4
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %cleanup, label %if.end110

if.end110:                                        ; preds = %land.lhs.true102, %lor.lhs.false98
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %land.lhs.true102, %if.end52, %land.lhs.true, %if.then44, %if.end110
  %retval.0 = phi i32 [ 1, %if.end110 ], [ 0, %if.then44 ], [ 0, %land.lhs.true ], [ 0, %if.end52 ], [ 0, %land.lhs.true102 ], [ 0, %if.end91 ]
  call void @llvm.lifetime.end.p0i8(i64 244, i8* nonnull %2) #6
  call void @llvm.lifetime.end.p0i8(i64 440, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 512, i8* nonnull %0) #6
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @last_blocks_correction(i8* noundef %in, i8* noundef %out, i64 noundef %len) #0 {
entry:
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef %in, i64 noundef %len) #4
  %rem = and i64 %len, 15
  %cmp = icmp eq i64 %rem, 0
  %rem.op = or i64 %rem, 16
  %add = select i1 %cmp, i64 32, i64 %rem.op
  ret i64 %add
}

declare dso_local i64 @CRYPTO_cts128_encrypt_block(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) #1

declare dso_local i64 @CRYPTO_cts128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i64, i8*, i8*, i32)* noundef) #1

declare dso_local i64 @CRYPTO_cts128_decrypt_block(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) #1

declare dso_local i64 @CRYPTO_cts128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i64, i8*, i8*, i32)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @execute_cts128(%struct.CTS128_FIXTURE* nocapture noundef readonly %fixture, i32 noundef %num) unnamed_addr #0 {
entry:
  %iv = alloca [16 x i8], align 16
  %cleartext = alloca [64 x i8], align 16
  %ciphertext = alloca [64 x i8], align 16
  %vector = alloca [64 x i8], align 16
  %idxprom = sext i32 %num to i64
  %data = getelementptr inbounds [6 x %struct.SIZED_DATA], [6 x %struct.SIZED_DATA]* @aes_cts128_vectors, i64 0, i64 %idxprom, i32 1
  %0 = load i8*, i8** %data, align 8, !tbaa !11
  %size = getelementptr inbounds [6 x %struct.SIZED_DATA], [6 x %struct.SIZED_DATA]* @aes_cts128_vectors, i64 0, i64 %idxprom, i32 0
  %1 = load i64, i64* %size, align 16, !tbaa !13
  tail call fastcc void @cts128_encrypt_key_schedule() #5
  tail call fastcc void @cts128_decrypt_key_schedule() #5
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %iv, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6
  %3 = getelementptr inbounds [64 x i8], [64 x i8]* %cleartext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %3) #6
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %ciphertext, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %vector, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #6
  %case_name = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 0
  %6 = load i8*, i8** %case_name, align 8, !tbaa !14
  tail call void (i8*, i32, i8*, ...) @test_info(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6, i64 noundef %1) #4
  %last_blocks_correction = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 1
  %7 = load i64 (i8*, i8*, i64)*, i64 (i8*, i8*, i64)** %last_blocks_correction, align 8, !tbaa !16
  %call5 = call i64 %7(i8* noundef %0, i8* noundef nonnull %5, i64 noundef %1) #4
  %call7 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_iv, i64 0, i64 0), i64 noundef 16) #4
  %encrypt_block = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 2
  %8 = load i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)** %encrypt_block, align 8, !tbaa !17
  %call10 = call i64 %8(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cts128_test_input, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %1, i8* noundef bitcast (%struct.aes_key_st* @cts128_encrypt_key_schedule.ks to i8*), i8* noundef nonnull %2, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)) #4
  %call11 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 noundef %call10, i64 noundef %1) #4
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call14 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %1, i8* noundef nonnull %5, i64 noundef %1) #4
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cleanup, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds [64 x i8], [64 x i8]* %vector, i64 0, i64 %1
  %idx.neg = sub i64 0, %call5
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %call20 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 207, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 16, i8* noundef nonnull %add.ptr19, i64 noundef 16) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false16
  %call23 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_iv, i64 0, i64 0), i64 noundef 16) #4
  %decrypt_block = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 4
  %9 = load i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i8*)*)** %decrypt_block, align 8, !tbaa !18
  %call27 = call i64 %9(i8* noundef nonnull %4, i8* noundef nonnull %3, i64 noundef %1, i8* noundef bitcast (%struct.aes_key_st* @cts128_decrypt_key_schedule.ks to i8*), i8* noundef nonnull %2, void (i8*, i8*, i8*)* noundef bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_decrypt to void (i8*, i8*, i8*)*)) #4
  %cmp = icmp eq i64 %1, %call27
  %add = add i64 %1, 16
  %cmp28 = icmp eq i64 %add, %call27
  %10 = or i1 %cmp, %cmp28
  %lor.ext = zext i1 %10 to i32
  %call30 = call i32 @test_true(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 215, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 noundef %lor.ext) #4
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %cleanup, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %if.end
  %call34 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 216, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cts128_test_input, i64 0, i64 0), i64 noundef %1) #4
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cleanup, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %call42 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 217, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 16, i8* noundef nonnull %add.ptr19, i64 noundef 16) #4
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %lor.lhs.false36
  %call47 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_iv, i64 0, i64 0), i64 noundef 16) #4
  %encrypt_stream = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 3
  %11 = load i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)** %encrypt_stream, align 8, !tbaa !19
  %call50 = call i64 %11(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cts128_test_input, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %1, i8* noundef bitcast (%struct.aes_key_st* @cts128_encrypt_key_schedule.ks to i8*), i8* noundef nonnull %2, void (i8*, i8*, i64, i8*, i8*, i32)* noundef bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @AES_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*)) #4
  %call51 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 noundef %call50, i64 noundef %1) #4
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %cleanup, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end45
  %call56 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 226, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %4, i64 noundef %1, i8* noundef nonnull %5, i64 noundef %1) #4
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %cleanup, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false53
  %call64 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 227, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 16, i8* noundef nonnull %add.ptr19, i64 noundef 16) #4
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup, label %if.end67

if.end67:                                         ; preds = %lor.lhs.false58
  %call69 = call i8* @memcpy(i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_iv, i64 0, i64 0), i64 noundef 16) #4
  %decrypt_stream = getelementptr inbounds %struct.CTS128_FIXTURE, %struct.CTS128_FIXTURE* %fixture, i64 0, i32 5
  %12 = load i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)*, i64 (i8*, i8*, i64, i8*, i8*, void (i8*, i8*, i64, i8*, i8*, i32)*)** %decrypt_stream, align 8, !tbaa !20
  %call73 = call i64 %12(i8* noundef nonnull %4, i8* noundef nonnull %3, i64 noundef %1, i8* noundef bitcast (%struct.aes_key_st* @cts128_decrypt_key_schedule.ks to i8*), i8* noundef nonnull %2, void (i8*, i8*, i64, i8*, i8*, i32)* noundef bitcast (void (i8*, i8*, i64, %struct.aes_key_st*, i8*, i32)* @AES_cbc_encrypt to void (i8*, i8*, i64, i8*, i8*, i32)*)) #4
  %call74 = call i32 @test_size_t_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 noundef %call73, i64 noundef %1) #4
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %cleanup, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end67
  %call78 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 236, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %3, i64 noundef %1, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @cts128_test_input, i64 0, i64 0), i64 noundef %1) #4
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %cleanup, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %call86 = call i32 @test_mem_eq(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 noundef 237, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %2, i64 noundef 16, i8* noundef nonnull %add.ptr19, i64 noundef 16) #4
  %tobool87.not = icmp ne i32 %call86, 0
  %spec.select = zext i1 %tobool87.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false80, %if.end67, %lor.lhs.false76, %if.end45, %lor.lhs.false53, %lor.lhs.false58, %if.end, %lor.lhs.false32, %lor.lhs.false36, %entry, %lor.lhs.false, %lor.lhs.false16
  %retval.0 = phi i32 [ 0, %lor.lhs.false16 ], [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %lor.lhs.false36 ], [ 0, %lor.lhs.false32 ], [ 0, %if.end ], [ 0, %lor.lhs.false58 ], [ 0, %lor.lhs.false53 ], [ 0, %if.end45 ], [ 0, %lor.lhs.false76 ], [ 0, %if.end67 ], [ %spec.select, %lor.lhs.false80 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %3) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cts128_encrypt_key_schedule() unnamed_addr #0 {
entry:
  %.b = load i1, i1* @cts128_encrypt_key_schedule.init_key, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @AES_set_encrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_key, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull @cts128_encrypt_key_schedule.ks) #4
  store i1 true, i1* @cts128_encrypt_key_schedule.init_key, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @cts128_decrypt_key_schedule() unnamed_addr #0 {
entry:
  %.b = load i1, i1* @cts128_decrypt_key_schedule.init_key, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @AES_set_decrypt_key(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @cts128_test_key, i64 0, i64 0), i32 noundef 128, %struct.aes_key_st* noundef nonnull @cts128_decrypt_key_schedule.ks) #4
  store i1 true, i1* @cts128_decrypt_key_schedule.init_key, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local void @test_info(i8* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #1

declare dso_local i32 @test_size_t_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @AES_encrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #1

declare dso_local i32 @test_mem_eq(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i64 noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local void @AES_decrypt(i8* noundef, i8* noundef, %struct.aes_key_st* noundef) #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local void @AES_cbc_encrypt(i8* noundef, i8* noundef, i64 noundef, %struct.aes_key_st* noundef, i8* noundef, i32 noundef) #1

declare dso_local i32 @AES_set_encrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

declare dso_local i32 @AES_set_decrypt_key(i8* noundef, i32 noundef, %struct.aes_key_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @last_blocks_correction_nist(i8* noundef %in, i8* noundef %out, i64 noundef %len) #0 {
entry:
  %rem = and i64 %len, 15
  %cmp = icmp eq i64 %rem, 0
  %spec.store.select = select i1 %cmp, i64 16, i64 %rem
  %add.neg = add i64 %len, -16
  %sub = sub i64 %add.neg, %spec.store.select
  %call = tail call i8* @memcpy(i8* noundef %out, i8* noundef %in, i64 noundef %sub) #4
  %add.ptr = getelementptr inbounds i8, i8* %out, i64 %sub
  %add.ptr1 = getelementptr inbounds i8, i8* %in, i64 %sub
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 16
  %call3 = tail call i8* @memcpy(i8* noundef %add.ptr, i8* noundef nonnull %add.ptr2, i64 noundef %spec.store.select) #4
  %add.ptr5 = getelementptr inbounds i8, i8* %out, i64 %add.neg
  %call7 = tail call i8* @memcpy(i8* noundef %add.ptr5, i8* noundef %add.ptr1, i64 noundef 16) #4
  ret i64 16
}

declare dso_local i64 @CRYPTO_nistcts128_encrypt_block(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) #1

declare dso_local i64 @CRYPTO_nistcts128_encrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i64, i8*, i8*, i32)* noundef) #1

declare dso_local i64 @CRYPTO_nistcts128_decrypt_block(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) #1

declare dso_local i64 @CRYPTO_nistcts128_decrypt(i8* noundef, i8* noundef, i64 noundef, i8* noundef, i8* noundef, void (i8*, i8*, i64, i8*, i8*, i32)* noundef) #1

declare dso_local void @CRYPTO_gcm128_init(%struct.gcm128_context* noundef, i8* noundef, void (i8*, i8*, i8*)* noundef) local_unnamed_addr #1

declare dso_local void @CRYPTO_gcm128_setiv(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i8* @memset(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare dso_local i32 @CRYPTO_gcm128_aad(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_int_ge(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_gcm128_encrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_gcm128_finish(%struct.gcm128_context* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @CRYPTO_gcm128_decrypt(%struct.gcm128_context* noundef, i8* noundef, i8* noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{i64 0, i64 8, !4, i64 8, i64 8, !8}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{i64 0, i64 8, !8}
!11 = !{!12, !9, i64 8}
!12 = !{!"", !5, i64 0, !9, i64 8}
!13 = !{!12, !5, i64 0}
!14 = !{!15, !9, i64 0}
!15 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!16 = !{!15, !9, i64 8}
!17 = !{!15, !9, i64 16}
!18 = !{!15, !9, i64 32}
!19 = !{!15, !9, i64 24}
!20 = !{!15, !9, i64 40}
