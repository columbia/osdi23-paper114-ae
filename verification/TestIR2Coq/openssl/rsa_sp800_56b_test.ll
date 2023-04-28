; ModuleID = 'test/rsa_sp800_56b_test.c'
source_filename = "test/rsa_sp800_56b_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.rsa_st = type { i32, %struct.ossl_lib_ctx_st*, i32, %struct.rsa_meth_st*, %struct.engine_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.rsa_pss_params_30_st, %struct.rsa_pss_params_st*, %struct.stack_st_RSA_PRIME_INFO*, %struct.crypto_ex_data_st, i32, i32, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_mont_ctx_st*, %struct.bn_blinding_st*, %struct.bn_blinding_st*, i8*, i32 }
%struct.ossl_lib_ctx_st = type opaque
%struct.rsa_meth_st = type { i8*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (i32, i8*, i8*, %struct.rsa_st*, i32)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.rsa_st*, %struct.bignum_ctx*)*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*, %struct.bn_mont_ctx_st*)*, i32 (%struct.rsa_st*)*, i32 (%struct.rsa_st*)*, i32, i8*, i32 (i32, i8*, i32, i8*, i32*, %struct.rsa_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.rsa_st*)*, i32 (%struct.rsa_st*, i32, %struct.bignum_st*, %struct.bn_gencb_st*)*, i32 (%struct.rsa_st*, i32, i32, %struct.bignum_st*, %struct.bn_gencb_st*)* }
%struct.bn_gencb_st = type opaque
%struct.engine_st = type opaque
%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.rsa_pss_params_st = type { %struct.X509_algor_st*, %struct.X509_algor_st*, %struct.asn1_string_st*, %struct.asn1_string_st*, %struct.X509_algor_st* }
%struct.asn1_string_st = type { i32, i32, i8*, i64 }
%struct.X509_algor_st = type { %struct.asn1_object_st*, %struct.asn1_type_st* }
%struct.asn1_object_st = type opaque
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.stack_st_RSA_PRIME_INFO = type opaque
%struct.crypto_ex_data_st = type { %struct.ossl_lib_ctx_st*, %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.bn_mont_ctx_st = type opaque
%struct.bn_blinding_st = type opaque

@.str = private unnamed_addr constant [27 x i8] c"test_check_public_exponent\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"test_check_prime_factor_range\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"test_check_prime_factor\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"test_check_private_exponent\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"test_check_crt_components\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"test_check_private_key\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"test_check_public_key\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"test_invalid_keypair\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"test_pq_diff\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"test_sp80056b_keygen\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"test/rsa_sp800_56b_test.c\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"e = BN_new()\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"BN_set_word(e, 1)\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"ossl_rsa_check_public_exponent(e)\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"BN_set_word(e, 65536)\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"BN_set_word(e, 3)\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"BN_set_word(e, 17)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"BN_set_word(e, 65537)\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"BN_lshift(e, BN_value_one(), 256)\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"BN_add(e, e, BN_value_one())\00", align 1
@test_check_prime_factor_range.p1 = internal constant [5 x i8] c"\0BPO3?", align 1
@test_check_prime_factor_range.p2 = internal constant [5 x i8] c"\10\00\00\00\00", align 1
@test_check_prime_factor_range.p3 = internal constant [5 x i8] c"\0BPO3@", align 1
@test_check_prime_factor_range.p4 = internal constant [5 x i8] c"\0F\FF\FF\FF\FF", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"p = BN_new()\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"bn_p1 = bn_load_new(p1, sizeof(p1))\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"bn_p2 = bn_load_new(p2, sizeof(p2))\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"bn_p3 = bn_load_new(p3, sizeof(p3))\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"bn_p4 = bn_load_new(p4, sizeof(p4))\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"ctx = BN_CTX_new()\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"BN_set_word(p, 0xA)\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"ossl_rsa_check_prime_factor_range(p, 8, ctx)\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"BN_set_word(p, 0x10)\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"BN_set_word(p, 0xB)\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"BN_set_word(p, 0xC)\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"BN_set_word(p, 0xF)\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"ossl_rsa_check_prime_factor_range(bn_p1, 72, ctx)\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"ossl_rsa_check_prime_factor_range(bn_p2, 72, ctx)\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"ossl_rsa_check_prime_factor_range(bn_p3, 72, ctx)\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"ossl_rsa_check_prime_factor_range(bn_p4, 72, ctx)\00", align 1
@test_check_prime_factor.p1 = internal constant [5 x i8] c"\0BPO3s", align 1
@test_check_prime_factor.p2 = internal constant [5 x i8] c"\0BPO3u", align 1
@test_check_prime_factor.p3 = internal constant [5 x i8] c"\0FP\00\03u", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"BN_set_word(e, 0x1)\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"ossl_rsa_check_prime_factor(bn_p1, e, 72, ctx)\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"ossl_rsa_check_prime_factor(bn_p2, e, 72, ctx)\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"BN_set_word(e, 0x2)\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"ossl_rsa_check_prime_factor(p, e, 72, ctx)\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"ossl_rsa_check_prime_factor(bn_p3, e, 72, ctx)\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"key = RSA_new()\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"q = BN_new()\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"BN_set_word(p, 15)\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"BN_set_word(q, 17)\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"RSA_set0_factors(key, p, q)\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"d = BN_new()\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"n = BN_new()\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"BN_set_word(e, 5)\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"BN_set_word(d, 157)\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"BN_set_word(n, 15*17)\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"RSA_set0_key(key, n, e, d)\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"ossl_rsa_check_private_exponent(key, 8, ctx)\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"BN_set_word(d, 45)\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"ossl_rsa_check_private_exponent(key, 16, ctx)\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"BN_set_word(d, 16)\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"BN_set_word(d, 46)\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"BN_set_word(p, P)\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"BN_set_word(q, Q)\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"BN_set_word(e, E)\00", align 1
@.str.61 = private unnamed_addr constant [57 x i8] c"ossl_rsa_sp800_56b_derive_params_from_pq(key, 8, e, ctx)\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"key->n\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"key->dmp1\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"key->dmq1\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"DQ\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"key->iqmp\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"QINV\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"ossl_rsa_check_crt_components(key, ctx)\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"BN_set_word(key->dmp1, 1)\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"BN_set_word(key->dmp1, P-1)\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"BN_set_word(key->dmp1, DP)\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"BN_set_word(key->dmq1, 1)\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"BN_set_word(key->dmq1, Q-1)\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"BN_set_word(key->dmq1, DQ)\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"BN_set_word(key->iqmp, 1)\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"BN_set_word(key->iqmp, P)\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"BN_set_word(key->iqmp, QINV)\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"BN_set_word(key->dmp1, DP+1)\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"BN_set_word(key->dmq1, DQ-1)\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"BN_set_word(key->iqmp, QINV+1)\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"ossl_rsa_sp800_56b_check_private(key)\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"n = bn_load_new(cav_n, sizeof(cav_n))\00", align 1
@cav_n = internal constant [256 x i8] c"\CE^\8D\1A\A3\08z-\B4IH\F0\06\B6\FE\BA/9|{\E0]\09-WNT`\9C\E5\08K\E1\1As\C1^/\B6F\D7\81\CA\BC\98\D2\F9\EF\1C\92\8C\8D\99\85(R\D6\D5\ABp~\9E\A9\87\82\C8\95d\EB\F0l\0F?\E9\02).m\A1\EC\BF\DC#\DF\82O\AB9\8D\CC\AC!Q\14\F8\EF\ECs\80\86\A3\CF\8F\D5\CF\22\1F\CC#/\BA\CB\F6\17\CD:\1F\D9\84\B9\88\A7x\0F\AA\C9\04\01 r]*\FE[\DD\16Z\ED\83\02\969F70\C1\0D\87\C2\C838\ED5r\E5)\F8\1F#`\E1*[\1DkS?\07\C4\D9\BB\04\0C\\?\0B\C4\D4a\96\94\F1\0FJI\AC\DE\D2\E8B\B3J\0Bdz2_+[\0F\8B\8B\E03#4d\F8\B5\7Fi`\B8q\E9\FF\92B\B1\F7#\A8\A7\92\04=k\FF\F7\AB\BB\14\1FL\10\97\D5kq\12\FD\93\A0J;ur@\96\1C_@@W\13", align 16
@.str.85 = private unnamed_addr constant [38 x i8] c"d = bn_load_new(cav_d, sizeof(cav_d))\00", align 1
@cav_d = internal constant [256 x i8] c"GGI\1Df*Kh\F5\D8J$\FDl\BFV\B7p\F7\9A!\C8\80\9E\F4\84\CD\88\01(\EAP\AB\13c\DF\EA\148\B5\07B\81/\DA\E9$\02~\AF\EFt\09\0E\80\FA\FB\D1\19A\E5\BA\0F|\0A\A4\15U\A2X\8C:H,\C6\DEJv\FBr\B6a\E6\D2\10DL3\B8\D2t\B1\9D;\CD/\B1O\C3\98\BD\83\B7~u\E8\A7j\EE\CCQ\8C\99\17g\7F'\F9\0Dj\B7\D4\80\17\899\9C\F3\D7\0F\DF\B0U\80\1D\AFW.\D0\F0OBiU\BC\83\D6\97\83z\E6\C60m=\B5!\A7\C4b\0A \CE^Z\17\98\B3ok\9A\EBk\A3\C4u\D8+\DC\\o\EC]I\AC\A8\A4/\B8\8CO.F!\EErj\0E\22\80q\C8v@Da\16\BF\A5\F8\89\C7\E9\87\DF\BD.KN\C2\97S\E9I\1C\05\B0\0B\9B\9F!\19A\E9\F5a\D73.,\94\B8\A8\9A:\CCj$\8D\19\13\EE\B9\B0Ha", align 16
@.str.86 = private unnamed_addr constant [38 x i8] c"e = bn_load_new(cav_e, sizeof(cav_e))\00", align 1
@cav_e = internal constant [3 x i8] c"\01\00\01", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"BN_set_word(d, 0)\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"BN_copy(d, n)\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"ossl_rsa_sp800_56b_check_public(key)\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"RSA_set0_key(key, n, e, NULL)\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"BN_add_word(n, 1)\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"BN_sub_word(n, 1)\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"BN_lshift1(n, n)\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"BN_rshift1(n, n)\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"BN_add_word(e, 1)\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"BN_sub_word(e, 1)\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"BN_add_word(n, 2)\00", align 1
@.str.98 = private unnamed_addr constant [54 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, 2048)\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"p = bn_load_new(cav_p, sizeof(cav_p))\00", align 1
@cav_p = internal constant [128 x i8] c"\CFr\1B\9A\FD\0D\22\1AtP\97\22v\D8\C0\C2\FD\08\81\05\DD\18!\99\96\D6\\y\E3\02\81\D7\0E?;4\DAa\C9-\84\86b\1E=]\BF\92.\CD5=n\B9Y\16\C9\82PA0Eg\AA\B7\BE\EC\EAK\9E\A0\C3\05\BCL\01\A5K\BD\A4 \B5 \D5Yo\82\\\8FO\E0:N~\FED\F3<\C0\0E\14+2\E6(\8Bc\87\00\C3SJ[qz[(@\C4\18\B6w\0B\ABY\A4\96}", align 16
@.str.100 = private unnamed_addr constant [38 x i8] c"q = bn_load_new(cav_q, sizeof(cav_q))\00", align 1
@cav_q = internal constant [128 x i8] c"\FE\AB\F2|\16J\F0\8D1\C6\0A\82\E2\AE\BB\03~{ Nd\B0\16\AD<\01\1A\D3T\BF+\A4\02\9E\C3\0D`=\1F\B9\C0\0D\E6\97h\BB\8C\81\D5\C1T\96\0F\99\F0\A8\A2\F3\C6\8E\EC\BC1\17p\98$\A36Q\A8T\C4D\DD\F7~\DAGJgD]Nu\F0M\00h\E1J\EC\1FE\F9\E6\CA8\95Ho\DC\9D\1B\A3K\FD\08KT\CD\EB=\EF3\11n\CE\E4]\EF\A9X\\\87M\C8\CF", align 16
@.str.101 = private unnamed_addr constant [55 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, 100, 2048)\00", align 1
@.str.102 = private unnamed_addr constant [55 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, 112, 1024)\00", align 1
@.str.103 = private unnamed_addr constant [55 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, 128, 2048)\00", align 1
@.str.104 = private unnamed_addr constant [55 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, 140, 3072)\00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, BN_value_one(), -1, 2048)\00", align 1
@.str.106 = private unnamed_addr constant [54 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, 3072)\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, e, 112, 2048)\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"BN_sub_word(p, 2)\00", align 1
@.str.109 = private unnamed_addr constant [21 x i8] c"BN_mul(n, p, q, ctx)\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"BN_add_word(p, 2)\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"BN_sub_word(q, 2)\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"BN_add_word(q, 2)\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"tmp = BN_new()\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"BN_set_word(p, 1)\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"BN_set_word(q, 1+2)\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"ossl_rsa_check_pminusq_diff(tmp, p, q, 202)\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"BN_set_word(q, 1+3)\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"BN_set_word(p, 1+3)\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"BN_set_word(q, 1)\00", align 1
@keygen_size = internal unnamed_addr constant [2 x i32] [i32 2048, i32 3072], align 4
@.str.120 = private unnamed_addr constant [53 x i8] c"ossl_rsa_sp800_56b_generate_key(key, sz, NULL, NULL)\00", align 1
@.str.121 = private unnamed_addr constant [52 x i8] c"ossl_rsa_sp800_56b_check_keypair(key, NULL, -1, sz)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup_tests() local_unnamed_addr #0 {
entry:
  tail call void @add_test(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 ()* noundef nonnull @test_check_public_exponent) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 ()* noundef nonnull @test_check_prime_factor_range) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 ()* noundef nonnull @test_check_prime_factor) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 ()* noundef nonnull @test_check_private_exponent) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 ()* noundef nonnull @test_check_crt_components) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 ()* noundef nonnull @test_check_private_key) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 ()* noundef nonnull @test_check_public_key) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 ()* noundef nonnull @test_invalid_keypair) #2
  tail call void @add_test(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 ()* noundef nonnull @test_pq_diff) #2
  tail call void @add_all_tests(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 (i32)* noundef nonnull @test_sp80056b_keygen, i32 noundef 2, i32 noundef 1) #2
  ret i32 1
}

declare dso_local void @add_test(i8* noundef, i32 ()* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_public_exponent() #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 1) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 115, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv8) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true5
  %call12 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 65536) #2
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 118, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef %conv14) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %call18 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv20) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.end, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %call24 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 3) #2
  %cmp25 = icmp ne i32 %call24, 0
  %conv26 = zext i1 %cmp25 to i32
  %call27 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 121, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef %conv26) #2
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.end, label %land.lhs.true29

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %call30 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp31 = icmp ne i32 %call30, 0
  %conv32 = zext i1 %cmp31 to i32
  %call33 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv32) #2
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.end, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %land.lhs.true29
  %call36 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 17) #2
  %cmp37 = icmp ne i32 %call36, 0
  %conv38 = zext i1 %cmp37 to i32
  %call39 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 noundef %conv38) #2
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.end, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true35
  %call42 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp43 = icmp ne i32 %call42, 0
  %conv44 = zext i1 %cmp43 to i32
  %call45 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv44) #2
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.end, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true41
  %call48 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 65537) #2
  %cmp49 = icmp ne i32 %call48, 0
  %conv50 = zext i1 %cmp49 to i32
  %call51 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 125, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 noundef %conv50) #2
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.end, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true47
  %call54 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp55 = icmp ne i32 %call54, 0
  %conv56 = zext i1 %cmp55 to i32
  %call57 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 126, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv56) #2
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.end, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %land.lhs.true53
  %call60 = tail call %struct.bignum_st* @BN_value_one() #2
  %call61 = tail call i32 @BN_lshift(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call60, i32 noundef 256) #2
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 128, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 noundef %conv63) #2
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.end, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true59
  %call67 = tail call %struct.bignum_st* @BN_value_one() #2
  %call68 = tail call i32 @BN_add(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call67) #2
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 129, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 noundef %conv70) #2
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true66
  %call73 = tail call i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef %call) #2
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 130, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 noundef %conv75) #2
  %tobool77 = icmp ne i32 %call76, 0
  %phi.cast = zext i1 %tobool77 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true66, %land.lhs.true59, %land.lhs.true53, %land.lhs.true47, %land.lhs.true41, %land.lhs.true35, %land.lhs.true29, %land.lhs.true23, %land.lhs.true17, %land.lhs.true11, %land.lhs.true5, %land.lhs.true, %entry
  %1 = phi i32 [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true59 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true41 ], [ 0, %land.lhs.true35 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true23 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @BN_free(%struct.bignum_st* noundef %call) #2
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_prime_factor_range() #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p1, i64 0, i64 0), i32 noundef 5) #3
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 152, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p2, i64 0, i64 0), i32 noundef 5) #3
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 153, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p3, i64 0, i64 0), i32 noundef 5) #3
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 154, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef %3) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor_range.p4, i64 0, i64 0), i32 noundef 5) #3
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 155, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* noundef %4) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %5 = bitcast %struct.bignum_ctx* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 156, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* noundef %5) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 10) #2
  %cmp = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 157, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 noundef %conv) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call18) #2
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 158, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv28) #2
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %call32 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 16) #2
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 159, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 noundef %conv34) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true31
  %call38 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call18) #2
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 160, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv40) #2
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.end, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true37
  %call44 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 11) #2
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i32 noundef %conv46) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.end, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true43
  %call50 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call18) #2
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv52) #2
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.end, label %land.lhs.true55

land.lhs.true55:                                  ; preds = %land.lhs.true49
  %call56 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 12) #2
  %cmp57 = icmp ne i32 %call56, 0
  %conv58 = zext i1 %cmp57 to i32
  %call59 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 163, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 noundef %conv58) #2
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.end, label %land.lhs.true61

land.lhs.true61:                                  ; preds = %land.lhs.true55
  %call62 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call18) #2
  %cmp63 = icmp ne i32 %call62, 0
  %conv64 = zext i1 %cmp63 to i32
  %call65 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 164, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv64) #2
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.end, label %land.lhs.true67

land.lhs.true67:                                  ; preds = %land.lhs.true61
  %call68 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call, i64 noundef 15) #2
  %cmp69 = icmp ne i32 %call68, 0
  %conv70 = zext i1 %cmp69 to i32
  %call71 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 noundef %conv70) #2
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.end, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %land.lhs.true67
  %call74 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call18) #2
  %cmp75 = icmp ne i32 %call74, 0
  %conv76 = zext i1 %cmp75 to i32
  %call77 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i32 noundef %conv76) #2
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %land.end, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true73
  %call80 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call2, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp81 = icmp ne i32 %call80, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 167, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0), i32 noundef %conv82) #2
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.end, label %land.lhs.true85

land.lhs.true85:                                  ; preds = %land.lhs.true79
  %call86 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call6, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp87 = icmp ne i32 %call86, 0
  %conv88 = zext i1 %cmp87 to i32
  %call89 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i64 0, i64 0), i32 noundef %conv88) #2
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %land.end, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %land.lhs.true85
  %call92 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call10, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp93 = icmp ne i32 %call92, 0
  %conv94 = zext i1 %cmp93 to i32
  %call95 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 169, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0), i32 noundef %conv94) #2
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true91
  %call97 = tail call i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef %call14, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.35, i64 0, i64 0), i32 noundef %conv99) #2
  %tobool101 = icmp ne i32 %call100, 0
  %phi.cast = zext i1 %tobool101 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true91, %land.lhs.true85, %land.lhs.true79, %land.lhs.true73, %land.lhs.true67, %land.lhs.true61, %land.lhs.true55, %land.lhs.true49, %land.lhs.true43, %land.lhs.true37, %land.lhs.true31, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %ctx.0 = phi %struct.bignum_ctx* [ %call18, %land.rhs ], [ %call18, %land.lhs.true91 ], [ %call18, %land.lhs.true85 ], [ %call18, %land.lhs.true79 ], [ %call18, %land.lhs.true73 ], [ %call18, %land.lhs.true67 ], [ %call18, %land.lhs.true61 ], [ %call18, %land.lhs.true55 ], [ %call18, %land.lhs.true49 ], [ %call18, %land.lhs.true43 ], [ %call18, %land.lhs.true37 ], [ %call18, %land.lhs.true31 ], [ %call18, %land.lhs.true25 ], [ %call18, %land.lhs.true21 ], [ %call18, %land.lhs.true17 ], [ null, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %bn_p1.0 = phi %struct.bignum_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true91 ], [ %call2, %land.lhs.true85 ], [ %call2, %land.lhs.true79 ], [ %call2, %land.lhs.true73 ], [ %call2, %land.lhs.true67 ], [ %call2, %land.lhs.true61 ], [ %call2, %land.lhs.true55 ], [ %call2, %land.lhs.true49 ], [ %call2, %land.lhs.true43 ], [ %call2, %land.lhs.true37 ], [ %call2, %land.lhs.true31 ], [ %call2, %land.lhs.true25 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %bn_p2.0 = phi %struct.bignum_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true91 ], [ %call6, %land.lhs.true85 ], [ %call6, %land.lhs.true79 ], [ %call6, %land.lhs.true73 ], [ %call6, %land.lhs.true67 ], [ %call6, %land.lhs.true61 ], [ %call6, %land.lhs.true55 ], [ %call6, %land.lhs.true49 ], [ %call6, %land.lhs.true43 ], [ %call6, %land.lhs.true37 ], [ %call6, %land.lhs.true31 ], [ %call6, %land.lhs.true25 ], [ %call6, %land.lhs.true21 ], [ %call6, %land.lhs.true17 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %bn_p3.0 = phi %struct.bignum_st* [ %call10, %land.rhs ], [ %call10, %land.lhs.true91 ], [ %call10, %land.lhs.true85 ], [ %call10, %land.lhs.true79 ], [ %call10, %land.lhs.true73 ], [ %call10, %land.lhs.true67 ], [ %call10, %land.lhs.true61 ], [ %call10, %land.lhs.true55 ], [ %call10, %land.lhs.true49 ], [ %call10, %land.lhs.true43 ], [ %call10, %land.lhs.true37 ], [ %call10, %land.lhs.true31 ], [ %call10, %land.lhs.true25 ], [ %call10, %land.lhs.true21 ], [ %call10, %land.lhs.true17 ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %bn_p4.0 = phi %struct.bignum_st* [ %call14, %land.rhs ], [ %call14, %land.lhs.true91 ], [ %call14, %land.lhs.true85 ], [ %call14, %land.lhs.true79 ], [ %call14, %land.lhs.true73 ], [ %call14, %land.lhs.true67 ], [ %call14, %land.lhs.true61 ], [ %call14, %land.lhs.true55 ], [ %call14, %land.lhs.true49 ], [ %call14, %land.lhs.true43 ], [ %call14, %land.lhs.true37 ], [ %call14, %land.lhs.true31 ], [ %call14, %land.lhs.true25 ], [ %call14, %land.lhs.true21 ], [ %call14, %land.lhs.true17 ], [ %call14, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true91 ], [ 0, %land.lhs.true85 ], [ 0, %land.lhs.true79 ], [ 0, %land.lhs.true73 ], [ 0, %land.lhs.true67 ], [ 0, %land.lhs.true61 ], [ 0, %land.lhs.true55 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true31 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p4.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p3.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p2.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p1.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #2
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_prime_factor() #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 193, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p1, i64 0, i64 0), i32 noundef 5) #3
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 194, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p2, i64 0, i64 0), i32 noundef 5) #3
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 195, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @test_check_prime_factor.p3, i64 0, i64 0), i32 noundef 5) #3
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 196, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* noundef %3) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call %struct.bignum_st* @BN_new() #2
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 197, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef %4) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %5 = bitcast %struct.bignum_ctx* %call18 to i8*
  %call19 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 198, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* noundef %5) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.end, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 1) #2
  %cmp = icmp ne i32 %call22, 0
  %conv = zext i1 %cmp to i32
  %call23 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 200, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %call26 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call14, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 201, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.37, i64 0, i64 0), i32 noundef %conv28) #2
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %call32 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 203, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.38, i64 0, i64 0), i32 noundef %conv34) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true31
  %call38 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 2) #2
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 205, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 noundef %conv40) #2
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.end, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true37
  %call44 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call14, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 206, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 noundef %conv46) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.end, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %land.lhs.true43
  %call50 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 1) #2
  %cmp51 = icmp ne i32 %call50, 0
  %conv52 = zext i1 %cmp51 to i32
  %call53 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 208, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i32 noundef %conv52) #2
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true49
  %call55 = tail call i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, i32 noundef 72, %struct.bignum_ctx* noundef %call18) #2
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 209, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0), i32 noundef %conv57) #2
  %tobool59 = icmp ne i32 %call58, 0
  %phi.cast = zext i1 %tobool59 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true49, %land.lhs.true43, %land.lhs.true37, %land.lhs.true31, %land.lhs.true25, %land.lhs.true21, %land.lhs.true17, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %ctx.0 = phi %struct.bignum_ctx* [ %call18, %land.rhs ], [ %call18, %land.lhs.true49 ], [ %call18, %land.lhs.true43 ], [ %call18, %land.lhs.true37 ], [ %call18, %land.lhs.true31 ], [ %call18, %land.lhs.true25 ], [ %call18, %land.lhs.true21 ], [ %call18, %land.lhs.true17 ], [ null, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %e.0 = phi %struct.bignum_st* [ %call14, %land.rhs ], [ %call14, %land.lhs.true49 ], [ %call14, %land.lhs.true43 ], [ %call14, %land.lhs.true37 ], [ %call14, %land.lhs.true31 ], [ %call14, %land.lhs.true25 ], [ %call14, %land.lhs.true21 ], [ %call14, %land.lhs.true17 ], [ %call14, %land.lhs.true13 ], [ null, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %bn_p1.0 = phi %struct.bignum_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true49 ], [ %call2, %land.lhs.true43 ], [ %call2, %land.lhs.true37 ], [ %call2, %land.lhs.true31 ], [ %call2, %land.lhs.true25 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %bn_p2.0 = phi %struct.bignum_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true49 ], [ %call6, %land.lhs.true43 ], [ %call6, %land.lhs.true37 ], [ %call6, %land.lhs.true31 ], [ %call6, %land.lhs.true25 ], [ %call6, %land.lhs.true21 ], [ %call6, %land.lhs.true17 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %bn_p3.0 = phi %struct.bignum_st* [ %call10, %land.rhs ], [ %call10, %land.lhs.true49 ], [ %call10, %land.lhs.true43 ], [ %call10, %land.lhs.true37 ], [ %call10, %land.lhs.true31 ], [ %call10, %land.lhs.true25 ], [ %call10, %land.lhs.true21 ], [ %call10, %land.lhs.true17 ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true9 ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %6 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true31 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ 0, %land.lhs.true17 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p3.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p2.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %bn_p1.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %e.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0) #2
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_private_exponent() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 228, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %1 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 229, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call %struct.bignum_st* @BN_new() #2
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 230, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call %struct.bignum_st* @BN_new() #2
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 231, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i8* noundef %3) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 15) #2
  %cmp = icmp ne i32 %call14, 0
  %conv = zext i1 %cmp to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 noundef %conv) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call10, i64 noundef 17) #2
  %cmp19 = icmp ne i32 %call18, 0
  %conv20 = zext i1 %cmp19 to i32
  %call21 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 234, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i32 noundef %conv20) #2
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true17
  %call23 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #2
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 235, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv25) #2
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true5, %land.lhs.true9, %land.lhs.true13, %land.lhs.true17, %land.end
  %q.0159 = phi %struct.bignum_st* [ %call10, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ %call10, %land.lhs.true9 ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true17 ]
  %p.0158 = phi %struct.bignum_st* [ %call6, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ %call6, %land.lhs.true5 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true17 ]
  %ctx.0157 = phi %struct.bignum_ctx* [ %call2, %land.end ], [ null, %entry ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true17 ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0158) #2
  tail call void @BN_free(%struct.bignum_st* noundef %q.0159) #2
  br label %end

if.end:                                           ; preds = %land.end
  %call29 = tail call %struct.bignum_st* @BN_new() #2
  %4 = bitcast %struct.bignum_st* %call29 to i8*
  %call30 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 242, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef %4) #2
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then67, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end
  %call33 = tail call %struct.bignum_st* @BN_new() #2
  %5 = bitcast %struct.bignum_st* %call33 to i8*
  %call34 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 243, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* noundef %5) #2
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then67, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %call37 = tail call %struct.bignum_st* @BN_new() #2
  %6 = bitcast %struct.bignum_st* %call37 to i8*
  %call38 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 244, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* noundef %6) #2
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then67, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %call41 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call29, i64 noundef 5) #2
  %cmp42 = icmp ne i32 %call41, 0
  %conv43 = zext i1 %cmp42 to i32
  %call44 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 245, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i32 noundef %conv43) #2
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then67, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %call47 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call33, i64 noundef 157) #2
  %cmp48 = icmp ne i32 %call47, 0
  %conv49 = zext i1 %cmp48 to i32
  %call50 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.50, i64 0, i64 0), i32 noundef %conv49) #2
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then67, label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %call53 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call37, i64 noundef 255) #2
  %cmp54 = icmp ne i32 %call53, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 247, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i32 noundef %conv55) #2
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then67, label %land.end64

land.end64:                                       ; preds = %land.lhs.true52
  %call59 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call37, %struct.bignum_st* noundef %call29, %struct.bignum_st* noundef %call33) #2
  %cmp60 = icmp ne i32 %call59, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 248, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv61) #2
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end, %land.lhs.true32, %land.lhs.true36, %land.lhs.true40, %land.lhs.true46, %land.lhs.true52, %land.end64
  %n.0163 = phi %struct.bignum_st* [ %call37, %land.end64 ], [ null, %if.end ], [ null, %land.lhs.true32 ], [ %call37, %land.lhs.true36 ], [ %call37, %land.lhs.true40 ], [ %call37, %land.lhs.true46 ], [ %call37, %land.lhs.true52 ]
  %d.0162 = phi %struct.bignum_st* [ %call33, %land.end64 ], [ null, %if.end ], [ %call33, %land.lhs.true32 ], [ %call33, %land.lhs.true36 ], [ %call33, %land.lhs.true40 ], [ %call33, %land.lhs.true46 ], [ %call33, %land.lhs.true52 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call29) #2
  tail call void @BN_free(%struct.bignum_st* noundef %d.0162) #2
  tail call void @BN_free(%struct.bignum_st* noundef %n.0163) #2
  br label %end

if.end68:                                         ; preds = %land.end64
  %call69 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call2) #2
  %cmp70 = icmp ne i32 %call69, 0
  %conv71 = zext i1 %cmp70 to i32
  %call72 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv71) #2
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %end, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end68
  %call75 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call33, i64 noundef 45) #2
  %cmp76 = icmp ne i32 %call75, 0
  %conv77 = zext i1 %cmp76 to i32
  %call78 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 257, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0), i32 noundef %conv77) #2
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %end, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true74
  %call81 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call2) #2
  %cmp82 = icmp ne i32 %call81, 0
  %conv83 = zext i1 %cmp82 to i32
  %call84 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 259, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv83) #2
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %end, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %land.lhs.true80
  %call87 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef %call, i32 noundef 16, %struct.bignum_ctx* noundef %call2) #2
  %cmp88 = icmp ne i32 %call87, 0
  %conv89 = zext i1 %cmp88 to i32
  %call90 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.55, i64 0, i64 0), i32 noundef %conv89) #2
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %end, label %land.lhs.true92

land.lhs.true92:                                  ; preds = %land.lhs.true86
  %call93 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call33, i64 noundef 16) #2
  %cmp94 = icmp ne i32 %call93, 0
  %conv95 = zext i1 %cmp94 to i32
  %call96 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 263, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i32 noundef %conv95) #2
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %end, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true92
  %call99 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call2) #2
  %cmp100 = icmp ne i32 %call99, 0
  %conv101 = zext i1 %cmp100 to i32
  %call102 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 264, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv101) #2
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %end, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %land.lhs.true98
  %call105 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call33, i64 noundef 46) #2
  %cmp106 = icmp ne i32 %call105, 0
  %conv107 = zext i1 %cmp106 to i32
  %call108 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 266, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i32 noundef %conv107) #2
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %end, label %land.rhs110

land.rhs110:                                      ; preds = %land.lhs.true104
  %call111 = tail call i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef %call, i32 noundef 8, %struct.bignum_ctx* noundef %call2) #2
  %cmp112 = icmp ne i32 %call111, 0
  %conv113 = zext i1 %cmp112 to i32
  %call114 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 267, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.53, i64 0, i64 0), i32 noundef %conv113) #2
  %tobool115 = icmp ne i32 %call114, 0
  %phi.cast = zext i1 %tobool115 to i32
  br label %end

end:                                              ; preds = %if.end68, %land.lhs.true74, %land.lhs.true80, %land.lhs.true86, %land.lhs.true92, %land.lhs.true98, %land.lhs.true104, %land.rhs110, %if.then67, %if.then
  %ctx.0156 = phi %struct.bignum_ctx* [ %call2, %if.then67 ], [ %ctx.0157, %if.then ], [ %call2, %land.lhs.true104 ], [ %call2, %land.lhs.true98 ], [ %call2, %land.lhs.true92 ], [ %call2, %land.lhs.true86 ], [ %call2, %land.lhs.true80 ], [ %call2, %land.lhs.true74 ], [ %call2, %if.end68 ], [ %call2, %land.rhs110 ]
  %ret.0.in = phi i32 [ 0, %if.then67 ], [ 0, %if.then ], [ 0, %land.lhs.true104 ], [ 0, %land.lhs.true98 ], [ 0, %land.lhs.true92 ], [ 0, %land.lhs.true86 ], [ 0, %land.lhs.true80 ], [ 0, %land.lhs.true74 ], [ 0, %if.end68 ], [ %phi.cast, %land.rhs110 ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0156) #2
  ret i32 %ret.0.in
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_crt_components() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 289, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %1 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 290, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call %struct.bignum_st* @BN_new() #2
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 291, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call %struct.bignum_st* @BN_new() #2
  %3 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 292, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i8* noundef %3) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call %struct.bignum_st* @BN_new() #2
  %4 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* noundef %4) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %call18 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 15) #2
  %cmp = icmp ne i32 %call18, 0
  %conv = zext i1 %cmp to i32
  %call19 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 294, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0), i32 noundef %conv) #2
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %call22 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call10, i64 noundef 17) #2
  %cmp23 = icmp ne i32 %call22, 0
  %conv24 = zext i1 %cmp23 to i32
  %call25 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 noundef %conv24) #2
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %land.lhs.true21
  %call28 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call14, i64 noundef 5) #2
  %cmp29 = icmp ne i32 %call28, 0
  %conv30 = zext i1 %cmp29 to i32
  %call31 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 296, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i64 0, i64 0), i32 noundef %conv30) #2
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true27
  %call33 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call10) #2
  %cmp34 = icmp ne i32 %call33, 0
  %conv35 = zext i1 %cmp34 to i32
  %call36 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv35) #2
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true5, %land.lhs.true9, %land.lhs.true13, %land.lhs.true17, %land.lhs.true21, %land.lhs.true27, %land.end
  %e.0302 = phi %struct.bignum_st* [ %call14, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true9 ], [ %call14, %land.lhs.true13 ], [ %call14, %land.lhs.true17 ], [ %call14, %land.lhs.true21 ], [ %call14, %land.lhs.true27 ]
  %q.0300 = phi %struct.bignum_st* [ %call10, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ %call10, %land.lhs.true9 ], [ %call10, %land.lhs.true13 ], [ %call10, %land.lhs.true17 ], [ %call10, %land.lhs.true21 ], [ %call10, %land.lhs.true27 ]
  %p.0299 = phi %struct.bignum_st* [ %call6, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ %call6, %land.lhs.true5 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true17 ], [ %call6, %land.lhs.true21 ], [ %call6, %land.lhs.true27 ]
  %ctx.0298 = phi %struct.bignum_ctx* [ %call2, %land.end ], [ null, %entry ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true17 ], [ %call2, %land.lhs.true21 ], [ %call2, %land.lhs.true27 ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0299) #2
  tail call void @BN_free(%struct.bignum_st* noundef %q.0300) #2
  br label %end

if.end:                                           ; preds = %land.end
  %call39 = tail call i32 @ossl_rsa_sp800_56b_derive_params_from_pq(%struct.rsa_st* noundef %call, i32 noundef 8, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #2
  %cmp40 = icmp ne i32 %call39, 0
  %conv41 = zext i1 %cmp40 to i32
  %call42 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 303, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.61, i64 0, i64 0), i32 noundef %conv41) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end
  %n = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call, i64 0, i32 5
  %5 = load %struct.bignum_st*, %struct.bignum_st** %n, align 8, !tbaa !3
  %call45 = tail call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 304, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), %struct.bignum_st* noundef %5, i64 noundef 255) #2
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %end, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %dmp1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call, i64 0, i32 10
  %6 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call48 = tail call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.65, i64 0, i64 0), %struct.bignum_st* noundef %6, i64 noundef 3) #2
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %dmq1 = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call, i64 0, i32 11
  %7 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call51 = tail call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 306, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), %struct.bignum_st* noundef %7, i64 noundef 13) #2
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %end, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %iqmp = getelementptr inbounds %struct.rsa_st, %struct.rsa_st* %call, i64 0, i32 12
  %8 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call54 = tail call i32 @test_BN_eq_word(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 307, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i64 0, i64 0), %struct.bignum_st* noundef %8, i64 noundef 8) #2
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %call57 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 308, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv59) #2
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %end, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %9 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call64 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %9, i64 noundef 1) #2
  %cmp65 = icmp ne i32 %call64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 310, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.71, i64 0, i64 0), i32 noundef %conv66) #2
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %end, label %land.lhs.true69

land.lhs.true69:                                  ; preds = %land.lhs.true62
  %call70 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv72) #2
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %end, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true69
  %10 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call77 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %10, i64 noundef 14) #2
  %cmp78 = icmp ne i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  %call80 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 312, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), i32 noundef %conv79) #2
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %end, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %land.lhs.true75
  %call83 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp84 = icmp ne i32 %call83, 0
  %conv85 = zext i1 %cmp84 to i32
  %call86 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv85) #2
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %end, label %land.lhs.true88

land.lhs.true88:                                  ; preds = %land.lhs.true82
  %11 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call90 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %11, i64 noundef 3) #2
  %cmp91 = icmp ne i32 %call90, 0
  %conv92 = zext i1 %cmp91 to i32
  %call93 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv92) #2
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %end, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %land.lhs.true88
  %12 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call97 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %12, i64 noundef 1) #2
  %cmp98 = icmp ne i32 %call97, 0
  %conv99 = zext i1 %cmp98 to i32
  %call100 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 316, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.74, i64 0, i64 0), i32 noundef %conv99) #2
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %end, label %land.lhs.true102

land.lhs.true102:                                 ; preds = %land.lhs.true95
  %call103 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp104 = icmp ne i32 %call103, 0
  %conv105 = zext i1 %cmp104 to i32
  %call106 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 317, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv105) #2
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %end, label %land.lhs.true108

land.lhs.true108:                                 ; preds = %land.lhs.true102
  %13 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call110 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %13, i64 noundef 16) #2
  %cmp111 = icmp ne i32 %call110, 0
  %conv112 = zext i1 %cmp111 to i32
  %call113 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 318, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i64 0, i64 0), i32 noundef %conv112) #2
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %end, label %land.lhs.true115

land.lhs.true115:                                 ; preds = %land.lhs.true108
  %call116 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp117 = icmp ne i32 %call116, 0
  %conv118 = zext i1 %cmp117 to i32
  %call119 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 319, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv118) #2
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %end, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %land.lhs.true115
  %14 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call123 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %14, i64 noundef 13) #2
  %cmp124 = icmp ne i32 %call123, 0
  %conv125 = zext i1 %cmp124 to i32
  %call126 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 320, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv125) #2
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %end, label %land.lhs.true128

land.lhs.true128:                                 ; preds = %land.lhs.true121
  %15 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call130 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %15, i64 noundef 1) #2
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  %call133 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 322, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i64 0, i64 0), i32 noundef %conv132) #2
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %end, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %land.lhs.true128
  %call136 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp137 = icmp ne i32 %call136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv138) #2
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %end, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %land.lhs.true135
  %16 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call143 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %16, i64 noundef 15) #2
  %cmp144 = icmp ne i32 %call143, 0
  %conv145 = zext i1 %cmp144 to i32
  %call146 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.78, i64 0, i64 0), i32 noundef %conv145) #2
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %end, label %land.lhs.true148

land.lhs.true148:                                 ; preds = %land.lhs.true141
  %call149 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp150 = icmp ne i32 %call149, 0
  %conv151 = zext i1 %cmp150 to i32
  %call152 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 325, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv151) #2
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %end, label %land.lhs.true154

land.lhs.true154:                                 ; preds = %land.lhs.true148
  %17 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call156 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %17, i64 noundef 8) #2
  %cmp157 = icmp ne i32 %call156, 0
  %conv158 = zext i1 %cmp157 to i32
  %call159 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 326, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv158) #2
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %end, label %land.lhs.true161

land.lhs.true161:                                 ; preds = %land.lhs.true154
  %18 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call163 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %18, i64 noundef 4) #2
  %cmp164 = icmp ne i32 %call163, 0
  %conv165 = zext i1 %cmp164 to i32
  %call166 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 328, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i64 0, i64 0), i32 noundef %conv165) #2
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %end, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %land.lhs.true161
  %call169 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp170 = icmp ne i32 %call169, 0
  %conv171 = zext i1 %cmp170 to i32
  %call172 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv171) #2
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %end, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %land.lhs.true168
  %19 = load %struct.bignum_st*, %struct.bignum_st** %dmp1, align 8, !tbaa !12
  %call176 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %19, i64 noundef 3) #2
  %cmp177 = icmp ne i32 %call176, 0
  %conv178 = zext i1 %cmp177 to i32
  %call179 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i64 0, i64 0), i32 noundef %conv178) #2
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %end, label %land.lhs.true181

land.lhs.true181:                                 ; preds = %land.lhs.true174
  %20 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call183 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %20, i64 noundef 12) #2
  %cmp184 = icmp ne i32 %call183, 0
  %conv185 = zext i1 %cmp184 to i32
  %call186 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 332, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.81, i64 0, i64 0), i32 noundef %conv185) #2
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %end, label %land.lhs.true188

land.lhs.true188:                                 ; preds = %land.lhs.true181
  %call189 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp190 = icmp ne i32 %call189, 0
  %conv191 = zext i1 %cmp190 to i32
  %call192 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 333, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv191) #2
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %end, label %land.lhs.true194

land.lhs.true194:                                 ; preds = %land.lhs.true188
  %21 = load %struct.bignum_st*, %struct.bignum_st** %dmq1, align 8, !tbaa !13
  %call196 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %21, i64 noundef 13) #2
  %cmp197 = icmp ne i32 %call196, 0
  %conv198 = zext i1 %cmp197 to i32
  %call199 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 334, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), i32 noundef %conv198) #2
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %end, label %land.lhs.true201

land.lhs.true201:                                 ; preds = %land.lhs.true194
  %22 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call203 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %22, i64 noundef 9) #2
  %cmp204 = icmp ne i32 %call203, 0
  %conv205 = zext i1 %cmp204 to i32
  %call206 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 336, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i64 0, i64 0), i32 noundef %conv205) #2
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %end, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %land.lhs.true201
  %call209 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp210 = icmp ne i32 %call209, 0
  %conv211 = zext i1 %cmp210 to i32
  %call212 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 337, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv211) #2
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %end, label %land.lhs.true214

land.lhs.true214:                                 ; preds = %land.lhs.true208
  %23 = load %struct.bignum_st*, %struct.bignum_st** %iqmp, align 8, !tbaa !14
  %call216 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %23, i64 noundef 8) #2
  %cmp217 = icmp ne i32 %call216, 0
  %conv218 = zext i1 %cmp217 to i32
  %call219 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 noundef %conv218) #2
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %end, label %land.rhs221

land.rhs221:                                      ; preds = %land.lhs.true214
  %call222 = tail call i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef nonnull %call, %struct.bignum_ctx* noundef %call2) #2
  %cmp223 = icmp ne i32 %call222, 0
  %conv224 = zext i1 %cmp223 to i32
  %call225 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 340, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.70, i64 0, i64 0), i32 noundef %conv224) #2
  %tobool226 = icmp ne i32 %call225, 0
  %phi.cast = zext i1 %tobool226 to i32
  br label %end

end:                                              ; preds = %if.end, %land.lhs.true44, %land.lhs.true47, %land.lhs.true50, %land.lhs.true53, %land.lhs.true56, %land.lhs.true62, %land.lhs.true69, %land.lhs.true75, %land.lhs.true82, %land.lhs.true88, %land.lhs.true95, %land.lhs.true102, %land.lhs.true108, %land.lhs.true115, %land.lhs.true121, %land.lhs.true128, %land.lhs.true135, %land.lhs.true141, %land.lhs.true148, %land.lhs.true154, %land.lhs.true161, %land.lhs.true168, %land.lhs.true174, %land.lhs.true181, %land.lhs.true188, %land.lhs.true194, %land.lhs.true201, %land.lhs.true208, %land.lhs.true214, %land.rhs221, %if.then
  %e.0301 = phi %struct.bignum_st* [ %e.0302, %if.then ], [ %call14, %land.lhs.true214 ], [ %call14, %land.lhs.true208 ], [ %call14, %land.lhs.true201 ], [ %call14, %land.lhs.true194 ], [ %call14, %land.lhs.true188 ], [ %call14, %land.lhs.true181 ], [ %call14, %land.lhs.true174 ], [ %call14, %land.lhs.true168 ], [ %call14, %land.lhs.true161 ], [ %call14, %land.lhs.true154 ], [ %call14, %land.lhs.true148 ], [ %call14, %land.lhs.true141 ], [ %call14, %land.lhs.true135 ], [ %call14, %land.lhs.true128 ], [ %call14, %land.lhs.true121 ], [ %call14, %land.lhs.true115 ], [ %call14, %land.lhs.true108 ], [ %call14, %land.lhs.true102 ], [ %call14, %land.lhs.true95 ], [ %call14, %land.lhs.true88 ], [ %call14, %land.lhs.true82 ], [ %call14, %land.lhs.true75 ], [ %call14, %land.lhs.true69 ], [ %call14, %land.lhs.true62 ], [ %call14, %land.lhs.true56 ], [ %call14, %land.lhs.true53 ], [ %call14, %land.lhs.true50 ], [ %call14, %land.lhs.true47 ], [ %call14, %land.lhs.true44 ], [ %call14, %if.end ], [ %call14, %land.rhs221 ]
  %ctx.0297 = phi %struct.bignum_ctx* [ %ctx.0298, %if.then ], [ %call2, %land.lhs.true214 ], [ %call2, %land.lhs.true208 ], [ %call2, %land.lhs.true201 ], [ %call2, %land.lhs.true194 ], [ %call2, %land.lhs.true188 ], [ %call2, %land.lhs.true181 ], [ %call2, %land.lhs.true174 ], [ %call2, %land.lhs.true168 ], [ %call2, %land.lhs.true161 ], [ %call2, %land.lhs.true154 ], [ %call2, %land.lhs.true148 ], [ %call2, %land.lhs.true141 ], [ %call2, %land.lhs.true135 ], [ %call2, %land.lhs.true128 ], [ %call2, %land.lhs.true121 ], [ %call2, %land.lhs.true115 ], [ %call2, %land.lhs.true108 ], [ %call2, %land.lhs.true102 ], [ %call2, %land.lhs.true95 ], [ %call2, %land.lhs.true88 ], [ %call2, %land.lhs.true82 ], [ %call2, %land.lhs.true75 ], [ %call2, %land.lhs.true69 ], [ %call2, %land.lhs.true62 ], [ %call2, %land.lhs.true56 ], [ %call2, %land.lhs.true53 ], [ %call2, %land.lhs.true50 ], [ %call2, %land.lhs.true47 ], [ %call2, %land.lhs.true44 ], [ %call2, %if.end ], [ %call2, %land.rhs221 ]
  %ret.0.in = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true214 ], [ 0, %land.lhs.true208 ], [ 0, %land.lhs.true201 ], [ 0, %land.lhs.true194 ], [ 0, %land.lhs.true188 ], [ 0, %land.lhs.true181 ], [ 0, %land.lhs.true174 ], [ 0, %land.lhs.true168 ], [ 0, %land.lhs.true161 ], [ 0, %land.lhs.true154 ], [ 0, %land.lhs.true148 ], [ 0, %land.lhs.true141 ], [ 0, %land.lhs.true135 ], [ 0, %land.lhs.true128 ], [ 0, %land.lhs.true121 ], [ 0, %land.lhs.true115 ], [ 0, %land.lhs.true108 ], [ 0, %land.lhs.true102 ], [ 0, %land.lhs.true95 ], [ 0, %land.lhs.true88 ], [ 0, %land.lhs.true82 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true69 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true53 ], [ 0, %land.lhs.true50 ], [ 0, %land.lhs.true47 ], [ 0, %land.lhs.true44 ], [ 0, %if.end ], [ %phi.cast, %land.rhs221 ]
  tail call void @BN_free(%struct.bignum_st* noundef %e.0301) #2
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0297) #2
  ret i32 %ret.0.in
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_private_key() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %call) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 470, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @cav_n, i64 0, i64 0), i32 noundef 256) #3
  %1 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 472, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i8* noundef %1) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @cav_d, i64 0, i64 0), i32 noundef 256) #3
  %2 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 473, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.85, i64 0, i64 0), i8* noundef %2) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @cav_e, i64 0, i64 0), i32 noundef 3) #3
  %3 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 474, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), i8* noundef %3) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true13
  %call17 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef %call14, %struct.bignum_st* noundef %call10) #2
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 475, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv19) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true5, %land.lhs.true9, %land.lhs.true13, %land.end
  %e.074 = phi %struct.bignum_st* [ %call14, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true9 ], [ %call14, %land.lhs.true13 ]
  %d.073 = phi %struct.bignum_st* [ %call10, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ %call10, %land.lhs.true9 ], [ %call10, %land.lhs.true13 ]
  %n.072 = phi %struct.bignum_st* [ %call6, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ %call6, %land.lhs.true5 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true13 ]
  tail call void @BN_free(%struct.bignum_st* noundef %n.072) #2
  tail call void @BN_free(%struct.bignum_st* noundef %e.074) #2
  tail call void @BN_free(%struct.bignum_st* noundef %d.073) #2
  br label %end

if.end:                                           ; preds = %land.end
  %call23 = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %call) #2
  %cmp24 = icmp ne i32 %call23, 0
  %conv25 = zext i1 %cmp24 to i32
  %call26 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 483, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv25) #2
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %end, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end
  %call29 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call10, i64 noundef 0) #2
  %cmp30 = icmp ne i32 %call29, 0
  %conv31 = zext i1 %cmp30 to i32
  %call32 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 485, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i64 0, i64 0), i32 noundef %conv31) #2
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %end, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %call35 = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %call) #2
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 486, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv37) #2
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %end, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %call41 = tail call %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6) #2
  %4 = bitcast %struct.bignum_st* %call41 to i8*
  %call42 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 488, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i64 0, i64 0), i8* noundef %4) #2
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %end, label %land.rhs44

land.rhs44:                                       ; preds = %land.lhs.true40
  %call45 = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %call) #2
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv47) #2
  %tobool49 = icmp ne i32 %call48, 0
  %phi.cast = zext i1 %tobool49 to i32
  br label %end

end:                                              ; preds = %if.end, %land.lhs.true28, %land.lhs.true34, %land.lhs.true40, %land.rhs44, %if.then
  %ret.0.in = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true40 ], [ 0, %land.lhs.true34 ], [ 0, %land.lhs.true28 ], [ 0, %if.end ], [ %phi.cast, %land.rhs44 ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  ret i32 %ret.0.in
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_check_public_key() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 503, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @cav_e, i64 0, i64 0), i32 noundef 3) #3
  %1 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 505, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), i8* noundef %1) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @cav_n, i64 0, i64 0), i32 noundef 256) #3
  %2 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 506, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i8* noundef %2) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true9
  %call13 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call6, %struct.bignum_st* noundef null) #2
  %cmp14 = icmp ne i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %call16 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 507, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i64 0, i64 0), i32 noundef %conv15) #2
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true5, %land.lhs.true9, %land.end
  %e.0118 = phi %struct.bignum_st* [ %call6, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ %call6, %land.lhs.true5 ], [ %call6, %land.lhs.true9 ]
  %n.0117 = phi %struct.bignum_st* [ %call10, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ %call10, %land.lhs.true9 ]
  tail call void @BN_free(%struct.bignum_st* noundef %e.0118) #2
  tail call void @BN_free(%struct.bignum_st* noundef %n.0117) #2
  br label %end

if.end:                                           ; preds = %land.end
  %call19 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp20 = icmp ne i32 %call19, 0
  %conv21 = zext i1 %cmp20 to i32
  %call22 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 514, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv21) #2
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %end, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end
  %call25 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call10, i64 noundef 1) #2
  %cmp26 = icmp ne i32 %call25, 0
  %conv27 = zext i1 %cmp26 to i32
  %call28 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 516, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv27) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %end, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true24
  %call31 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  %call34 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 517, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv33) #2
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %end, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true30
  %call37 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call10, i64 noundef 1) #2
  %cmp38 = icmp ne i32 %call37, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 518, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv39) #2
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %end, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true36
  %call43 = tail call i32 @BN_lshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10) #2
  %cmp44 = icmp ne i32 %call43, 0
  %conv45 = zext i1 %cmp44 to i32
  %call46 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 520, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i64 0, i64 0), i32 noundef %conv45) #2
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %end, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %land.lhs.true42
  %call49 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 521, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv51) #2
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %end, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true48
  %call55 = tail call i32 @BN_rshift1(%struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call10) #2
  %cmp56 = icmp ne i32 %call55, 0
  %conv57 = zext i1 %cmp56 to i32
  %call58 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 522, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.94, i64 0, i64 0), i32 noundef %conv57) #2
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %end, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %land.lhs.true54
  %call61 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call6, i64 noundef 1) #2
  %cmp62 = icmp ne i32 %call61, 0
  %conv63 = zext i1 %cmp62 to i32
  %call64 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 524, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv63) #2
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %end, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %land.lhs.true60
  %call67 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp68 = icmp ne i32 %call67, 0
  %conv69 = zext i1 %cmp68 to i32
  %call70 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 525, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv69) #2
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %end, label %land.lhs.true72

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %call73 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call6, i64 noundef 1) #2
  %cmp74 = icmp ne i32 %call73, 0
  %conv75 = zext i1 %cmp74 to i32
  %call76 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 526, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv75) #2
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %end, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true72
  %call79 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call10, i64 noundef 2) #2
  %cmp80 = icmp ne i32 %call79, 0
  %conv81 = zext i1 %cmp80 to i32
  %call82 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 528, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0), i32 noundef %conv81) #2
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %end, label %land.rhs84

land.rhs84:                                       ; preds = %land.lhs.true78
  %call85 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp86 = icmp ne i32 %call85, 0
  %conv87 = zext i1 %cmp86 to i32
  %call88 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 529, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv87) #2
  %tobool89 = icmp ne i32 %call88, 0
  %phi.cast = zext i1 %tobool89 to i32
  br label %end

end:                                              ; preds = %if.end, %land.lhs.true24, %land.lhs.true30, %land.lhs.true36, %land.lhs.true42, %land.lhs.true48, %land.lhs.true54, %land.lhs.true60, %land.lhs.true66, %land.lhs.true72, %land.lhs.true78, %land.rhs84, %if.then
  %ret.0.in = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true78 ], [ 0, %land.lhs.true72 ], [ 0, %land.lhs.true66 ], [ 0, %land.lhs.true60 ], [ 0, %land.lhs.true54 ], [ 0, %land.lhs.true48 ], [ 0, %land.lhs.true42 ], [ 0, %land.lhs.true36 ], [ 0, %land.lhs.true30 ], [ 0, %land.lhs.true24 ], [ 0, %if.end ], [ %phi.cast, %land.rhs84 ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  ret i32 %ret.0.in
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_invalid_keypair() #0 {
entry:
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %0 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 379, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_ctx* @BN_CTX_new() #2
  %1 = bitcast %struct.bignum_ctx* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 380, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 2048) #2
  %cmp = icmp ne i32 %call6, 0
  %conv = zext i1 %cmp to i32
  %call7 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 382, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @cav_p, i64 0, i64 0), i32 noundef 128) #3
  %2 = bitcast %struct.bignum_st* %call10 to i8*
  %call11 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 384, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.99, i64 0, i64 0), i8* noundef %2) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([128 x i8], [128 x i8]* @cav_q, i64 0, i64 0), i32 noundef 128) #3
  %3 = bitcast %struct.bignum_st* %call14 to i8*
  %call15 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 385, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.100, i64 0, i64 0), i8* noundef %3) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then, label %land.end

land.end:                                         ; preds = %land.lhs.true13
  %call17 = tail call i32 @RSA_set0_factors(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14) #2
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 386, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.46, i64 0, i64 0), i32 noundef %conv19) #2
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %land.lhs.true, %land.lhs.true5, %land.lhs.true9, %land.lhs.true13, %land.end
  %q.0245 = phi %struct.bignum_st* [ %call14, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ null, %land.lhs.true9 ], [ %call14, %land.lhs.true13 ]
  %p.0244 = phi %struct.bignum_st* [ %call10, %land.end ], [ null, %entry ], [ null, %land.lhs.true ], [ null, %land.lhs.true5 ], [ %call10, %land.lhs.true9 ], [ %call10, %land.lhs.true13 ]
  %ctx.0243 = phi %struct.bignum_ctx* [ %call2, %land.end ], [ null, %entry ], [ %call2, %land.lhs.true ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true13 ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0244) #2
  tail call void @BN_free(%struct.bignum_st* noundef %q.0245) #2
  br label %end

if.end:                                           ; preds = %land.end
  %call23 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @cav_e, i64 0, i64 0), i32 noundef 3) #3
  %4 = bitcast %struct.bignum_st* %call23 to i8*
  %call24 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 393, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), i8* noundef %4) #2
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then43, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.end
  %call27 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @cav_n, i64 0, i64 0), i32 noundef 256) #3
  %5 = bitcast %struct.bignum_st* %call27 to i8*
  %call28 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 394, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.84, i64 0, i64 0), i8* noundef %5) #2
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then43, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %call31 = tail call fastcc %struct.bignum_st* @bn_load_new(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @cav_d, i64 0, i64 0), i32 noundef 256) #3
  %6 = bitcast %struct.bignum_st* %call31 to i8*
  %call32 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 395, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.85, i64 0, i64 0), i8* noundef %6) #2
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then43, label %land.end40

land.end40:                                       ; preds = %land.lhs.true30
  %call35 = tail call i32 @RSA_set0_key(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call23, %struct.bignum_st* noundef %call31) #2
  %cmp36 = icmp ne i32 %call35, 0
  %conv37 = zext i1 %cmp36 to i32
  %call38 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 396, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0), i32 noundef %conv37) #2
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end, %land.lhs.true26, %land.lhs.true30, %land.end40
  %d.0249 = phi %struct.bignum_st* [ %call31, %land.end40 ], [ null, %if.end ], [ null, %land.lhs.true26 ], [ %call31, %land.lhs.true30 ]
  %n.0248 = phi %struct.bignum_st* [ %call27, %land.end40 ], [ null, %if.end ], [ %call27, %land.lhs.true26 ], [ %call27, %land.lhs.true30 ]
  tail call void @BN_free(%struct.bignum_st* noundef %call23) #2
  tail call void @BN_free(%struct.bignum_st* noundef %n.0248) #2
  tail call void @BN_free(%struct.bignum_st* noundef %d.0249) #2
  br label %end

if.end44:                                         ; preds = %land.end40
  %call45 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef 100, i32 noundef 2048) #2
  %cmp46 = icmp ne i32 %call45, 0
  %conv47 = zext i1 %cmp46 to i32
  %call48 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 404, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.101, i64 0, i64 0), i32 noundef %conv47) #2
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %end, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.end44
  %call51 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef 112, i32 noundef 1024) #2
  %cmp52 = icmp ne i32 %call51, 0
  %conv53 = zext i1 %cmp52 to i32
  %call54 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 405, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.102, i64 0, i64 0), i32 noundef %conv53) #2
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %end, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %call57 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef 128, i32 noundef 2048) #2
  %cmp58 = icmp ne i32 %call57, 0
  %conv59 = zext i1 %cmp58 to i32
  %call60 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 406, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.103, i64 0, i64 0), i32 noundef %conv59) #2
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %end, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true56
  %call63 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef 140, i32 noundef 3072) #2
  %cmp64 = icmp ne i32 %call63, 0
  %conv65 = zext i1 %cmp64 to i32
  %call66 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 407, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i64 0, i64 0), i32 noundef %conv65) #2
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %end, label %land.lhs.true68

land.lhs.true68:                                  ; preds = %land.lhs.true62
  %call69 = tail call %struct.bignum_st* @BN_value_one() #2
  %call70 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call69, i32 noundef -1, i32 noundef 2048) #2
  %cmp71 = icmp ne i32 %call70, 0
  %conv72 = zext i1 %cmp71 to i32
  %call73 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.105, i64 0, i64 0), i32 noundef %conv72) #2
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %end, label %land.lhs.true75

land.lhs.true75:                                  ; preds = %land.lhs.true68
  %call76 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call23, i64 noundef 1) #2
  %cmp77 = icmp ne i32 %call76, 0
  %conv78 = zext i1 %cmp77 to i32
  %call79 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 412, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.95, i64 0, i64 0), i32 noundef %conv78) #2
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %end, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %land.lhs.true75
  %call82 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 2048) #2
  %cmp83 = icmp ne i32 %call82, 0
  %conv84 = zext i1 %cmp83 to i32
  %call85 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 413, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv84) #2
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %end, label %land.lhs.true87

land.lhs.true87:                                  ; preds = %land.lhs.true81
  %call88 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call23, i64 noundef 1) #2
  %cmp89 = icmp ne i32 %call88, 0
  %conv90 = zext i1 %cmp89 to i32
  %call91 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 414, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i64 0, i64 0), i32 noundef %conv90) #2
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %end, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %land.lhs.true87
  %call94 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 3072) #2
  %cmp95 = icmp ne i32 %call94, 0
  %conv96 = zext i1 %cmp95 to i32
  %call97 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 417, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.106, i64 0, i64 0), i32 noundef %conv96) #2
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %end, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %land.lhs.true93
  %call100 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef %call23, i32 noundef 112, i32 noundef 2048) #2
  %cmp101 = icmp ne i32 %call100, 0
  %conv102 = zext i1 %cmp101 to i32
  %call103 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 418, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.107, i64 0, i64 0), i32 noundef %conv102) #2
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %end, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %call106 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call27, i64 noundef 1) #2
  %cmp107 = icmp ne i32 %call106, 0
  %conv108 = zext i1 %cmp107 to i32
  %call109 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 420, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i64 0, i64 0), i32 noundef %conv108) #2
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %end, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %land.lhs.true105
  %call112 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 2048) #2
  %cmp113 = icmp ne i32 %call112, 0
  %conv114 = zext i1 %cmp113 to i32
  %call115 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 421, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv114) #2
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %end, label %land.lhs.true117

land.lhs.true117:                                 ; preds = %land.lhs.true111
  %call118 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call27, i64 noundef 1) #2
  %cmp119 = icmp ne i32 %call118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 422, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i64 0, i64 0), i32 noundef %conv120) #2
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %end, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %land.lhs.true117
  %call124 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call10, i64 noundef 2) #2
  %cmp125 = icmp ne i32 %call124, 0
  %conv126 = zext i1 %cmp125 to i32
  %call127 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 424, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i64 0, i64 0), i32 noundef %conv126) #2
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %end, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %land.lhs.true123
  %call130 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #2
  %cmp131 = icmp ne i32 %call130, 0
  %conv132 = zext i1 %cmp131 to i32
  %call133 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 425, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv132) #2
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %end, label %land.lhs.true135

land.lhs.true135:                                 ; preds = %land.lhs.true129
  %call136 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 2048) #2
  %cmp137 = icmp ne i32 %call136, 0
  %conv138 = zext i1 %cmp137 to i32
  %call139 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 426, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv138) #2
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %end, label %land.lhs.true141

land.lhs.true141:                                 ; preds = %land.lhs.true135
  %call142 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call10, i64 noundef 2) #2
  %cmp143 = icmp ne i32 %call142, 0
  %conv144 = zext i1 %cmp143 to i32
  %call145 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 427, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i64 0, i64 0), i32 noundef %conv144) #2
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %end, label %land.lhs.true147

land.lhs.true147:                                 ; preds = %land.lhs.true141
  %call148 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #2
  %cmp149 = icmp ne i32 %call148, 0
  %conv150 = zext i1 %cmp149 to i32
  %call151 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 428, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv150) #2
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %end, label %land.lhs.true153

land.lhs.true153:                                 ; preds = %land.lhs.true147
  %call154 = tail call i32 @BN_sub_word(%struct.bignum_st* noundef %call14, i64 noundef 2) #2
  %cmp155 = icmp ne i32 %call154, 0
  %conv156 = zext i1 %cmp155 to i32
  %call157 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 430, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i64 0, i64 0), i32 noundef %conv156) #2
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %end, label %land.lhs.true159

land.lhs.true159:                                 ; preds = %land.lhs.true153
  %call160 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #2
  %cmp161 = icmp ne i32 %call160, 0
  %conv162 = zext i1 %cmp161 to i32
  %call163 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 431, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv162) #2
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %end, label %land.lhs.true165

land.lhs.true165:                                 ; preds = %land.lhs.true159
  %call166 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef 2048) #2
  %cmp167 = icmp ne i32 %call166, 0
  %conv168 = zext i1 %cmp167 to i32
  %call169 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.98, i64 0, i64 0), i32 noundef %conv168) #2
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %end, label %land.lhs.true171

land.lhs.true171:                                 ; preds = %land.lhs.true165
  %call172 = tail call i32 @BN_add_word(%struct.bignum_st* noundef %call14, i64 noundef 2) #2
  %cmp173 = icmp ne i32 %call172, 0
  %conv174 = zext i1 %cmp173 to i32
  %call175 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 433, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.112, i64 0, i64 0), i32 noundef %conv174) #2
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %end, label %land.rhs177

land.rhs177:                                      ; preds = %land.lhs.true171
  %call178 = tail call i32 @BN_mul(%struct.bignum_st* noundef %call27, %struct.bignum_st* noundef %call10, %struct.bignum_st* noundef %call14, %struct.bignum_ctx* noundef %call2) #2
  %cmp179 = icmp ne i32 %call178, 0
  %conv180 = zext i1 %cmp179 to i32
  %call181 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 434, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.109, i64 0, i64 0), i32 noundef %conv180) #2
  %tobool182 = icmp ne i32 %call181, 0
  %phi.cast = zext i1 %tobool182 to i32
  br label %end

end:                                              ; preds = %if.end44, %land.lhs.true50, %land.lhs.true56, %land.lhs.true62, %land.lhs.true68, %land.lhs.true75, %land.lhs.true81, %land.lhs.true87, %land.lhs.true93, %land.lhs.true99, %land.lhs.true105, %land.lhs.true111, %land.lhs.true117, %land.lhs.true123, %land.lhs.true129, %land.lhs.true135, %land.lhs.true141, %land.lhs.true147, %land.lhs.true153, %land.lhs.true159, %land.lhs.true165, %land.lhs.true171, %land.rhs177, %if.then43, %if.then
  %ctx.0242 = phi %struct.bignum_ctx* [ %call2, %if.then43 ], [ %ctx.0243, %if.then ], [ %call2, %land.lhs.true171 ], [ %call2, %land.lhs.true165 ], [ %call2, %land.lhs.true159 ], [ %call2, %land.lhs.true153 ], [ %call2, %land.lhs.true147 ], [ %call2, %land.lhs.true141 ], [ %call2, %land.lhs.true135 ], [ %call2, %land.lhs.true129 ], [ %call2, %land.lhs.true123 ], [ %call2, %land.lhs.true117 ], [ %call2, %land.lhs.true111 ], [ %call2, %land.lhs.true105 ], [ %call2, %land.lhs.true99 ], [ %call2, %land.lhs.true93 ], [ %call2, %land.lhs.true87 ], [ %call2, %land.lhs.true81 ], [ %call2, %land.lhs.true75 ], [ %call2, %land.lhs.true68 ], [ %call2, %land.lhs.true62 ], [ %call2, %land.lhs.true56 ], [ %call2, %land.lhs.true50 ], [ %call2, %if.end44 ], [ %call2, %land.rhs177 ]
  %ret.0.in = phi i32 [ 0, %if.then43 ], [ 0, %if.then ], [ 0, %land.lhs.true171 ], [ 0, %land.lhs.true165 ], [ 0, %land.lhs.true159 ], [ 0, %land.lhs.true153 ], [ 0, %land.lhs.true147 ], [ 0, %land.lhs.true141 ], [ 0, %land.lhs.true135 ], [ 0, %land.lhs.true129 ], [ 0, %land.lhs.true123 ], [ 0, %land.lhs.true117 ], [ 0, %land.lhs.true111 ], [ 0, %land.lhs.true105 ], [ 0, %land.lhs.true99 ], [ 0, %land.lhs.true93 ], [ 0, %land.lhs.true87 ], [ 0, %land.lhs.true81 ], [ 0, %land.lhs.true75 ], [ 0, %land.lhs.true68 ], [ 0, %land.lhs.true62 ], [ 0, %land.lhs.true56 ], [ 0, %land.lhs.true50 ], [ 0, %if.end44 ], [ %phi.cast, %land.rhs177 ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  tail call void @BN_CTX_free(%struct.bignum_ctx* noundef %ctx.0242) #2
  ret i32 %ret.0.in
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_pq_diff() #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %0 = bitcast %struct.bignum_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 353, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.113, i64 0, i64 0), i8* noundef %0) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call %struct.bignum_st* @BN_new() #2
  %1 = bitcast %struct.bignum_st* %call2 to i8*
  %call3 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 354, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call %struct.bignum_st* @BN_new() #2
  %2 = bitcast %struct.bignum_st* %call6 to i8*
  %call7 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 355, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0), i8* noundef %2) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %call10 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 1) #2
  %cmp = icmp ne i32 %call10, 0
  %conv = zext i1 %cmp to i32
  %call11 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 357, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i64 0, i64 0), i32 noundef %conv) #2
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.end, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %call14 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 3) #2
  %cmp15 = icmp ne i32 %call14, 0
  %conv16 = zext i1 %cmp15 to i32
  %call17 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 358, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.115, i64 0, i64 0), i32 noundef %conv16) #2
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %call20 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, i32 noundef 202) #2
  %cmp21 = icmp ne i32 %call20, 0
  %conv22 = zext i1 %cmp21 to i32
  %call23 = tail call i32 @test_false(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 359, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv22) #2
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.end, label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %call26 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 4) #2
  %cmp27 = icmp ne i32 %call26, 0
  %conv28 = zext i1 %cmp27 to i32
  %call29 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 361, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.117, i64 0, i64 0), i32 noundef %conv28) #2
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.end, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %land.lhs.true25
  %call32 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, i32 noundef 202) #2
  %cmp33 = icmp ne i32 %call32, 0
  %conv34 = zext i1 %cmp33 to i32
  %call35 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 362, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv34) #2
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.end, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true31
  %call38 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call2, i64 noundef 4) #2
  %cmp39 = icmp ne i32 %call38, 0
  %conv40 = zext i1 %cmp39 to i32
  %call41 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 363, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.118, i64 0, i64 0), i32 noundef %conv40) #2
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.end, label %land.lhs.true43

land.lhs.true43:                                  ; preds = %land.lhs.true37
  %call44 = tail call i32 @BN_set_word(%struct.bignum_st* noundef %call6, i64 noundef 1) #2
  %cmp45 = icmp ne i32 %call44, 0
  %conv46 = zext i1 %cmp45 to i32
  %call47 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.119, i64 0, i64 0), i32 noundef %conv46) #2
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true43
  %call49 = tail call i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef %call, %struct.bignum_st* noundef %call2, %struct.bignum_st* noundef %call6, i32 noundef 202) #2
  %cmp50 = icmp ne i32 %call49, 0
  %conv51 = zext i1 %cmp50 to i32
  %call52 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 365, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.116, i64 0, i64 0), i32 noundef %conv51) #2
  %tobool53 = icmp ne i32 %call52, 0
  %phi.cast = zext i1 %tobool53 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true43, %land.lhs.true37, %land.lhs.true31, %land.lhs.true25, %land.lhs.true19, %land.lhs.true13, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %p.0 = phi %struct.bignum_st* [ %call2, %land.rhs ], [ %call2, %land.lhs.true43 ], [ %call2, %land.lhs.true37 ], [ %call2, %land.lhs.true31 ], [ %call2, %land.lhs.true25 ], [ %call2, %land.lhs.true19 ], [ %call2, %land.lhs.true13 ], [ %call2, %land.lhs.true9 ], [ %call2, %land.lhs.true5 ], [ %call2, %land.lhs.true ], [ null, %entry ]
  %q.0 = phi %struct.bignum_st* [ %call6, %land.rhs ], [ %call6, %land.lhs.true43 ], [ %call6, %land.lhs.true37 ], [ %call6, %land.lhs.true31 ], [ %call6, %land.lhs.true25 ], [ %call6, %land.lhs.true19 ], [ %call6, %land.lhs.true13 ], [ %call6, %land.lhs.true9 ], [ %call6, %land.lhs.true5 ], [ null, %land.lhs.true ], [ null, %entry ]
  %3 = phi i32 [ %phi.cast, %land.rhs ], [ 0, %land.lhs.true43 ], [ 0, %land.lhs.true37 ], [ 0, %land.lhs.true31 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true13 ], [ 0, %land.lhs.true9 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ]
  tail call void @BN_free(%struct.bignum_st* noundef %p.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %q.0) #2
  tail call void @BN_free(%struct.bignum_st* noundef %call) #2
  ret i32 %3
}

declare dso_local void @add_all_tests(i8* noundef, i32 (i32)* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_sp80056b_keygen(i32 noundef %id) #0 {
entry:
  %idxprom = sext i32 %id to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @keygen_size, i64 0, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !15
  %call = tail call %struct.rsa_st* @RSA_new() #2
  %1 = bitcast %struct.rsa_st* %call to i8*
  %call1 = tail call i32 @test_ptr(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 452, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i8* noundef %1) #2
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @ossl_rsa_sp800_56b_generate_key(%struct.rsa_st* noundef %call, i32 noundef %0, %struct.bignum_st* noundef null, %struct.bn_gencb_st* noundef null) #2
  %cmp = icmp ne i32 %call2, 0
  %conv = zext i1 %cmp to i32
  %call3 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 453, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.120, i64 0, i64 0), i32 noundef %conv) #2
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef %call) #2
  %cmp7 = icmp ne i32 %call6, 0
  %conv8 = zext i1 %cmp7 to i32
  %call9 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 noundef %conv8) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.end, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %land.lhs.true5
  %call12 = tail call i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef %call) #2
  %cmp13 = icmp ne i32 %call12, 0
  %conv14 = zext i1 %cmp13 to i32
  %call15 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 455, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.83, i64 0, i64 0), i32 noundef %conv14) #2
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true11
  %call17 = tail call i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef %call, %struct.bignum_st* noundef null, i32 noundef -1, i32 noundef %0) #2
  %cmp18 = icmp ne i32 %call17, 0
  %conv19 = zext i1 %cmp18 to i32
  %call20 = tail call i32 @test_true(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 noundef 456, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.121, i64 0, i64 0), i32 noundef %conv19) #2
  %tobool21 = icmp ne i32 %call20, 0
  %phi.cast = zext i1 %tobool21 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11, %land.lhs.true5, %land.lhs.true, %entry
  %2 = phi i32 [ 0, %land.lhs.true11 ], [ 0, %land.lhs.true5 ], [ 0, %land.lhs.true ], [ 0, %entry ], [ %phi.cast, %land.rhs ]
  tail call void @RSA_free(%struct.rsa_st* noundef %call) #2
  ret i32 %2
}

declare dso_local i32 @test_ptr(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_new() local_unnamed_addr #1

declare dso_local i32 @test_true(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_set_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @test_false(i8* noundef, i32 noundef, i8* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_public_exponent(%struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_lshift(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_value_one() local_unnamed_addr #1

declare dso_local i32 @BN_add(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local void @BN_free(%struct.bignum_st* noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc %struct.bignum_st* @bn_load_new(i8* noundef %data, i32 noundef %sz) unnamed_addr #0 {
entry:
  %call = tail call %struct.bignum_st* @BN_new() #2
  %cmp.not = icmp eq %struct.bignum_st* %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct.bignum_st* @BN_bin2bn(i8* noundef %data, i32 noundef %sz, %struct.bignum_st* noundef nonnull %call) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret %struct.bignum_st* %call
}

declare dso_local %struct.bignum_ctx* @BN_CTX_new() local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_prime_factor_range(%struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @BN_CTX_free(%struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_bin2bn(i8* noundef, i32 noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_prime_factor(%struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local %struct.rsa_st* @RSA_new() local_unnamed_addr #1

declare dso_local i32 @RSA_set0_factors(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @RSA_set0_key(%struct.rsa_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_private_exponent(%struct.rsa_st* noundef, i32 noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local void @RSA_free(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_sp800_56b_derive_params_from_pq(%struct.rsa_st* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @test_BN_eq_word(i8* noundef, i32 noundef, i8* noundef, i8* noundef, %struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_crt_components(%struct.rsa_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_sp800_56b_check_private(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local %struct.bignum_st* @BN_copy(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_sp800_56b_check_public(%struct.rsa_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_add_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_sub_word(%struct.bignum_st* noundef, i64 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_lshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @BN_rshift1(%struct.bignum_st* noundef, %struct.bignum_st* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_sp800_56b_check_keypair(%struct.rsa_st* noundef, %struct.bignum_st* noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @BN_mul(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_ctx* noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_check_pminusq_diff(%struct.bignum_st* noundef, %struct.bignum_st* noundef, %struct.bignum_st* noundef, i32 noundef) local_unnamed_addr #1

declare dso_local i32 @ossl_rsa_sp800_56b_generate_key(%struct.rsa_st* noundef, i32 noundef, %struct.bignum_st* noundef, %struct.bn_gencb_st* noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{!"clang version 14.0.0"}
!3 = !{!4, !8, i64 40}
!4 = !{!"rsa_st", !5, i64 0, !8, i64 8, !5, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !9, i64 104, !8, i64 128, !8, i64 136, !11, i64 144, !6, i64 160, !5, i64 164, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !5, i64 216}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"any pointer", !6, i64 0}
!9 = !{!"rsa_pss_params_30_st", !5, i64 0, !10, i64 4, !5, i64 12, !5, i64 16}
!10 = !{!"", !5, i64 0, !5, i64 4}
!11 = !{!"crypto_ex_data_st", !8, i64 0, !8, i64 8}
!12 = !{!4, !8, i64 80}
!13 = !{!4, !8, i64 88}
!14 = !{!4, !8, i64 96}
!15 = !{!5, !5, i64 0}
